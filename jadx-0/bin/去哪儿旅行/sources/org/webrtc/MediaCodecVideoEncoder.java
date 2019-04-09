package org.webrtc;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecList;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.webrtc.EglBase14.Context;

@TargetApi(19)
public class MediaCodecVideoEncoder {
    private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    private static final int DEQUEUE_TIMEOUT = 0;
    private static final String[] H264_HW_EXCEPTION_MODELS = new String[]{"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4"};
    private static final String H264_MIME_TYPE = "video/avc";
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final String TAG = "MediaCodecVideoEncoder";
    private static final int VIDEO_ControlRateConstant = 2;
    private static final int VIDEO_ControlRateVariable = 1;
    private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
    private static final String VP9_MIME_TYPE = "video/x-vnd.on2.vp9";
    private static int codecErrors = 0;
    private static MediaCodecVideoEncoderErrorCallback errorCallback = null;
    private static MediaCodecVideoEncoder runningInstance = null;
    private static final int[] supportedColorList = new int[]{19, 21, 2141391872, COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m};
    private static final String[] supportedH264HwCodecPrefixes = new String[]{"OMX.qcom."};
    private static final int[] supportedSurfaceColorList = new int[]{2130708361};
    private static final String[] supportedVp8HwCodecPrefixes = new String[]{"OMX.qcom.", "OMX.Intel."};
    private static final String[] supportedVp9HwCodecPrefixes = new String[]{"OMX.qcom."};
    private int colorFormat;
    private ByteBuffer configData = null;
    private GlRectDrawer drawer;
    private EglBase14 eglBase;
    private int height;
    private Surface inputSurface;
    private MediaCodec mediaCodec;
    private Thread mediaCodecThread;
    private ByteBuffer[] outputBuffers;
    private VideoCodecType type;
    private int width;

    class EncoderProperties {
        public final String codecName;
        public final int colorFormat;

        public EncoderProperties(String str, int i) {
            this.codecName = str;
            this.colorFormat = i;
        }
    }

    public interface MediaCodecVideoEncoderErrorCallback {
        void onMediaCodecVideoEncoderCriticalError(int i);
    }

    class OutputBufferInfo {
        public final ByteBuffer buffer;
        public final int index;
        public final boolean isKeyFrame;
        public final long presentationTimestampUs;

        public OutputBufferInfo(int i, ByteBuffer byteBuffer, boolean z, long j) {
            this.index = i;
            this.buffer = byteBuffer;
            this.isKeyFrame = z;
            this.presentationTimestampUs = j;
        }
    }

    public enum VideoCodecType {
        VIDEO_CODEC_VP8,
        VIDEO_CODEC_VP9,
        VIDEO_CODEC_H264
    }

    public static void setErrorCallback(MediaCodecVideoEncoderErrorCallback mediaCodecVideoEncoderErrorCallback) {
        Logging.d(TAG, "Set error callback");
        errorCallback = mediaCodecVideoEncoderErrorCallback;
    }

    private static EncoderProperties findHwEncoder(String str, String[] strArr, int[] iArr) {
        if (VERSION.SDK_INT < 19) {
            return null;
        }
        if (str.equals(H264_MIME_TYPE) && Arrays.asList(H264_HW_EXCEPTION_MODELS).contains(Build.MODEL)) {
            Logging.w(TAG, "Model: " + Build.MODEL + " has black listed H.264 encoder.");
            return null;
        }
        for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (codecInfoAt.isEncoder()) {
                String name;
                for (String equals : codecInfoAt.getSupportedTypes()) {
                    if (equals.equals(str)) {
                        name = codecInfoAt.getName();
                        break;
                    }
                }
                name = null;
                if (name != null) {
                    Object obj;
                    Logging.v(TAG, "Found candidate encoder " + name);
                    for (String equals2 : strArr) {
                        if (name.startsWith(equals2)) {
                            obj = 1;
                            break;
                        }
                    }
                    obj = null;
                    if (obj != null) {
                        CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str);
                        for (int toHexString : capabilitiesForType.colorFormats) {
                            Logging.v(TAG, "   Color: 0x" + Integer.toHexString(toHexString));
                        }
                        for (int toHexString2 : iArr) {
                            for (int i2 : capabilitiesForType.colorFormats) {
                                if (i2 == toHexString2) {
                                    Logging.d(TAG, "Found target encoder for mime " + str + " : " + name + ". Color: 0x" + Integer.toHexString(i2));
                                    return new EncoderProperties(name, i2);
                                }
                            }
                        }
                        continue;
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            }
        }
        return null;
    }

