package com.mqunar.qutui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.mqunar.tools.log.QLog;

public class QutuiReceiver extends BroadcastReceiver {
    private final String a = "com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT";
    private final String b = "com.mqunar.atom.qutui.OBJ_MESSAGE";

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        QLog.d("com.mqunar.qutui.QutuiReceiver#onReceive Msg " + intent.getAction(), new Object[0]);
        if ("com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT".equals(action)) {
            Bundle extras = intent.getExtras();
            if (extras != null) {
                action = extras.getString("com.mqunar.atom.qutui.OBJ_MESSAGE");
                if (!TextUtils.isEmpty(action)) {
                    PushManager.getInstance().dispatchMessage(action);
                }
            }
        }
    }
}
