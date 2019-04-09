package org.acra.anr;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import com.mqunar.libtask.ProgressType;
import org.acra.ACRA;

class d {
    private boolean a = true;
    private final int b = 120000;
    private boolean c = false;
    private volatile int d = 0;
    private final Handler e = new Handler(Looper.getMainLooper());
    private final Runnable f = new Runnable() {
        public void run() {
            d.this.d = (d.this.d + 1) % ProgressType.PRO_END;
        }
    };

    d() {
    }

    public void a(@NonNull final Context context) {
        ACRA.f.b(ACRA.e, "startANRMonitor WatchDog");
        new Thread() {
            public void run() {
                setName("ANR-WatchDog");
                while (d.this.a) {
                    boolean z;
                    int a = d.this.d;
                    d.this.e.post(d.this.f);
                    if (!d.this.c) {
                        SystemClock.sleep(5000);
                    } else if (a.a(context, 25, 2, "/data/anr/traces.txt")) {
                        d.this.c = false;
                        SystemClock.sleep(120000);
                    }
                    d dVar = d.this;
                    if (d.this.d == a) {
                        z = true;
                    } else {
                        z = false;
                    }
                    dVar.c = z;
                }
            }
        }.start();
    }
}
