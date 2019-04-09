package com.baidu.techain;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;
import com.baidu.techain.b.e;
import com.baidu.techain.b.r;
import com.baidu.techain.core.ApkInfo;
import com.baidu.techain.core.g;

public class TechainService extends Service {
    private volatile int a = 0;

    public int onStartCommand(final Intent intent, int i, int i2) {
        if (intent == null) {
            try {
                return super.onStartCommand(intent, i, i2);
            } catch (Throwable th) {
                e.a();
            }
        } else {
            this.a++;
            final String stringExtra = intent.getStringExtra("from_plugin_package");
            new StringBuilder().append(intent.getAction()).append(" ").append(stringExtra);
            b.a();
            r.a().a(new Runnable() {
                public final void run() {
                    try {
                        long currentTimeMillis = System.currentTimeMillis();
                        new StringBuilder().append(intent.getAction()).append(" ").append(stringExtra);
                        b.a();
                        if (TextUtils.isEmpty(stringExtra)) {
                            TechainService.a(TechainService.this);
                        } else if (TechainService.this.getPackageName().equals(stringExtra)) {
                            TechainService.a(TechainService.this, TechainService.this.getClassLoader(), intent);
                            TechainService.a(TechainService.this);
                        } else {
                            g a = g.a();
                            if (a == null) {
                                TechainService.a(TechainService.this);
                                return;
                            }
                            ApkInfo d = a.d(stringExtra);
                            new StringBuilder("i=").append(d);
                            b.a();
                            if (d == null) {
                                TechainService.a(TechainService.this);
                                return;
                            }
                            TechainService.a(TechainService.this, d.classLoader, intent);
                            new StringBuilder().append(((float) (System.currentTimeMillis() - currentTimeMillis)) / 1000.0f).append(intent.toString()).append(" ").append(stringExtra);
                            b.a();
                            TechainService.a(TechainService.this);
                        }
                    } catch (Throwable th) {
                        e.a();
                        TechainService.a(TechainService.this);
                    }
                }
            });
            return super.onStartCommand(intent, i, i2);
        }
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    static /* synthetic */ void a(TechainService techainService) {
        try {
            techainService.a--;
            if (techainService.a <= 0) {
                techainService.a = 0;
                b.a();
                techainService.stopSelf();
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    static /* synthetic */ void a(TechainService techainService, ClassLoader classLoader, Intent intent) {
        try {
            String stringExtra = intent.getStringExtra("target_class");
            Class loadClass = classLoader.loadClass(stringExtra);
            Object newInstance = loadClass.newInstance();
            new StringBuilder().append(stringExtra).append("-").append(newInstance);
            b.a();
            stringExtra = intent.getStringExtra("target_method");
            new StringBuilder().append(stringExtra);
            b.a();
            loadClass.getDeclaredMethod(stringExtra, new Class[]{Context.class, Intent.class}).invoke(newInstance, new Object[]{techainService.getApplicationContext(), intent});
        } catch (Throwable th) {
            th.getMessage();
            b.b();
        }
    }
}
