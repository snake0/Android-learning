package com.mqunar.tools;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class a implements OnGlobalLayoutListener {
    final /* synthetic */ AndroidBug5497Workaround a;

    a(AndroidBug5497Workaround androidBug5497Workaround) {
        this.a = androidBug5497Workaround;
    }

    public void onGlobalLayout() {
        this.a.a();
    }
}
