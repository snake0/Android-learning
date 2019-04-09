package com.mqunar.dispatcher;

import android.content.Intent;

final class h implements Runnable {
    final /* synthetic */ Object a;
    final /* synthetic */ Intent b;

    h(Object obj, Intent intent) {
        this.a = obj;
        this.b = intent;
    }

    public void run() {
        DispatcherLogic.processIntentInner(this.a, this.b);
    }
}
