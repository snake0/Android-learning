package org.webrtc;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.graphics.Point;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View.MeasureSpec;
import com.mqunar.libtask.ProgressType;
import org.webrtc.RendererCommon.GlDrawer;
import org.webrtc.RendererCommon.RendererEvents;
import org.webrtc.RendererCommon.ScalingType;
import org.webrtc.RendererCommon.YuvUploader;
import org.webrtc.VideoRenderer.Callbacks;
import org.webrtc.VideoRenderer.I420Frame;

public class SurfaceViewRenderer extends SurfaceView implements Callback, Callbacks {
    private static final String TAG = "SurfaceViewRenderer";
    private Point desiredLayoutSize = new Point();
    private GlDrawer drawer;
    private EglBase eglBase;
    private long firstFrameTimeNs;
    private int frameHeight;
    private final Object frameLock = new Object();
    private int frameRotation;
    private int frameWidth;
    private int framesDropped;
    private int framesReceived;
    private int framesRendered;
    private final Object handlerLock = new Object();
    private boolean isSurfaceCreated;
    private final Object layoutLock = new Object();
    private final Point layoutSize = new Point();
    private final Runnable makeBlackRunnable = new Runnable() {
        public void run() {
            SurfaceViewRenderer.this.makeBlack();
        }
    };
    private boolean mirror;
    private I420Frame pendingFrame;
    private final Runnable renderFrameRunnable = new Runnable() {
        public void run() {
            SurfaceViewRenderer.this.renderFrameOnRenderThread();
        }
    };
    private HandlerThread renderThread;
    private Handler renderThreadHandler;
    private long renderTimeNs;
    private RendererEvents rendererEvents;
    private ScalingType scalingType = ScalingType.SCALE_ASPECT_BALANCED;
    private final Object statisticsLock = new Object();
    private final Point surfaceSize = new Point();
    private int[] yuvTextures = null;
    private final YuvUploader yuvUploader = new YuvUploader();

    public SurfaceViewRenderer(Context context) {
        super(context);
        getHolder().addCallback(this);
    }

