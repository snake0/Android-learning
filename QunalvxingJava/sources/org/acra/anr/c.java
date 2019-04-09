package org.acra.anr;

import android.content.Context;
import android.os.FileObserver;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import java.io.File;
import org.acra.ACRA;

class c {
    private static FileObserver c;
    private final int a = 5000;
    private boolean b = true;

    final class a extends Thread {
        private int b;

        a(int i) {
            this.b = i;
        }

        public void run() {
            SystemClock.sleep((long) this.b);
            c.this.b = true;
        }
    }

    c() {
    }

    public final void a(@NonNull final Context context) {
        ACRA.f.b(ACRA.e, "startANRMonitor FileObserver");
        c = new FileObserver("/data/anr/", 8) {
            public void onEvent(int i, String str) {
                if (str != null && str.contains("trace") && c.this.b && new File("/data/anr/" + str).length() != 0) {
                    c.this.b = false;
                    a.a(context, 50, 1, "/data/anr/" + str);
                    new a(5000).start();
                }
            }
        };
        c.startWatching();
    }
}
