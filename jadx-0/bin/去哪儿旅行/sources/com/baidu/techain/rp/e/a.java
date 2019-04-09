package com.baidu.techain.rp.e;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.baidu.techain.b;
import com.baidu.techain.b.f;
import com.baidu.techain.e;

public final class a extends BroadcastReceiver {
    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            try {
                String action = intent.getAction();
                if (!TextUtils.isEmpty(action)) {
                    if (action.equals("android.intent.action.BOOT_COMPLETED")) {
                        f.a(context).a();
                    } else if (action.equals("com.b.r.p") && intent != null) {
                        e eVar = new e(context);
                        int x = eVar.x();
                        new StringBuilder().append(x);
                        b.a();
                        com.baidu.techain.b.e.a(context, (long) (x * 3600000));
                        f.a(context).c();
                        eVar.d(System.currentTimeMillis());
                    }
                }
            } catch (Throwable th) {
                com.baidu.techain.b.e.a();
            }
        }
    }
}
