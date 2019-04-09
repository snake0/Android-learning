package com.baidu.mapsdkplatform.comapi.synchronization.data;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.baidu.mapapi.synchronization.DisplayOptions;
import com.baidu.mapapi.synchronization.RoleOptions;
import com.mqunar.tools.DateTimeUtils;
import java.lang.Thread.State;

public class d {
    private static final String a = d.class.getSimpleName();
    private static int b = 0;
    private static f c;
    private static Thread d;
    private static volatile boolean e = true;
    private static volatile long g = 5000;
    private static long h = 5000;
    private static volatile boolean i = false;
    private static int j = 1000;
    private c f;
    private boolean k;

    class a {
        private static final d a = new d();
    }

    class b implements Runnable {
        private String a;

        b(String str) {
            this.a = str;
        }

        public void run() {
            while (!d.e) {
                if (d.c != null) {
                    d.c.a(d.b, d.i);
                    d.i = false;
                }
                try {
                    Thread.sleep(d.g);
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
                int d = d.c != null ? d.c.d() : 0;
                if (d >= 3) {
                    d = (d / 3) + 1;
                    d.g = d.h * ((long) d) >= DateTimeUtils.ONE_MINUTE ? DateTimeUtils.ONE_MINUTE : ((long) d) * d.h;
                } else {
                    d.g = d.h;
                }
            }
        }
    }

    class c extends Handler {
        c() {
        }

        private void a(int i) {
            if (d.j != i) {
                d.i = true;
                d.j = i;
                return;
            }
            d.i = false;
        }

        public void handleMessage(Message message) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(d.a, "The order state is: " + message.what);
            a(message.what);
            switch (message.what) {
                case 0:
                case 5:
                    d.p();
                    return;
                case 1:
                case 2:
                case 3:
                case 4:
                    d.q();
                    return;
                default:
                    com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(d.a, "The order state is undefined");
                    return;
            }
        }
    }

    private d() {
        this.k = true;
    }

    static d a() {
        return a.a;
    }

    private void o() {
        e = true;
        d.interrupt();
        d = null;
    }

    private static synchronized void p() {
        synchronized (d.class) {
            e = true;
        }
    }

    private static synchronized void q() {
        synchronized (d.class) {
            e = false;
            if (State.NEW == d.getState()) {
                d.start();
            }
            if (State.TERMINATED == d.getState()) {
                d = null;
                d = new Thread(new b(Thread.currentThread().getName()));
                d.start();
            }
        }
    }

    /* Access modifiers changed, original: declared_synchronized */
    public synchronized void a(int i) {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.c(a, "The order state = " + i);
        b = i;
        if (this.f == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncDataRequestHandler is null");
        } else {
            Message obtainMessage = this.f.obtainMessage();
            obtainMessage.what = i;
            this.f.sendMessage(obtainMessage);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(View view) {
        if (c != null) {
            c.a(view);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(DisplayOptions displayOptions) {
        if (c != null) {
            c.a(displayOptions);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(RoleOptions roleOptions) {
        if (c != null) {
            c.a(roleOptions);
        }
    }

    public void a(RoleOptions roleOptions, DisplayOptions displayOptions) {
        c = f.a();
        if (c != null) {
            c.b();
            c.a(roleOptions);
            c.a(displayOptions);
        }
        d = new Thread(new b(Thread.currentThread().getName()));
        this.f = new c();
    }

    /* Access modifiers changed, original: 0000 */
    public void a(j jVar) {
        if (c != null) {
            c.a(jVar);
        }
    }

    public void b() {
        if (this.k) {
            this.k = false;
        } else {
            q();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void b(int i) {
        h = (long) (i * 1000);
        g = (long) (i * 1000);
    }

    /* Access modifiers changed, original: 0000 */
    public void b(View view) {
        if (c != null) {
            c.b(view);
        }
    }

    public void c() {
        p();
    }

    /* Access modifiers changed, original: 0000 */
    public void c(View view) {
        if (c != null) {
            c.c(view);
        }
    }

    public void d() {
        o();
        this.f.removeCallbacksAndMessages(null);
        b = 0;
        h = 5000;
        i = false;
        j = 1000;
        this.k = true;
        if (c != null) {
            c.h();
        }
    }
}
