package com.baidu.techain.rp.d.a;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.techain.b;
import com.baidu.techain.b.e;
import com.baidu.techain.b.h;
import org.json.JSONObject;

public final class a {
    public Context a;

    public a(Context context) {
        this.a = context;
    }

    public final boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        new StringBuilder().append(str);
        b.a();
        try {
            TextUtils.isEmpty(str2);
            String str3 = e.b() + "p/1/r";
            new StringBuilder().append(str3);
            b.a();
            str3 = h.a(this.a, str3, str);
            if (TextUtils.isEmpty(str3)) {
                return false;
            }
            if (new JSONObject(str3).getInt("response") != 1) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            e.a();
            return true;
        }
    }
}
