package com.baidu.techain.ac;

import android.content.Context;
import android.util.Pair;
import com.baidu.techain.a.a;
import com.baidu.techain.core.ApkInfo;
import com.baidu.techain.core.e;
import com.baidu.techain.core.g;
import java.util.List;

public class TH {
    public static final int TYPE_VERSION = 1;

    private TH() {
    }

    public static void init(Context context, String str, String str2, int... iArr) {
        e.a(context, 0, str, str2, iArr);
    }

    public static void initDelay(Context context, int i, String str, String str2, int... iArr) {
        e.a(context, i, str, str2, iArr);
    }

    public static boolean tinvoke(int i, String str) {
        return tinvoke(i, str, null);
    }

    public static Pair<Integer, Object> tinvokeSync(int i, String str) {
        return tinvokeSync(i, str, null, new Object[0]);
    }

    public static Pair<Integer, Object> tinvokeSync(int i, String str, Class<?>[] clsArr, Object... objArr) {
        return e.a(i, str, (Class[]) clsArr, objArr);
    }

    public static boolean tinvoke(int i, String str, Callback callback) {
        return tinvoke(i, str, callback, null, new Object[0]);
    }

    public static boolean tinvoke(int i, String str, Class<?>[] clsArr, Object... objArr) {
        return tinvoke(i, str, null, clsArr, objArr);
    }

    public static boolean tinvoke(int i, String str, Callback callback, Class<?>[] clsArr, Object... objArr) {
        return e.a(i, str, callback, (Class[]) clsArr, objArr);
    }

    public static Object getPInfo(int i, int i2) {
        switch (i2) {
            case 1:
                if (i <= 0) {
                    return "";
                }
                try {
                    g a = g.a();
                    if (a == null) {
                        return "";
                    }
                    List<ApkInfo> b = a.b();
                    if (b == null || b.size() <= 0) {
                        return "";
                    }
                    for (ApkInfo apkInfo : b) {
                        if (apkInfo.key == i) {
                            if (apkInfo.versionName == null) {
                                return "";
                            }
                            return apkInfo.versionName;
                        }
                    }
                    return "";
                } catch (Throwable th) {
                    com.baidu.techain.b.e.a();
                    return "";
                }
            default:
                return "";
        }
    }

    public static String getVersion(Context context) {
        return "3.1.6.1";
    }

    public static String gzfi(Context context, String str, int i, String str2) {
        return e.a(context, str, i, str2);
    }

    public static String gzfi(Context context, String str, int i) {
        return e.a(context, str, i, null);
    }

    public static String gz(Context context) {
        return e.a(context);
    }

    public static boolean isInitSuc(int i) {
        try {
            a aVar = a.d;
            if (aVar == null) {
                return false;
            }
            ApkInfo a = aVar.a(i);
            if (a == null || a.initStatus != 1) {
                return false;
            }
            g a2 = g.a();
            if (a2 == null || a2.d(a.packageName) == null) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return false;
        }
    }
}
