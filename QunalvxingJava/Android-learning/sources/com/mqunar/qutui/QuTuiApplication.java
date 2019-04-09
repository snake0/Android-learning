package com.mqunar.qutui;

import android.content.IntentFilter;
import android.os.Build.VERSION;
import com.mqunar.core.basectx.application.QApplication;

public class QuTuiApplication extends QApplication {
    public void onCreate() {
        super.onCreate();
        if (26 <= VERSION.SDK_INT) {
            a();
        }
    }

    private void a() {
        QutuiReceiver qutuiReceiver = new QutuiReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT");
        intentFilter.addCategory(getApplicationContext().getPackageName());
        getApplicationContext().registerReceiver(qutuiReceiver, intentFilter);
    }
}
