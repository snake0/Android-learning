package com.baidu.techain.b;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class r {
    private static final int b = Runtime.getRuntime().availableProcessors();
    private static volatile r c;
    private ThreadPoolExecutor a = null;

    private r() {
        int i = b <= 0 ? 1 : b;
        this.a = new ThreadPoolExecutor(i, i, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    public final void a(Runnable runnable) {
        try {
            this.a.execute(runnable);
        } catch (Throwable th) {
            e.a();
        }
    }

    public static r a() {
        if (c == null) {
            try {
                synchronized (r.class) {
                    if (c == null) {
                        c = new r();
                    }
                }
            } catch (Throwable th) {
                e.a();
            }
        }
        return c;
    }
}
