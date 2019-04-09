package com.mqunar.libtask;

import android.annotation.TargetApi;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;

@TargetApi(11)
class g implements Executor {
    final ArrayDeque<Runnable> a;
    Runnable b;

    private g() {
        this.a = new ArrayDeque();
    }

    /* synthetic */ g(a aVar) {
        this();
    }

    public synchronized void execute(Runnable runnable) {
        this.a.offer(new h(this, runnable));
        if (this.b == null) {
            a();
        }
    }

    /* Access modifiers changed, original: protected|declared_synchronized */
    public synchronized void a() {
        Runnable runnable = (Runnable) this.a.poll();
        this.b = runnable;
        if (runnable != null) {
            AsyncTask.THREAD_POOL_EXECUTOR.execute(this.b);
        }
    }
}
