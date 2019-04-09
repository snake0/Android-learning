package com.baidu.location.b;

import com.baidu.location.a.l;
import com.baidu.location.a.t;
import com.baidu.location.a.v;

class i implements Runnable {
    final /* synthetic */ a a;

    i(a aVar) {
        this.a = aVar;
    }

    public void run() {
        h.this.r();
        l.c().h();
        if (System.currentTimeMillis() - t.b() <= 5000) {
            v.a(t.c(), h.this.n(), t.d(), t.a());
        }
    }
}
