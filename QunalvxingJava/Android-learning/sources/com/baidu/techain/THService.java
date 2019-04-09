package com.baidu.techain;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.baidu.techain.b.e;
import com.baidu.techain.b.r;

public class THService extends Service {
    public int onStartCommand(final Intent intent, int i, int i2) {
        if (intent == null) {
            try {
                return super.onStartCommand(intent, i, i2);
            } catch (Throwable th) {
                e.a();
            }
        } else {
            r.a().a(new Runnable() {
                public final void run() {
                    try {
                        new StringBuilder().append(intent.getAction());
                        b.a();
                        if ("s".equals(intent.getStringExtra("t"))) {
                            String stringExtra = intent.getStringExtra("c");
                            Intent intent = new Intent();
                            intent.putExtra("t", "s");
                            intent.putExtra("c", stringExtra);
                            a.a(THService.this.getApplicationContext(), intent);
                        }
                    } catch (Throwable th) {
                        e.a();
                    }
                }
            });
            return super.onStartCommand(intent, i, i2);
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }
}
