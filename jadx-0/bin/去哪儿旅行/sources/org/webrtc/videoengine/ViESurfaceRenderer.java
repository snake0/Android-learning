package org.webrtc.videoengine;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Process;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import org.webrtc.Logging;

public class ViESurfaceRenderer implements Callback {
    private static final String TAG = "WEBRTC";
    private Bitmap bitmap = null;
    private ByteBuffer byteBuffer = null;
    private float dstBottomScale = 1.0f;
    private float dstLeftScale = 0.0f;
    private Rect dstRect = new Rect();
    private float dstRightScale = 1.0f;
    private float dstTopScale = 0.0f;
    private Rect srcRect = new Rect();
    private SurfaceHolder surfaceHolder;

    public ViESurfaceRenderer(SurfaceView surfaceView) {
        this.surfaceHolder = surfaceView.getHolder();
        if (this.surfaceHolder != null) {
            this.surfaceHolder.addCallback(this);
        }
    }

    private void changeDestRect(int i, int i2) {
        this.dstRect.right = (int) (((float) this.dstRect.left) + (this.dstRightScale * ((float) i)));
        this.dstRect.bottom = (int) (((float) this.dstRect.top) + (this.dstBottomScale * ((float) i2)));
    }

    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        Logging.d(TAG, "ViESurfaceRender::surfaceChanged");
        changeDestRect(i2, i3);
        Logging.d(TAG, "ViESurfaceRender::surfaceChanged in_width:" + i2 + " in_height:" + i3 + " srcRect.left:" + this.srcRect.left + " srcRect.top:" + this.srcRect.top + " srcRect.right:" + this.srcRect.right + " srcRect.bottom:" + this.srcRect.bottom + " dstRect.left:" + this.dstRect.left + " dstRect.top:" + this.dstRect.top + " dstRect.right:" + this.dstRect.right + " dstRect.bottom:" + this.dstRect.bottom);
    }

    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        Canvas lockCanvas = this.surfaceHolder.lockCanvas();
        if (lockCanvas != null) {
            Rect surfaceFrame = this.surfaceHolder.getSurfaceFrame();
            if (surfaceFrame != null) {
                changeDestRect(surfaceFrame.right - surfaceFrame.left, surfaceFrame.bottom - surfaceFrame.top);
                Logging.d(TAG, "ViESurfaceRender::surfaceCreated dst.left:" + surfaceFrame.left + " dst.top:" + surfaceFrame.top + " dst.right:" + surfaceFrame.right + " dst.bottom:" + surfaceFrame.bottom + " srcRect.left:" + this.srcRect.left + " srcRect.top:" + this.srcRect.top + " srcRect.right:" + this.srcRect.right + " srcRect.bottom:" + this.srcRect.bottom + " dstRect.left:" + this.dstRect.left + " dstRect.top:" + this.dstRect.top + " dstRect.right:" + this.dstRect.right + " dstRect.bottom:" + this.dstRect.bottom);
            }
            this.surfaceHolder.unlockCanvasAndPost(lockCanvas);
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        Logging.d(TAG, "ViESurfaceRenderer::surfaceDestroyed");
        this.bitmap = null;
        this.byteBuffer = null;
    }

    public Bitmap CreateBitmap(int i, int i2) {
        Logging.d(TAG, "CreateByteBitmap " + i + ":" + i2);
        if (this.bitmap == null) {
            try {
                Process.setThreadPriority(-4);
            } catch (Exception e) {
            }
        }
        this.bitmap = Bitmap.createBitmap(i, i2, Config.RGB_565);
        this.srcRect.left = 0;
        this.srcRect.top = 0;
        this.srcRect.bottom = i2;
        this.srcRect.right = i;
        return this.bitmap;
    }

    public ByteBuffer CreateByteBuffer(int i, int i2) {
        Logging.d(TAG, "CreateByteBuffer " + i + ":" + i2);
        if (this.bitmap == null) {
            this.bitmap = CreateBitmap(i, i2);
            this.byteBuffer = ByteBuffer.allocateDirect((i * i2) * 2);
        }
        return this.byteBuffer;
    }

    public void SetCoordinates(float f, float f2, float f3, float f4) {
        Logging.d(TAG, "SetCoordinates " + f + "," + f2 + ":" + f3 + "," + f4);
        this.dstLeftScale = f;
        this.dstTopScale = f2;
        this.dstRightScale = f3;
        this.dstBottomScale = f4;
    }

    private void saveBitmapToJPEG(int i, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.bitmap.compress(CompressFormat.JPEG, 100, byteArrayOutputStream);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(String.format("/sdcard/render_%d.jpg", new Object[]{Long.valueOf(System.currentTimeMillis())}));
            fileOutputStream.write(byteArrayOutputStream.toByteArray());
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (FileNotFoundException | IOException e) {
        }
    }

    public void DrawByteBuffer() {
        if (this.byteBuffer != null) {
            this.byteBuffer.rewind();
            this.bitmap.copyPixelsFromBuffer(this.byteBuffer);
            DrawBitmap();
        }
    }

    public void DrawBitmap() {
        if (this.bitmap != null) {
            Canvas lockCanvas = this.surfaceHolder.lockCanvas();
            if (lockCanvas != null) {
                lockCanvas.drawBitmap(this.bitmap, this.srcRect, this.dstRect, null);
                this.surfaceHolder.unlockCanvasAndPost(lockCanvas);
            }
        }
    }
}
