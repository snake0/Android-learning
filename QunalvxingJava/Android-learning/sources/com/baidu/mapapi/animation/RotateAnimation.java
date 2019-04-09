package com.baidu.mapapi.animation;

import android.view.animation.Interpolator;
import com.baidu.mapapi.animation.Animation.AnimationListener;
import com.baidu.mapapi.animation.Animation.RepeatMode;
import com.baidu.mapsdkplatform.comapi.a.f;

public class RotateAnimation extends Animation {
    public RotateAnimation(float f, float f2) {
        if (f < 0.0f || f2 < 0.0f) {
            throw new NullPointerException("the degrees can't less than zero");
        }
        this.bdAnimation = new f(f, f2);
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