    public static boolean isVp8HwSupported() {
        return findHwEncoder(VP8_MIME_TYPE, supportedVp8HwCodecPrefixes, supportedColorList) != null;
    }

    public static boolean isVp9HwSupported() {
        return findHwEncoder(VP9_MIME_TYPE, supportedVp9HwCodecPrefixes, supportedColorList) != null;
    }

    public static boolean isH264HwSupported() {
        return findHwEncoder(H264_MIME_TYPE, supportedH264HwCodecPrefixes, supportedColorList) != null;
    }

    public static boolean isVp8HwSupportedUsingTextures() {
        return findHwEncoder(VP8_MIME_TYPE, supportedVp8HwCodecPrefixes, supportedSurfaceColorList) != null;
    }

    public static boolean isVp9HwSupportedUsingTextures() {
        return findHwEncoder(VP9_MIME_TYPE, supportedVp9HwCodecPrefixes, supportedSurfaceColorList) != null;
    }

    public static boolean isH264HwSupportedUsingTextures() {
        return findHwEncoder(H264_MIME_TYPE, supportedH264HwCodecPrefixes, supportedSurfaceColorList) != null;
    }

    private void checkOnMediaCodecThread() {
        if (this.mediaCodecThread.getId() != Thread.currentThread().getId()) {
            throw new RuntimeException("MediaCodecVideoEncoder previously operated on " + this.mediaCodecThread + " but is now called on " + Thread.currentThread());
        }
    }

    public static void printStackTrace() {
        if (runningInstance != null && runningInstance.mediaCodecThread != null) {
            StackTraceElement[] stackTrace = runningInstance.mediaCodecThread.getStackTrace();
            if (stackTrace.length > 0) {
                Logging.d(TAG, "MediaCodecVideoEncoder stacks trace:");
                for (StackTraceElement stackTraceElement : stackTrace) {
                    Logging.d(TAG, stackTraceElement.toString());
                }
            }
        }
    }

