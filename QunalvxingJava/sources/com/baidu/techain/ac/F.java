package com.baidu.techain.ac;

import android.content.ContentValues;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Pair;
import com.baidu.techain.a.a;
import com.baidu.techain.b.e;
import com.baidu.techain.core.ApkInfo;
import com.baidu.techain.core.d;
import com.baidu.techain.core.g;
import com.baidu.techain.core.h;
import com.baidu.techain.jni.Asc;
import java.util.Map;

public class F implements FI {
    private static F instance;
    private static Asc sAsc;

    private F() {
    }

    public static synchronized F getInstance() {
        F f;
        synchronized (F.class) {
            if (instance == null) {
                instance = new F();
            }
            f = instance;
        }
        return f;
    }

    public String p(String str) {
        try {
            ApkInfo apkInfo = (ApkInfo) g.a().a.get(str);
            return apkInfo == null ? null : apkInfo.pkgPath;
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public void r(java.lang.String r7, android.content.IntentFilter r8, java.lang.String r9, java.lang.String r10) {
        /*
        r6 = this;
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r0.<init>();	 Catch:{ Throwable -> 0x00b1 }
        r0 = r0.append(r7);	 Catch:{ Throwable -> 0x00b1 }
        r1 = ", ";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        r0 = r0.append(r8);	 Catch:{ Throwable -> 0x00b1 }
        r1 = ", ";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        r0 = r0.append(r9);	 Catch:{ Throwable -> 0x00b1 }
        r1 = ", ";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        r0.append(r10);	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
        r0 = android.text.TextUtils.isEmpty(r7);	 Catch:{ Throwable -> 0x00b1 }
        if (r0 != 0) goto L_0x003d;
    L_0x002f:
        if (r8 == 0) goto L_0x003d;
    L_0x0031:
        r0 = android.text.TextUtils.isEmpty(r9);	 Catch:{ Throwable -> 0x00b1 }
        if (r0 != 0) goto L_0x003d;
    L_0x0037:
        r0 = android.text.TextUtils.isEmpty(r10);	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x003e;
    L_0x003d:
        return;
    L_0x003e:
        r0 = com.baidu.techain.core.g.a();	 Catch:{ Throwable -> 0x00b1 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r2 = "h=";
        r1.<init>(r2);	 Catch:{ Throwable -> 0x00b1 }
        r1.append(r0);	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x003d;
    L_0x0051:
        r1 = new com.baidu.techain.core.h;	 Catch:{ Throwable -> 0x00b1 }
        r1.<init>(r7, r8, r9, r10);	 Catch:{ Throwable -> 0x00b1 }
        r0.a(r1);	 Catch:{ Throwable -> 0x00b1 }
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r0.<init>();	 Catch:{ Throwable -> 0x00b1 }
        r1 = "android.intent.action.BOOT_COMPLETED";
        r1 = r8.hasAction(r1);	 Catch:{ Throwable -> 0x00b1 }
        r0.append(r1);	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
        r0 = "android.intent.action.BOOT_COMPLETED";
        r0 = r8.hasAction(r0);	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x003d;
    L_0x0072:
        r0 = com.baidu.techain.a.a.d;	 Catch:{ Throwable -> 0x00b1 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
        r2 = "d=";
        r1.<init>(r2);	 Catch:{ Throwable -> 0x00b1 }
        r1.append(r0);	 Catch:{ Throwable -> 0x00b1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
        if (r0 == 0) goto L_0x003d;
    L_0x0083:
        r1 = new android.content.ContentValues;	 Catch:{ Throwable -> 0x00b1 }
        r1.<init>();	 Catch:{ Throwable -> 0x00b1 }
        r2 = "r";
        r3 = 1;
        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ Throwable -> 0x00b1 }
        r1.put(r2, r3);	 Catch:{ Throwable -> 0x00b1 }
        r2 = "b";
        r1.put(r2, r9);	 Catch:{ Throwable -> 0x00b1 }
        r2 = "t";
        r1.put(r2, r10);	 Catch:{ Throwable -> 0x00b1 }
        r0 = r0.c;	 Catch:{ Throwable -> 0x00ac }
        r2 = "pgntechain";
        r3 = "p=?";
        r4 = 1;
        r4 = new java.lang.String[r4];	 Catch:{ Throwable -> 0x00ac }
        r5 = 0;
        r4[r5] = r7;	 Catch:{ Throwable -> 0x00ac }
        r0.update(r2, r1, r3, r4);	 Catch:{ Throwable -> 0x00ac }
        goto L_0x003d;
    L_0x00ac:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x00b1 }
        goto L_0x003d;
    L_0x00b1:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x003d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.F.r(java.lang.String, android.content.IntentFilter, java.lang.String, java.lang.String):void");
    }

    public void ur(String str, IntentFilter intentFilter, String str2, String str3) {
        try {
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                g a = g.a();
                if (a != null) {
                    a.b(new h(str, intentFilter, str2, str3));
                }
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public void cm(java.lang.String r6, java.lang.String r7, java.lang.String r8, com.baidu.techain.ac.Callback r9, java.lang.Class<?>[] r10, java.lang.Object... r11) {
        /*
        r5 = this;
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0053 }
        r0.<init>();	 Catch:{ Throwable -> 0x0053 }
        r0 = r0.append(r6);	 Catch:{ Throwable -> 0x0053 }
        r1 = ", ";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x0053 }
        r0 = r0.append(r7);	 Catch:{ Throwable -> 0x0053 }
        r1 = ", ";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x0053 }
        r0 = r0.append(r8);	 Catch:{ Throwable -> 0x0053 }
        r1 = ", ";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x0053 }
        r0.append(r9);	 Catch:{ Throwable -> 0x0053 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0053 }
        r0 = android.text.TextUtils.isEmpty(r6);	 Catch:{ Throwable -> 0x0053 }
        if (r0 != 0) goto L_0x003b;
    L_0x002f:
        r0 = android.text.TextUtils.isEmpty(r7);	 Catch:{ Throwable -> 0x0053 }
        if (r0 != 0) goto L_0x003b;
    L_0x0035:
        r0 = android.text.TextUtils.isEmpty(r8);	 Catch:{ Throwable -> 0x0053 }
        if (r0 == 0) goto L_0x0044;
    L_0x003b:
        if (r9 == 0) goto L_0x0043;
    L_0x003d:
        r0 = 0;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x0053 }
        r9.onEnd(r0);	 Catch:{ Throwable -> 0x0053 }
    L_0x0043:
        return;
    L_0x0044:
        r0 = com.baidu.techain.core.g.a();	 Catch:{ Throwable -> 0x0053 }
        if (r0 != 0) goto L_0x0058;
    L_0x004a:
        if (r9 == 0) goto L_0x0043;
    L_0x004c:
        r0 = 0;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x0053 }
        r9.onEnd(r0);	 Catch:{ Throwable -> 0x0053 }
        goto L_0x0043;
    L_0x0053:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0043;
    L_0x0058:
        r1 = r0.d(r7);	 Catch:{ Throwable -> 0x0053 }
        r0 = r0.d(r6);	 Catch:{ Throwable -> 0x0053 }
        if (r0 == 0) goto L_0x0064;
    L_0x0062:
        if (r1 != 0) goto L_0x006d;
    L_0x0064:
        if (r9 == 0) goto L_0x0043;
    L_0x0066:
        r0 = 0;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x0053 }
        r9.onEnd(r0);	 Catch:{ Throwable -> 0x0053 }
        goto L_0x0043;
    L_0x006d:
        r0 = r1.classLoader;	 Catch:{ Throwable -> 0x00ab }
        r0 = (com.baidu.techain.core.f) r0;	 Catch:{ Throwable -> 0x00ab }
        r1 = "com.baidu.techain.engine.EngineImpl";
        r0 = r0.a(r1);	 Catch:{ Throwable -> 0x00ab }
        r1 = "getInstance";
        r2 = 1;
        r2 = new java.lang.Class[r2];	 Catch:{ Throwable -> 0x00ab }
        r3 = 0;
        r4 = android.content.Context.class;
        r2[r3] = r4;	 Catch:{ Throwable -> 0x00ab }
        r1 = r0.getDeclaredMethod(r1, r2);	 Catch:{ Throwable -> 0x00ab }
        r2 = 1;
        r2 = new java.lang.Object[r2];	 Catch:{ Throwable -> 0x00ab }
        r3 = 0;
        r4 = 0;
        r2[r3] = r4;	 Catch:{ Throwable -> 0x00ab }
        r0 = r1.invoke(r0, r2);	 Catch:{ Throwable -> 0x00ab }
        r0 = com.baidu.techain.b.e.a(r0, r8, r10, r11);	 Catch:{ Throwable -> 0x00ab }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00ab }
        r1.<init>();	 Catch:{ Throwable -> 0x00ab }
        r1.append(r0);	 Catch:{ Throwable -> 0x00ab }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00ab }
        if (r9 == 0) goto L_0x0043;
    L_0x00a1:
        r1 = 1;
        r1 = new java.lang.Object[r1];	 Catch:{ Throwable -> 0x00ab }
        r2 = 0;
        r1[r2] = r0;	 Catch:{ Throwable -> 0x00ab }
        r9.onEnd(r1);	 Catch:{ Throwable -> 0x00ab }
        goto L_0x0043;
    L_0x00ab:
        r0 = move-exception;
        r0.getMessage();	 Catch:{ Throwable -> 0x0053 }
        com.baidu.techain.b.b();	 Catch:{ Throwable -> 0x0053 }
        if (r9 == 0) goto L_0x0043;
    L_0x00b4:
        r0 = 0;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x0053 }
        r9.onEnd(r0);	 Catch:{ Throwable -> 0x0053 }
        goto L_0x0043;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.F.cm(java.lang.String, java.lang.String, java.lang.String, com.baidu.techain.ac.Callback, java.lang.Class[], java.lang.Object[]):void");
    }

    public void u(String str) {
        try {
            d.a().a(str);
        } catch (Throwable th) {
            e.a();
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public byte[] ae(byte[] r4, byte[] r5) {
        /*
        r3 = this;
        r1 = 0;
        if (r5 == 0) goto L_0x000b;
    L_0x0003:
        r0 = r5.length;	 Catch:{ Throwable -> 0x003c }
        if (r0 <= 0) goto L_0x000b;
    L_0x0006:
        if (r4 == 0) goto L_0x000b;
    L_0x0008:
        r0 = r4.length;	 Catch:{ Throwable -> 0x003c }
        if (r0 > 0) goto L_0x000d;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        return r0;
    L_0x000d:
        r0 = "0";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003c }
        r0 = com.baidu.techain.b.a.a(r5, r4);	 Catch:{ Throwable -> 0x003c }
        if (r0 == 0) goto L_0x001b;
    L_0x0018:
        r2 = r0.length;	 Catch:{ Throwable -> 0x003c }
        if (r2 > 0) goto L_0x000c;
    L_0x001b:
        r0 = sAsc;	 Catch:{ Throwable -> 0x003c }
        if (r0 != 0) goto L_0x0026;
    L_0x001f:
        r0 = new com.baidu.techain.jni.Asc;	 Catch:{ Throwable -> 0x003c }
        r0.<init>();	 Catch:{ Throwable -> 0x003c }
        sAsc = r0;	 Catch:{ Throwable -> 0x003c }
    L_0x0026:
        r0 = "1";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003c }
        r0 = sAsc;	 Catch:{ Throwable -> 0x0042 }
        r0 = r0.ac(r4, r5);	 Catch:{ Throwable -> 0x0042 }
        if (r0 == 0) goto L_0x0036;
    L_0x0033:
        r2 = r0.length;	 Catch:{ Throwable -> 0x003c }
        if (r2 != 0) goto L_0x000c;
    L_0x0036:
        r2 = "2";
        com.baidu.techain.b.e.f(r2);	 Catch:{ Throwable -> 0x003c }
        goto L_0x000c;
    L_0x003c:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r1;
        goto L_0x000c;
    L_0x0042:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x003c }
        r0 = "2";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003c }
        r0 = r1;
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.F.ae(byte[], byte[]):byte[]");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public byte[] ad(byte[] r4, byte[] r5) {
        /*
        r3 = this;
        r1 = 0;
        if (r5 == 0) goto L_0x000b;
    L_0x0003:
        r0 = r5.length;	 Catch:{ Throwable -> 0x003d }
        if (r0 <= 0) goto L_0x000b;
    L_0x0006:
        if (r4 == 0) goto L_0x000b;
    L_0x0008:
        r0 = r4.length;	 Catch:{ Throwable -> 0x003d }
        if (r0 > 0) goto L_0x000d;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        return r0;
    L_0x000d:
        r0 = "3";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003d }
        r0 = 1;
        r0 = com.baidu.techain.b.a.a(r5, r4, r0);	 Catch:{ Throwable -> 0x003d }
        if (r0 == 0) goto L_0x001c;
    L_0x0019:
        r2 = r0.length;	 Catch:{ Throwable -> 0x003d }
        if (r2 > 0) goto L_0x000c;
    L_0x001c:
        r0 = sAsc;	 Catch:{ Throwable -> 0x003d }
        if (r0 != 0) goto L_0x0027;
    L_0x0020:
        r0 = new com.baidu.techain.jni.Asc;	 Catch:{ Throwable -> 0x003d }
        r0.<init>();	 Catch:{ Throwable -> 0x003d }
        sAsc = r0;	 Catch:{ Throwable -> 0x003d }
    L_0x0027:
        r0 = "4";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003d }
        r0 = sAsc;	 Catch:{ Throwable -> 0x0043 }
        r0 = r0.dc(r4, r5);	 Catch:{ Throwable -> 0x0043 }
        if (r0 == 0) goto L_0x0037;
    L_0x0034:
        r2 = r0.length;	 Catch:{ Throwable -> 0x003d }
        if (r2 != 0) goto L_0x000c;
    L_0x0037:
        r2 = "5";
        com.baidu.techain.b.e.f(r2);	 Catch:{ Throwable -> 0x003d }
        goto L_0x000c;
    L_0x003d:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r1;
        goto L_0x000c;
    L_0x0043:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x003d }
        r0 = "5";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003d }
        r0 = r1;
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.F.ad(byte[], byte[]):byte[]");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public byte[] re(byte[] r4, byte[] r5) {
        /*
        r3 = this;
        r1 = 0;
        if (r5 == 0) goto L_0x000b;
    L_0x0003:
        r0 = r5.length;	 Catch:{ Throwable -> 0x003d }
        if (r0 <= 0) goto L_0x000b;
    L_0x0006:
        if (r4 == 0) goto L_0x000b;
    L_0x0008:
        r0 = r4.length;	 Catch:{ Throwable -> 0x003d }
        if (r0 > 0) goto L_0x000d;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        return r0;
    L_0x000d:
        r0 = "6";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003d }
        if (r4 == 0) goto L_0x0016;
    L_0x0014:
        if (r5 != 0) goto L_0x0043;
    L_0x0016:
        r0 = r1;
    L_0x0017:
        if (r0 == 0) goto L_0x001c;
    L_0x0019:
        r2 = r0.length;	 Catch:{ Throwable -> 0x003d }
        if (r2 > 0) goto L_0x000c;
    L_0x001c:
        r0 = sAsc;	 Catch:{ Throwable -> 0x003d }
        if (r0 != 0) goto L_0x0027;
    L_0x0020:
        r0 = new com.baidu.techain.jni.Asc;	 Catch:{ Throwable -> 0x003d }
        r0.<init>();	 Catch:{ Throwable -> 0x003d }
        sAsc = r0;	 Catch:{ Throwable -> 0x003d }
    L_0x0027:
        r0 = "7";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003d }
        r0 = sAsc;	 Catch:{ Throwable -> 0x0048 }
        r0 = r0.ar(r4, r5);	 Catch:{ Throwable -> 0x0048 }
        if (r0 == 0) goto L_0x0037;
    L_0x0034:
        r2 = r0.length;	 Catch:{ Throwable -> 0x003d }
        if (r2 != 0) goto L_0x000c;
    L_0x0037:
        r2 = "8";
        com.baidu.techain.b.e.f(r2);	 Catch:{ Throwable -> 0x003d }
        goto L_0x000c;
    L_0x003d:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r1;
        goto L_0x000c;
    L_0x0043:
        r0 = com.baidu.techain.b.h.a(r4, r5);	 Catch:{ Throwable -> 0x003d }
        goto L_0x0017;
    L_0x0048:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x003d }
        r0 = "8";
        com.baidu.techain.b.e.f(r0);	 Catch:{ Throwable -> 0x003d }
        r0 = r1;
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.F.re(byte[], byte[]):byte[]");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public byte[] rd(byte[] r4, byte[] r5) {
        /*
        r3 = this;
        r1 = 0;
        if (r5 == 0) goto L_0x000b;
    L_0x0003:
        r0 = r5.length;	 Catch:{ Throwable -> 0x0034 }
        if (r0 <= 0) goto L_0x000b;
    L_0x0006:
        if (r4 == 0) goto L_0x000b;
    L_0x0008:
        r0 = r4.length;	 Catch:{ Throwable -> 0x0034 }
        if (r0 > 0) goto L_0x000d;
    L_0x000b:
        r0 = r1;
    L_0x000c:
        return r0;
    L_0x000d:
        if (r4 == 0) goto L_0x0011;
    L_0x000f:
        if (r5 != 0) goto L_0x0029;
    L_0x0011:
        r0 = r1;
    L_0x0012:
        if (r0 == 0) goto L_0x0017;
    L_0x0014:
        r2 = r0.length;	 Catch:{ Throwable -> 0x0034 }
        if (r2 > 0) goto L_0x000c;
    L_0x0017:
        r0 = sAsc;	 Catch:{ Throwable -> 0x0034 }
        if (r0 != 0) goto L_0x0022;
    L_0x001b:
        r0 = new com.baidu.techain.jni.Asc;	 Catch:{ Throwable -> 0x0034 }
        r0.<init>();	 Catch:{ Throwable -> 0x0034 }
        sAsc = r0;	 Catch:{ Throwable -> 0x0034 }
    L_0x0022:
        r0 = sAsc;	 Catch:{ Throwable -> 0x002e }
        r0 = r0.dr(r4, r5);	 Catch:{ Throwable -> 0x002e }
        goto L_0x000c;
    L_0x0029:
        r0 = com.baidu.techain.b.h.a(r4, r5);	 Catch:{ Throwable -> 0x0034 }
        goto L_0x0012;
    L_0x002e:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0034 }
        r0 = r1;
        goto L_0x000c;
    L_0x0034:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r1;
        goto L_0x000c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.ac.F.rd(byte[], byte[]):byte[]");
    }

    public void rf(Context context) {
        try {
            new U(context.getApplicationContext(), 5, true).start();
        } catch (Throwable th) {
            e.a();
        }
    }

    public String gs(String str) {
        try {
            g a = g.a();
            if (a == null) {
                return "";
            }
            ApkInfo d = a.d(str);
            if (d != null) {
                return d.libPath;
            }
            return "";
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    public boolean chh(Context context, String str) {
        try {
            return e.a(context, str);
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }

    public Pair<Integer, Object> cmsi(int i, String str, Class<?>[] clsArr, Object... objArr) {
        try {
            d a = d.a();
            if (a == null) {
                return new Pair(Integer.valueOf(4), null);
            }
            return a.a(i, str, (Class[]) clsArr, objArr);
        } catch (Throwable th) {
            e.a();
            return new Pair(Integer.valueOf(3), null);
        }
    }

    public void s(int i, boolean z) {
        try {
            a aVar = a.d;
            if (aVar != null) {
                int i2;
                if (z) {
                    i2 = 1;
                } else {
                    i2 = 0;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("s", Integer.valueOf(i2));
                aVar.c.update("pgntechain", contentValues, "k=" + i + " and n=1", null);
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    public void sp(String str, boolean z) {
        int i = 1;
        try {
            a aVar = a.d;
            if (aVar != null) {
                if (!z) {
                    i = 0;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("s", Integer.valueOf(i));
                aVar.c.update("pgntechain", contentValues, "p=? and n=1", new String[]{str});
            }
        } catch (Throwable th) {
            e.a();
        }
    }

    public Map<Integer, String> gpd() {
        try {
            a aVar = a.d;
            if (aVar != null) {
                return aVar.b();
            }
        } catch (Throwable th) {
            e.a();
        }
        return null;
    }
}
