package com.mqunar.dispatcher;

import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.text.TextUtils;
import com.mqunar.core.basectx.activity.QActivity;
import com.mqunar.splash.QWebView;
import com.mqunar.tools.ImmersiveStatusBarUtils;

public class WebActivity extends QActivity {
    /* Access modifiers changed, original: protected */
    public boolean needOnCreateSendBroadcast() {
        return false;
    }

    /* Access modifiers changed, original: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getIntent().getExtras();
        }
        if (bundle == null || bundle.isEmpty()) {
            finish();
            return;
        }
        String string = bundle.getString("url");
        if (TextUtils.isEmpty(string)) {
            finish();
            return;
        }
        QWebView qWebView = new QWebView(this);
        setContentView(qWebView);
        qWebView.loadUrl(string);
        ImmersiveStatusBarUtils.setStatusBarBgColorAndOffset(this, ViewCompat.MEASURED_STATE_MASK);
    }
}
