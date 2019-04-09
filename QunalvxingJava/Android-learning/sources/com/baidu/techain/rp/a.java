package com.baidu.techain.rp;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.techain.b.g;
import com.baidu.techain.e;

public final class a {
    public static String a(Context context) {
        String str = "";
        try {
            e eVar = new e(context);
            str = eVar.b.getString("rpiiem", "");
            if (TextUtils.isEmpty(str)) {
                str = g.e(context);
                if (!TextUtils.isEmpty(str)) {
                    eVar.d.putString("rpiiem", str);
                    eVar.d.commit();
                }
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
        return str;
    }

    public static String b(Context context) {
        String str = "";
        try {
            e eVar = new e(context);
            str = eVar.b.getString("rpandid", "");
            if (TextUtils.isEmpty(str)) {
                str = g.f(context);
                if (!TextUtils.isEmpty(str)) {
                    eVar.d.putString("rpandid", str);
                    eVar.d.commit();
                }
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
        return str;
    }

    public static String c(Context context) {
        String str = "";
        try {
            e eVar = new e(context);
            str = eVar.b.getString("rpmacadd", "");
            if (TextUtils.isEmpty(str)) {
                str = g.a();
                if (!TextUtils.isEmpty(str)) {
                    eVar.d.putString("rpmacadd", str);
                    eVar.d.commit();
                }
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
        return str;
    }
}
