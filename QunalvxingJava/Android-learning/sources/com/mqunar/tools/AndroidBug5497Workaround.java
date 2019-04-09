package com.mqunar.tools;

import android.app.Activity;
import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class AndroidBug5497Workaround {
    private View a = this.c.getChildAt(0);
    private int b;
    private FrameLayout c;
    private LayoutParams d;

    AndroidBug5497Workaround(Activity activity) {
        this.c = (FrameLayout) activity.findViewById(16908290);
        this.a.getViewTreeObserver().addOnGlobalLayoutListener(new a(this));
        this.d = (LayoutParams) this.a.getLayoutParams();
    }

    private void a() {
        int b = b();
        if (b != this.b) {
            int height = this.c.getHeight() - this.c.getPaddingTop();
            if (height - b > height / 4) {
                this.d.height = b;
            } else {
                this.d.height = height;
            }
            this.a.requestLayout();
            this.b = b;
        }
    }

    private int b() {
        Rect rect = new Rect();
        this.a.getWindowVisibleDisplayFrame(rect);
        return rect.bottom - rect.top;
    }
}
