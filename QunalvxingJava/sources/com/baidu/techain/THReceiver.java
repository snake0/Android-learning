package com.baidu.techain;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.baidu.techain.b.e;
import com.baidu.techain.b.r;

public class THReceiver extends BroadcastReceiver {
    public void onReceive(final Context context, final Intent intent) {
        if (intent != null) {
            try {
                new StringBuilder().append(intent.toString());
                b.a();
                r.a().a(new Runnable() {
                    public final void run() {
                        try {
                            new StringBuilder().append(intent.toString());
                            b.a();
                            System.currentTimeMillis();
                            if ("r".equals(intent.getStringExtra("t"))) {
                                String stringExtra = intent.getStringExtra("c");
                                Intent intent = new Intent();
                                intent.putExtra("t", "r");
                                intent.putExtra("c", stringExtra);
                                a.a(context.getApplicationContext(), intent);
                            }
                        } catch (Throwable th) {
                            e.a();
                        }
                    }
                });
            } catch (Throwable th) {
                e.a();
            }
        }
    }
}
