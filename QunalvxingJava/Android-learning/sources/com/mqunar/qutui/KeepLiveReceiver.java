package com.mqunar.qutui;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import com.mqunar.core.basectx.receiver.QBroadcastReceiver;
import com.mqunar.tools.log.QLog;

public class KeepLiveReceiver extends QBroadcastReceiver {
    private final String a = "KeepLiveReceiver";
    private boolean b;

    public KeepLiveReceiver() {
        boolean z = VERSION.SDK_INT <= 25 || !Build.BRAND.equals("vivo");
        this.b = z;
    }

    public void onReceive(Context context, Intent intent) {
        QLog.d("KeepLiveReceiver", "onreceive" + intent.getAction(), new Object[0]);
        String action = intent.getAction();
        if (this.b && action.equals("android.intent.action.SCREEN_OFF")) {
            Intent intent2 = new Intent(context, KActivity.class);
            intent2.addFlags(268435456);
            try {
                context.startActivity(intent2);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            QLog.d("KeepLiveReceiver", "-------screen off", new Object[0]);
        } else if (this.b && action.equals("android.intent.action.SCREEN_ON")) {
            context.sendBroadcast(new Intent("finish activity"));
            QLog.d("KeepLiveReceiver", "------screen on", new Object[0]);
        }
    }
}
