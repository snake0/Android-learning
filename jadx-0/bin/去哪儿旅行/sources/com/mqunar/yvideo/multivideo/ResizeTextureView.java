package com.mqunar.yvideo.multivideo;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.TextureView;

@TargetApi(14)
public class ResizeTextureView extends TextureView {
    protected static final String TAG = "ResizeTextureView";
    public int currentVideoHeight;
    public int currentVideoWidth;
    public ScalableType mResizeMode;

    public ResizeTextureView(Context context) {
        super(context);
        this.currentVideoWidth = 0;
        this.currentVideoHeight = 0;
        this.mResizeMode = ScalableType.FIT_CENTER;
        this.currentVideoWidth = 0;
        this.currentVideoHeight = 0;
    }

    public ResizeTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentVideoWidth = 0;
        this.currentVideoHeight = 0;
        this.mResizeMode = ScalableType.FIT_CENTER;
        this.currentVideoWidth = 0;
        this.currentVideoHeight = 0;
    }

    public void setVideoSize(int i, int i2) {
        if (this.currentVideoWidth != i || this.currentVideoHeight != i2) {
            this.currentVideoWidth = i;
            this.currentVideoHeight = i2;
            requestLayout();
        }
    }

    public void setRotation(float f) {
        if (f != getRotation()) {
            super.setRotation(f);
            requestLayout();
        }
    }

    /* Access modifiers changed, original: protected */
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    /* Access modifiers changed, original: protected */
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (MediaManager.instance().mediaInterface.isPrepare()) {
            int i5 = this.currentVideoWidth;
            int i6 = this.currentVideoHeight;
            if (i5 != 0 && i6 != 0) {
                Matrix scaleMatrix = new ScaleManager(new Size(getWidth(), getHeight()), new Size(i5, i6)).getScaleMatrix(this.mResizeMode);
                if (scaleMatrix != null) {
                    setTransform(scaleMatrix);
                }
            }
        }
    }
}
