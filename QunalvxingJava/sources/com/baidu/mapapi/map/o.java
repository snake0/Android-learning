package com.baidu.mapapi.map;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.ViewGroup.LayoutParams;

class o implements AnimatorUpdateListener {
    final /* synthetic */ LayoutParams a;
    final /* synthetic */ SwipeDismissTouchListener b;

    o(SwipeDismissTouchListener swipeDismissTouchListener, LayoutParams layoutParams) {
        this.b = swipeDismissTouchListener;
        this.a = layoutParams;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.b.e.setLayoutParams(this.a);
    }
}
