package com.mqunar.idscan.decode;

import android.os.Handler;
import android.os.Looper;
import com.mqunar.idscan.activity.a;
import com.mqunar.tools.log.QLog;
import java.util.concurrent.CountDownLatch;

public final class c extends Thread {
    private final a a;
    private Handler b;
    private final CountDownLatch c = new CountDownLatch(1);

    c(a aVar) {
        this.a = aVar;
    }

    /* Access modifiers changed, original: final */
    public final Handler a() {
        try {
            this.c.await();
        } catch (InterruptedException e) {
            QLog.e(e);
        }
        return this.b;
    }

    public final void run() {
        Looper.prepare();
        this.b = new a(this.a);
        this.c.countDown();
        Looper.loop();
    }
}
