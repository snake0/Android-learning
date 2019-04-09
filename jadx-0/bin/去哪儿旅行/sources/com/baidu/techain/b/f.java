package com.baidu.techain.b;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Message;
import com.baidu.techain.rp.f.a;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class f {
    private static Lock b = new ReentrantLock();
    private static f c = null;
    public a a;

    private f(Context context) {
        this.a = new a(context);
    }

    public static f a(Context context) {
        if (c != null) {
            return c;
        }
        try {
            b.lock();
            if (c == null) {
                c = new f(context);
            }
            f fVar = c;
            return fVar;
        } finally {
            b.unlock();
        }
    }

    public final void a() {
        a aVar = this.a;
        if (aVar.d == null) {
            aVar.d = new com.baidu.techain.rp.e.a();
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.b.r.p");
        aVar.b.getApplicationContext().registerReceiver(aVar.d, intentFilter);
        Message message = new Message();
        message.what = 5;
        aVar.a(message);
    }

    public final void b() {
        a aVar = this.a;
        Message message = new Message();
        message.what = 7;
        aVar.a(message);
    }

    public final void c() {
        Message message = new Message();
        message.what = 2;
        this.a.a(message);
    }
}
