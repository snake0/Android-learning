package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.iflytek.cloud.thirdparty.cu.a;

public class cv extends LinearLayout {
    private a a = null;
    protected boolean b = true;
    protected boolean c = true;

    public cv(Context context) {
        super(context);
    }

    protected static boolean a(ViewGroup viewGroup) {
        try {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                childAt.setOnClickListener(null);
                childAt.setBackgroundDrawable(null);
            }
            viewGroup.removeAllViews();
            viewGroup.setOnClickListener(null);
            viewGroup.setBackgroundDrawable(null);
            return true;
        } catch (Exception e) {
            cb.a(e);
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public void b() {
    }

    /* Access modifiers changed, original: protected */
    public void c() {
    }

    /* Access modifiers changed, original: protected */
    public boolean d() {
        try {
            a(this);
            return true;
        } catch (Exception e) {
            cb.a(e);
            return false;
        }
    }

    /* Access modifiers changed, original: protected */
    public void e() {
        Intent intent = new Intent();
        if (VERSION.SDK_INT > 10) {
            intent.setAction("android.settings.SETTINGS");
        } else {
            intent.setAction("android.settings.WIRELESS_SETTINGS");
        }
        intent.addFlags(268435456);
        getContext().startActivity(intent);
    }

    public void f() {
        if (this.a != null) {
            this.a.a();
        }
    }

    public void setExitCallBack(a aVar) {
        this.a = aVar;
    }
}
