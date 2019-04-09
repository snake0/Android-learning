package com.baidu.mapsdkplatform.comapi.synchronization.data;

import android.os.Message;
import com.baidu.mapsdkplatform.comapi.synchronization.b.c.a;
import com.baidu.mapsdkplatform.comapi.synchronization.b.e;

class g extends e {
    final /* synthetic */ f a;

    g(f fVar) {
        this.a = fVar;
    }

    public void a(a aVar) {
        Message obtainMessage = this.a.j.obtainMessage();
        obtainMessage.what = 100001;
        obtainMessage.obj = aVar;
        if (this.a.j != null) {
            this.a.j.sendMessage(obtainMessage);
        }
        this.a.k = this.a.k + 1;
    }

    public void a(String str) {
        Message obtainMessage = this.a.j.obtainMessage();
        obtainMessage.what = 100000;
        obtainMessage.obj = str;
        if (this.a.j != null) {
            this.a.j.sendMessage(obtainMessage);
        }
        this.a.k = 0;
    }
}