    static MediaCodec createByCodecName(String str) {
        try {
            return MediaCodec.createByCodecName(str);
        } catch (Exception e) {
            return null;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean initEncode(VideoCodecType videoCodecType, int i, int i2, int i3, int i4, Context context) {
        boolean z = context != null;
        Logging.d(TAG, "Java initEncode: " + videoCodecType + " : " + i + " x " + i2 + ". @ " + i3 + " kbps. Fps: " + i4 + ". Encode from texture : " + z);
        this.width = i;
        this.height = i2;
        if (this.mediaCodecThread != null) {
            throw new RuntimeException("Forgot to release()?");
        }
        EncoderProperties encoderProperties = null;
        String str = null;
        int i5 = 0;
        if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP8) {
            str = VP8_MIME_TYPE;
            encoderProperties = findHwEncoder(VP8_MIME_TYPE, supportedVp8HwCodecPrefixes, z ? supportedSurfaceColorList : supportedColorList);
            i5 = 100;
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP9) {
            str = VP9_MIME_TYPE;
            encoderProperties = findHwEncoder(VP9_MIME_TYPE, supportedH264HwCodecPrefixes, z ? supportedSurfaceColorList : supportedColorList);
            i5 = 100;
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_H264) {
            str = H264_MIME_TYPE;
            encoderProperties = findHwEncoder(H264_MIME_TYPE, supportedH264HwCodecPrefixes, z ? supportedSurfaceColorList : supportedColorList);
            i5 = 20;
        }
        if (encoderProperties == null) {
            throw new RuntimeException("Can not find HW encoder for " + videoCodecType);
        }
        runningInstance = this;
        this.colorFormat = encoderProperties.colorFormat;
        Logging.d(TAG, "Color format: " + this.colorFormat);
        this.mediaCodecThread = Thread.currentThread();
        try {
            MediaFormat createVideoFormat = MediaFormat.createVideoFormat(str, i, i2);
            createVideoFormat.setInteger("bitrate", i3 * 1000);
            createVideoFormat.setInteger("bitrate-mode", 2);
            createVideoFormat.setInteger("color-format", encoderProperties.colorFormat);
            createVideoFormat.setInteger("frame-rate", i4);
            createVideoFormat.setInteger("i-frame-interval", i5);
            Logging.d(TAG, "  Format: " + createVideoFormat);
            this.mediaCodec = createByCodecName(encoderProperties.codecName);
            this.type = videoCodecType;
            if (this.mediaCodec == null) {
                Logging.e(TAG, "Can not create media encoder");
                return false;
            }
            this.mediaCodec.configure(createVideoFormat, null, null, 1);
            if (z) {
                this.eglBase = new EglBase14(context, EglBase.CONFIG_RECORDABLE);
                this.inputSurface = this.mediaCodec.createInputSurface();
                this.eglBase.createSurface(this.inputSurface);
                this.drawer = new GlRectDrawer();
            }
            this.mediaCodec.start();
            this.outputBuffers = this.mediaCodec.getOutputBuffers();
            Logging.d(TAG, "Output buffers: " + this.outputBuffers.length);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "initEncode failed", e);
            return false;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public ByteBuffer[] getInputBuffers() {
        ByteBuffer[] inputBuffers = this.mediaCodec.getInputBuffers();
        Logging.d(TAG, "Input buffers: " + inputBuffers.length);
        return inputBuffers;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean encodeBuffer(boolean z, int i, int i2, long j) {
        checkOnMediaCodecThread();
        if (z) {
            try {
                Logging.d(TAG, "Sync frame request");
                Bundle bundle = new Bundle();
                bundle.putInt("request-sync", 0);
                this.mediaCodec.setParameters(bundle);
            } catch (IllegalStateException e) {
                Logging.e(TAG, "encodeBuffer failed", e);
                return false;
            }
        }
        this.mediaCodec.queueInputBuffer(i, 0, i2, j, 0);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public boolean encodeTexture(boolean z, int i, float[] fArr, long j) {
        checkOnMediaCodecThread();
        if (z) {
            try {
                Logging.d(TAG, "Sync frame request");
                Bundle bundle = new Bundle();
                bundle.putInt("request-sync", 0);
                this.mediaCodec.setParameters(bundle);
            } catch (RuntimeException e) {
                Logging.e(TAG, "encodeTexture failed", e);
                return false;
            }
        }
        this.eglBase.makeCurrent();
        GLES20.glClear(16384);
        this.drawer.drawOes(i, fArr, 0, 0, this.width, this.height);
        this.eglBase.swapBuffers(TimeUnit.MICROSECONDS.toNanos(j));
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public void release() {
        Logging.d(TAG, "Java releaseEncoder");
        checkOnMediaCodecThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() {
            public void run() {
                try {
                    Logging.d(MediaCodecVideoEncoder.TAG, "Java releaseEncoder on release thread");
                    MediaCodecVideoEncoder.this.mediaCodec.stop();
                    MediaCodecVideoEncoder.this.mediaCodec.release();
                    Logging.d(MediaCodecVideoEncoder.TAG, "Java releaseEncoder on release thread done");
                } catch (Exception e) {
                    Logging.e(MediaCodecVideoEncoder.TAG, "Media encoder release failed", e);
                }
                countDownLatch.countDown();
            }
        }).start();
        if (!ThreadUtils.awaitUninterruptibly(countDownLatch, 5000)) {
            Logging.e(TAG, "Media encoder release timeout");
            codecErrors++;
            if (errorCallback != null) {
                Logging.e(TAG, "Invoke codec error callback. Errors: " + codecErrors);
                errorCallback.onMediaCodecVideoEncoderCriticalError(codecErrors);
            }
        }
        this.mediaCodec = null;
        this.mediaCodecThread = null;
        if (this.drawer != null) {
            this.drawer.release();
            this.drawer = null;
        }
        if (this.eglBase != null) {
            this.eglBase.release();
            this.eglBase = null;
        }
        if (this.inputSurface != null) {
            this.inputSurface.release();
            this.inputSurface = null;
        }
        runningInstance = null;
        Logging.d(TAG, "Java releaseEncoder done");
    }

    private boolean setRates(int i, int i2) {
        checkOnMediaCodecThread();
        Logging.v(TAG, "setRates: " + i + " kbps. Fps: " + i2);
        try {
            Bundle bundle = new Bundle();
            bundle.putInt("video-bitrate", i * 1000);
            this.mediaCodec.setParameters(bundle);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "setRates failed", e);
            return false;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public int dequeueInputBuffer() {
        checkOnMediaCodecThread();
        try {
            return this.mediaCodec.dequeueInputBuffer(0);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueIntputBuffer failed", e);
            return -2;
        }
    }

    /* Access modifiers changed, original: 0000 */
    public OutputBufferInfo dequeueOutputBuffer() {
        boolean z = true;
        checkOnMediaCodecThread();
        try {
            BufferInfo bufferInfo = new BufferInfo();
            int dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
            if (dequeueOutputBuffer >= 0) {
                if ((bufferInfo.flags & 2) != 0) {
                    Logging.d(TAG, "Config frame generated. Offset: " + bufferInfo.offset + ". Size: " + bufferInfo.size);
                    this.configData = ByteBuffer.allocateDirect(bufferInfo.size);
                    this.outputBuffers[dequeueOutputBuffer].position(bufferInfo.offset);
                    this.outputBuffers[dequeueOutputBuffer].limit(bufferInfo.offset + bufferInfo.size);
                    this.configData.put(this.outputBuffers[dequeueOutputBuffer]);
                    this.mediaCodec.releaseOutputBuffer(dequeueOutputBuffer, false);
                    dequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0);
                }
            }
            if (dequeueOutputBuffer >= 0) {
                ByteBuffer duplicate = this.outputBuffers[dequeueOutputBuffer].duplicate();
                duplicate.position(bufferInfo.offset);
                duplicate.limit(bufferInfo.offset + bufferInfo.size);
                if ((bufferInfo.flags & 1) == 0) {
                    z = false;
                }
                if (z) {
                    Logging.d(TAG, "Sync frame generated");
                }
                if (!z || this.type != VideoCodecType.VIDEO_CODEC_H264) {
                    return new OutputBufferInfo(dequeueOutputBuffer, duplicate.slice(), z, bufferInfo.presentationTimeUs);
                }
                Logging.d(TAG, "Appending config frame of size " + this.configData.capacity() + " to output buffer with offset " + bufferInfo.offset + ", size " + bufferInfo.size);
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(this.configData.capacity() + bufferInfo.size);
                this.configData.rewind();
                allocateDirect.put(this.configData);
                allocateDirect.put(duplicate);
                allocateDirect.position(0);
                return new OutputBufferInfo(dequeueOutputBuffer, allocateDirect, z, bufferInfo.presentationTimeUs);
            } else if (dequeueOutputBuffer == -3) {
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                return dequeueOutputBuffer();
            } else if (dequeueOutputBuffer == -2) {
                return dequeueOutputBuffer();
            } else {
                if (dequeueOutputBuffer == -1) {
                    return null;
                }
                throw new RuntimeException("dequeueOutputBuffer: " + dequeueOutputBuffer);
            }
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueOutputBuffer failed", e);
            return new OutputBufferInfo(-1, null, false, -1);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public boolean releaseOutputBuffer(int i) {
        checkOnMediaCodecThread();
        try {
            this.mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "releaseOutputBuffer failed", e);
            return false;
        }
    }
}
