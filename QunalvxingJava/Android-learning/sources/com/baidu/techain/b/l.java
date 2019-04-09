package com.baidu.techain.b;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

public final class l {
    private static final l c = new l();
    private HandlerThread a = new HandlerThread("rp_th", 10);
    private Handler b;

    private l() {
        this.a.start();
        this.b = new Handler(this.a.getLooper());
    }

    public static Looper a() {
        return c.b.getLooper();
    }
}
