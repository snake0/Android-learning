package com.mqunar.dispatcher;

import android.net.Uri;
import org.acra.ACRA;

final class g implements Runnable {
    final /* synthetic */ Uri a;

    g(Uri uri) {
        this.a = uri;
    }

    public void run() {
        ACRA.getErrorReporter().handleSilentException(new RuntimeException(this.a.toString()));
    }
}
