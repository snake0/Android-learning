package com.baidu.mapsdkplatform.comapi.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.view.animation.Interpolator;
import com.baidu.mapapi.animation.Animation;
import com.baidu.mapapi.animation.Animation.AnimationListener;
import com.baidu.mapapi.map.Marker;

public class j extends c {
    private Animator a = null;
    private long b = 0;
    private Interpolator c = null;
    private AnimationListener d = null;
    private int e = 1;
    private int f = 0;
    private float[] g;
    private int h = 1;

    public j(int i, float... fArr) {
        this.g = fArr;
        this.h = i;
    }

    /* Access modifiers changed, original: 0000 */
    @TargetApi(11)
    public ObjectAnimator a(Marker marker) {
        ObjectAnimator objectAnimator = null;
        if (this.h == 1) {
            objectAnimator = ObjectAnimator.ofFloat(marker, "scaleX", this.g);
        } else if (this.h == 2) {
            objectAnimator = ObjectAnimator.ofFloat(marker, "scaleY", this.g);
        }
        if (objectAnimator != null) {
            objectAnimator.setRepeatCount(this.f);
            objectAnimator.setRepeatMode(c());
            objectAnimator.setDuration(this.b);
            if (this.c != null) {
                objectAnimator.setInterpolator(this.c);
            }
        }
        return objectAnimator;
    }

    @TargetApi(11)
    public void a() {
        if (this.a != null) {
            this.a.start();
        }
    }

    public void a(int i) {
        this.e = i;
    }

    public void a(long j) {
        if (j < 0) {
            j = 0;
        }
        this.b = j;
    }

    /* Access modifiers changed, original: protected */
    @TargetApi(11)
    public void a(Animator animator) {
        if (animator != null) {
            animator.addListener(new k(this));
        }
    }

    public void a(Interpolator interpolator) {
        this.c = interpolator;
    }

    public void a(AnimationListener animationListener) {
        this.d = animationListener;
    }

    @TargetApi(11)
    public void a(Marker marker, Animation animation) {
        this.a = a(marker);
        a(this.a);
    }

    @TargetApi(11)
    public void b() {
        if (this.a != null) {
            this.a.cancel();
            this.a = null;
        }
    }

    public void b(int i) {
        if (i > 0) {
            this.f = i;
        }
    }

    public int c() {
        return this.e;
    }

    public void c(int i) {
    }
}
