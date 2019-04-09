package com.baidu.techain.b;

import android.content.Context;

public final class t {
    public static String a(Context context) {
        String str = null;
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (Throwable th) {
            e.a();
            return str;
        }
    }
}
