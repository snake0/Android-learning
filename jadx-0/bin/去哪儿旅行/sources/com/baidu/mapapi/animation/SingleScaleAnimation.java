package com.baidu.mapapi.animation;

import android.view.animation.Interpolator;
import com.baidu.mapapi.animation.Animation.AnimationListener;
import com.baidu.mapapi.animation.Animation.RepeatMode;
import com.baidu.mapsdkplatform.comapi.a.j;

public class SingleScaleAnimation extends Animation {

    public enum ScaleType {
        SCALE_X,
        SCALE_Y
    }

    public SingleScaleAnimation(ScaleType scaleType, float... fArr) {
        if (fArr == null || fArr.length == 0) {
            throw new NullPointerException("the scales is null");
        } else if (scaleType == ScaleType.SCALE_X) {
            this.bdAnimation = new j(1, fArr);
        } else if (scaleType == ScaleType.SCALE_Y) {
            this.bdAnimation = new j(2, fArr);
        }
    }

    public void cancel() {
        this.bdAnimation.b();
    }

    public void setAnimationListener(AnimationListener animationListener) {
        this.bdAnimation.a(animationListener);
    }

    public void setDuration(long j) {
        this.bdAnimation.a(j);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.bdAnimation.a(interpolator);
    }

    public void setRepeatCount(int i) {
        this.bdAnimation.b(i);
    }

    public void setRepeatMode(RepeatMode repeatMode) {
        if (repeatMode == RepeatMode.RESTART) {
            this.bdAnimation.a(1);
        } else if (repeatMode == RepeatMode.REVERSE) {
            this.bdAnimation.a(2);
        }
    }
}
