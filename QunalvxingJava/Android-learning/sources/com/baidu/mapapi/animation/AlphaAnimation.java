package com.baidu.mapapi.animation;

import android.view.animation.Interpolator;
import com.baidu.mapapi.animation.Animation.AnimationListener;
import com.baidu.mapapi.animation.Animation.RepeatMode;
import com.baidu.mapsdkplatform.comapi.a.a;

public class AlphaAnimation extends Animation {
    public AlphaAnimation(float... fArr) {
        if (fArr == null || fArr.length == 0) {
            throw new NullPointerException("the alphas is null");
        }
        this.bdAnimation = new a(fArr);
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
