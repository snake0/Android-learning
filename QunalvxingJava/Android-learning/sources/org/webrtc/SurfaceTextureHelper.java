package org.webrtc;

import android.graphics.SurfaceTexture;
import android.graphics.SurfaceTexture.OnFrameAvailableListener;
import android.opengl.GLES20;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.webrtc.EglBase.Context;

class SurfaceTextureHelper {
    private static final String TAG = "SurfaceTextureHelper";
    private final EglBase eglBase;
    private final Handler handler;
    private boolean hasPendingTexture;
    private boolean isOwningThread;
    private boolean isQuitting;
    private volatile boolean isTextureInUse;
    private OnTextureFrameAvailableListener listener;
    private final int oesTextureId;
    private final SurfaceTexture surfaceTexture;
    private YuvConverter yuvConverter;

    public interface OnTextureFrameAvailableListener {
        void onTextureFrameAvailable(int i, float[] fArr, long j);
    }

    class YuvConverter {
        private static final FloatBuffer DEVICE_RECTANGLE = GlUtil.createFloatBuffer(new float[]{-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f});
        private static final String FRAGMENT_SHADER = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 interp_tc;\n\nuniform samplerExternalOES oesTex;\nuniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      texture2D(oesTex, interp_tc + 1.5 * xUnit).rgb);\n}\n";
        private static final FloatBuffer TEXTURE_RECTANGLE = GlUtil.createFloatBuffer(new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f});
        private static final String VERTEX_SHADER = "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n";
        private int coeffsLoc;
        private final EglBase eglBase;
        private boolean released = false;
        private final GlShader shader;
        private int texMatrixLoc;
        private int xUnitLoc;

        YuvConverter(Context context) {
            this.eglBase = EglBase.create(context, EglBase.CONFIG_PIXEL_RGBA_BUFFER);
            this.eglBase.createDummyPbufferSurface();
            this.eglBase.makeCurrent();
            this.shader = new GlShader(VERTEX_SHADER, FRAGMENT_SHADER);
            this.shader.useProgram();
            this.texMatrixLoc = this.shader.getUniformLocation("texMatrix");
            this.xUnitLoc = this.shader.getUniformLocation("xUnit");
            this.coeffsLoc = this.shader.getUniformLocation("coeffs");
            GLES20.glUniform1i(this.shader.getUniformLocation("oesTex"), 0);
            GlUtil.checkNoGLES2Error("Initialize fragment shader uniform values.");
            this.shader.setVertexAttribArray("in_pos", 2, DEVICE_RECTANGLE);
            this.shader.setVertexAttribArray("in_tc", 2, TEXTURE_RECTANGLE);
            this.eglBase.detachCurrent();
        }

        /* Access modifiers changed, original: declared_synchronized */
        public synchronized void convert(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, float[] fArr) {
            if (this.released) {
                throw new IllegalStateException("YuvConverter.convert called on released object");
            } else if (i3 % 8 != 0) {
                throw new IllegalArgumentException("Invalid stride, must be a multiple of 8");
            } else if (i3 < i) {
                throw new IllegalArgumentException("Invalid stride, must >= width");
            } else {
                int i5 = (i + 3) / 4;
                int i6 = (i + 7) / 8;
                int i7 = (i2 + 1) / 2;
                int i8 = i2 + i7;
                if (byteBuffer.capacity() < i3 * i8) {
                    throw new IllegalArgumentException("YuvConverter.convert called with too small buffer");
                }
                float[] multiplyMatrices = RendererCommon.multiplyMatrices(fArr, RendererCommon.verticalFlipMatrix());
                if (!this.eglBase.hasSurface()) {
                    this.eglBase.createPbufferSurface(i3 / 4, i8);
                } else if (!(this.eglBase.surfaceWidth() == i3 / 4 && this.eglBase.surfaceHeight() == i8)) {
                    this.eglBase.releaseSurface();
                    this.eglBase.createPbufferSurface(i3 / 4, i8);
                }
                this.eglBase.makeCurrent();
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(36197, i4);
                GLES20.glUniformMatrix4fv(this.texMatrixLoc, 1, false, multiplyMatrices, 0);
                GLES20.glViewport(0, 0, i5, i2);
                GLES20.glUniform2f(this.xUnitLoc, multiplyMatrices[0] / ((float) i), multiplyMatrices[1] / ((float) i));
                GLES20.glUniform4f(this.coeffsLoc, 0.299f, 0.587f, 0.114f, 0.0f);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glViewport(0, i2, i6, i7);
                GLES20.glUniform2f(this.xUnitLoc, multiplyMatrices[0] / (2.0f * ((float) i)), multiplyMatrices[1] / (2.0f * ((float) i)));
                GLES20.glUniform4f(this.coeffsLoc, -0.169f, -0.331f, 0.499f, 0.5f);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glViewport(i3 / 8, i2, i6, i7);
                GLES20.glUniform4f(this.coeffsLoc, 0.499f, -0.418f, -0.0813f, 0.5f);
                GLES20.glDrawArrays(5, 0, 4);
                GLES20.glReadPixels(0, 0, i3 / 4, i8, 6408, 5121, byteBuffer);
                GlUtil.checkNoGLES2Error("YuvConverter.convert");
                GLES20.glBindTexture(36197, 0);
                this.eglBase.detachCurrent();
            }
        }

        /* Access modifiers changed, original: declared_synchronized */
        public synchronized void release() {
            this.released = true;
            this.eglBase.makeCurrent();
            this.shader.release();
            this.eglBase.release();
        }
    }

    /* synthetic */ SurfaceTextureHelper(Context context, Handler handler, boolean z, AnonymousClass1 anonymousClass1) {
        this(context, handler, z);
    }

    public static SurfaceTextureHelper create(Context context) {
        return create(context, null);
    }

    public static SurfaceTextureHelper create(final Context context, final Handler handler) {
        Handler handler2;
        if (handler != null) {
            handler2 = handler;
        } else {
            HandlerThread handlerThread = new HandlerThread(TAG);
            handlerThread.start();
            handler2 = new Handler(handlerThread.getLooper());
        }
        return (SurfaceTextureHelper) ThreadUtils.invokeUninterruptibly(handler2, new Callable<SurfaceTextureHelper>() {
            public SurfaceTextureHelper call() {
                return new SurfaceTextureHelper(context, handler2, handler == null, null);
            }
        });
    }

    private SurfaceTextureHelper(Context context, Handler handler, boolean z) {
        this.hasPendingTexture = false;
        this.isTextureInUse = false;
        this.isQuitting = false;
        if (handler.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("SurfaceTextureHelper must be created on the handler thread");
        }
        this.handler = handler;
        this.isOwningThread = z;
        this.eglBase = EglBase.create(context, EglBase.CONFIG_PIXEL_BUFFER);
        this.eglBase.createDummyPbufferSurface();
        this.eglBase.makeCurrent();
        this.oesTextureId = GlUtil.generateTexture(36197);
        this.surfaceTexture = new SurfaceTexture(this.oesTextureId);
    }

    private YuvConverter getYuvConverter() {
        if (this.yuvConverter != null) {
            return this.yuvConverter;
        }
        YuvConverter yuvConverter;
        synchronized (this) {
            if (this.yuvConverter == null) {
                this.yuvConverter = new YuvConverter(this.eglBase.getEglBaseContext());
            }
            yuvConverter = this.yuvConverter;
        }
        return yuvConverter;
    }

    public void setListener(OnTextureFrameAvailableListener onTextureFrameAvailableListener) {
        if (this.listener != null) {
            throw new IllegalStateException("SurfaceTextureHelper listener has already been set.");
        }
        this.listener = onTextureFrameAvailableListener;
        this.surfaceTexture.setOnFrameAvailableListener(new OnFrameAvailableListener() {
            public void onFrameAvailable(SurfaceTexture surfaceTexture) {
                SurfaceTextureHelper.this.hasPendingTexture = true;
                SurfaceTextureHelper.this.tryDeliverTextureFrame();
            }
        });
    }

    public SurfaceTexture getSurfaceTexture() {
        return this.surfaceTexture;
    }

    public void returnTextureFrame() {
        this.handler.post(new Runnable() {
            public void run() {
                SurfaceTextureHelper.this.isTextureInUse = false;
                if (SurfaceTextureHelper.this.isQuitting) {
                    SurfaceTextureHelper.this.release();
                } else {
                    SurfaceTextureHelper.this.tryDeliverTextureFrame();
                }
            }
        });
    }

    public boolean isTextureInUse() {
        return this.isTextureInUse;
    }

    public void disconnect() {
        if (!this.isOwningThread) {
            throw new IllegalStateException("Must call disconnect(handler).");
        } else if (this.handler.getLooper().getThread() == Thread.currentThread()) {
            this.isQuitting = true;
            if (!this.isTextureInUse) {
                release();
            }
        } else {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            this.handler.postAtFrontOfQueue(new Runnable() {
                public void run() {
                    SurfaceTextureHelper.this.isQuitting = true;
                    countDownLatch.countDown();
                    if (!SurfaceTextureHelper.this.isTextureInUse) {
                        SurfaceTextureHelper.this.release();
                    }
                }
            });
            ThreadUtils.awaitUninterruptibly(countDownLatch);
        }
    }

    public void disconnect(Handler handler) {
        if (this.handler != handler) {
            throw new IllegalStateException("Wrong handler.");
        }
        this.isOwningThread = true;
        disconnect();
    }

    public void textureToYUV(ByteBuffer byteBuffer, int i, int i2, int i3, int i4, float[] fArr) {
        if (i4 != this.oesTextureId) {
            throw new IllegalStateException("textureToByteBuffer called with unexpected textureId");
        }
        getYuvConverter().convert(byteBuffer, i, i2, i3, i4, fArr);
    }

    private void tryDeliverTextureFrame() {
        if (this.handler.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Wrong thread.");
        } else if (!this.isQuitting && this.hasPendingTexture && !this.isTextureInUse) {
            this.isTextureInUse = true;
            this.hasPendingTexture = false;
            this.eglBase.makeCurrent();
            this.surfaceTexture.updateTexImage();
            float[] fArr = new float[16];
            this.surfaceTexture.getTransformMatrix(fArr);
            this.listener.onTextureFrameAvailable(this.oesTextureId, fArr, VERSION.SDK_INT >= 14 ? this.surfaceTexture.getTimestamp() : TimeUnit.MILLISECONDS.toNanos(SystemClock.elapsedRealtime()));
        }
    }

    private void release() {
        if (this.handler.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Wrong thread.");
        } else if (this.isTextureInUse || !this.isQuitting) {
            throw new IllegalStateException("Unexpected release.");
        } else {
            synchronized (this) {
                if (this.yuvConverter != null) {
                    this.yuvConverter.release();
                }
            }
            this.eglBase.makeCurrent();
            GLES20.glDeleteTextures(1, new int[]{this.oesTextureId}, 0);
            this.surfaceTexture.release();
            this.eglBase.release();
            this.handler.getLooper().quit();
        }
    }
}
