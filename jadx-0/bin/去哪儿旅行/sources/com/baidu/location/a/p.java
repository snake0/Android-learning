package com.baidu.location.a;

import com.baidu.location.b.h;
import com.baidu.location.f;

class p implements Runnable {
    final /* synthetic */ o a;

    p(o oVar) {
        this.a = oVar;
    }

    public void run() {
        if (h.i() || this.a.a(f.getServiceContext())) {
            this.a.d();
        }
    }
}
