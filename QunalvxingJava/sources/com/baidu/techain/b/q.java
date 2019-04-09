package com.baidu.techain.b;

import android.content.Context;
import android.os.Process;

public final class q {
    public static boolean a(Context context) {
        try {
            if (context.checkPermission("android.permission.READ_PHONE_STATE", Process.myPid(), Process.myUid()) == -1) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }
}
