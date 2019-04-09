package com.baidu.techain.core;

import android.content.IntentFilter;
import android.text.TextUtils;
import com.baidu.techain.b.e;

public final class h {
    public String a;
    public String b;
    public String c;
    public IntentFilter d;

    public h(String str, IntentFilter intentFilter, String str2, String str3) {
        this.a = str;
        this.d = intentFilter;
        this.b = str2;
        this.c = str3;
    }

    public final boolean a(h hVar) {
        if (hVar != null) {
            try {
                if (!(TextUtils.isEmpty(hVar.a) || TextUtils.isEmpty(hVar.b) || TextUtils.isEmpty(hVar.c))) {
                    if (!hVar.a.equals(this.a) || !hVar.b.equals(this.b) || !hVar.c.equals(this.c)) {
                        return false;
                    }
                    if (hVar.d == null || this.d == null || this.d == hVar.d) {
                        return true;
                    }
                    return false;
                }
            } catch (Throwable th) {
                e.a();
                return false;
            }
        }
        return false;
    }

    public final String toString() {
        try {
            return "PluginloaderIntentFilter:" + this.a + "-" + this.b + "-" + this.c + "-" + this.d;
        } catch (Throwable th) {
            return "";
        }
    }
}
