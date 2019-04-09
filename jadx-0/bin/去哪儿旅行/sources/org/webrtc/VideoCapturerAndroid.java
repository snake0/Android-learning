package org.webrtc;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.ErrorCallback;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.view.WindowManager;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.webrtc.CameraEnumerationAndroid.CaptureFormat;
import org.webrtc.SurfaceTextureHelper.OnTextureFrameAvailableListener;
import org.webrtc.ThreadUtils.ThreadChecker;

public class VideoCapturerAndroid extends VideoCapturer implements PreviewCallback, OnTextureFrameAvailableListener {
    private static final int CAMERA_FREEZE_REPORT_TIMOUT_MS = 6000;
    private static final int CAMERA_OBSERVER_PERIOD_MS = 2000;
    private static final int MAX_OPEN_CAMERA_ATTEMPTS = 3;
    private static final int NUMBER_OF_CAPTURE_BUFFERS = 3;
    private static final int OPEN_CAMERA_DELAY_MS = 500;
    private static final String TAG = "VideoCapturerAndroid";
    private Context applicationContext;
    private Camera camera;
    private final ErrorCallback cameraErrorCallback;
    private final Object cameraIdLock;
    private final Runnable cameraObserver;
    private final CameraStatistics cameraStatistics;
    private HandlerThread cameraThread;
    private final Handler cameraThreadHandler;
    private CaptureFormat captureFormat;
    private boolean dropNextFrame;
    private final CameraEventsHandler eventsHandler;
    private boolean firstFrameReported;
    private CapturerObserver frameObserver;
    private int id;
    private CameraInfo info;
    private final boolean isCapturingToTexture;
    private int openCameraAttempts;
    private Runnable openCameraOnCodecThreadRunner;
    private volatile boolean pendingCameraSwitch;
    private final Object pendingCameraSwitchLock;
    private final Set<byte[]> queuedBuffers;
    private int requestedFramerate;
    private int requestedHeight;
    private int requestedWidth;
    final SurfaceTextureHelper surfaceHelper;

    public interface CameraEventsHandler {
        void onCameraClosed();

        void onCameraError(String str);

        void onCameraFreezed(String str);

        void onCameraOpening(int i);

        void onFirstFrameAvailable();
    }

    class CameraStatistics {
        private int frameCount = 0;
        private final ThreadChecker threadChecker = new ThreadChecker();

        CameraStatistics() {
            this.threadChecker.detachThread();
        }

        public void addFrame() {
            this.threadChecker.checkIsOnValidThread();
            this.frameCount++;
        }

        public int getAndResetFrameCount() {
            this.threadChecker.checkIsOnValidThread();
            int i = this.frameCount;
            this.frameCount = 0;
            return i;
        }
    }

    public interface CameraSwitchHandler {
        void onCameraSwitchDone(boolean z);

        void onCameraSwitchError(String str);
    }

    interface CapturerObserver {
        void onByteBufferFrameCaptured(byte[] bArr, int i, int i2, int i3, long j);

        void onCapturerStarted(boolean z);

        void onOutputFormatRequest(int i, int i2, int i3);

        void onTextureFrameCaptured(int i, int i2, int i3, float[] fArr, int i4, long j);
    }

    class NativeObserver implements CapturerObserver {
        private final long nativeCapturer;

        private native void nativeCapturerStarted(long j, boolean z);

        private native void nativeOnByteBufferFrameCaptured(long j, byte[] bArr, int i, int i2, int i3, int i4, long j2);

        private native void nativeOnOutputFormatRequest(long j, int i, int i2, int i3);

        private native void nativeOnTextureFrameCaptured(long j, int i, int i2, int i3, float[] fArr, int i4, long j2);

        public NativeObserver(long j) {
            this.nativeCapturer = j;
        }

        public void onCapturerStarted(boolean z) {
            nativeCapturerStarted(this.nativeCapturer, z);
        }

