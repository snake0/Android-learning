package com.mqunar.dispatcher;

import android.content.Intent;
import com.mqunar.splash.AgreeListener;

class e implements AgreeListener {
    final /* synthetic */ Intent a;
    final /* synthetic */ DispatcherActivity b;

    e(DispatcherActivity dispatcherActivity, Intent intent) {
        this.b = dispatcherActivity;
        this.a = intent;
    }

    public void agreeClick() {
        this.b.b(this.a);
    }
}
