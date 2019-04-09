package com.mqunar.qutui;

import android.content.SharedPreferences.Editor;

class l implements Runnable {
    final /* synthetic */ Editor a;
    final /* synthetic */ k b;

    l(k kVar, Editor editor) {
        this.b = kVar;
        this.a = editor;
    }

    public void run() {
        this.a.commit();
    }
}
