package com.baidu.mapsdkplatform.comapi.synchronization.render;

import android.os.HandlerThread;
import android.os.Message;
import com.baidu.mapapi.map.BaiduMap;
import com.baidu.mapapi.map.Marker;
import com.baidu.mapapi.synchronization.DisplayOptions;
import com.baidu.mapapi.synchronization.RoleOptions;
import com.baidu.mapsdkplatform.comapi.synchronization.data.SyncResponseResult;
import com.baidu.mapsdkplatform.comapi.synchronization.data.f;
import com.baidu.mapsdkplatform.comapi.synchronization.data.h;

public class e {
    private static final String a = e.class.getSimpleName();
    private static HandlerThread d;
    private int b;
    private int c;
    private b e;
    private f f;
    private h g;

    class a implements h {
        private a() {
        }

        public void a() {
            e.this.i();
            e.this.e(e.this.b);
        }

        public void b() {
            e.this.h();
        }
    }

    class b {
        private static final e a = new e();
    }

    private e() {
        this.b = 0;
        this.c = 5;
    }

    static e a() {
        return b.a;
    }

    private void e(int i) {
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.c(a, "The order state is: " + i);
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                f(i);
                return;
            default:
                com.baidu.mapsdkplatform.comapi.synchronization.c.a.c(a, "Undefined order state: " + i);
                return;
        }
    }

    private void f(int i) {
        if (this.e == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncRenderHandler is null");
            return;
        }
        Message obtainMessage = this.e.obtainMessage();
        obtainMessage.what = i;
        this.e.sendMessage(obtainMessage);
    }

    private void h() {
        RoleOptions e = this.f.e();
        DisplayOptions f = this.f.f();
        if (this.e == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncRenderHandler is null");
        } else {
            this.e.a(e, f, null, this.c);
        }
    }

    private void i() {
        SyncResponseResult syncResponseResult;
        RoleOptions e = this.f.e();
        DisplayOptions f = this.f.f();
        try {
            syncResponseResult = (SyncResponseResult) this.f.g().take();
        } catch (InterruptedException e2) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.a(a, "Get result when InterruptedException happened.", e2);
            syncResponseResult = null;
        }
        if (this.e == null) {
            com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncRenderHandler is null");
        } else {
            this.e.a(e, f, syncResponseResult, this.c);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void a(int i) {
        this.b = i;
        e(this.b);
    }

    public void a(BaiduMap baiduMap) {
        this.f = f.a();
        this.g = new a();
        this.f.a(this.g);
        d = new HandlerThread("SynchronizationRenderStrategy");
        d.start();
        this.e = new b(d.getLooper());
        this.e.a(baiduMap, this.f.e(), this.f.f());
    }

    /* Access modifiers changed, original: 0000 */
    public void a(c cVar) {
        if (this.e != null) {
            this.e.a(cVar);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Marker b() {
        if (this.e != null) {
            return this.e.a();
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncRenderHandler created failed");
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public void b(int i) {
        if (this.e != null) {
            this.e.a(i);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Marker c() {
        if (this.e != null) {
            return this.e.b();
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncRenderHandler created failed");
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public void c(int i) {
        if (this.e != null) {
            this.e.b(i);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Marker d() {
        if (this.e != null) {
            return this.e.c();
        }
        com.baidu.mapsdkplatform.comapi.synchronization.c.a.b(a, "SyncRenderHandler created failed");
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public void d(int i) {
        this.c = i;
    }

    public void e() {
        if (this.e != null) {
            this.e.d();
        }
    }

    public void f() {
        if (this.e != null) {
            this.e.e();
        }
    }

    public void g() {
        this.f.c();
        if (this.g != null) {
            this.g = null;
        }
        if (this.f != null) {
            this.f.h();
            this.f = null;
        }
        if (this.e != null) {
            this.e.f();
            this.e.removeCallbacksAndMessages(null);
            this.e = null;
        }
        if (d != null) {
            d.quit();
            d = null;
        }
    }
}
