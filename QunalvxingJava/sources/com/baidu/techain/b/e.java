package com.baidu.techain.b;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import com.baidu.techain.TechainReceiver;
import com.baidu.techain.a.a;
import com.baidu.techain.ac.F;
import com.baidu.techain.ac.U;
import com.baidu.techain.b;
import com.baidu.techain.core.d;
import com.baidu.techain.rp.Report;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.yvideo.BuildConfig;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import org.apache.commons.io.IOUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public final class e {
    public static boolean a = false;
    public static String b;
    public static String c;
    public static TechainReceiver d = null;
    public static Map<String, String> e = new HashMap();
    private static String f = "";
    private static String g = "";
    private static int h = -1;

    public static void a() {
        b.c();
    }

    public static PublicKey a(PackageInfo packageInfo, String str) {
        PublicKey publicKey = null;
        if (!(packageInfo.signatures == null || packageInfo.signatures.length <= 0 || packageInfo.signatures[0] == null)) {
            try {
                publicKey = d.a(packageInfo.signatures[0]);
            } catch (Throwable th) {
                b.c();
            }
        }
        if (publicKey == null) {
            return d.a(str);
        }
        return publicKey;
    }

    public static String a(Class<?> cls) {
        try {
            if (cls.getCanonicalName().equals(Integer.TYPE.getCanonicalName())) {
                return Integer.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Boolean.TYPE.getCanonicalName())) {
                return Boolean.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Character.TYPE.getCanonicalName())) {
                return Character.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Byte.TYPE.getCanonicalName())) {
                return Byte.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Short.TYPE.getCanonicalName())) {
                return Short.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Long.TYPE.getCanonicalName())) {
                return Long.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Float.TYPE.getCanonicalName())) {
                return Float.class.getCanonicalName();
            }
            if (cls.getCanonicalName().equals(Double.TYPE.getCanonicalName())) {
                return Double.class.getCanonicalName();
            }
            return null;
        } catch (Throwable th) {
            b.c();
        }
    }

    public static Class<?> a(String str) {
        try {
            if (str.contains(Integer.class.getCanonicalName())) {
                return Integer.TYPE;
            }
            if (str.contains(Boolean.class.getCanonicalName())) {
                return Boolean.TYPE;
            }
            if (str.contains(Character.class.getCanonicalName())) {
                return Character.TYPE;
            }
            if (str.contains(Byte.class.getCanonicalName())) {
                return Byte.TYPE;
            }
            if (str.contains(Short.class.getCanonicalName())) {
                return Short.TYPE;
            }
            if (str.contains(Long.class.getCanonicalName())) {
                return Long.TYPE;
            }
            if (str.contains(Float.class.getCanonicalName())) {
                return Float.TYPE;
            }
            if (str.contains(Double.class.getCanonicalName())) {
                return Double.TYPE;
            }
            return null;
        } catch (Throwable th) {
            b.c();
        }
    }

    public static void a(String str, String str2) {
        b = str;
        c = str2;
    }

    public static boolean a(Context context) {
        try {
            String b = b(context);
            if (TextUtils.isEmpty(g)) {
                g = a(Process.myPid());
            }
            if (!TextUtils.isEmpty(b)) {
                return b.equals(g);
            }
            if (context.getPackageName().equals(g)) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            b.c();
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static java.lang.String b(android.content.Context r5) {
        /*
        r0 = f;	 Catch:{ Throwable -> 0x0056 }
        r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0056 }
        if (r0 != 0) goto L_0x000b;
    L_0x0008:
        r0 = f;	 Catch:{ Throwable -> 0x0056 }
    L_0x000a:
        return r0;
    L_0x000b:
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0056 }
        r1.<init>();	 Catch:{ Throwable -> 0x0056 }
        r0 = r5.getPackageName();	 Catch:{ Throwable -> 0x0056 }
        r0 = r1.append(r0);	 Catch:{ Throwable -> 0x0056 }
        r2 = ".techain.ac.provider";
        r0.append(r2);	 Catch:{ Throwable -> 0x0056 }
        r0 = 0;
        r2 = r5.getPackageManager();	 Catch:{ Throwable -> 0x0051 }
        r3 = r1.toString();	 Catch:{ Throwable -> 0x0051 }
        r4 = 0;
        r0 = r2.resolveContentProvider(r3, r4);	 Catch:{ Throwable -> 0x0051 }
        if (r0 == 0) goto L_0x0036;
    L_0x002d:
        r2 = r0.multiprocess;	 Catch:{ Throwable -> 0x0051 }
        r3 = 1;
        if (r2 == r3) goto L_0x0036;
    L_0x0032:
        r2 = r0.processName;	 Catch:{ Throwable -> 0x0051 }
        f = r2;	 Catch:{ Throwable -> 0x0051 }
    L_0x0036:
        if (r0 != 0) goto L_0x004e;
    L_0x0038:
        r0 = r1.toString();	 Catch:{ Throwable -> 0x005b }
        r1 = com.baidu.techain.TechainProvider.class;
        r1 = r1.getCanonicalName();	 Catch:{ Throwable -> 0x005b }
        r0 = b(r5, r0, r1);	 Catch:{ Throwable -> 0x005b }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x005b }
        if (r1 != 0) goto L_0x004e;
    L_0x004c:
        f = r0;	 Catch:{ Throwable -> 0x005b }
    L_0x004e:
        r0 = f;
        goto L_0x000a;
    L_0x0051:
        r2 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x0056 }
        goto L_0x0036;
    L_0x0056:
        r0 = move-exception;
        com.baidu.techain.b.c();
        goto L_0x004e;
    L_0x005b:
        r0 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x0056 }
        goto L_0x004e;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.b(android.content.Context):java.lang.String");
    }

    public static synchronized boolean a(Context context, boolean z) {
        boolean z2 = true;
        synchronized (e.class) {
            try {
                if (h == -1) {
                    String b = b(context);
                    if (TextUtils.isEmpty(b)) {
                        z2 = a(context, context.getPackageName(), true, z);
                    } else {
                        z2 = a(context, b, false, z);
                    }
                    if (z2) {
                        h = 1;
                    } else {
                        h = 0;
                    }
                } else if (h != 1) {
                    z2 = false;
                }
            } catch (Throwable th) {
                b.c();
                z2 = false;
            }
        }
        return z2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x005f A:{SYNTHETIC, Splitter:B:16:0x005f} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00d8  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x005f A:{SYNTHETIC, Splitter:B:16:0x005f} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0096 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00d8  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a4  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x005f A:{SYNTHETIC, Splitter:B:16:0x005f} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0075  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0096 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00d8  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00a4  */
    private static boolean a(android.content.Context r10, java.lang.String r11, boolean r12, boolean r13) {
        /*
        r4 = 0;
        r1 = 1;
        r2 = 0;
        r0 = new android.content.Intent;	 Catch:{ Throwable -> 0x00b2 }
        r0.<init>();	 Catch:{ Throwable -> 0x00b2 }
        r3 = new android.content.ComponentName;	 Catch:{ Throwable -> 0x00b2 }
        r5 = r10.getPackageName();	 Catch:{ Throwable -> 0x00b2 }
        r6 = com.baidu.techain.TechainService.class;
        r6 = r6.getCanonicalName();	 Catch:{ Throwable -> 0x00b2 }
        r3.<init>(r5, r6);	 Catch:{ Throwable -> 0x00b2 }
        r0.setComponent(r3);	 Catch:{ Throwable -> 0x00b2 }
        r3 = r10.getPackageManager();	 Catch:{ Throwable -> 0x00b2 }
        r5 = 0;
        r3 = r3.resolveService(r0, r5);	 Catch:{ Throwable -> 0x00b2 }
        if (r3 == 0) goto L_0x00f1;
    L_0x0025:
        r0 = r3.serviceInfo;	 Catch:{ Throwable -> 0x00ee }
        r0 = r0.processName;	 Catch:{ Throwable -> 0x00ee }
        r0 = r11.equals(r0);	 Catch:{ Throwable -> 0x00ee }
        if (r0 == 0) goto L_0x00f1;
    L_0x002f:
        r0 = r1;
    L_0x0030:
        r5 = r3;
        r3 = r0;
    L_0x0032:
        r0 = new android.content.Intent;	 Catch:{ Throwable -> 0x00b8 }
        r0.<init>();	 Catch:{ Throwable -> 0x00b8 }
        r6 = new android.content.ComponentName;	 Catch:{ Throwable -> 0x00b8 }
        r7 = r10.getPackageName();	 Catch:{ Throwable -> 0x00b8 }
        r8 = com.baidu.techain.TechainReceiver.class;
        r8 = r8.getCanonicalName();	 Catch:{ Throwable -> 0x00b8 }
        r6.<init>(r7, r8);	 Catch:{ Throwable -> 0x00b8 }
        r0.setComponent(r6);	 Catch:{ Throwable -> 0x00b8 }
        r0 = r10.getPackageManager();	 Catch:{ Throwable -> 0x00b8 }
        r7 = 0;
        r4 = r0.getReceiverInfo(r6, r7);	 Catch:{ Throwable -> 0x00b8 }
        if (r4 == 0) goto L_0x00b9;
    L_0x0054:
        r0 = r4.processName;	 Catch:{ Throwable -> 0x00b8 }
        r0 = r11.equals(r0);	 Catch:{ Throwable -> 0x00b8 }
        if (r0 == 0) goto L_0x00b9;
    L_0x005c:
        r0 = r1;
    L_0x005d:
        if (r5 != 0) goto L_0x00bb;
    L_0x005f:
        r4 = "service";
        r4 = b(r10, r11, r4);	 Catch:{ Throwable -> 0x00ce }
        r4 = r11.equals(r4);	 Catch:{ Throwable -> 0x00ce }
        if (r4 == 0) goto L_0x00ca;
    L_0x006b:
        r3 = r0;
        r0 = r1;
    L_0x006d:
        r4 = g;
        r4 = android.text.TextUtils.isEmpty(r4);
        if (r4 == 0) goto L_0x007f;
    L_0x0075:
        r4 = android.os.Process.myPid();
        r4 = a(r4);
        g = r4;
    L_0x007f:
        if (r13 == 0) goto L_0x00b0;
    L_0x0081:
        r4 = g;
        r4 = r4.equals(r11);
        if (r4 == 0) goto L_0x00b0;
    L_0x0089:
        if (r3 == 0) goto L_0x008f;
    L_0x008b:
        if (r0 == 0) goto L_0x008f;
    L_0x008d:
        if (r12 == 0) goto L_0x00b0;
    L_0x008f:
        r4 = new java.util.HashMap;
        r4.<init>();
        if (r3 != 0) goto L_0x00d6;
    L_0x0096:
        if (r0 != 0) goto L_0x00d6;
    L_0x0098:
        r1 = "0";
        r2 = 2;
        r2 = java.lang.Integer.toString(r2);
        r4.put(r1, r2);
    L_0x00a2:
        if (r12 == 0) goto L_0x00ab;
    L_0x00a4:
        r1 = "1";
        r2 = "0";
        r4.put(r1, r2);
    L_0x00ab:
        r1 = "1003140";
        a(r10, r1, r4);
    L_0x00b0:
        r0 = r0 & r3;
        return r0;
    L_0x00b2:
        r0 = move-exception;
        r0 = r4;
    L_0x00b4:
        r3 = r2;
        r5 = r0;
        goto L_0x0032;
    L_0x00b8:
        r0 = move-exception;
    L_0x00b9:
        r0 = r2;
        goto L_0x005d;
    L_0x00bb:
        if (r4 != 0) goto L_0x00ca;
    L_0x00bd:
        r4 = "receiver";
        r4 = b(r10, r11, r4);	 Catch:{ Throwable -> 0x00ce }
        r4 = r11.equals(r4);	 Catch:{ Throwable -> 0x00ce }
        if (r4 == 0) goto L_0x00ca;
    L_0x00c9:
        r0 = r1;
    L_0x00ca:
        r9 = r3;
        r3 = r0;
        r0 = r9;
        goto L_0x006d;
    L_0x00ce:
        r4 = move-exception;
        r9 = r3;
        r3 = r0;
        r0 = r9;
        com.baidu.techain.b.c();
        goto L_0x006d;
    L_0x00d6:
        if (r0 != 0) goto L_0x00e2;
    L_0x00d8:
        r2 = "0";
        r1 = java.lang.Integer.toString(r1);
        r4.put(r2, r1);
        goto L_0x00a2;
    L_0x00e2:
        if (r3 != 0) goto L_0x00a2;
    L_0x00e4:
        r1 = "0";
        r2 = java.lang.Integer.toString(r2);
        r4.put(r1, r2);
        goto L_0x00a2;
    L_0x00ee:
        r0 = move-exception;
        r0 = r3;
        goto L_0x00b4;
    L_0x00f1:
        r0 = r2;
        goto L_0x0030;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.a(android.content.Context, java.lang.String, boolean, boolean):boolean");
    }

    public static boolean b(String str) {
        try {
            if (TextUtils.isEmpty(g)) {
                g = a(Process.myPid());
            }
            if (str.equals(g)) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            b.c();
            return false;
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private static java.lang.String b(android.content.Context r11, java.lang.String r12, java.lang.String r13) {
        /*
        r10 = 2;
        r2 = 0;
        r3 = 1;
        r4 = 0;
        r0 = r11.getPackageManager();	 Catch:{ Throwable -> 0x019c }
        r1 = r11.getPackageName();	 Catch:{ Throwable -> 0x019c }
        r5 = 0;
        r0 = r0.getPackageInfo(r1, r5);	 Catch:{ Throwable -> 0x019c }
        r0 = r0.applicationInfo;	 Catch:{ Throwable -> 0x019c }
        r1 = r0.sourceDir;	 Catch:{ Throwable -> 0x019c }
        r0 = android.content.res.AssetManager.class;
        r0 = r0.newInstance();	 Catch:{ Throwable -> 0x019c }
        r0 = (android.content.res.AssetManager) r0;	 Catch:{ Throwable -> 0x019c }
        r5 = android.content.res.AssetManager.class;
        r6 = "addAssetPath";
        r7 = 1;
        r7 = new java.lang.Class[r7];	 Catch:{ Throwable -> 0x019c }
        r8 = 0;
        r9 = java.lang.String.class;
        r7[r8] = r9;	 Catch:{ Throwable -> 0x019c }
        r5 = r5.getDeclaredMethod(r6, r7);	 Catch:{ Throwable -> 0x019c }
        r6 = 1;
        r6 = new java.lang.Object[r6];	 Catch:{ Throwable -> 0x019c }
        r7 = 0;
        r6[r7] = r1;	 Catch:{ Throwable -> 0x019c }
        r1 = r5.invoke(r0, r6);	 Catch:{ Throwable -> 0x019c }
        r1 = (java.lang.Integer) r1;	 Catch:{ Throwable -> 0x019c }
        r1 = r1.intValue();	 Catch:{ Throwable -> 0x019c }
        r5 = "AndroidManifest.xml";
        r6 = r0.openXmlResourceParser(r1, r5);	 Catch:{ Throwable -> 0x019c }
        if (r6 == 0) goto L_0x01a0;
    L_0x0045:
        r0 = r6.next();	 Catch:{ Throwable -> 0x019c }
        if (r0 == r10) goto L_0x004d;
    L_0x004b:
        if (r0 != r3) goto L_0x0045;
    L_0x004d:
        if (r0 == r10) goto L_0x0051;
    L_0x004f:
        r0 = r4;
    L_0x0050:
        return r0;
    L_0x0051:
        r0 = r6.getName();	 Catch:{ Throwable -> 0x019c }
        r1 = "manifest";
        r0 = r0.equals(r1);	 Catch:{ Throwable -> 0x019c }
        if (r0 != 0) goto L_0x005f;
    L_0x005d:
        r0 = r4;
        goto L_0x0050;
    L_0x005f:
        r0 = 0;
        r1 = "package";
        r7 = r6.getAttributeValue(r0, r1);	 Catch:{ Throwable -> 0x019c }
        if (r7 == 0) goto L_0x006e;
    L_0x0068:
        r0 = r7.length();	 Catch:{ Throwable -> 0x019c }
        if (r0 != 0) goto L_0x0070;
    L_0x006e:
        r0 = r4;
        goto L_0x0050;
    L_0x0070:
        r8 = r7.length();	 Catch:{ Throwable -> 0x019c }
        r5 = r2;
        r0 = r3;
        r1 = r2;
    L_0x0077:
        if (r5 >= r8) goto L_0x00c7;
    L_0x0079:
        r9 = r7.charAt(r5);	 Catch:{ Throwable -> 0x019c }
        r10 = 97;
        if (r9 < r10) goto L_0x0085;
    L_0x0081:
        r10 = 122; // 0x7a float:1.71E-43 double:6.03E-322;
        if (r9 <= r10) goto L_0x008d;
    L_0x0085:
        r10 = 65;
        if (r9 < r10) goto L_0x0091;
    L_0x0089:
        r10 = 90;
        if (r9 > r10) goto L_0x0091;
    L_0x008d:
        r0 = r2;
    L_0x008e:
        r5 = r5 + 1;
        goto L_0x0077;
    L_0x0091:
        if (r0 != 0) goto L_0x009f;
    L_0x0093:
        r10 = 48;
        if (r9 < r10) goto L_0x009b;
    L_0x0097:
        r10 = 57;
        if (r9 <= r10) goto L_0x008e;
    L_0x009b:
        r10 = 95;
        if (r9 == r10) goto L_0x008e;
    L_0x009f:
        r0 = 46;
        if (r9 != r0) goto L_0x00a6;
    L_0x00a3:
        r0 = r3;
        r1 = r3;
        goto L_0x008e;
    L_0x00a6:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x019c }
        r1 = "bad character '";
        r0.<init>(r1);	 Catch:{ Throwable -> 0x019c }
        r0 = r0.append(r9);	 Catch:{ Throwable -> 0x019c }
        r1 = "'";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x019c }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x019c }
    L_0x00bb:
        if (r0 == 0) goto L_0x00ce;
    L_0x00bd:
        r0 = "android";
        r0 = r0.equals(r7);	 Catch:{ Throwable -> 0x019c }
        if (r0 != 0) goto L_0x00ce;
    L_0x00c5:
        r0 = r4;
        goto L_0x0050;
    L_0x00c7:
        if (r1 == 0) goto L_0x00cb;
    L_0x00c9:
        r0 = r4;
        goto L_0x00bb;
    L_0x00cb:
        r0 = "must have at least one '.' separator";
        goto L_0x00bb;
    L_0x00ce:
        r0 = "provider";
        r0 = r13.equals(r0);	 Catch:{ Throwable -> 0x019c }
        if (r0 == 0) goto L_0x0129;
    L_0x00d6:
        r0 = com.baidu.techain.TechainProvider.class;
        r0 = r0.getCanonicalName();	 Catch:{ Throwable -> 0x019c }
        r1 = r0;
    L_0x00dd:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x019c }
        r0.<init>();	 Catch:{ Throwable -> 0x019c }
        r0.append(r1);	 Catch:{ Throwable -> 0x019c }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x019c }
    L_0x00e8:
        r0 = r6.next();	 Catch:{ Throwable -> 0x019c }
        if (r0 == r3) goto L_0x01a0;
    L_0x00ee:
        switch(r0) {
            case 2: goto L_0x00f2;
            case 3: goto L_0x00e8;
            default: goto L_0x00f1;
        };	 Catch:{ Throwable -> 0x019c }
    L_0x00f1:
        goto L_0x00e8;
    L_0x00f2:
        r0 = r6.getName();	 Catch:{ Throwable -> 0x019c }
        r2 = "provider";
        r2 = r2.equals(r0);	 Catch:{ Throwable -> 0x019c }
        if (r2 == 0) goto L_0x01a3;
    L_0x00fe:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "name";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x0196 }
        r0 = r0.equals(r1);	 Catch:{ Throwable -> 0x0196 }
        if (r0 == 0) goto L_0x00e8;
    L_0x010c:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "multiprocess";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x0196 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0196 }
        if (r2 != 0) goto L_0x0149;
    L_0x011a:
        r2 = "true";
        r0 = r0.toLowerCase();	 Catch:{ Throwable -> 0x0196 }
        r0 = r2.equals(r0);	 Catch:{ Throwable -> 0x0196 }
        if (r0 == 0) goto L_0x0149;
    L_0x0126:
        r0 = r4;
        goto L_0x0050;
    L_0x0129:
        r0 = "service";
        r0 = r13.equals(r0);	 Catch:{ Throwable -> 0x019c }
        if (r0 == 0) goto L_0x0139;
    L_0x0131:
        r0 = com.baidu.techain.TechainService.class;
        r0 = r0.getCanonicalName();	 Catch:{ Throwable -> 0x019c }
        r1 = r0;
        goto L_0x00dd;
    L_0x0139:
        r0 = "receiver";
        r0 = r13.equals(r0);	 Catch:{ Throwable -> 0x019c }
        if (r0 == 0) goto L_0x024d;
    L_0x0141:
        r0 = com.baidu.techain.TechainReceiver.class;
        r0 = r0.getCanonicalName();	 Catch:{ Throwable -> 0x019c }
        r1 = r0;
        goto L_0x00dd;
    L_0x0149:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "authorities";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x0196 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0196 }
        if (r2 != 0) goto L_0x0160;
    L_0x0157:
        r0 = r12.equals(r0);	 Catch:{ Throwable -> 0x0196 }
        if (r0 != 0) goto L_0x0163;
    L_0x015d:
        r0 = r4;
        goto L_0x0050;
    L_0x0160:
        r0 = r4;
        goto L_0x0050;
    L_0x0163:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "process";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x0196 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0196 }
        if (r2 != 0) goto L_0x0190;
    L_0x0171:
        r2 = ":";
        r2 = r0.startsWith(r2);	 Catch:{ Throwable -> 0x0196 }
        if (r2 == 0) goto L_0x0050;
    L_0x0179:
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0196 }
        r2.<init>();	 Catch:{ Throwable -> 0x0196 }
        r5 = r11.getPackageName();	 Catch:{ Throwable -> 0x0196 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x0196 }
        r0 = r2.append(r0);	 Catch:{ Throwable -> 0x0196 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x0196 }
        goto L_0x0050;
    L_0x0190:
        r0 = r11.getPackageName();	 Catch:{ Throwable -> 0x0196 }
        goto L_0x0050;
    L_0x0196:
        r0 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x019c }
        goto L_0x00e8;
    L_0x019c:
        r0 = move-exception;
        com.baidu.techain.b.c();
    L_0x01a0:
        r0 = r4;
        goto L_0x0050;
    L_0x01a3:
        r2 = "service";
        r2 = r2.equals(r0);	 Catch:{ Throwable -> 0x019c }
        if (r2 == 0) goto L_0x01f8;
    L_0x01ab:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "name";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x01f2 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x01f2 }
        if (r2 != 0) goto L_0x00e8;
    L_0x01b9:
        r0 = r0.equals(r1);	 Catch:{ Throwable -> 0x01f2 }
        if (r0 == 0) goto L_0x00e8;
    L_0x01bf:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "process";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x01f2 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x01f2 }
        if (r2 != 0) goto L_0x01ec;
    L_0x01cd:
        r2 = ":";
        r2 = r0.startsWith(r2);	 Catch:{ Throwable -> 0x01f2 }
        if (r2 == 0) goto L_0x0050;
    L_0x01d5:
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01f2 }
        r2.<init>();	 Catch:{ Throwable -> 0x01f2 }
        r5 = r11.getPackageName();	 Catch:{ Throwable -> 0x01f2 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x01f2 }
        r0 = r2.append(r0);	 Catch:{ Throwable -> 0x01f2 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x01f2 }
        goto L_0x0050;
    L_0x01ec:
        r0 = r11.getPackageName();	 Catch:{ Throwable -> 0x01f2 }
        goto L_0x0050;
    L_0x01f2:
        r0 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x019c }
        goto L_0x00e8;
    L_0x01f8:
        r2 = "receiver";
        r0 = r2.equals(r0);	 Catch:{ Throwable -> 0x019c }
        if (r0 == 0) goto L_0x00e8;
    L_0x0200:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "name";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x0247 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0247 }
        if (r2 != 0) goto L_0x00e8;
    L_0x020e:
        r0 = r0.equals(r1);	 Catch:{ Throwable -> 0x0247 }
        if (r0 == 0) goto L_0x00e8;
    L_0x0214:
        r0 = "http://schemas.android.com/apk/res/android";
        r2 = "process";
        r0 = r6.getAttributeValue(r0, r2);	 Catch:{ Throwable -> 0x0247 }
        r2 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0247 }
        if (r2 != 0) goto L_0x0241;
    L_0x0222:
        r2 = ":";
        r2 = r0.startsWith(r2);	 Catch:{ Throwable -> 0x0247 }
        if (r2 == 0) goto L_0x0050;
    L_0x022a:
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0247 }
        r2.<init>();	 Catch:{ Throwable -> 0x0247 }
        r5 = r11.getPackageName();	 Catch:{ Throwable -> 0x0247 }
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x0247 }
        r0 = r2.append(r0);	 Catch:{ Throwable -> 0x0247 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x0247 }
        goto L_0x0050;
    L_0x0241:
        r0 = r11.getPackageName();	 Catch:{ Throwable -> 0x0247 }
        goto L_0x0050;
    L_0x0247:
        r0 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x019c }
        goto L_0x00e8;
    L_0x024d:
        r1 = r4;
        goto L_0x00dd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.b(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    public static void b(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            a(new File(str), new File(str2));
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:24:0x0036 A:{SYNTHETIC, Splitter:B:24:0x0036} */
    /* JADX WARNING: Removed duplicated region for block: B:68:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x003b A:{SYNTHETIC, Splitter:B:27:0x003b} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x008a A:{SYNTHETIC, Splitter:B:46:0x008a} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x008f A:{SYNTHETIC, Splitter:B:49:0x008f} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0036 A:{SYNTHETIC, Splitter:B:24:0x0036} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x003b A:{SYNTHETIC, Splitter:B:27:0x003b} */
    /* JADX WARNING: Removed duplicated region for block: B:68:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x008a A:{SYNTHETIC, Splitter:B:46:0x008a} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x008f A:{SYNTHETIC, Splitter:B:49:0x008f} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x008a A:{SYNTHETIC, Splitter:B:46:0x008a} */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x008f A:{SYNTHETIC, Splitter:B:49:0x008f} */
    public static void a(java.io.File r6, java.io.File r7) {
        /*
        r1 = 0;
        if (r6 == 0) goto L_0x000b;
    L_0x0003:
        if (r7 == 0) goto L_0x000b;
    L_0x0005:
        r0 = a(r6);
        if (r0 != 0) goto L_0x000c;
    L_0x000b:
        return;
    L_0x000c:
        r0 = r7.exists();
        if (r0 == 0) goto L_0x0015;
    L_0x0012:
        r7.delete();
    L_0x0015:
        r2 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x00b0, all -> 0x0086 }
        r2.<init>(r6);	 Catch:{ Throwable -> 0x00b0, all -> 0x0086 }
        r0 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x00b4, all -> 0x00a3 }
        r0.<init>(r7);	 Catch:{ Throwable -> 0x00b4, all -> 0x00a3 }
        r1 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r1 = new byte[r1];	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
    L_0x0023:
        r3 = r2.read(r1);	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r4 = -1;
        if (r3 == r4) goto L_0x0047;
    L_0x002a:
        r4 = 0;
        r0.write(r1, r4, r3);	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        goto L_0x0023;
    L_0x002f:
        r1 = move-exception;
        r1 = r2;
    L_0x0031:
        com.baidu.techain.b.c();	 Catch:{ all -> 0x00aa }
        if (r1 == 0) goto L_0x0039;
    L_0x0036:
        r1.close();	 Catch:{ IOException -> 0x007e }
    L_0x0039:
        if (r0 == 0) goto L_0x000b;
    L_0x003b:
        r0.close();	 Catch:{ IOException -> 0x003f }
        goto L_0x000b;
    L_0x003f:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        goto L_0x000b;
    L_0x0047:
        r0.flush();	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r1.<init>();	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r3 = r6.getAbsolutePath();	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r1 = r1.append(r3);	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r3 = " > ";
        r1 = r1.append(r3);	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r3 = r7.getAbsolutePath();	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r1.append(r3);	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x002f, all -> 0x00a5 }
        r2.close();	 Catch:{ IOException -> 0x0076 }
    L_0x006a:
        r0.close();	 Catch:{ IOException -> 0x006e }
        goto L_0x000b;
    L_0x006e:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        goto L_0x000b;
    L_0x0076:
        r1 = move-exception;
        r1.getMessage();
        com.baidu.techain.b.b();
        goto L_0x006a;
    L_0x007e:
        r1 = move-exception;
        r1.getMessage();
        com.baidu.techain.b.b();
        goto L_0x0039;
    L_0x0086:
        r0 = move-exception;
        r2 = r1;
    L_0x0088:
        if (r2 == 0) goto L_0x008d;
    L_0x008a:
        r2.close();	 Catch:{ IOException -> 0x0093 }
    L_0x008d:
        if (r1 == 0) goto L_0x0092;
    L_0x008f:
        r1.close();	 Catch:{ IOException -> 0x009b }
    L_0x0092:
        throw r0;
    L_0x0093:
        r2 = move-exception;
        r2.getMessage();
        com.baidu.techain.b.b();
        goto L_0x008d;
    L_0x009b:
        r1 = move-exception;
        r1.getMessage();
        com.baidu.techain.b.b();
        goto L_0x0092;
    L_0x00a3:
        r0 = move-exception;
        goto L_0x0088;
    L_0x00a5:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x0088;
    L_0x00aa:
        r2 = move-exception;
        r5 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x0088;
    L_0x00b0:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0031;
    L_0x00b4:
        r0 = move-exception;
        r0 = r1;
        r1 = r2;
        goto L_0x0031;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.a(java.io.File, java.io.File):void");
    }

    public static boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return a(new File(str));
    }

    public static boolean a(File file) {
        if (file != null && file.exists() && file.isFile() && file.canRead() && file.length() > 0) {
            return true;
        }
        return false;
    }

    public static void d(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                File file = new File(str);
                if (file.exists()) {
                    File[] listFiles = file.listFiles();
                    if (listFiles != null && listFiles.length > 0) {
                        for (File file2 : listFiles) {
                            if (file2.isDirectory()) {
                                d(file2.getAbsolutePath());
                            } else {
                                new StringBuilder().append(file2.getAbsolutePath()).append(" d:").append(file2.delete());
                                b.a();
                            }
                        }
                    }
                    new StringBuilder().append(file.getAbsolutePath()).append(" d:").append(file.delete());
                    b.a();
                }
            }
        } catch (Throwable th) {
            b.c();
        }
    }

    public static Object a(Object obj, String str, Class<?>[] clsArr, Object... objArr) {
        if (obj == null || TextUtils.isEmpty(str)) {
            b.a();
            throw new NoSuchMethodException("object=" + obj + ", methodName=" + str);
        } else if (clsArr == null || objArr == null || clsArr.length == objArr.length) {
            for (Method method : obj.getClass().getDeclaredMethods()) {
                if (a(method, str, (Class[]) clsArr)) {
                    break;
                }
            }
            Method method2 = null;
            if (method2 != null) {
                return method2.invoke(obj, objArr);
            }
            b.a();
            throw new NoSuchMethodException("cannot find method in target methodName=" + str);
        } else {
            b.a();
            throw new NoSuchMethodException("paramTypes or args fail");
        }
    }

    private static boolean a(Method method, String str, Class<?>[] clsArr) {
        if (!str.equals(method.getName())) {
            return false;
        }
        new StringBuilder().append(str);
        b.a();
        Class[] parameterTypes = method.getParameterTypes();
        if ((parameterTypes == null || parameterTypes.length == 0) && (clsArr == null || clsArr.length == 0)) {
            b.a();
            return true;
        } else if ((clsArr == null || clsArr.length == 0) && parameterTypes != null && parameterTypes.length > 0) {
            b.a();
            return false;
        } else if ((parameterTypes == null || parameterTypes.length == 0) && clsArr != null && clsArr.length > 0) {
            b.a();
            return false;
        } else if (parameterTypes.length != clsArr.length) {
            b.a();
            return false;
        } else {
            for (int i = 0; i < parameterTypes.length; i++) {
                if (parameterTypes[i] != clsArr[i]) {
                    b.a();
                    return false;
                }
            }
            b.a();
            return true;
        }
    }

    public static void a(String str, boolean z) {
        boolean d = d("771", str);
        new StringBuilder().append(str).append(",s=").append(d);
        b.a();
        if (z) {
            String absolutePath = new File(str).getParentFile().getAbsolutePath();
            d("771", absolutePath);
            new StringBuilder().append(absolutePath).append(",s=").append(d);
            b.a();
        }
    }

    private static boolean d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || !new File(str2).exists()) {
            return false;
        }
        try {
            Runtime.getRuntime().exec("chmod " + str + " " + str2 + IOUtils.LINE_SEPARATOR_UNIX).waitFor();
            return true;
        } catch (Throwable th) {
            b.c();
            return false;
        }
    }

    public static void c(Context context) {
        try {
            Report instance = Report.getInstance(context);
            JSONObject jSONObject = new JSONObject();
            a a = a.a(context);
            Map b = a.b();
            jSONObject.put("0", b.keySet());
            jSONObject.put(BuildConfig.VERSION_NAME, b.values());
            new StringBuilder().append(jSONObject.toString());
            b.a();
            JSONObject jSONObject2 = new JSONObject();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("1003003", jSONObject);
            jSONObject2.put("0", jSONObject3);
            Map c = a.c();
            JSONArray jSONArray = new JSONArray();
            for (String put : c.values()) {
                jSONArray.put(put);
            }
            jSONArray.put("com.baidu.techain");
            new StringBuilder().append(jSONArray.toString());
            b.a();
            jSONObject2.put("2", jSONArray);
            instance.w(jSONObject2.toString());
        } catch (Throwable th) {
            th.getMessage();
            b.b();
        }
    }

    public static void d(Context context) {
        String str = "3.1.6.1";
        b.a();
        if (!TextUtils.isEmpty(str)) {
            String str2 = "com.baidu.techain";
            Report instance = Report.getInstance(context);
            try {
                c(context);
                instance.i("techain", str2, str, "1003003", "1003002");
            } catch (Throwable th) {
                th.getMessage();
                b.b();
            }
        }
    }

    public static String b() {
        try {
            return new String(F.getInstance().ad(Base64.decode(n.a, 0), "30212102dicudiab".getBytes()));
        } catch (Throwable th) {
            return "";
        }
    }

    public static String e(String str) {
        try {
            int length = str.length();
            int i = 0;
            while (i < length && (str.charAt(i) <= ' ' || str.charAt(i) == 160)) {
                i++;
            }
            if (i > 0) {
                return str.substring(i);
            }
            return str;
        } catch (Throwable th) {
            b.c();
            return "";
        }
    }

    public static void a(Context context, String str, Map<String, Object> map) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Object obj;
                JSONObject jSONObject = new JSONObject();
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("0", System.currentTimeMillis());
                jSONObject2.put(BuildConfig.VERSION_NAME, "");
                jSONObject2.put("2", "");
                String[] g = g(context);
                if (g == null || g.length != 2 || TextUtils.isEmpty(g[0]) || TextUtils.isEmpty(g[1])) {
                    obj = "3";
                } else {
                    obj = g[0];
                }
                jSONObject2.put("3", obj);
                jSONObject2.put("4", 0);
                jSONObject2.put("5", 0);
                jSONObject2.put("6", 1);
                jSONObject2.put("7", 0);
                jSONObject2.put("8", "techain");
                jSONObject2.put("9", "3.1.6.1");
                jSONObject2.put("10", str);
                jSONObject.put("Common_section", jSONObject2);
                if (map.size() > 0) {
                    jSONObject.put("Module_section", new JSONObject(map));
                } else {
                    jSONObject.put("Module_section", new JSONObject());
                }
                Report instance = Report.getInstance(context);
                String jSONObject3 = jSONObject.toString();
                new StringBuilder().append(jSONObject3);
                b.a();
                instance.s(jSONObject3);
            } catch (Throwable th) {
                b.c();
            }
        }
    }

    public static String a(Context context, String str, String str2) {
        String str3 = "";
        try {
            Properties properties = new Properties();
            InputStream inputStream = null;
            try {
                inputStream = context.getAssets().open(str);
                properties.load(inputStream);
                str3 = properties.getProperty(str2);
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (IOException e) {
                e.getMessage();
                b.b();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e2) {
                        e2.getMessage();
                        b.b();
                    }
                }
            } catch (Throwable th) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e3.getMessage();
                        b.b();
                    }
                }
            }
        } catch (IOException e22) {
            e22.getMessage();
            b.b();
        } catch (Throwable th2) {
            b.c();
        }
        return str3;
    }

    public static boolean e(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return 1 == activeNetworkInfo.getType();
    }

    public static boolean f(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return false;
            }
            return activeNetworkInfo.isConnected();
        } catch (Throwable th) {
            b.c();
            return false;
        }
    }

    public static String[] g(Context context) {
        String str = b;
        String str2 = c;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            String b;
            String[] split;
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                b = new com.baidu.techain.e(context).b();
                if (!TextUtils.isEmpty(b)) {
                    split = b.split("-");
                    if (split != null && split.length == 2) {
                        b.a();
                        return split;
                    }
                }
            }
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                b = new com.baidu.techain.e(context).a.getString("svi", "");
                if (!TextUtils.isEmpty(b)) {
                    split = b.split("-");
                    if (split != null && split.length == 2) {
                        b.a();
                        return split;
                    }
                }
            }
            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                b.a();
                str = "3";
                str2 = "925fc15df8a49bed0b3eca8d2b44cb7b";
            }
            return new String[]{str, str2};
        }
        b.a();
        return new String[]{str, str2};
    }

    public static String[] h(Context context) {
        if (TextUtils.isEmpty(b) || TextUtils.isEmpty(c)) {
            String b = new com.baidu.techain.e(context).b();
            if (TextUtils.isEmpty(b)) {
                return null;
            }
            String[] split = b.split("-");
            if (split == null || split.length != 2) {
                return new String[2];
            }
            b = split[0];
            c = split[1];
            return split;
        }
        return new String[]{b, c};
    }

    private static Map<String, Integer> g(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator keys = jSONObject.keys();
            HashMap hashMap = new HashMap();
            while (keys.hasNext()) {
                String str2 = (String) keys.next();
                hashMap.put(str2, (Integer) jSONObject.get(str2));
            }
            return hashMap;
        } catch (Throwable th) {
            b.c();
            return null;
        }
    }

    public static void f(String str) {
        try {
            if (d.b != null) {
                Map hashMap;
                com.baidu.techain.e eVar = new com.baidu.techain.e(d.b);
                String c = eVar.c();
                if (TextUtils.isEmpty(c)) {
                    hashMap = new HashMap();
                    hashMap.put(str, Integer.valueOf(1));
                } else {
                    Map g = g(c);
                    if (g != null && g.size() > 0) {
                        if (g.get(str) != null) {
                            g.put(str, Integer.valueOf(((Integer) g.get(str)).intValue() + 1));
                            hashMap = g;
                        } else {
                            g.put(str, Integer.valueOf(1));
                        }
                    }
                    hashMap = g;
                }
                if (hashMap != null && hashMap.size() > 0) {
                    eVar.a(new JSONObject(hashMap).toString());
                }
            }
        } catch (Throwable th) {
            b.c();
        }
    }

    public static void i(Context context) {
        try {
            com.baidu.techain.e eVar = new com.baidu.techain.e(context);
            String c = eVar.c();
            if (!TextUtils.isEmpty(c)) {
                Map g = g(c);
                if (g != null && g.size() > 0) {
                    Map hashMap = new HashMap();
                    for (int i = 0; i < 15; i++) {
                        Integer num = (Integer) g.get(Integer.toString(i));
                        hashMap.put(Integer.toString(i), num == null ? "" : num.toString());
                    }
                    a(context, "1003137", hashMap);
                    eVar.a("");
                }
            }
        } catch (Throwable th) {
            b.c();
        }
    }

    public static boolean a(Context context, int i) {
        if (i != 1 || e(context)) {
            return true;
        }
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        if (d == null) {
            d = new TechainReceiver().a();
        }
        context.getApplicationContext().registerReceiver(d, intentFilter);
        a = true;
        return false;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static void j(android.content.Context r10) {
        /*
        r2 = 0;
        r4 = new com.baidu.techain.e;	 Catch:{ Throwable -> 0x0096 }
        r4.<init>(r10);	 Catch:{ Throwable -> 0x0096 }
        r0 = r4.e();	 Catch:{ Throwable -> 0x0096 }
        r5 = r4.f();	 Catch:{ Throwable -> 0x0096 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0096 }
        if (r1 == 0) goto L_0x001b;
    L_0x0014:
        r7 = 0;
        r1 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
        if (r1 != 0) goto L_0x001b;
    L_0x001a:
        return;
    L_0x001b:
        r5 = r10.getPackageName();	 Catch:{ Throwable -> 0x0096 }
        r6 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x0096 }
        r6.<init>(r0);	 Catch:{ Throwable -> 0x0096 }
        r1 = "";
        r0 = "";
        r7 = r10.getPackageManager();	 Catch:{ Throwable -> 0x0096 }
        r3 = 0;
        r8 = 64;
        r3 = r7.getPackageInfo(r5, r8);	 Catch:{ Throwable -> 0x0091 }
    L_0x0033:
        if (r3 == 0) goto L_0x0064;
    L_0x0035:
        r0 = r3.applicationInfo;	 Catch:{ Throwable -> 0x0096 }
        r0 = r0.sourceDir;	 Catch:{ Throwable -> 0x0096 }
        r3 = a(r3, r0);	 Catch:{ Throwable -> 0x0096 }
        if (r3 == 0) goto L_0x0064;
    L_0x003f:
        r3 = r3.getEncoded();	 Catch:{ Throwable -> 0x0096 }
        if (r3 == 0) goto L_0x0064;
    L_0x0045:
        a(r10, r3);	 Catch:{ Throwable -> 0x0096 }
        r1 = 0;
        r1 = android.util.Base64.encodeToString(r3, r1);	 Catch:{ Throwable -> 0x0096 }
        r3 = "\n";
        r7 = "";
        r1 = r1.replace(r3, r7);	 Catch:{ Throwable -> 0x0096 }
        r3 = "\r";
        r7 = "";
        r1 = r1.replace(r3, r7);	 Catch:{ Throwable -> 0x0096 }
        r1 = com.baidu.techain.b.o.a(r1);	 Catch:{ Throwable -> 0x0096 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0096 }
    L_0x0064:
        r3 = r2;
    L_0x0065:
        r7 = r6.length();	 Catch:{ Throwable -> 0x0096 }
        if (r3 >= r7) goto L_0x009b;
    L_0x006b:
        r7 = r6.optJSONObject(r3);	 Catch:{ Throwable -> 0x0096 }
        r8 = "p";
        r8 = r7.optString(r8);	 Catch:{ Throwable -> 0x0096 }
        r9 = "s";
        r7 = r7.optString(r9);	 Catch:{ Throwable -> 0x0096 }
        r8 = r5.equals(r8);	 Catch:{ Throwable -> 0x0096 }
        if (r8 == 0) goto L_0x008e;
    L_0x0081:
        r8 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x0096 }
        if (r8 != 0) goto L_0x008e;
    L_0x0087:
        r7 = r1.equalsIgnoreCase(r7);	 Catch:{ Throwable -> 0x0096 }
        if (r7 == 0) goto L_0x008e;
    L_0x008d:
        r2 = 1;
    L_0x008e:
        r3 = r3 + 1;
        goto L_0x0065;
    L_0x0091:
        r7 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x0096 }
        goto L_0x0033;
    L_0x0096:
        r0 = move-exception;
        com.baidu.techain.b.c();
        goto L_0x001a;
    L_0x009b:
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0096 }
        r3.<init>();	 Catch:{ Throwable -> 0x0096 }
        r3.append(r2);	 Catch:{ Throwable -> 0x0096 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0096 }
        r3 = r4.c;	 Catch:{ Throwable -> 0x0096 }
        r6 = "hac";
        r3.putBoolean(r6, r2);	 Catch:{ Throwable -> 0x0096 }
        r3 = r4.c;	 Catch:{ Throwable -> 0x0096 }
        r3.commit();	 Catch:{ Throwable -> 0x0096 }
        if (r2 != 0) goto L_0x001a;
    L_0x00b4:
        r2 = new java.util.HashMap;	 Catch:{ Throwable -> 0x0096 }
        r2.<init>();	 Catch:{ Throwable -> 0x0096 }
        r3 = "0";
        r2.put(r3, r5);	 Catch:{ Throwable -> 0x0096 }
        r3 = "1";
        r2.put(r3, r1);	 Catch:{ Throwable -> 0x0096 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0096 }
        if (r1 != 0) goto L_0x00f0;
    L_0x00c9:
        r1 = new java.io.File;	 Catch:{ Throwable -> 0x0096 }
        r1.<init>(r0);	 Catch:{ Throwable -> 0x0096 }
        r0 = r1.exists();	 Catch:{ Throwable -> 0x0096 }
        if (r0 == 0) goto L_0x00e8;
    L_0x00d4:
        r0 = "2";
        r1 = com.baidu.techain.b.o.a(r1);	 Catch:{ Throwable -> 0x0096 }
        r2.put(r0, r1);	 Catch:{ Throwable -> 0x0096 }
    L_0x00dd:
        r0 = r10.getApplicationContext();	 Catch:{ Throwable -> 0x0096 }
        r1 = "1003120";
        a(r0, r1, r2);	 Catch:{ Throwable -> 0x0096 }
        goto L_0x001a;
    L_0x00e8:
        r0 = "2";
        r1 = "";
        r2.put(r0, r1);	 Catch:{ Throwable -> 0x0096 }
        goto L_0x00dd;
    L_0x00f0:
        r0 = "2";
        r1 = "";
        r2.put(r0, r1);	 Catch:{ Throwable -> 0x0096 }
        goto L_0x00dd;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.j(android.content.Context):void");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static boolean a(android.content.Context r8, java.lang.String r9) {
        /*
        r2 = 1;
        r1 = 0;
        r0 = new com.baidu.techain.e;	 Catch:{ Throwable -> 0x0090 }
        r0.<init>(r8);	 Catch:{ Throwable -> 0x0090 }
        r3 = r0.e();	 Catch:{ Throwable -> 0x0090 }
        r4 = r0.f();	 Catch:{ Throwable -> 0x0090 }
        r0 = android.text.TextUtils.isEmpty(r3);	 Catch:{ Throwable -> 0x0090 }
        if (r0 == 0) goto L_0x001d;
    L_0x0015:
        r6 = 0;
        r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r0 != 0) goto L_0x001d;
    L_0x001b:
        r0 = r1;
    L_0x001c:
        return r0;
    L_0x001d:
        r4 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x0090 }
        r4.<init>(r3);	 Catch:{ Throwable -> 0x0090 }
        r0 = "";
        r5 = r8.getPackageManager();	 Catch:{ Throwable -> 0x0090 }
        r3 = 0;
        r6 = 64;
        r3 = r5.getPackageInfo(r9, r6);	 Catch:{ Throwable -> 0x008b }
    L_0x002f:
        if (r3 == 0) goto L_0x0098;
    L_0x0031:
        r5 = r3.applicationInfo;	 Catch:{ Throwable -> 0x0090 }
        r5 = r5.sourceDir;	 Catch:{ Throwable -> 0x0090 }
        r3 = a(r3, r5);	 Catch:{ Throwable -> 0x0090 }
        if (r3 == 0) goto L_0x0096;
    L_0x003b:
        r3 = r3.getEncoded();	 Catch:{ Throwable -> 0x0090 }
        if (r3 == 0) goto L_0x0060;
    L_0x0041:
        a(r8, r3);	 Catch:{ Throwable -> 0x0090 }
        r0 = 0;
        r0 = android.util.Base64.encodeToString(r3, r0);	 Catch:{ Throwable -> 0x0090 }
        r3 = "\n";
        r5 = "";
        r0 = r0.replace(r3, r5);	 Catch:{ Throwable -> 0x0090 }
        r3 = "\r";
        r5 = "";
        r0 = r0.replace(r3, r5);	 Catch:{ Throwable -> 0x0090 }
        r0 = com.baidu.techain.b.o.a(r0);	 Catch:{ Throwable -> 0x0090 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0090 }
    L_0x0060:
        r3 = r1;
    L_0x0061:
        r5 = r4.length();	 Catch:{ Throwable -> 0x0090 }
        if (r3 >= r5) goto L_0x009d;
    L_0x0067:
        r5 = r4.optJSONObject(r3);	 Catch:{ Throwable -> 0x0090 }
        r6 = "p";
        r6 = r5.optString(r6);	 Catch:{ Throwable -> 0x0090 }
        r7 = "s";
        r5 = r5.optString(r7);	 Catch:{ Throwable -> 0x0090 }
        r6 = r9.equals(r6);	 Catch:{ Throwable -> 0x0090 }
        if (r6 == 0) goto L_0x009a;
    L_0x007d:
        r6 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0090 }
        if (r6 != 0) goto L_0x009a;
    L_0x0083:
        r5 = r0.equalsIgnoreCase(r5);	 Catch:{ Throwable -> 0x0090 }
        if (r5 == 0) goto L_0x009a;
    L_0x0089:
        r0 = r2;
        goto L_0x001c;
    L_0x008b:
        r5 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x0090 }
        goto L_0x002f;
    L_0x0090:
        r0 = move-exception;
        com.baidu.techain.b.c();
        r0 = r2;
        goto L_0x001c;
    L_0x0096:
        r0 = r2;
        goto L_0x001c;
    L_0x0098:
        r0 = r2;
        goto L_0x001c;
    L_0x009a:
        r3 = r3 + 1;
        goto L_0x0061;
    L_0x009d:
        r0 = r1;
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.a(android.content.Context, java.lang.String):boolean");
    }

    public static void a(Context context, byte[] bArr) {
        try {
            String[] g = g(context);
            if (g != null && g.length == 2 && !TextUtils.isEmpty(g[0]) && !TextUtils.isEmpty(g[1]) && "200080".equals(g[0]) && context.getPackageName().equals("com.baidu.BaiduMap") && bArr != null) {
                for (int i = 0; i < bArr.length; i++) {
                    bArr[i] = (byte) (bArr[i] ^ 246);
                }
            }
        } catch (Throwable th) {
        }
    }

    public static void k(Context context) {
        com.baidu.techain.e eVar = new com.baidu.techain.e(context);
        long currentTimeMillis = System.currentTimeMillis();
        long j = eVar.a.getLong("se_ae_fd", 0);
        if (j == 0) {
            j = System.currentTimeMillis();
            eVar.k();
        }
        if (currentTimeMillis - j > DateTimeUtils.ONE_DAY) {
            Map hashMap = new HashMap();
            hashMap.put("0", Integer.valueOf(eVar.n() + 1));
            eVar.c(0);
            eVar.k();
            a(context, "1003119", hashMap);
            return;
        }
        eVar.c(eVar.n() + 1);
    }

    public static boolean c(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        try {
            String[] split = str.split("\\.");
            String[] split2 = str2.split("\\.");
            int i = 0;
            while (i < split.length && i < split2.length) {
                int intValue = Integer.valueOf(split[i]).intValue() - Integer.valueOf(split2[i]).intValue();
                if (intValue == 0) {
                    i++;
                } else if (intValue <= 0) {
                    return false;
                } else {
                    return true;
                }
            }
            if (split.length <= split2.length) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    public static int l(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return -1;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getState() == State.CONNECTED) {
                if (activeNetworkInfo.getType() == 1) {
                    return 4;
                }
                if (activeNetworkInfo.getType() != 0) {
                    return -2;
                }
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                        return 1;
                    case 2:
                        return 1;
                    case 3:
                        return 2;
                    case 4:
                        return 1;
                    case 5:
                        return 2;
                    case 6:
                        return 2;
                    case 7:
                        return 1;
                    case 8:
                        return 2;
                    case 9:
                        return 2;
                    case 10:
                        return 2;
                    case 11:
                        return 1;
                    case 12:
                        return 2;
                    case 13:
                        return 3;
                    case 14:
                        return 2;
                    case 15:
                        return 2;
                    default:
                        return 5;
                }
            }
            return -1;
        } catch (Throwable th) {
            b.c();
        }
    }

    private static String q(Context context) {
        String str = "1.0.0";
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (Throwable th) {
            b.c();
            return str;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:57:0x011e A:{Catch:{ Throwable -> 0x0126 }} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00f7 A:{Catch:{ Throwable -> 0x0126 }} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00f7 A:{Catch:{ Throwable -> 0x0126 }} */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x011e A:{Catch:{ Throwable -> 0x0126 }} */
    public static org.json.JSONObject m(android.content.Context r4) {
        /*
        r1 = new org.json.JSONObject;
        r1.<init>();
        r0 = android.os.Build.BOARD;	 Catch:{ Throwable -> 0x0126 }
        r2 = "0";
        if (r0 != 0) goto L_0x000d;
    L_0x000b:
        r0 = "";
    L_0x000d:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.DEVICE;	 Catch:{ Throwable -> 0x0126 }
        r2 = "1";
        if (r0 != 0) goto L_0x0018;
    L_0x0016:
        r0 = "";
    L_0x0018:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x0126 }
        r2 = 7;
        if (r0 <= r2) goto L_0x0101;
    L_0x0020:
        r0 = android.os.Build.HARDWARE;	 Catch:{ Throwable -> 0x0126 }
    L_0x0022:
        r2 = "2";
        if (r0 != 0) goto L_0x0028;
    L_0x0026:
        r0 = "";
    L_0x0028:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.HOST;	 Catch:{ Throwable -> 0x0126 }
        r2 = "3";
        if (r0 != 0) goto L_0x0033;
    L_0x0031:
        r0 = "";
    L_0x0033:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.DISPLAY;	 Catch:{ Throwable -> 0x0126 }
        r2 = "4";
        if (r0 != 0) goto L_0x003e;
    L_0x003c:
        r0 = "";
    L_0x003e:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.PRODUCT;	 Catch:{ Throwable -> 0x0126 }
        r2 = "5";
        if (r0 != 0) goto L_0x0049;
    L_0x0047:
        r0 = "";
    L_0x0049:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.VERSION.CODENAME;	 Catch:{ Throwable -> 0x0126 }
        r2 = "6";
        if (r0 != 0) goto L_0x0054;
    L_0x0052:
        r0 = "";
    L_0x0054:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.VERSION.INCREMENTAL;	 Catch:{ Throwable -> 0x0126 }
        r2 = "7";
        if (r0 != 0) goto L_0x005f;
    L_0x005d:
        r0 = "";
    L_0x005f:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = "8";
        r2 = com.baidu.techain.b.g.a(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.MANUFACTURER;	 Catch:{ Throwable -> 0x0126 }
        r2 = "9";
        if (r0 != 0) goto L_0x0073;
    L_0x0071:
        r0 = "";
    L_0x0073:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.MODEL;	 Catch:{ Throwable -> 0x0126 }
        r2 = "10";
        if (r0 != 0) goto L_0x007e;
    L_0x007c:
        r0 = "";
    L_0x007e:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = "11";
        r2 = com.baidu.techain.b.g.h(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = android.os.Build.VERSION.RELEASE;	 Catch:{ Throwable -> 0x0126 }
        r2 = "12";
        if (r0 != 0) goto L_0x0092;
    L_0x0090:
        r0 = "";
    L_0x0092:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = "13";
        r2 = com.baidu.techain.b.g.b(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = "14";
        r2 = "";
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r2 = "15";
        r0 = com.baidu.techain.b.g.i(r4);	 Catch:{ Throwable -> 0x0126 }
        r3 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x0126 }
        if (r3 != 0) goto L_0x011b;
    L_0x00b1:
        r3 = "46000";
        r3 = r0.startsWith(r3);	 Catch:{ Throwable -> 0x0126 }
        if (r3 != 0) goto L_0x00c1;
    L_0x00b9:
        r3 = "46002";
        r3 = r0.startsWith(r3);	 Catch:{ Throwable -> 0x0126 }
        if (r3 == 0) goto L_0x0105;
    L_0x00c1:
        r0 = "1";
    L_0x00c3:
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
        r0 = "16";
        r2 = com.baidu.techain.b.g.j(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = "17";
        r2 = com.baidu.techain.b.g.k(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = "18";
        r2 = com.baidu.techain.b.g.l(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = "19";
        r2 = com.baidu.techain.b.g.m(r4);	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = "20";
        r2 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x0126 }
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        r0 = java.util.TimeZone.getDefault();	 Catch:{ Throwable -> 0x0126 }
        if (r0 == 0) goto L_0x011e;
    L_0x00f7:
        r2 = "21";
        r0 = r0.getID();	 Catch:{ Throwable -> 0x0126 }
        r1.put(r2, r0);	 Catch:{ Throwable -> 0x0126 }
    L_0x0100:
        return r1;
    L_0x0101:
        r0 = "";
        goto L_0x0022;
    L_0x0105:
        r3 = "46001";
        r3 = r0.startsWith(r3);	 Catch:{ Throwable -> 0x0126 }
        if (r3 == 0) goto L_0x0110;
    L_0x010d:
        r0 = "2";
        goto L_0x00c3;
    L_0x0110:
        r3 = "46003";
        r0 = r0.startsWith(r3);	 Catch:{ Throwable -> 0x0126 }
        if (r0 == 0) goto L_0x011b;
    L_0x0118:
        r0 = "3";
        goto L_0x00c3;
    L_0x011b:
        r0 = "";
        goto L_0x00c3;
    L_0x011e:
        r0 = "21";
        r2 = "-1";
        r1.put(r0, r2);	 Catch:{ Throwable -> 0x0126 }
        goto L_0x0100;
    L_0x0126:
        r0 = move-exception;
        com.baidu.techain.b.c();
        goto L_0x0100;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.m(android.content.Context):org.json.JSONObject");
    }

    public static JSONObject a(Context context, com.baidu.techain.rp.a.a aVar, String str, boolean z) {
        return a(context, aVar.a, aVar.c, z ? aVar.d : aVar.e, str);
    }

    public static int n(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
            activeNetworkInfo = null;
            b.c();
        }
        if (activeNetworkInfo == null) {
            return 0;
        }
        if (1 == activeNetworkInfo.getType()) {
            return 2;
        }
        if (activeNetworkInfo.getType() == 0) {
            return 1;
        }
        return 1;
    }

    private static String a(int i) {
        try {
            String h = h(String.format("/proc/%d/cmdline", new Object[]{Integer.valueOf(i)}));
            if (TextUtils.isEmpty(h)) {
                return h;
            }
            return h.trim();
        } catch (Throwable th) {
            b.c();
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0021 A:{SYNTHETIC, Splitter:B:19:0x0021} */
    private static java.lang.String h(java.lang.String r4) {
        /*
        r0 = 0;
        r1 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x000e, all -> 0x001b }
        r1.<init>(r4);	 Catch:{ Throwable -> 0x000e, all -> 0x001b }
        r0 = a(r1);	 Catch:{ Throwable -> 0x002b }
        r1.close();	 Catch:{ Throwable -> 0x0025 }
    L_0x000d:
        return r0;
    L_0x000e:
        r1 = move-exception;
        r1 = r0;
    L_0x0010:
        com.baidu.techain.b.c();	 Catch:{ all -> 0x0029 }
        if (r1 == 0) goto L_0x000d;
    L_0x0015:
        r1.close();	 Catch:{ Throwable -> 0x0019 }
        goto L_0x000d;
    L_0x0019:
        r1 = move-exception;
        goto L_0x000d;
    L_0x001b:
        r1 = move-exception;
        r3 = r1;
        r1 = r0;
        r0 = r3;
    L_0x001f:
        if (r1 == 0) goto L_0x0024;
    L_0x0021:
        r1.close();	 Catch:{ Throwable -> 0x0027 }
    L_0x0024:
        throw r0;
    L_0x0025:
        r1 = move-exception;
        goto L_0x000d;
    L_0x0027:
        r1 = move-exception;
        goto L_0x0024;
    L_0x0029:
        r0 = move-exception;
        goto L_0x001f;
    L_0x002b:
        r2 = move-exception;
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.h(java.lang.String):java.lang.String");
    }

    private static String a(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
        StringBuilder stringBuilder = new StringBuilder();
        Object obj = 1;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return stringBuilder.toString();
            }
            if (obj == null) {
                stringBuilder.append(10);
            } else {
                obj = null;
            }
            stringBuilder.append(readLine);
        }
    }

    public static JSONObject a(Context context, JSONObject jSONObject) {
        Object charSequence;
        JSONObject jSONObject2 = new JSONObject();
        System.currentTimeMillis();
        JSONObject jSONObject3 = null;
        try {
            jSONObject3 = jSONObject.getJSONObject("Common_section");
        } catch (Throwable th) {
            b.c();
        }
        String optString = jSONObject3.optString("10");
        long optLong = jSONObject3.optLong("0");
        String optString2 = jSONObject3.optString(BuildConfig.VERSION_NAME);
        String optString3 = jSONObject3.optString("3");
        String optString4 = jSONObject3.optString("8");
        String optString5 = jSONObject3.optString("9");
        String str = "";
        try {
            charSequence = context.getApplicationInfo().loadLabel(context.getPackageManager()).toString();
        } catch (Throwable th2) {
            b.c();
        }
        jSONObject2.put(BuildConfig.VERSION_NAME, charSequence);
        jSONObject2.put("2", context.getPackageName());
        jSONObject2.put("3", q(context));
        jSONObject2.put("4", g.a(context));
        jSONObject2.put("5", optString);
        jSONObject2.put("6", optLong);
        jSONObject2.put("7", optString2);
        jSONObject2.put("8", optString3);
        jSONObject2.put("9", optString4);
        jSONObject2.put("10", optString5);
        com.baidu.techain.e eVar = new com.baidu.techain.e(context);
        jSONObject2.put("11", eVar.e.getString("re_a_cv", ""));
        jSONObject2.put("12", eVar.e.getString("re_a_lc", ""));
        jSONObject2.put("13", eVar.o() ? 1 : 0);
        if (l(context) == 4) {
            jSONObject2.put("14", 1);
        } else {
            jSONObject2.put("14", 2);
        }
        jSONObject2.put("20", g.d(context));
        jSONObject2.put("21", g.g(context));
        jSONObject2.put("22", g.b(context));
        charSequence = eVar.b.getString("xygls", "");
        if (TextUtils.isEmpty(charSequence)) {
            try {
                charSequence = k.a(context);
                if (TextUtils.isEmpty(charSequence)) {
                    charSequence = "";
                }
                eVar.d.putString("xygls", charSequence);
                eVar.d.commit();
            } catch (Throwable th3) {
            }
        }
        jSONObject2.put("23", charSequence);
        jSONObject2.put("25", com.baidu.techain.rp.a.a(context));
        jSONObject2.put("26", com.baidu.techain.rp.a.b(context));
        jSONObject2.put("27", com.baidu.techain.rp.a.c(context));
        jSONObject2.put("28", p.a(context));
        charSequence = jSONObject.get("Module_section");
        if (charSequence instanceof JSONArray) {
            jSONObject2.put("module_section", charSequence);
        } else {
            jSONObject2.put("module_section", new JSONArray().put(charSequence));
        }
        return jSONObject2;
    }

    public static void a(Context context, String str, String str2, String str3, String str4, String str5) {
        f.a(context).a();
        f a = f.a(context);
        Message message = new Message();
        message.what = 8;
        a.a.a(message);
        com.baidu.techain.rp.a.a aVar = new com.baidu.techain.rp.a.a();
        aVar.a = str;
        aVar.b = str2;
        aVar.c = str3;
        aVar.d = str4;
        aVar.e = str5;
        if (!TextUtils.isEmpty(str4) && !TextUtils.isEmpty(str5)) {
            com.baidu.techain.e eVar = new com.baidu.techain.e(context);
            List w = eVar.w();
            if (w == null) {
                eVar.a(aVar);
            } else if (w.contains(aVar)) {
                if (w != null) {
                    int indexOf = w.indexOf(aVar);
                    if (indexOf != -1) {
                        com.baidu.techain.rp.a.a aVar2 = (com.baidu.techain.rp.a.a) w.get(indexOf);
                        if (aVar2 != null) {
                            eVar.f.putString("re_con", eVar.e.getString("re_con", "").replace(com.baidu.techain.rp.a.a.a(aVar2), com.baidu.techain.rp.a.a.a(aVar)));
                            eVar.f.commit();
                        }
                    }
                }
                f.a(context).b();
                return;
            } else {
                eVar.a(aVar);
            }
            if (!eVar.e.getBoolean("re_net_ins_" + aVar.e, false)) {
                a = f.a(context);
                Message message2 = new Message();
                message2.what = 3;
                message2.obj = aVar;
                a.a.a(message2);
            }
            f.a(context).b();
            f.a(context).c();
        }
    }

    public static void b(Context context, String str) {
        int i = 1;
        try {
            JSONObject jSONObject = new JSONObject(str);
            com.baidu.techain.e eVar = new com.baidu.techain.e(context);
            System.currentTimeMillis();
            eVar.e.getInt("re_net_ty", 2);
            JSONObject optJSONObject = jSONObject.optJSONObject("Common_section");
            long optLong = optJSONObject.optLong("0");
            String optString = optJSONObject.optString("10");
            int optInt = optJSONObject.optInt("5");
            int optInt2 = optJSONObject.optInt("6");
            int optInt3 = optJSONObject.optInt("7");
            int optInt4 = optJSONObject.optInt("11");
            String optString2 = optJSONObject.optString("12", "");
            if (optInt2 != 0) {
                i = optInt2;
            }
            com.baidu.techain.rp.c.a aVar = new com.baidu.techain.rp.c.a();
            aVar.d = str;
            aVar.b = optString;
            aVar.g = optInt;
            aVar.c = 3;
            aVar.e = optLong;
            aVar.f = i;
            aVar.h = optInt3;
            aVar.i = optInt4;
            aVar.j = optString2;
            f a = f.a(context);
            Message message = new Message();
            message.what = 1;
            message.obj = aVar;
            a.a.a(message);
        } catch (Throwable th) {
            b.c();
        }
    }

    public static void c(Context context, String str) {
        com.baidu.techain.e eVar = new com.baidu.techain.e(context);
        try {
            JSONObject optJSONObject;
            CharSequence charSequence;
            JSONObject jSONObject = new JSONObject(str);
            try {
                optJSONObject = jSONObject.optJSONObject("0");
                if (optJSONObject != null) {
                    charSequence = "";
                    while (optJSONObject.keys().hasNext()) {
                        charSequence = String.valueOf(optJSONObject.keys().next());
                        if (!TextUtils.isEmpty(charSequence)) {
                            break;
                        }
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        eVar.f.putString("al_da" + charSequence, optJSONObject.optString(charSequence));
                        eVar.f.commit();
                    }
                }
            } catch (Throwable th) {
                b.c();
            }
            try {
                optJSONObject = jSONObject.optJSONObject(BuildConfig.VERSION_NAME);
                if (optJSONObject != null) {
                    charSequence = "";
                    while (optJSONObject.keys().hasNext()) {
                        charSequence = String.valueOf(optJSONObject.keys().next());
                        if (!TextUtils.isEmpty(charSequence)) {
                            break;
                        }
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        eVar.f.putString("in_da" + charSequence, optJSONObject.optString(charSequence));
                        eVar.f.commit();
                    }
                }
            } catch (Throwable th2) {
                b.c();
            }
            try {
                JSONArray optJSONArray = jSONObject.optJSONArray("2");
                if (optJSONArray != null) {
                    new StringBuilder().append(optJSONArray.toString());
                    b.a();
                    eVar.f.putString("li_pk_s", optJSONArray.toString());
                    eVar.f.commit();
                }
            } catch (Throwable th3) {
                b.c();
            }
        } catch (Throwable th4) {
            b.c();
        }
    }

    public static String c() {
        Calendar instance = Calendar.getInstance();
        int i = instance.get(1);
        int i2 = instance.get(2);
        return i + i2 + instance.get(5);
    }

    public static JSONObject a(Context context, String str, String str2, String str3, String str4) {
        JSONObject jSONObject;
        Object jSONObject2;
        JSONObject jSONObject3 = new JSONObject();
        JSONObject jSONObject4;
        JSONObject jSONObject22;
        try {
            jSONObject = new JSONObject();
            jSONObject.put("0", System.currentTimeMillis());
            jSONObject.put(BuildConfig.VERSION_NAME, "0");
            jSONObject.put("2", "0");
            String[] g = g(context);
            if (g == null || g.length != 2) {
                jSONObject.put("3", "3");
            } else {
                jSONObject.put("3", g[0]);
            }
            jSONObject.put("4", 0);
            jSONObject.put("5", 0);
            jSONObject.put("6", 1);
            jSONObject.put("7", 0);
            jSONObject.put("8", str);
            jSONObject.put("9", str2);
            jSONObject.put("10", str3);
            jSONObject4 = new JSONObject();
            if (TextUtils.isEmpty(str4)) {
                jSONObject22 = jSONObject4;
            } else {
                jSONObject22 = new JSONObject(str4);
            }
        } catch (Throwable th) {
            b.c();
        }
        jSONObject3.put("Common_section", jSONObject);
        jSONObject3.put("Module_section", jSONObject22);
        return jSONObject3;
    }

    public static void a(Context context, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 101, new Intent("com.b.r.p"), 134217728);
        try {
            alarmManager.cancel(broadcast);
        } catch (Throwable th) {
            b.c();
        }
        try {
            alarmManager.set(0, System.currentTimeMillis() + j, broadcast);
        } catch (Throwable th2) {
            b.c();
        }
    }

    public static String a(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            String toHexString = Integer.toHexString(b & 255);
            if (toHexString.length() == 1) {
                toHexString = "0" + toHexString;
            }
            str = str + toHexString.toUpperCase();
        }
        return str;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static void o(android.content.Context r8) {
        /*
        r6 = 0;
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r0.<init>();	 Catch:{ Throwable -> 0x00b1 }
        r1 = b();	 Catch:{ Throwable -> 0x00b1 }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        r1 = "p/1/prt";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        r1 = r0.toString();	 Catch:{ Throwable -> 0x00b1 }
        r2 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00b1 }
        r2.<init>();	 Catch:{ Throwable -> 0x00b1 }
        r3 = r8.getPackageName();	 Catch:{ Throwable -> 0x00b1 }
        r0 = "pk";
        r2.put(r0, r3);	 Catch:{ Throwable -> 0x00b1 }
        r4 = r8.getPackageManager();	 Catch:{ Throwable -> 0x00b1 }
        r0 = 0;
        r5 = 64;
        r0 = r4.getPackageInfo(r3, r5);	 Catch:{ Throwable -> 0x00ac }
    L_0x0032:
        if (r0 == 0) goto L_0x00be;
    L_0x0034:
        r3 = r0.applicationInfo;	 Catch:{ Throwable -> 0x00b1 }
        r3 = r3.sourceDir;	 Catch:{ Throwable -> 0x00b1 }
        r0 = a(r0, r3);	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x00b6;
    L_0x003e:
        r0 = r0.getEncoded();	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x0068;
    L_0x0044:
        a(r8, r0);	 Catch:{ Throwable -> 0x00b1 }
        r3 = 0;
        r0 = android.util.Base64.encodeToString(r0, r3);	 Catch:{ Throwable -> 0x00b1 }
        r3 = "\n";
        r4 = "";
        r0 = r0.replace(r3, r4);	 Catch:{ Throwable -> 0x00b1 }
        r3 = "\r";
        r4 = "";
        r0 = r0.replace(r3, r4);	 Catch:{ Throwable -> 0x00b1 }
        r0 = com.baidu.techain.b.o.a(r0);	 Catch:{ Throwable -> 0x00b1 }
        r3 = "sm";
        r2.put(r3, r0);	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
    L_0x0068:
        r0 = r2.toString();	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
        r2 = 0;
        r0 = com.baidu.techain.b.h.a(r8, r1, r0, r2);	 Catch:{ Throwable -> 0x00b1 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r1.<init>();	 Catch:{ Throwable -> 0x00b1 }
        r1.append(r0);	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x00ab;
    L_0x0081:
        r1 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x00b1 }
        r1.<init>(r0);	 Catch:{ Throwable -> 0x00b1 }
        r0 = "product";
        r0 = r1.optJSONArray(r0);	 Catch:{ Throwable -> 0x00b1 }
        r2 = "pt";
        r1 = r1.optLong(r2);	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x00a4;
    L_0x0094:
        r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1));
        if (r3 <= 0) goto L_0x00a4;
    L_0x0098:
        r3 = new com.baidu.techain.e;	 Catch:{ Throwable -> 0x00b1 }
        r3.<init>(r8);	 Catch:{ Throwable -> 0x00b1 }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x00b1 }
        r3.a(r0, r1);	 Catch:{ Throwable -> 0x00b1 }
    L_0x00a4:
        r0 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1));
        if (r0 <= 0) goto L_0x00ab;
    L_0x00a8:
        j(r8);	 Catch:{ Throwable -> 0x00b1 }
    L_0x00ab:
        return;
    L_0x00ac:
        r3 = move-exception;
        com.baidu.techain.b.c();	 Catch:{ Throwable -> 0x00b1 }
        goto L_0x0032;
    L_0x00b1:
        r0 = move-exception;
        com.baidu.techain.b.c();
        goto L_0x00ab;
    L_0x00b6:
        r0 = "sm";
        r3 = "";
        r2.put(r0, r3);	 Catch:{ Throwable -> 0x00b1 }
        goto L_0x0068;
    L_0x00be:
        r0 = "sm";
        r3 = "";
        r2.put(r0, r3);	 Catch:{ Throwable -> 0x00b1 }
        goto L_0x0068;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.e.o(android.content.Context):void");
    }

    public static void p(Context context) {
        try {
            e.clear();
            String e = new com.baidu.techain.e(context).e();
            b.a();
            if (!TextUtils.isEmpty(e)) {
                String optString;
                JSONArray jSONArray = new JSONArray(e);
                HashMap hashMap = new HashMap();
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    String optString2 = optJSONObject.optString("p");
                    optString = optJSONObject.optString("s");
                    new StringBuilder("167:").append(optString2).append("_").append(optString);
                    b.a();
                    hashMap.put(optString2, optString);
                }
                for (PackageInfo packageInfo : context.getPackageManager().getInstalledPackages(64)) {
                    String str = packageInfo.packageName;
                    b.a();
                    if (hashMap.keySet().contains(str) && !str.equals(context.getPackageName())) {
                        String str2 = (String) hashMap.get(str);
                        b.a();
                        optString = packageInfo.applicationInfo.sourceDir;
                        b.a();
                        PublicKey a = a(packageInfo, optString);
                        new StringBuilder("194:").append(a == null);
                        b.a();
                        if (a != null) {
                            boolean z;
                            byte[] encoded = a.getEncoded();
                            StringBuilder stringBuilder = new StringBuilder("197:");
                            if (encoded == null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            stringBuilder.append(z);
                            b.a();
                            if (encoded != null) {
                                a(context, encoded);
                                optString = o.a(Base64.encodeToString(encoded, 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\r", ""));
                                b.a();
                                if (!TextUtils.isEmpty(optString) && optString.equals(str2)) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("pk", str);
                                    jSONObject.put("av", packageInfo.versionName);
                                    jSONObject.put("sm", optString);
                                    jSONObject.put("dm", Build.MODEL);
                                    jSONObject.put("al", String.valueOf(VERSION.SDK_INT));
                                    e.put(str, jSONObject.toString());
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            b.c();
        }
    }

    public static void a(Context context, Intent intent) {
        try {
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            if (!intent.getBooleanExtra("android.intent.extra.REPLACING", false) && e.containsKey(schemeSpecificPart)) {
                e.remove(schemeSpecificPart);
                new U(context, 4, false).start();
            }
        } catch (Throwable th) {
            b.c();
        }
    }
}
