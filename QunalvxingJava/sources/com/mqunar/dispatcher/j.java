package com.mqunar.dispatcher;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.mqunar.core.QSpider;

class j extends Handler {
    final /* synthetic */ DispatcherProxyActivity a;

    j(DispatcherProxyActivity dispatcherProxyActivity, Looper looper) {
        this.a = dispatcherProxyActivity;
        super(looper);
    }

    public void handleMessage(Message message) {
        super.handleMessage(message);
        if (QSpider.loadDone) {
            this.a.a();
        } else {
            sendEmptyMessageDelayed(0, 500);
        }
    }
}
