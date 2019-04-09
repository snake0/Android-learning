package com.mqunar.qapm.tracing;

import android.app.Activity;
import com.mqunar.qapm.utils.AndroidUtils;

class a implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ WatchMan c;

    a(WatchMan watchMan, Activity activity, String str) {
        this.c = watchMan;
        this.a = activity;
        this.b = str;
    }

    public void run() {
        if (this.a.getWindow().peekDecorView() != null) {
            AndroidUtils.getPageName(this.a);
            this.c.h = this.b;
        }
    }
}