        public void onByteBufferFrameCaptured(byte[] bArr, int i, int i2, int i3, long j) {
            nativeOnByteBufferFrameCaptured(this.nativeCapturer, bArr, bArr.length, i, i2, i3, j);
        }

        public void onTextureFrameCaptured(int i, int i2, int i3, float[] fArr, int i4, long j) {
            nativeOnTextureFrameCaptured(this.nativeCapturer, i, i2, i3, fArr, i4, j);
        }

        public void onOutputFormatRequest(int i, int i2, int i3) {
            nativeOnOutputFormatRequest(this.nativeCapturer, i, i2, i3);
        }
    }

    private static native long nativeCreateVideoCapturer(VideoCapturerAndroid videoCapturerAndroid, SurfaceTextureHelper surfaceTextureHelper);

    public static VideoCapturerAndroid create(String str, CameraEventsHandler cameraEventsHandler) {
        return create(str, cameraEventsHandler, null);
    }

    public static VideoCapturerAndroid create(String str, CameraEventsHandler cameraEventsHandler, EglBase.Context context) {
        int lookupDeviceName = lookupDeviceName(str);
        if (lookupDeviceName == -1) {
            return null;
        }
        VideoCapturerAndroid videoCapturerAndroid = new VideoCapturerAndroid(lookupDeviceName, cameraEventsHandler, context);
        videoCapturerAndroid.setNativeCapturer(nativeCreateVideoCapturer(videoCapturerAndroid, videoCapturerAndroid.surfaceHelper));
        return videoCapturerAndroid;
    }

