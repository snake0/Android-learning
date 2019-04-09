package com.baidu.location.c;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.util.Log;
import com.baidu.location.LLSInterface;
import com.baidu.location.a.d;
import com.baidu.location.a.h;
import com.baidu.location.a.j;
import com.baidu.location.a.l;
import com.baidu.location.a.m;
import com.baidu.location.a.o;
import com.baidu.location.a.u;
import com.baidu.location.a.v;
import com.baidu.location.b.b;
import com.baidu.location.b.e;
import com.baidu.location.f;
import java.lang.ref.WeakReference;
import org.apache.http.HttpStatus;

public class a extends Service implements LLSInterface {
    static a a = null;
    private static long f = 0;
    Messenger b = null;
    private Looper c;
    private HandlerThread d;
    private boolean e = false;

    public class a extends Handler {
        private final WeakReference<a> a;

        public a(Looper looper, a aVar) {
            super(looper);
            this.a = new WeakReference(aVar);
        }

        public void handleMessage(Message message) {
            a aVar = (a) this.a.get();
            if (aVar != null) {
                if (f.isServing) {
                    switch (message.what) {
                        case 11:
                            aVar.a(message);
                            break;
                        case 12:
                            aVar.b(message);
                            break;
                        case 15:
                            aVar.c(message);
                            break;
                        case 22:
                            l.c().b(message);
                            break;
                        case 41:
                            l.c().h();
                            break;
                        case HttpStatus.SC_UNAUTHORIZED /*401*/:
                            try {
                                message.getData();
                                break;
                            } catch (Exception e) {
                                break;
                            }
                        case HttpStatus.SC_METHOD_NOT_ALLOWED /*405*/:
                            byte[] byteArray = message.getData().getByteArray("errorid");
                            if (byteArray != null && byteArray.length > 0) {
                                String str = new String(byteArray);
                                break;
                            }
                        case HttpStatus.SC_NOT_ACCEPTABLE /*406*/:
                            h.a().e();
                            break;
                    }
                }
                if (message.what == 1) {
                    aVar.b();
                }
                if (message.what == 0) {
                    aVar.a();
                }
                super.handleMessage(message);
            }
        }
    }

    private void a() {
        j.a().a(f.getServiceContext());
        m.a().b();
        h.a().b();
        e.a().b();
        b.a().b();
        com.baidu.location.d.b.a();
        l.c().d();
        com.baidu.location.b.h.a().c();
    }

    private void a(Message message) {
        Log.d("baidu_location_service", "baidu location service register ...");
        com.baidu.location.a.a.a().a(message);
        o.b().c();
    }

    private void b() {
        com.baidu.location.b.h.a().d();
        e.a().e();
        b.a().c();
        l.c().e();
        h.a().c();
        v.e();
        com.baidu.location.a.a.a().b();
        d.a().b();
        m.a().c();
        Log.d("baidu_location_service", "baidu location service has stoped ...");
        if (!this.e) {
            Process.killProcess(Process.myPid());
        }
    }

    private void b(Message message) {
        com.baidu.location.a.a.a().b(message);
    }

    private void c(Message message) {
        com.baidu.location.a.a.a().c(message);
    }

    public double getVersion() {
        return 7.519999980926514d;
    }

    public IBinder onBind(Intent intent) {
        Bundle extras = intent.getExtras();
        boolean z = false;
        if (extras != null) {
            com.baidu.location.d.b.g = extras.getString("key");
            com.baidu.location.d.b.f = extras.getString("sign");
            this.e = extras.getBoolean("kill_process");
            z = extras.getBoolean("cache_exception");
        }
        if (!z) {
        }
        return this.b.getBinder();
    }

    public void onCreate(Context context) {
        f = System.currentTimeMillis();
        this.d = u.a();
        this.c = this.d.getLooper();
        if (this.c == null) {
            a = new a(Looper.getMainLooper(), this);
        } else {
            a = new a(this.c, this);
        }
        this.b = new Messenger(a);
        a.sendEmptyMessage(0);
        Log.d("baidu_location_service", "baidu location service start1 ...20171027..." + Process.myPid());
    }

    public void onDestroy() {
        try {
            a.sendEmptyMessage(1);
        } catch (Exception e) {
            Log.d("baidu_location_service", "baidu location service stop exception...");
            b();
            Process.killProcess(Process.myPid());
        }
        Log.d("baidu_location_service", "baidu location service stop ...");
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        return 1;
    }

    public void onTaskRemoved(Intent intent) {
        Log.d("baidu_location_service", "baidu location service remove task...");
    }

    public boolean onUnBind(Intent intent) {
        return false;
    }
}