    public SurfaceViewRenderer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        getHolder().addCallback(this);
    }

    public void init(EglBase.Context context, RendererEvents rendererEvents) {
        init(context, rendererEvents, EglBase.CONFIG_PLAIN, new GlRectDrawer());
    }

    public void init(EglBase.Context context, RendererEvents rendererEvents, int[] iArr, GlDrawer glDrawer) {
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler != null) {
                throw new IllegalStateException(getResourceName() + "Already initialized");
            }
            Logging.d(TAG, getResourceName() + "Initializing.");
            this.rendererEvents = rendererEvents;
            this.drawer = glDrawer;
            this.renderThread = new HandlerThread(TAG);
            this.renderThread.start();
            this.eglBase = EglBase.create(context, iArr);
            this.renderThreadHandler = new Handler(this.renderThread.getLooper());
        }
        tryCreateEglSurface();
    }

    public void tryCreateEglSurface() {
        runOnRenderThread(new Runnable() {
            public void run() {
                synchronized (SurfaceViewRenderer.this.layoutLock) {
                    if (SurfaceViewRenderer.this.isSurfaceCreated && !SurfaceViewRenderer.this.eglBase.hasSurface()) {
                        SurfaceViewRenderer.this.eglBase.createSurface(SurfaceViewRenderer.this.getHolder().getSurface());
                        SurfaceViewRenderer.this.eglBase.makeCurrent();
                        GLES20.glPixelStorei(3317, 1);
                    }
                }
            }
        });
    }

    /* JADX WARNING: Missing block: B:9:0x003a, code skipped:
            org.webrtc.ThreadUtils.awaitUninterruptibly(r0);
            r5.renderThread.quit();
            r1 = r5.frameLock;
     */
    /* JADX WARNING: Missing block: B:10:0x0044, code skipped:
            monitor-enter(r1);
     */
    /* JADX WARNING: Missing block: B:13:0x0047, code skipped:
            if (r5.pendingFrame == null) goto L_0x0051;
     */
    /* JADX WARNING: Missing block: B:14:0x0049, code skipped:
            org.webrtc.VideoRenderer.renderFrameDone(r5.pendingFrame);
            r5.pendingFrame = null;
     */
    /* JADX WARNING: Missing block: B:15:0x0051, code skipped:
            monitor-exit(r1);
     */
    /* JADX WARNING: Missing block: B:16:0x0052, code skipped:
            org.webrtc.ThreadUtils.joinUninterruptibly(r5.renderThread);
            r5.renderThread = null;
            r1 = r5.layoutLock;
     */
    /* JADX WARNING: Missing block: B:17:0x005b, code skipped:
            monitor-enter(r1);
     */
    /* JADX WARNING: Missing block: B:20:?, code skipped:
            r5.frameWidth = 0;
            r5.frameHeight = 0;
            r5.frameRotation = 0;
            r5.rendererEvents = null;
     */
    /* JADX WARNING: Missing block: B:21:0x0068, code skipped:
            monitor-exit(r1);
     */
    /* JADX WARNING: Missing block: B:22:0x0069, code skipped:
            resetStatistics();
     */
    /* JADX WARNING: Missing block: B:45:?, code skipped:
            return;
     */
    public void release() {
        /*
        r5 = this;
        r4 = 0;
        r0 = new java.util.concurrent.CountDownLatch;
        r1 = 1;
        r0.<init>(r1);
        r1 = r5.handlerLock;
        monitor-enter(r1);
        r2 = r5.renderThreadHandler;	 Catch:{ all -> 0x006d }
        if (r2 != 0) goto L_0x002c;
    L_0x000e:
        r0 = "SurfaceViewRenderer";
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x006d }
        r2.<init>();	 Catch:{ all -> 0x006d }
        r3 = r5.getResourceName();	 Catch:{ all -> 0x006d }
        r2 = r2.append(r3);	 Catch:{ all -> 0x006d }
        r3 = "Already released";
        r2 = r2.append(r3);	 Catch:{ all -> 0x006d }
        r2 = r2.toString();	 Catch:{ all -> 0x006d }
        org.webrtc.Logging.d(r0, r2);	 Catch:{ all -> 0x006d }
        monitor-exit(r1);	 Catch:{ all -> 0x006d }
    L_0x002b:
        return;
    L_0x002c:
        r2 = r5.renderThreadHandler;	 Catch:{ all -> 0x006d }
        r3 = new org.webrtc.SurfaceViewRenderer$4;	 Catch:{ all -> 0x006d }
        r3.<init>(r0);	 Catch:{ all -> 0x006d }
        r2.postAtFrontOfQueue(r3);	 Catch:{ all -> 0x006d }
        r2 = 0;
        r5.renderThreadHandler = r2;	 Catch:{ all -> 0x006d }
        monitor-exit(r1);	 Catch:{ all -> 0x006d }
        org.webrtc.ThreadUtils.awaitUninterruptibly(r0);
        r0 = r5.renderThread;
        r0.quit();
        r1 = r5.frameLock;
        monitor-enter(r1);
        r0 = r5.pendingFrame;	 Catch:{ all -> 0x0070 }
        if (r0 == 0) goto L_0x0051;
    L_0x0049:
        r0 = r5.pendingFrame;	 Catch:{ all -> 0x0070 }
        org.webrtc.VideoRenderer.renderFrameDone(r0);	 Catch:{ all -> 0x0070 }
        r0 = 0;
        r5.pendingFrame = r0;	 Catch:{ all -> 0x0070 }
    L_0x0051:
        monitor-exit(r1);	 Catch:{ all -> 0x0070 }
        r0 = r5.renderThread;
        org.webrtc.ThreadUtils.joinUninterruptibly(r0);
        r5.renderThread = r4;
        r1 = r5.layoutLock;
        monitor-enter(r1);
        r0 = 0;
        r5.frameWidth = r0;	 Catch:{ all -> 0x0073 }
        r0 = 0;
        r5.frameHeight = r0;	 Catch:{ all -> 0x0073 }
        r0 = 0;
        r5.frameRotation = r0;	 Catch:{ all -> 0x0073 }
        r0 = 0;
        r5.rendererEvents = r0;	 Catch:{ all -> 0x0073 }
        monitor-exit(r1);	 Catch:{ all -> 0x0073 }
        r5.resetStatistics();
        goto L_0x002b;
    L_0x006d:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x006d }
        throw r0;
    L_0x0070:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0070 }
        throw r0;
    L_0x0073:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0073 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.SurfaceViewRenderer.release():void");
    }

    public void resetStatistics() {
        synchronized (this.statisticsLock) {
            this.framesReceived = 0;
            this.framesDropped = 0;
            this.framesRendered = 0;
            this.firstFrameTimeNs = 0;
            this.renderTimeNs = 0;
        }
    }

    public void setMirror(boolean z) {
        synchronized (this.layoutLock) {
            this.mirror = z;
        }
    }

    public void setScalingType(ScalingType scalingType) {
        synchronized (this.layoutLock) {
            this.scalingType = scalingType;
        }
    }

    public void renderFrame(I420Frame i420Frame) {
        synchronized (this.statisticsLock) {
            this.framesReceived++;
        }
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler == null) {
                Logging.d(TAG, getResourceName() + "Dropping frame - Not initialized or already released.");
                VideoRenderer.renderFrameDone(i420Frame);
                return;
            }
            synchronized (this.frameLock) {
                if (this.pendingFrame != null) {
                    synchronized (this.statisticsLock) {
                        this.framesDropped++;
                    }
                    VideoRenderer.renderFrameDone(this.pendingFrame);
                }
                this.pendingFrame = i420Frame;
                updateFrameDimensionsAndReportEvents(i420Frame);
                this.renderThreadHandler.post(this.renderFrameRunnable);
            }
        }
    }

    private Point getDesiredLayoutSize(int i, int i2) {
        Point displaySize;
        synchronized (this.layoutLock) {
            int defaultSize = getDefaultSize(ProgressType.PRO_END, i);
            int defaultSize2 = getDefaultSize(ProgressType.PRO_END, i2);
            displaySize = RendererCommon.getDisplaySize(this.scalingType, frameAspectRatio(), defaultSize, defaultSize2);
            if (MeasureSpec.getMode(i) == 1073741824) {
                displaySize.x = defaultSize;
            }
            if (MeasureSpec.getMode(i2) == 1073741824) {
                displaySize.y = defaultSize2;
            }
        }
        return displaySize;
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public void onMeasure(int r5, int r6) {
        /*
        r4 = this;
        r1 = r4.layoutLock;
        monitor-enter(r1);
        r0 = r4.frameWidth;	 Catch:{ all -> 0x0046 }
        if (r0 == 0) goto L_0x000b;
    L_0x0007:
        r0 = r4.frameHeight;	 Catch:{ all -> 0x0046 }
        if (r0 != 0) goto L_0x0010;
    L_0x000b:
        super.onMeasure(r5, r6);	 Catch:{ all -> 0x0046 }
        monitor-exit(r1);	 Catch:{ all -> 0x0046 }
    L_0x000f:
        return;
    L_0x0010:
        r0 = r4.getDesiredLayoutSize(r5, r6);	 Catch:{ all -> 0x0046 }
        r4.desiredLayoutSize = r0;	 Catch:{ all -> 0x0046 }
        r0 = r4.desiredLayoutSize;	 Catch:{ all -> 0x0046 }
        r0 = r0.x;	 Catch:{ all -> 0x0046 }
        r2 = r4.getMeasuredWidth();	 Catch:{ all -> 0x0046 }
        if (r0 != r2) goto L_0x002a;
    L_0x0020:
        r0 = r4.desiredLayoutSize;	 Catch:{ all -> 0x0046 }
        r0 = r0.y;	 Catch:{ all -> 0x0046 }
        r2 = r4.getMeasuredHeight();	 Catch:{ all -> 0x0046 }
        if (r0 == r2) goto L_0x0039;
    L_0x002a:
        r2 = r4.handlerLock;	 Catch:{ all -> 0x0046 }
        monitor-enter(r2);	 Catch:{ all -> 0x0046 }
        r0 = r4.renderThreadHandler;	 Catch:{ all -> 0x0049 }
        if (r0 == 0) goto L_0x0038;
    L_0x0031:
        r0 = r4.renderThreadHandler;	 Catch:{ all -> 0x0049 }
        r3 = r4.makeBlackRunnable;	 Catch:{ all -> 0x0049 }
        r0.postAtFrontOfQueue(r3);	 Catch:{ all -> 0x0049 }
    L_0x0038:
        monitor-exit(r2);	 Catch:{ all -> 0x0049 }
    L_0x0039:
        r0 = r4.desiredLayoutSize;	 Catch:{ all -> 0x0046 }
        r0 = r0.x;	 Catch:{ all -> 0x0046 }
        r2 = r4.desiredLayoutSize;	 Catch:{ all -> 0x0046 }
        r2 = r2.y;	 Catch:{ all -> 0x0046 }
        r4.setMeasuredDimension(r0, r2);	 Catch:{ all -> 0x0046 }
        monitor-exit(r1);	 Catch:{ all -> 0x0046 }
        goto L_0x000f;
    L_0x0046:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0046 }
        throw r0;
    L_0x0049:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x0049 }
        throw r0;	 Catch:{ all -> 0x0046 }
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.SurfaceViewRenderer.onMeasure(int, int):void");
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        synchronized (this.layoutLock) {
            this.layoutSize.x = i3 - i;
            this.layoutSize.y = i4 - i2;
        }
        runOnRenderThread(this.renderFrameRunnable);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Logging.d(TAG, getResourceName() + "Surface created.");
        synchronized (this.layoutLock) {
            this.isSurfaceCreated = true;
        }
        tryCreateEglSurface();
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Logging.d(TAG, getResourceName() + "Surface destroyed.");
        synchronized (this.layoutLock) {
            this.isSurfaceCreated = false;
            this.surfaceSize.x = 0;
            this.surfaceSize.y = 0;
        }
        runOnRenderThread(new Runnable() {
            public void run() {
                SurfaceViewRenderer.this.eglBase.releaseSurface();
            }
        });
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Logging.d(TAG, getResourceName() + "Surface changed: " + i2 + MapViewConstants.ATTR_X + i3);
        synchronized (this.layoutLock) {
            this.surfaceSize.x = i2;
            this.surfaceSize.y = i3;
        }
        runOnRenderThread(this.renderFrameRunnable);
    }

    private void runOnRenderThread(Runnable runnable) {
        synchronized (this.handlerLock) {
            if (this.renderThreadHandler != null) {
                this.renderThreadHandler.post(runnable);
            }
        }
    }

    private String getResourceName() {
        try {
            return getResources().getResourceEntryName(getId()) + ": ";
        } catch (NotFoundException e) {
            return "";
        }
    }

    private void makeBlack() {
        if (Thread.currentThread() != this.renderThread) {
            throw new IllegalStateException(getResourceName() + "Wrong thread.");
        } else if (this.eglBase != null && this.eglBase.hasSurface()) {
            GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
            GLES20.glClear(16384);
            this.eglBase.swapBuffers();
        }
    }

    private boolean checkConsistentLayout() {
        if (Thread.currentThread() != this.renderThread) {
            throw new IllegalStateException(getResourceName() + "Wrong thread.");
        }
        boolean z;
        synchronized (this.layoutLock) {
            z = this.layoutSize.equals(this.desiredLayoutSize) && this.surfaceSize.equals(this.layoutSize);
        }
        return z;
    }

    /* JADX WARNING: Missing block: B:13:0x0038, code skipped:
            if (r12.eglBase == null) goto L_0x0042;
     */
    /* JADX WARNING: Missing block: B:15:0x0040, code skipped:
            if (r12.eglBase.hasSurface() != false) goto L_0x0065;
     */
    /* JADX WARNING: Missing block: B:16:0x0042, code skipped:
            org.webrtc.Logging.d(TAG, getResourceName() + "No surface to draw on");
            org.webrtc.VideoRenderer.renderFrameDone(r8);
     */
    /* JADX WARNING: Missing block: B:22:0x0069, code skipped:
            if (checkConsistentLayout() != false) goto L_0x0072;
     */
    /* JADX WARNING: Missing block: B:23:0x006b, code skipped:
            makeBlack();
            org.webrtc.VideoRenderer.renderFrameDone(r8);
     */
    /* JADX WARNING: Missing block: B:24:0x0072, code skipped:
            r1 = r12.layoutLock;
     */
    /* JADX WARNING: Missing block: B:25:0x0074, code skipped:
            monitor-enter(r1);
     */
    /* JADX WARNING: Missing block: B:28:0x007f, code skipped:
            if (r12.eglBase.surfaceWidth() != r12.surfaceSize.x) goto L_0x008d;
     */
    /* JADX WARNING: Missing block: B:30:0x008b, code skipped:
            if (r12.eglBase.surfaceHeight() == r12.surfaceSize.y) goto L_0x0090;
     */
    /* JADX WARNING: Missing block: B:31:0x008d, code skipped:
            makeBlack();
     */
    /* JADX WARNING: Missing block: B:32:0x0090, code skipped:
            monitor-exit(r1);
     */
    /* JADX WARNING: Missing block: B:33:0x0091, code skipped:
            r9 = java.lang.System.nanoTime();
            r1 = r12.layoutLock;
     */
    /* JADX WARNING: Missing block: B:34:0x0097, code skipped:
            monitor-enter(r1);
     */
    /* JADX WARNING: Missing block: B:36:?, code skipped:
            r11 = org.webrtc.RendererCommon.multiplyMatrices(org.webrtc.RendererCommon.rotateTextureMatrix(r8.samplingMatrix, (float) r8.rotationDegree), org.webrtc.RendererCommon.getLayoutMatrix(r12.mirror, frameAspectRatio(), ((float) r12.layoutSize.x) / ((float) r12.layoutSize.y)));
     */
    /* JADX WARNING: Missing block: B:37:0x00ba, code skipped:
            monitor-exit(r1);
     */
    /* JADX WARNING: Missing block: B:38:0x00bb, code skipped:
            android.opengl.GLES20.glClear(16384);
     */
    /* JADX WARNING: Missing block: B:39:0x00c2, code skipped:
            if (r8.yuvFrame == false) goto L_0x015c;
     */
    /* JADX WARNING: Missing block: B:41:0x00c6, code skipped:
            if (r12.yuvTextures != null) goto L_0x00e2;
     */
    /* JADX WARNING: Missing block: B:42:0x00c8, code skipped:
            r12.yuvTextures = new int[3];
            r0 = 0;
     */
    /* JADX WARNING: Missing block: B:43:0x00cd, code skipped:
            if (r0 >= 3) goto L_0x00e2;
     */
    /* JADX WARNING: Missing block: B:44:0x00cf, code skipped:
            r12.yuvTextures[r0] = org.webrtc.GlUtil.generateTexture(3553);
            r0 = r0 + 1;
     */
    /* JADX WARNING: Missing block: B:53:0x00e2, code skipped:
            r12.yuvUploader.uploadYuvData(r12.yuvTextures, r8.width, r8.height, r8.yuvStrides, r8.yuvPlanes);
            r12.drawer.drawYuv(r12.yuvTextures, r11, 0, 0, r12.surfaceSize.x, r12.surfaceSize.y);
     */
    /* JADX WARNING: Missing block: B:54:0x0103, code skipped:
            r12.eglBase.swapBuffers();
            org.webrtc.VideoRenderer.renderFrameDone(r8);
            r1 = r12.statisticsLock;
     */
    /* JADX WARNING: Missing block: B:55:0x010d, code skipped:
            monitor-enter(r1);
     */
    /* JADX WARNING: Missing block: B:58:0x0110, code skipped:
            if (r12.framesRendered != 0) goto L_0x013d;
     */
    /* JADX WARNING: Missing block: B:59:0x0112, code skipped:
            r12.firstFrameTimeNs = r9;
            r2 = r12.layoutLock;
     */
    /* JADX WARNING: Missing block: B:60:0x0116, code skipped:
            monitor-enter(r2);
     */
    /* JADX WARNING: Missing block: B:62:?, code skipped:
            org.webrtc.Logging.d(TAG, getResourceName() + "Reporting first rendered frame.");
     */
    /* JADX WARNING: Missing block: B:63:0x0135, code skipped:
            if (r12.rendererEvents == null) goto L_0x013c;
     */
    /* JADX WARNING: Missing block: B:64:0x0137, code skipped:
            r12.rendererEvents.onFirstFrameRendered();
     */
    /* JADX WARNING: Missing block: B:65:0x013c, code skipped:
            monitor-exit(r2);
     */
    /* JADX WARNING: Missing block: B:67:?, code skipped:
            r12.framesRendered++;
            r12.renderTimeNs += java.lang.System.nanoTime() - r9;
     */
    /* JADX WARNING: Missing block: B:68:0x0151, code skipped:
            if ((r12.framesRendered % 300) != 0) goto L_0x0156;
     */
    /* JADX WARNING: Missing block: B:69:0x0153, code skipped:
            logStatistics();
     */
    /* JADX WARNING: Missing block: B:70:0x0156, code skipped:
            monitor-exit(r1);
     */
    /* JADX WARNING: Missing block: B:75:0x015c, code skipped:
            r12.drawer.drawOes(r8.textureId, r11, 0, 0, r12.surfaceSize.x, r12.surfaceSize.y);
     */
    /* JADX WARNING: Missing block: B:94:?, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:95:?, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:96:?, code skipped:
            return;
     */
    private void renderFrameOnRenderThread() {
        /*
        r12 = this;
        r6 = 3;
        r7 = 0;
        r0 = java.lang.Thread.currentThread();
        r1 = r12.renderThread;
        if (r0 == r1) goto L_0x0027;
    L_0x000a:
        r0 = new java.lang.IllegalStateException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = r12.getResourceName();
        r1 = r1.append(r2);
        r2 = "Wrong thread.";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0027:
        r1 = r12.frameLock;
        monitor-enter(r1);
        r0 = r12.pendingFrame;	 Catch:{ all -> 0x0062 }
        if (r0 != 0) goto L_0x0030;
    L_0x002e:
        monitor-exit(r1);	 Catch:{ all -> 0x0062 }
    L_0x002f:
        return;
    L_0x0030:
        r8 = r12.pendingFrame;	 Catch:{ all -> 0x0062 }
        r0 = 0;
        r12.pendingFrame = r0;	 Catch:{ all -> 0x0062 }
        monitor-exit(r1);	 Catch:{ all -> 0x0062 }
        r0 = r12.eglBase;
        if (r0 == 0) goto L_0x0042;
    L_0x003a:
        r0 = r12.eglBase;
        r0 = r0.hasSurface();
        if (r0 != 0) goto L_0x0065;
    L_0x0042:
        r0 = "SurfaceViewRenderer";
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = r12.getResourceName();
        r1 = r1.append(r2);
        r2 = "No surface to draw on";
        r1 = r1.append(r2);
        r1 = r1.toString();
        org.webrtc.Logging.d(r0, r1);
        org.webrtc.VideoRenderer.renderFrameDone(r8);
        goto L_0x002f;
    L_0x0062:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0062 }
        throw r0;
    L_0x0065:
        r0 = r12.checkConsistentLayout();
        if (r0 != 0) goto L_0x0072;
    L_0x006b:
        r12.makeBlack();
        org.webrtc.VideoRenderer.renderFrameDone(r8);
        goto L_0x002f;
    L_0x0072:
        r1 = r12.layoutLock;
        monitor-enter(r1);
        r0 = r12.eglBase;	 Catch:{ all -> 0x00dc }
        r0 = r0.surfaceWidth();	 Catch:{ all -> 0x00dc }
        r2 = r12.surfaceSize;	 Catch:{ all -> 0x00dc }
        r2 = r2.x;	 Catch:{ all -> 0x00dc }
        if (r0 != r2) goto L_0x008d;
    L_0x0081:
        r0 = r12.eglBase;	 Catch:{ all -> 0x00dc }
        r0 = r0.surfaceHeight();	 Catch:{ all -> 0x00dc }
        r2 = r12.surfaceSize;	 Catch:{ all -> 0x00dc }
        r2 = r2.y;	 Catch:{ all -> 0x00dc }
        if (r0 == r2) goto L_0x0090;
    L_0x008d:
        r12.makeBlack();	 Catch:{ all -> 0x00dc }
    L_0x0090:
        monitor-exit(r1);	 Catch:{ all -> 0x00dc }
        r9 = java.lang.System.nanoTime();
        r1 = r12.layoutLock;
        monitor-enter(r1);
        r0 = r8.samplingMatrix;	 Catch:{ all -> 0x00df }
        r2 = r8.rotationDegree;	 Catch:{ all -> 0x00df }
        r2 = (float) r2;	 Catch:{ all -> 0x00df }
        r0 = org.webrtc.RendererCommon.rotateTextureMatrix(r0, r2);	 Catch:{ all -> 0x00df }
        r2 = r12.mirror;	 Catch:{ all -> 0x00df }
        r3 = r12.frameAspectRatio();	 Catch:{ all -> 0x00df }
        r4 = r12.layoutSize;	 Catch:{ all -> 0x00df }
        r4 = r4.x;	 Catch:{ all -> 0x00df }
        r4 = (float) r4;	 Catch:{ all -> 0x00df }
        r5 = r12.layoutSize;	 Catch:{ all -> 0x00df }
        r5 = r5.y;	 Catch:{ all -> 0x00df }
        r5 = (float) r5;	 Catch:{ all -> 0x00df }
        r4 = r4 / r5;
        r2 = org.webrtc.RendererCommon.getLayoutMatrix(r2, r3, r4);	 Catch:{ all -> 0x00df }
        r11 = org.webrtc.RendererCommon.multiplyMatrices(r0, r2);	 Catch:{ all -> 0x00df }
        monitor-exit(r1);	 Catch:{ all -> 0x00df }
        r0 = 16384; // 0x4000 float:2.2959E-41 double:8.0948E-320;
        android.opengl.GLES20.glClear(r0);
        r0 = r8.yuvFrame;
        if (r0 == 0) goto L_0x015c;
    L_0x00c4:
        r0 = r12.yuvTextures;
        if (r0 != 0) goto L_0x00e2;
    L_0x00c8:
        r0 = new int[r6];
        r12.yuvTextures = r0;
        r0 = r7;
    L_0x00cd:
        if (r0 >= r6) goto L_0x00e2;
    L_0x00cf:
        r1 = r12.yuvTextures;
        r2 = 3553; // 0xde1 float:4.979E-42 double:1.7554E-320;
        r2 = org.webrtc.GlUtil.generateTexture(r2);
        r1[r0] = r2;
        r0 = r0 + 1;
        goto L_0x00cd;
    L_0x00dc:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00dc }
        throw r0;
    L_0x00df:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x00df }
        throw r0;
    L_0x00e2:
        r0 = r12.yuvUploader;
        r1 = r12.yuvTextures;
        r2 = r8.width;
        r3 = r8.height;
        r4 = r8.yuvStrides;
        r5 = r8.yuvPlanes;
        r0.uploadYuvData(r1, r2, r3, r4, r5);
        r0 = r12.drawer;
        r1 = r12.yuvTextures;
        r2 = r12.surfaceSize;
        r5 = r2.x;
        r2 = r12.surfaceSize;
        r6 = r2.y;
        r2 = r11;
        r3 = r7;
        r4 = r7;
        r0.drawYuv(r1, r2, r3, r4, r5, r6);
    L_0x0103:
        r0 = r12.eglBase;
        r0.swapBuffers();
        org.webrtc.VideoRenderer.renderFrameDone(r8);
        r1 = r12.statisticsLock;
        monitor-enter(r1);
        r0 = r12.framesRendered;	 Catch:{ all -> 0x0159 }
        if (r0 != 0) goto L_0x013d;
    L_0x0112:
        r12.firstFrameTimeNs = r9;	 Catch:{ all -> 0x0159 }
        r2 = r12.layoutLock;	 Catch:{ all -> 0x0159 }
        monitor-enter(r2);	 Catch:{ all -> 0x0159 }
        r0 = "SurfaceViewRenderer";
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x016f }
        r3.<init>();	 Catch:{ all -> 0x016f }
        r4 = r12.getResourceName();	 Catch:{ all -> 0x016f }
        r3 = r3.append(r4);	 Catch:{ all -> 0x016f }
        r4 = "Reporting first rendered frame.";
        r3 = r3.append(r4);	 Catch:{ all -> 0x016f }
        r3 = r3.toString();	 Catch:{ all -> 0x016f }
        org.webrtc.Logging.d(r0, r3);	 Catch:{ all -> 0x016f }
        r0 = r12.rendererEvents;	 Catch:{ all -> 0x016f }
        if (r0 == 0) goto L_0x013c;
    L_0x0137:
        r0 = r12.rendererEvents;	 Catch:{ all -> 0x016f }
        r0.onFirstFrameRendered();	 Catch:{ all -> 0x016f }
    L_0x013c:
        monitor-exit(r2);	 Catch:{ all -> 0x016f }
    L_0x013d:
        r0 = r12.framesRendered;	 Catch:{ all -> 0x0159 }
        r0 = r0 + 1;
        r12.framesRendered = r0;	 Catch:{ all -> 0x0159 }
        r2 = r12.renderTimeNs;	 Catch:{ all -> 0x0159 }
        r4 = java.lang.System.nanoTime();	 Catch:{ all -> 0x0159 }
        r4 = r4 - r9;
        r2 = r2 + r4;
        r12.renderTimeNs = r2;	 Catch:{ all -> 0x0159 }
        r0 = r12.framesRendered;	 Catch:{ all -> 0x0159 }
        r0 = r0 % 300;
        if (r0 != 0) goto L_0x0156;
    L_0x0153:
        r12.logStatistics();	 Catch:{ all -> 0x0159 }
    L_0x0156:
        monitor-exit(r1);	 Catch:{ all -> 0x0159 }
        goto L_0x002f;
    L_0x0159:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0159 }
        throw r0;
    L_0x015c:
        r0 = r12.drawer;
        r1 = r8.textureId;
        r2 = r12.surfaceSize;
        r5 = r2.x;
        r2 = r12.surfaceSize;
        r6 = r2.y;
        r2 = r11;
        r3 = r7;
        r4 = r7;
        r0.drawOes(r1, r2, r3, r4, r5, r6);
        goto L_0x0103;
    L_0x016f:
        r0 = move-exception;
        monitor-exit(r2);	 Catch:{ all -> 0x016f }
        throw r0;	 Catch:{ all -> 0x0159 }
        */
        throw new UnsupportedOperationException("Method not decompiled: org.webrtc.SurfaceViewRenderer.renderFrameOnRenderThread():void");
    }

    private float frameAspectRatio() {
        float f;
        synchronized (this.layoutLock) {
            if (this.frameWidth == 0 || this.frameHeight == 0) {
                f = 0.0f;
            } else {
                f = this.frameRotation % 180 == 0 ? ((float) this.frameWidth) / ((float) this.frameHeight) : ((float) this.frameHeight) / ((float) this.frameWidth);
            }
        }
        return f;
    }

    private void updateFrameDimensionsAndReportEvents(I420Frame i420Frame) {
        synchronized (this.layoutLock) {
            if (!(this.frameWidth == i420Frame.width && this.frameHeight == i420Frame.height && this.frameRotation == i420Frame.rotationDegree)) {
                Logging.d(TAG, getResourceName() + "Reporting frame resolution changed to " + i420Frame.width + MapViewConstants.ATTR_X + i420Frame.height + " with rotation " + i420Frame.rotationDegree);
                if (this.rendererEvents != null) {
                    this.rendererEvents.onFrameResolutionChanged(i420Frame.width, i420Frame.height, i420Frame.rotationDegree);
                }
                this.frameWidth = i420Frame.width;
                this.frameHeight = i420Frame.height;
                this.frameRotation = i420Frame.rotationDegree;
                post(new Runnable() {
                    public void run() {
                        SurfaceViewRenderer.this.requestLayout();
                    }
                });
            }
        }
    }

    private void logStatistics() {
        synchronized (this.statisticsLock) {
            Logging.d(TAG, getResourceName() + "Frames received: " + this.framesReceived + ". Dropped: " + this.framesDropped + ". Rendered: " + this.framesRendered);
            if (this.framesReceived > 0 && this.framesRendered > 0) {
                long nanoTime = System.nanoTime() - this.firstFrameTimeNs;
                Logging.d(TAG, getResourceName() + "Duration: " + ((int) (((double) nanoTime) / 1000000.0d)) + " ms. FPS: " + ((((double) this.framesRendered) * 1.0E9d) / ((double) nanoTime)));
                Logging.d(TAG, getResourceName() + "Average render time: " + ((int) (this.renderTimeNs / ((long) (this.framesRendered * 1000)))) + " us.");
            }
        }
    }
}