    public void printStackTrace() {
        if (this.cameraThread != null) {
            StackTraceElement[] stackTrace = this.cameraThread.getStackTrace();
            if (stackTrace.length > 0) {
                Logging.d(TAG, "VideoCapturerAndroid stacks trace:");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    Logging.d(TAG, stackTraceElement.toString());
                }
            }
        }
    }

    /* JADX WARNING: Missing block: B:24:?, code skipped:
            return;
     */
    public void switchCamera(final org.webrtc.VideoCapturerAndroid.CameraSwitchHandler r4) {
        /*
        r3 = this;
        r0 = android.hardware.Camera.getNumberOfCameras();
        r1 = 2;
        if (r0 >= r1) goto L_0x000f;
    L_0x0007:
        if (r4 == 0) goto L_0x000e;
    L_0x0009:
        r0 = "No camera to switch to.";
        r4.onCameraSwitchError(r0);
    L_0x000e:
        return;
    L_0x000f:
        r1 = r3.pendingCameraSwitchLock;
        monitor-enter(r1);
        r0 = r3.pendingCameraSwitch;	 Catch:{ all -> 0x0026 }
        if (r0 == 0) goto L_0x0029;
    L_0x0016:
        r0 = "VideoCapturerAndroid";
        r2 = "Ignoring camera switch request.";
        org.webrtc.Logging.w(r0, r2);	 Catch:{ all -> 0x0026 }
        if (r4 == 0) goto L_0x0024;
    L_0x001f:
        r0 = "Pending camera switch already in progress.";
        r4.onCameraSwitchError(r0);	 Catch:{ all -> 0x0026 }
    L_0x0024:
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        goto L_0x000e;
    L_0x0026:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        throw r0;
    L_0x0029:
        r0 = 1;
        r3.pendingCameraSwitch = r0;	 Catch:{ all -> 0x0026 }
        monitor-exit(r1);	 Catch:{ all -> 0x0026 }
        r0 = r3.cameraThreadHandler;
        r1 = new org.webrtc.VideoCapturerAndroid$3;
        r1.<init>(r4);
        r0.post(r1);
        goto L_0x000e;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.VideoCapturerAndroid.switchCamera(org.webrtc.VideoCapturerAndroid$CameraSwitchHandler):void");
    }

    public void onOutputFormatRequest(final int i, final int i2, final int i3) {
        this.cameraThreadHandler.post(new Runnable() {
            public void run() {
                VideoCapturerAndroid.this.onOutputFormatRequestOnCameraThread(i, i2, i3);
            }
        });
    }

    public void changeCaptureFormat(final int i, final int i2, final int i3) {
        this.cameraThreadHandler.post(new Runnable() {
            public void run() {
                VideoCapturerAndroid.this.startPreviewOnCameraThread(i, i2, i3);
            }
        });
    }

    /* Access modifiers changed, original: 0000 */
    public int getCurrentCameraId() {
        int i;
        synchronized (this.cameraIdLock) {
            i = this.id;
        }
        return i;
    }

    public List<CaptureFormat> getSupportedFormats() {
        return CameraEnumerationAndroid.getSupportedFormats(getCurrentCameraId());
    }

    public boolean isCapturingToTexture() {
        return this.isCapturingToTexture;
    }

    private String getSupportedFormatsAsJson() {
        return CameraEnumerationAndroid.getSupportedFormatsAsJson(getCurrentCameraId());
    }

    private VideoCapturerAndroid(int i) {
        this(i, null, null);
    }

    private VideoCapturerAndroid(int i, CameraEventsHandler cameraEventsHandler, EglBase.Context context) {
        boolean z = false;
        this.cameraIdLock = new Object();
        this.pendingCameraSwitchLock = new Object();
        this.frameObserver = null;
        this.queuedBuffers = new HashSet();
        this.dropNextFrame = false;
        this.cameraErrorCallback = new ErrorCallback() {
            public void onError(int i, Camera camera) {
                String str;
                if (i == 100) {
                    str = "Camera server died!";
                } else {
                    str = "Camera error: " + i;
                }
                Logging.e(VideoCapturerAndroid.TAG, str);
                if (VideoCapturerAndroid.this.eventsHandler != null) {
                    VideoCapturerAndroid.this.eventsHandler.onCameraError(str);
                }
            }
        };
        this.cameraObserver = new Runnable() {
            private int freezePeriodCount;

            public void run() {
                int andResetFrameCount = VideoCapturerAndroid.this.cameraStatistics.getAndResetFrameCount();
                Logging.d(VideoCapturerAndroid.TAG, "Camera fps: " + (((andResetFrameCount * 1000) + 1000) / 2000) + ".");
                if (andResetFrameCount == 0) {
                    this.freezePeriodCount++;
                    if (this.freezePeriodCount * 2000 > VideoCapturerAndroid.CAMERA_FREEZE_REPORT_TIMOUT_MS && VideoCapturerAndroid.this.eventsHandler != null) {
                        Logging.e(VideoCapturerAndroid.TAG, "Camera freezed.");
                        if (VideoCapturerAndroid.this.surfaceHelper.isTextureInUse()) {
                            VideoCapturerAndroid.this.eventsHandler.onCameraFreezed("Camera failure. Client must return video buffers.");
                            return;
                        } else {
                            VideoCapturerAndroid.this.eventsHandler.onCameraFreezed("Camera failure.");
                            return;
                        }
                    }
                }
                this.freezePeriodCount = 0;
                VideoCapturerAndroid.this.cameraThreadHandler.postDelayed(this, 2000);
            }
        };
        this.id = i;
        this.eventsHandler = cameraEventsHandler;
        this.cameraThread = new HandlerThread(TAG);
        this.cameraThread.start();
        this.cameraThreadHandler = new Handler(this.cameraThread.getLooper());
        if (context != null) {
            z = true;
        }
        this.isCapturingToTexture = z;
        this.cameraStatistics = new CameraStatistics();
        this.surfaceHelper = SurfaceTextureHelper.create(context, this.cameraThreadHandler);
        if (this.isCapturingToTexture) {
            this.surfaceHelper.setListener(this);
        }
        Logging.d(TAG, "VideoCapturerAndroid isCapturingToTexture : " + this.isCapturingToTexture);
    }

    private void checkIsOnCameraThread() {
        if (Thread.currentThread() != this.cameraThread) {
            throw new IllegalStateException("Wrong thread");
        }
    }

    private static int lookupDeviceName(String str) {
        int i = 0;
        Logging.d(TAG, "lookupDeviceName: " + str);
        if (str == null || Camera.getNumberOfCameras() == 0) {
            return -1;
        }
        if (str.isEmpty()) {
            return 0;
        }
        while (i < Camera.getNumberOfCameras()) {
            if (str.equals(CameraEnumerationAndroid.getDeviceName(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private void release() {
        Logging.d(TAG, "release");
        if (isReleased()) {
            throw new IllegalStateException("Already released");
        }
        ThreadUtils.invokeUninterruptibly(this.cameraThreadHandler, new Runnable() {
            public void run() {
                if (VideoCapturerAndroid.this.camera != null) {
                    throw new IllegalStateException("Release called while camera is running");
                }
            }
        });
        this.surfaceHelper.disconnect(this.cameraThreadHandler);
        this.cameraThread = null;
    }

    public boolean isReleased() {
        return this.cameraThread == null;
    }

    /* Access modifiers changed, original: 0000 */
    public void startCapture(int i, int i2, int i3, Context context, CapturerObserver capturerObserver) {
        Logging.d(TAG, "startCapture requested: " + i + MapViewConstants.ATTR_X + i2 + "@" + i3);
        if (context == null) {
            throw new RuntimeException("applicationContext not set.");
        } else if (capturerObserver == null) {
            throw new RuntimeException("frameObserver not set.");
        } else {
            final int i4 = i;
            final int i5 = i2;
            final int i6 = i3;
            final CapturerObserver capturerObserver2 = capturerObserver;
            final Context context2 = context;
            this.cameraThreadHandler.post(new Runnable() {
                public void run() {
                    VideoCapturerAndroid.this.startCaptureOnCameraThread(i4, i5, i6, capturerObserver2, context2);
                }
            });
        }
    }

    private void startCaptureOnCameraThread(int i, int i2, int i3, CapturerObserver capturerObserver, Context context) {
        checkIsOnCameraThread();
        if (this.camera != null) {
            throw new RuntimeException("Camera has already been started.");
        }
        this.applicationContext = context;
        this.frameObserver = capturerObserver;
        this.firstFrameReported = false;
        try {
            synchronized (this.cameraIdLock) {
                Logging.d(TAG, "Opening camera " + this.id);
                if (this.eventsHandler != null) {
                    this.eventsHandler.onCameraOpening(this.id);
                }
                this.camera = Camera.open(this.id);
                this.info = new CameraInfo();
                Camera.getCameraInfo(this.id, this.info);
            }
            try {
                this.camera.setPreviewTexture(this.surfaceHelper.getSurfaceTexture());
                Logging.d(TAG, "Camera orientation: " + this.info.orientation + " .Device orientation: " + getDeviceOrientation());
                this.camera.setErrorCallback(this.cameraErrorCallback);
                startPreviewOnCameraThread(i, i2, i3);
                capturerObserver.onCapturerStarted(true);
                this.cameraThreadHandler.postDelayed(this.cameraObserver, 2000);
            } catch (IOException e) {
                Logging.e(TAG, "setPreviewTexture failed", null);
                throw new RuntimeException(e);
            } catch (RuntimeException e2) {
                Logging.e(TAG, "startCapture failed", e2);
                stopCaptureOnCameraThread();
                capturerObserver.onCapturerStarted(false);
                if (this.eventsHandler != null) {
                    this.eventsHandler.onCameraError("Camera can not be started.");
                }
            }
        } catch (RuntimeException e22) {
            this.openCameraAttempts++;
            if (this.openCameraAttempts < 3) {
                Logging.e(TAG, "Camera.open failed, retrying", e22);
                final int i4 = i;
                final int i5 = i2;
                final int i6 = i3;
                final CapturerObserver capturerObserver2 = capturerObserver;
                final Context context2 = context;
                this.openCameraOnCodecThreadRunner = new Runnable() {
                    public void run() {
                        VideoCapturerAndroid.this.startCaptureOnCameraThread(i4, i5, i6, capturerObserver2, context2);
                    }
                };
                this.cameraThreadHandler.postDelayed(this.openCameraOnCodecThreadRunner, 500);
                return;
            }
            this.openCameraAttempts = 0;
            throw e22;
        }
    }

    private void startPreviewOnCameraThread(int i, int i2, int i3) {
        int i4 = 0;
        checkIsOnCameraThread();
        Logging.d(TAG, "startPreviewOnCameraThread requested: " + i + MapViewConstants.ATTR_X + i2 + "@" + i3);
        if (this.camera == null) {
            Logging.e(TAG, "Calling startPreviewOnCameraThread on stopped camera.");
            return;
        }
        this.requestedWidth = i;
        this.requestedHeight = i2;
        this.requestedFramerate = i3;
        Parameters parameters = this.camera.getParameters();
        int[] framerateRange = CameraEnumerationAndroid.getFramerateRange(parameters, i3 * 1000);
        Size closestSupportedSize = CameraEnumerationAndroid.getClosestSupportedSize(parameters.getSupportedPreviewSizes(), i, i2);
        CaptureFormat captureFormat = new CaptureFormat(closestSupportedSize.width, closestSupportedSize.height, framerateRange[0], framerateRange[1]);
        if (!captureFormat.isSameFormat(this.captureFormat)) {
            Logging.d(TAG, "isVideoStabilizationSupported: " + parameters.isVideoStabilizationSupported());
            if (parameters.isVideoStabilizationSupported()) {
                parameters.setVideoStabilization(true);
            }
            if (captureFormat.maxFramerate > 0) {
                parameters.setPreviewFpsRange(captureFormat.minFramerate, captureFormat.maxFramerate);
            }
            parameters.setPreviewSize(captureFormat.width, captureFormat.height);
            if (!this.isCapturingToTexture) {
                captureFormat.getClass();
                parameters.setPreviewFormat(17);
            }
            Size closestSupportedSize2 = CameraEnumerationAndroid.getClosestSupportedSize(parameters.getSupportedPictureSizes(), i, i2);
            parameters.setPictureSize(closestSupportedSize2.width, closestSupportedSize2.height);
            if (this.captureFormat != null) {
                this.camera.stopPreview();
                this.dropNextFrame = true;
                this.camera.setPreviewCallbackWithBuffer(null);
            }
            Logging.d(TAG, "Start capturing: " + captureFormat);
            this.captureFormat = captureFormat;
            if (parameters.getSupportedFocusModes().contains("continuous-video")) {
                parameters.setFocusMode("continuous-video");
            }
            this.camera.setParameters(parameters);
            if (!this.isCapturingToTexture) {
                this.queuedBuffers.clear();
                int frameSize = captureFormat.frameSize();
                while (i4 < 3) {
                    ByteBuffer allocateDirect = ByteBuffer.allocateDirect(frameSize);
                    this.queuedBuffers.add(allocateDirect.array());
                    this.camera.addCallbackBuffer(allocateDirect.array());
                    i4++;
                }
                this.camera.setPreviewCallbackWithBuffer(this);
            }
            this.camera.startPreview();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void stopCapture() {
        Logging.d(TAG, "stopCapture");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.cameraThreadHandler.post(new Runnable() {
            public void run() {
                VideoCapturerAndroid.this.stopCaptureOnCameraThread();
                countDownLatch.countDown();
            }
        });
        countDownLatch.await();
        Logging.d(TAG, "stopCapture done");
    }

    private void stopCaptureOnCameraThread() {
        checkIsOnCameraThread();
        Logging.d(TAG, "stopCaptureOnCameraThread");
        if (this.openCameraOnCodecThreadRunner != null) {
            this.cameraThreadHandler.removeCallbacks(this.openCameraOnCodecThreadRunner);
        }
        this.openCameraAttempts = 0;
        if (this.camera == null) {
            Logging.e(TAG, "Calling stopCapture() for already stopped camera.");
            return;
        }
        this.cameraThreadHandler.removeCallbacks(this.cameraObserver);
        this.cameraStatistics.getAndResetFrameCount();
        Logging.d(TAG, "Stop preview.");
        this.camera.stopPreview();
        this.camera.setPreviewCallbackWithBuffer(null);
        this.queuedBuffers.clear();
        this.captureFormat = null;
        Logging.d(TAG, "Release camera.");
        this.camera.release();
        this.camera = null;
        if (this.eventsHandler != null) {
            this.eventsHandler.onCameraClosed();
        }
    }

    private void switchCameraOnCameraThread() {
        checkIsOnCameraThread();
        Logging.d(TAG, "switchCameraOnCameraThread");
        stopCaptureOnCameraThread();
        synchronized (this.cameraIdLock) {
            this.id = (this.id + 1) % Camera.getNumberOfCameras();
        }
        this.dropNextFrame = true;
        startCaptureOnCameraThread(this.requestedWidth, this.requestedHeight, this.requestedFramerate, this.frameObserver, this.applicationContext);
        Logging.d(TAG, "switchCameraOnCameraThread done");
    }

    private void onOutputFormatRequestOnCameraThread(int i, int i2, int i3) {
        checkIsOnCameraThread();
        if (this.camera == null) {
            Logging.e(TAG, "Calling onOutputFormatRequest() on stopped camera.");
            return;
        }
        Logging.d(TAG, "onOutputFormatRequestOnCameraThread: " + i + MapViewConstants.ATTR_X + i2 + "@" + i3);
        this.frameObserver.onOutputFormatRequest(i, i2, i3);
    }

    /* Access modifiers changed, original: 0000 */
    public Handler getCameraThreadHandler() {
        return this.cameraThreadHandler;
    }

    private int getDeviceOrientation() {
        switch (((WindowManager) this.applicationContext.getSystemService("window")).getDefaultDisplay().getRotation()) {
            case 1:
                return 90;
            case 2:
                return 180;
            case 3:
                return 270;
            default:
                return 0;
        }
    }

    private int getFrameOrientation() {
        int deviceOrientation = getDeviceOrientation();
        if (this.info.facing == 0) {
            deviceOrientation = 360 - deviceOrientation;
        }
        return (deviceOrientation + this.info.orientation) % 360;
    }

    public void onPreviewFrame(byte[] bArr, Camera camera) {
        checkIsOnCameraThread();
        if (this.camera != null && this.queuedBuffers.contains(bArr)) {
            if (this.camera != camera) {
                throw new RuntimeException("Unexpected camera in callback!");
            }
            long toNanos = TimeUnit.MILLISECONDS.toNanos(SystemClock.elapsedRealtime());
            if (!(this.eventsHandler == null || this.firstFrameReported)) {
                this.eventsHandler.onFirstFrameAvailable();
                this.firstFrameReported = true;
            }
            this.cameraStatistics.addFrame();
            this.frameObserver.onByteBufferFrameCaptured(bArr, this.captureFormat.width, this.captureFormat.height, getFrameOrientation(), toNanos);
            this.camera.addCallbackBuffer(bArr);
        }
    }

    public void onTextureFrameAvailable(int i, float[] fArr, long j) {
        checkIsOnCameraThread();
        if (this.camera == null) {
            this.surfaceHelper.returnTextureFrame();
        } else if (this.dropNextFrame) {
            this.surfaceHelper.returnTextureFrame();
            this.dropNextFrame = false;
        } else {
            float[] multiplyMatrices;
            int frameOrientation = getFrameOrientation();
            if (this.info.facing == 1) {
                multiplyMatrices = RendererCommon.multiplyMatrices(fArr, RendererCommon.horizontalFlipMatrix());
            } else {
                multiplyMatrices = fArr;
            }
            this.cameraStatistics.addFrame();
            this.frameObserver.onTextureFrameCaptured(this.captureFormat.width, this.captureFormat.height, i, multiplyMatrices, frameOrientation, j);
        }
    }
}
