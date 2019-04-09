package com.baidu.techain.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.baidu.techain.a.a;
import com.baidu.techain.ac.F;
import com.baidu.techain.b;
import com.baidu.techain.b.g;

public final class e {
    public static void a(Context context, int i, String str, String str2, int... iArr) {
        try {
            final Context context2 = context;
            final int i2 = i;
            final int[] iArr2 = iArr;
            final String str3 = str;
            final String str4 = str2;
            new Thread(new Runnable() {
                /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                public final void run() {
                    /*
                    r7 = this;
                    r0 = r1;	 Catch:{ Throwable -> 0x001d }
                    com.baidu.techain.core.d.b = r0;	 Catch:{ Throwable -> 0x001d }
                    r0 = r1;	 Catch:{ Throwable -> 0x001d }
                    r1 = 1;
                    r0 = com.baidu.techain.b.e.a(r0, r1);	 Catch:{ Throwable -> 0x001d }
                    if (r0 != 0) goto L_0x0011;
                L_0x000d:
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x001d }
                L_0x0010:
                    return;
                L_0x0011:
                    r0 = r1;	 Catch:{ Throwable -> 0x001d }
                    r0 = com.baidu.techain.b.e.a(r0);	 Catch:{ Throwable -> 0x001d }
                    if (r0 != 0) goto L_0x0022;
                L_0x0019:
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x001d }
                    goto L_0x0010;
                L_0x001d:
                    r0 = move-exception;
                    com.baidu.techain.b.e.a();
                    goto L_0x0010;
                L_0x0022:
                    r0 = r1;	 Catch:{ Throwable -> 0x001d }
                    r0 = com.baidu.techain.core.d.a(r0);	 Catch:{ Throwable -> 0x001d }
                    r1 = r1;	 Catch:{ Throwable -> 0x001d }
                    com.baidu.techain.b.g.a(r1);	 Catch:{ Throwable -> 0x001d }
                    r1 = r2;	 Catch:{ Throwable -> 0x006e }
                    if (r1 <= 0) goto L_0x0039;
                L_0x0031:
                    r1 = r2;	 Catch:{ Throwable -> 0x006e }
                    r1 = r1 * 1000;
                    r1 = (long) r1;	 Catch:{ Throwable -> 0x006e }
                    java.lang.Thread.sleep(r1);	 Catch:{ Throwable -> 0x006e }
                L_0x0039:
                    r1 = new com.baidu.techain.e;	 Catch:{ Throwable -> 0x001d }
                    r2 = r1;	 Catch:{ Throwable -> 0x001d }
                    r1.<init>(r2);	 Catch:{ Throwable -> 0x001d }
                    r2 = r3;	 Catch:{ Throwable -> 0x001d }
                    r1.a(r2);	 Catch:{ Throwable -> 0x001d }
                    r1 = r4;	 Catch:{ Throwable -> 0x001d }
                    r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x001d }
                    if (r1 != 0) goto L_0x0065;
                L_0x004d:
                    r1 = r5;	 Catch:{ Throwable -> 0x001d }
                    r1 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x001d }
                    if (r1 != 0) goto L_0x0065;
                L_0x0055:
                    r1 = r4;	 Catch:{ Throwable -> 0x001d }
                    r2 = r5;	 Catch:{ Throwable -> 0x001d }
                    r3 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x00a9 }
                    if (r3 != 0) goto L_0x0065;
                L_0x005f:
                    r3 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Throwable -> 0x00a9 }
                    if (r3 == 0) goto L_0x0073;
                L_0x0065:
                    r1 = 1;
                    com.baidu.techain.core.d.a(r1);	 Catch:{ Throwable -> 0x001d }
                    r1 = 0;
                    r0.a(r1);	 Catch:{ Throwable -> 0x001d }
                    goto L_0x0010;
                L_0x006e:
                    r1 = move-exception;
                    com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x001d }
                    goto L_0x0039;
                L_0x0073:
                    r3 = "3";
                    r3 = r3.equals(r1);	 Catch:{ Throwable -> 0x00a9 }
                    if (r3 == 0) goto L_0x0083;
                L_0x007b:
                    r3 = "925fc15df8a49bed0b3eca8d2b44cb7b";
                    r3 = r3.equals(r2);	 Catch:{ Throwable -> 0x00a9 }
                    if (r3 != 0) goto L_0x0065;
                L_0x0083:
                    r3 = r0.a;	 Catch:{ Throwable -> 0x00a9 }
                    r4 = r3.c;	 Catch:{ Throwable -> 0x00a9 }
                    r5 = "svi";
                    r6 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00a9 }
                    r6.<init>();	 Catch:{ Throwable -> 0x00a9 }
                    r1 = r6.append(r1);	 Catch:{ Throwable -> 0x00a9 }
                    r6 = "-";
                    r1 = r1.append(r6);	 Catch:{ Throwable -> 0x00a9 }
                    r1 = r1.append(r2);	 Catch:{ Throwable -> 0x00a9 }
                    r1 = r1.toString();	 Catch:{ Throwable -> 0x00a9 }
                    r4.putString(r5, r1);	 Catch:{ Throwable -> 0x00a9 }
                    r1 = r3.c;	 Catch:{ Throwable -> 0x00a9 }
                    r1.commit();	 Catch:{ Throwable -> 0x00a9 }
                    goto L_0x0065;
                L_0x00a9:
                    r1 = move-exception;
                    com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x001d }
                    goto L_0x0065;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.e$AnonymousClass1.run():void");
                }
            }).start();
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    public static Pair<Integer, Object> a(int i, String str, Class<?>[] clsArr, Object... objArr) {
        try {
            Context context = d.b;
            if (context == null) {
                return new Pair(Integer.valueOf(4), null);
            }
            if (com.baidu.techain.b.e.a(d.b, false)) {
                String b = com.baidu.techain.b.e.b(d.b);
                if (TextUtils.isEmpty(b)) {
                    if (com.baidu.techain.b.e.b(d.b.getPackageName())) {
                        return new Pair(Integer.valueOf(5), null);
                    }
                    b.a();
                    return d.a(context).a(i, str, (Class[]) clsArr, objArr);
                } else if (com.baidu.techain.b.e.b(b)) {
                    b.a();
                    return a(d.b, i, str, (Class[]) clsArr, objArr);
                } else {
                    b.a();
                    return d.a(context).a(i, str, (Class[]) clsArr, objArr);
                }
            }
            b.a();
            return new Pair(Integer.valueOf(11), null);
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return new Pair(Integer.valueOf(3), null);
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static boolean a(int r9, java.lang.String r10, com.baidu.techain.ac.Callback r11, java.lang.Class<?>[] r12, java.lang.Object... r13) {
        /*
        r8 = 1;
        r7 = 0;
        r0 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00bb }
        if (r0 != 0) goto L_0x001b;
    L_0x0006:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00bb }
        if (r11 == 0) goto L_0x0019;
    L_0x000b:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00bb }
        r1 = 0;
        r2 = 4;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x00bb }
        r0[r1] = r2;	 Catch:{ Throwable -> 0x00bb }
        r11.onError(r0);	 Catch:{ Throwable -> 0x00bb }
    L_0x0019:
        r0 = r7;
    L_0x001a:
        return r0;
    L_0x001b:
        r1 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00bb }
        r2 = 0;
        r1 = com.baidu.techain.b.e.a(r1, r2);	 Catch:{ Throwable -> 0x00bb }
        if (r1 != 0) goto L_0x003a;
    L_0x0024:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00bb }
        if (r11 == 0) goto L_0x0038;
    L_0x0029:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00bb }
        r1 = 0;
        r2 = 11;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x00bb }
        r0[r1] = r2;	 Catch:{ Throwable -> 0x00bb }
        r11.onError(r0);	 Catch:{ Throwable -> 0x00bb }
    L_0x0038:
        r0 = r7;
        goto L_0x001a;
    L_0x003a:
        r1 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00bb }
        r1 = com.baidu.techain.b.e.b(r1);	 Catch:{ Throwable -> 0x00bb }
        r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x00bb }
        if (r2 == 0) goto L_0x0075;
    L_0x0046:
        r1 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00bb }
        r1 = r1.getPackageName();	 Catch:{ Throwable -> 0x00bb }
        r1 = com.baidu.techain.b.e.b(r1);	 Catch:{ Throwable -> 0x00bb }
        if (r1 == 0) goto L_0x0064;
    L_0x0052:
        if (r11 == 0) goto L_0x0062;
    L_0x0054:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00bb }
        r1 = 0;
        r2 = 5;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x00bb }
        r0[r1] = r2;	 Catch:{ Throwable -> 0x00bb }
        r11.onError(r0);	 Catch:{ Throwable -> 0x00bb }
    L_0x0062:
        r0 = r7;
        goto L_0x001a;
    L_0x0064:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00bb }
        r0 = com.baidu.techain.core.d.a(r0);	 Catch:{ Throwable -> 0x00bb }
        r1 = r9;
        r2 = r10;
        r3 = r11;
        r4 = r12;
        r5 = r13;
        r0.a(r1, r2, r3, r4, r5);	 Catch:{ Throwable -> 0x00bb }
        r0 = r8;
        goto L_0x001a;
    L_0x0075:
        r1 = com.baidu.techain.b.e.b(r1);	 Catch:{ Throwable -> 0x00bb }
        if (r1 == 0) goto L_0x00c2;
    L_0x007b:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00bb }
        r2 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00bb }
        r0 = android.text.TextUtils.isEmpty(r10);	 Catch:{ Throwable -> 0x00a6 }
        if (r0 == 0) goto L_0x0098;
    L_0x0086:
        if (r11 == 0) goto L_0x0096;
    L_0x0088:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00a6 }
        r1 = 0;
        r2 = 1;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x00a6 }
        r0[r1] = r2;	 Catch:{ Throwable -> 0x00a6 }
        r11.onError(r0);	 Catch:{ Throwable -> 0x00a6 }
    L_0x0096:
        r0 = r8;
        goto L_0x001a;
    L_0x0098:
        r0 = new com.baidu.techain.core.e$3;	 Catch:{ Throwable -> 0x00a6 }
        r1 = r11;
        r3 = r9;
        r4 = r10;
        r5 = r12;
        r6 = r13;
        r0.<init>(r1, r2, r3, r4, r5, r6);	 Catch:{ Throwable -> 0x00a6 }
        r0.start();	 Catch:{ Throwable -> 0x00a6 }
        goto L_0x0096;
    L_0x00a6:
        r0 = move-exception;
        if (r11 == 0) goto L_0x00b7;
    L_0x00a9:
        r0 = 1;
        r0 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x00d4 }
        r1 = 0;
        r2 = 3;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x00d4 }
        r0[r1] = r2;	 Catch:{ Throwable -> 0x00d4 }
        r11.onError(r0);	 Catch:{ Throwable -> 0x00d4 }
    L_0x00b7:
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x00bb }
        goto L_0x0096;
    L_0x00bb:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r7;
        goto L_0x001a;
    L_0x00c2:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00bb }
        r0 = com.baidu.techain.core.d.a(r0);	 Catch:{ Throwable -> 0x00bb }
        r1 = r9;
        r2 = r10;
        r3 = r11;
        r4 = r12;
        r5 = r13;
        r0.a(r1, r2, r3, r4, r5);	 Catch:{ Throwable -> 0x00bb }
        r0 = r8;
        goto L_0x001a;
    L_0x00d4:
        r0 = move-exception;
        goto L_0x00b7;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.e.a(int, java.lang.String, com.baidu.techain.ac.Callback, java.lang.Class[], java.lang.Object[]):boolean");
    }

    public static String a(Context context, String str, int i, String str2) {
        try {
            if (com.baidu.techain.b.e.a(context, false)) {
                String b = com.baidu.techain.b.e.b(context);
                if (TextUtils.isEmpty(b)) {
                    if (com.baidu.techain.b.e.b(context.getPackageName())) {
                        return "";
                    }
                    b.a();
                    return b(context, str, i, str2);
                } else if (com.baidu.techain.b.e.b(b)) {
                    b.a();
                    Pair a = a(context, 0, "gzfi", null, str, Integer.valueOf(i), str2);
                    if (a != null) {
                        if (((Integer) a.first).intValue() == 0) {
                            return (String) a.second;
                        }
                        return "";
                    }
                    return "";
                } else {
                    b.a();
                    return b(context, str, i, str2);
                }
            }
            b.a();
            return "";
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    private static String b(Context context, String str, int i, String str2) {
        if (i != 0) {
            if (TextUtils.isEmpty(str2)) {
                a(1, "ice", null, new Class[]{String.class, Integer.TYPE}, str, Integer.valueOf(i));
            } else {
                a(1, "ice", null, new Class[]{String.class, Integer.TYPE, String.class}, str, Integer.valueOf(i), str2);
            }
        }
        return b(context);
    }

    private static String b(Context context) {
        try {
            a a = a.a(context);
            if (a == null) {
                return "";
            }
            ApkInfo a2 = a.a(1);
            if (a2 == null || a2.initStatus != 1) {
                b.a();
                return "";
            }
            com.baidu.techain.e eVar = new com.baidu.techain.e(context);
            String string = eVar.b.getString("xytk", "");
            if (!TextUtils.isEmpty(string)) {
                return string;
            }
            string = g.a(context);
            if (!TextUtils.isEmpty(string)) {
                String[] split = string.split("\\|");
                if (split == null || split.length != 2 || TextUtils.isEmpty(split[0]) || TextUtils.isEmpty(split[1])) {
                    return string;
                }
                byte[] re = F.getInstance().re(split[1].getBytes(), split[0].getBytes());
                if (re != null) {
                    string = split[0] + com.baidu.techain.b.e.a(re);
                    eVar.d.putString("xytk", string);
                    eVar.d.commit();
                    return string;
                }
            }
            return "74FFB5E615AA72E0B057EE43E3D5A23A|440049145074113";
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    public static String a(Context context) {
        try {
            if (com.baidu.techain.b.e.a(context, false)) {
                String b = com.baidu.techain.b.e.b(context);
                if (TextUtils.isEmpty(b)) {
                    if (com.baidu.techain.b.e.b(context.getPackageName())) {
                        return "";
                    }
                    b.a();
                    return b(context);
                } else if (com.baidu.techain.b.e.b(b)) {
                    b.a();
                    Pair a = a(context, 0, "gz", null, new Object[0]);
                    if (a != null) {
                        if (((Integer) a.first).intValue() == 0) {
                            return (String) a.second;
                        }
                        b.a();
                        return "";
                    }
                    return "";
                } else {
                    b.a();
                    return b(context);
                }
            }
            b.a();
            return "";
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x0096 A:{Catch:{ Throwable -> 0x00a4, Throwable -> 0x01c2 }} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0071 A:{Catch:{ Throwable -> 0x00a4, Throwable -> 0x01c2 }} */
    public static android.os.Bundle a(android.content.Context r13, java.lang.String r14, android.os.Bundle r15) {
        /*
        r3 = new android.os.Bundle;
        r3.<init>();
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01c2 }
        r0.<init>();	 Catch:{ Throwable -> 0x01c2 }
        r0.append(r14);	 Catch:{ Throwable -> 0x01c2 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x01c2 }
        r0 = "gzfi";
        r0 = r0.equals(r14);	 Catch:{ Throwable -> 0x01c2 }
        if (r0 == 0) goto L_0x00b0;
    L_0x0018:
        if (r15 == 0) goto L_0x01c6;
    L_0x001a:
        r4 = 0;
        r1 = 0;
        r2 = 0;
        r5 = new com.baidu.techain.core.c;	 Catch:{ Throwable -> 0x01c2 }
        r5.<init>();	 Catch:{ Throwable -> 0x01c2 }
        r0 = com.baidu.techain.TechainProvider.class;
        r0 = r0.getClassLoader();	 Catch:{ Throwable -> 0x00a4 }
        r15.setClassLoader(r0);	 Catch:{ Throwable -> 0x00a4 }
        r0 = "args";
        r0 = r15.getParcelable(r0);	 Catch:{ Throwable -> 0x00a4 }
        r0 = (com.baidu.techain.core.c) r0;	 Catch:{ Throwable -> 0x00a4 }
        if (r0 == 0) goto L_0x01d9;
    L_0x0035:
        r6 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r6 = r6.length;	 Catch:{ Throwable -> 0x00a4 }
        r7 = 2;
        if (r6 != r7) goto L_0x007a;
    L_0x003b:
        r1 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r4 = 0;
        r1 = r1[r4];	 Catch:{ Throwable -> 0x00a4 }
        r1 = (java.lang.String) r1;	 Catch:{ Throwable -> 0x00a4 }
        r0 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r4 = 1;
        r0 = r0[r4];	 Catch:{ Throwable -> 0x00a4 }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x00a4 }
        r4 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00a4 }
        r6 = "args ";
        r4.<init>(r6);	 Catch:{ Throwable -> 0x00a4 }
        r4 = r4.append(r1);	 Catch:{ Throwable -> 0x00a4 }
        r6 = " ";
        r4 = r4.append(r6);	 Catch:{ Throwable -> 0x00a4 }
        r4.append(r0);	 Catch:{ Throwable -> 0x00a4 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00a4 }
        r12 = r2;
        r2 = r0;
        r0 = r12;
    L_0x0063:
        r2 = r2.intValue();	 Catch:{ Throwable -> 0x00a4 }
        r0 = b(r13, r1, r2, r0);	 Catch:{ Throwable -> 0x00a4 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x00a4 }
        if (r1 == 0) goto L_0x0096;
    L_0x0071:
        r0 = "status";
        r1 = 8;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x00a4 }
    L_0x0078:
        r0 = r3;
    L_0x0079:
        return r0;
    L_0x007a:
        r6 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r6 = r6.length;	 Catch:{ Throwable -> 0x00a4 }
        r7 = 3;
        if (r6 != r7) goto L_0x01d9;
    L_0x0080:
        r1 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r2 = 0;
        r1 = r1[r2];	 Catch:{ Throwable -> 0x00a4 }
        r1 = (java.lang.String) r1;	 Catch:{ Throwable -> 0x00a4 }
        r2 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r4 = 1;
        r2 = r2[r4];	 Catch:{ Throwable -> 0x00a4 }
        r2 = (java.lang.Integer) r2;	 Catch:{ Throwable -> 0x00a4 }
        r0 = r0.e;	 Catch:{ Throwable -> 0x00a4 }
        r4 = 2;
        r0 = r0[r4];	 Catch:{ Throwable -> 0x00a4 }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x00a4 }
        goto L_0x0063;
    L_0x0096:
        r5.f = r0;	 Catch:{ Throwable -> 0x00a4 }
        r0 = "result";
        r3.putParcelable(r0, r5);	 Catch:{ Throwable -> 0x00a4 }
        r0 = "status";
        r1 = 0;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x00a4 }
        goto L_0x0078;
    L_0x00a4:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x01c2 }
        r0 = "status";
        r1 = 7;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x01c2 }
        r0 = r3;
        goto L_0x0079;
    L_0x00b0:
        r0 = "invokeMethod";
        r0 = r0.equals(r14);	 Catch:{ Throwable -> 0x01c2 }
        if (r0 == 0) goto L_0x0193;
    L_0x00b8:
        if (r15 == 0) goto L_0x01c6;
    L_0x00ba:
        r5 = new com.baidu.techain.core.c;	 Catch:{ Throwable -> 0x01c2 }
        r5.<init>();	 Catch:{ Throwable -> 0x01c2 }
        r0 = com.baidu.techain.TechainProvider.class;
        r0 = r0.getClassLoader();	 Catch:{ Throwable -> 0x011d }
        r15.setClassLoader(r0);	 Catch:{ Throwable -> 0x011d }
        r0 = "args";
        r0 = r15.getParcelable(r0);	 Catch:{ Throwable -> 0x011d }
        r0 = (com.baidu.techain.core.c) r0;	 Catch:{ Throwable -> 0x011d }
        r6 = r0.a;	 Catch:{ Throwable -> 0x011d }
        r7 = r0.b;	 Catch:{ Throwable -> 0x011d }
        r8 = r0.c;	 Catch:{ Throwable -> 0x011d }
        r9 = r0.d;	 Catch:{ Throwable -> 0x011d }
        r1 = 0;
        if (r9 == 0) goto L_0x0130;
    L_0x00db:
        r1 = r9.length;	 Catch:{ Throwable -> 0x011d }
        r2 = new java.lang.Class[r1];	 Catch:{ Throwable -> 0x011d }
        r1 = 0;
        r4 = r1;
    L_0x00e0:
        r1 = r9.length;	 Catch:{ Throwable -> 0x011d }
        if (r4 >= r1) goto L_0x012f;
    L_0x00e3:
        r1 = r9[r4];	 Catch:{ Throwable -> 0x011d }
        r1 = (java.lang.String) r1;	 Catch:{ Throwable -> 0x011d }
        r10 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x011d }
        if (r10 != 0) goto L_0x0112;
    L_0x00ed:
        r10 = "@@";
        r10 = r1.contains(r10);	 Catch:{ Throwable -> 0x011d }
        if (r10 == 0) goto L_0x0112;
    L_0x00f5:
        r1 = com.baidu.techain.b.e.a(r1);	 Catch:{ Throwable -> 0x011d }
        if (r1 == 0) goto L_0x010e;
    L_0x00fb:
        r10 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x011d }
        r11 = "convert back class name ";
        r10.<init>(r11);	 Catch:{ Throwable -> 0x011d }
        r11 = r1.getCanonicalName();	 Catch:{ Throwable -> 0x011d }
        r10.append(r11);	 Catch:{ Throwable -> 0x011d }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x011d }
        r2[r4] = r1;	 Catch:{ Throwable -> 0x011d }
    L_0x010e:
        r1 = r4 + 1;
        r4 = r1;
        goto L_0x00e0;
    L_0x0112:
        r1 = r9[r4];	 Catch:{ Throwable -> 0x011d }
        r1 = (java.lang.String) r1;	 Catch:{ Throwable -> 0x011d }
        r1 = java.lang.Class.forName(r1);	 Catch:{ Throwable -> 0x011d }
        r2[r4] = r1;	 Catch:{ Throwable -> 0x011d }
        goto L_0x010e;
    L_0x011d:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x01c2 }
        r0 = "result";
        r3.putParcelable(r0, r5);	 Catch:{ Throwable -> 0x01c2 }
        r0 = "status";
        r1 = 7;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x01c2 }
        r0 = r3;
        goto L_0x0079;
    L_0x012f:
        r1 = r2;
    L_0x0130:
        r0 = r0.e;	 Catch:{ Throwable -> 0x011d }
        r2 = 1;
        if (r7 != r2) goto L_0x016f;
    L_0x0135:
        r1 = a(r6, r8, r1, r0);	 Catch:{ Throwable -> 0x011d }
        r2 = "status";
        r0 = r1.first;	 Catch:{ Throwable -> 0x011d }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x011d }
        r0 = r0.intValue();	 Catch:{ Throwable -> 0x011d }
        r3.putInt(r2, r0);	 Catch:{ Throwable -> 0x011d }
        r0 = r1.first;	 Catch:{ Throwable -> 0x011d }
        r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x011d }
        r0 = r0.intValue();	 Catch:{ Throwable -> 0x011d }
        if (r0 != 0) goto L_0x0154;
    L_0x0150:
        r0 = r1.second;	 Catch:{ Throwable -> 0x011d }
        r5.f = r0;	 Catch:{ Throwable -> 0x011d }
    L_0x0154:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x011d }
        r1 = "return bundle";
        r0.<init>(r1);	 Catch:{ Throwable -> 0x011d }
        r1 = "status";
        r1 = r3.getInt(r1);	 Catch:{ Throwable -> 0x011d }
        r0.append(r1);	 Catch:{ Throwable -> 0x011d }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x011d }
        r0 = "result";
        r3.putParcelable(r0, r5);	 Catch:{ Throwable -> 0x011d }
        r0 = r3;
        goto L_0x0079;
    L_0x016f:
        if (r7 != 0) goto L_0x0154;
    L_0x0171:
        r2 = new java.util.concurrent.CountDownLatch;	 Catch:{ Throwable -> 0x011d }
        r4 = 1;
        r2.<init>(r4);	 Catch:{ Throwable -> 0x011d }
        r4 = new com.baidu.techain.core.e$2;	 Catch:{ Throwable -> 0x011d }
        r4.<init>(r3, r5, r2, r8);	 Catch:{ Throwable -> 0x011d }
        a(r6, r8, r4, r1, r0);	 Catch:{ Throwable -> 0x011d }
        r0 = 180000; // 0x2bf20 float:2.52234E-40 double:8.8932E-319;
        r4 = java.util.concurrent.TimeUnit.MILLISECONDS;	 Catch:{ Throwable -> 0x0188 }
        r2.await(r0, r4);	 Catch:{ Throwable -> 0x0188 }
        goto L_0x0154;
    L_0x0188:
        r0 = move-exception;
        r0 = "status";
        r1 = 3;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x011d }
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x011d }
        goto L_0x0154;
    L_0x0193:
        r0 = "gz";
        r0 = r0.equals(r14);	 Catch:{ Throwable -> 0x01c2 }
        if (r0 == 0) goto L_0x01d0;
    L_0x019b:
        r0 = b(r13);	 Catch:{ Throwable -> 0x01c2 }
        r1 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x01c2 }
        if (r1 == 0) goto L_0x01af;
    L_0x01a5:
        r0 = "status";
        r1 = 8;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x01c2 }
    L_0x01ac:
        r0 = r3;
        goto L_0x0079;
    L_0x01af:
        r1 = new com.baidu.techain.core.c;	 Catch:{ Throwable -> 0x01c2 }
        r1.<init>();	 Catch:{ Throwable -> 0x01c2 }
        r1.f = r0;	 Catch:{ Throwable -> 0x01c2 }
        r0 = "result";
        r3.putParcelable(r0, r1);	 Catch:{ Throwable -> 0x01c2 }
        r0 = "status";
        r1 = 0;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x01c2 }
        goto L_0x01ac;
    L_0x01c2:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
    L_0x01c6:
        r0 = "status";
        r1 = 10;
        r3.putInt(r0, r1);
        r0 = r3;
        goto L_0x0079;
    L_0x01d0:
        r0 = "status";
        r1 = 2;
        r3.putInt(r0, r1);	 Catch:{ Throwable -> 0x01c2 }
        r0 = r3;
        goto L_0x0079;
    L_0x01d9:
        r0 = r2;
        r2 = r1;
        r1 = r4;
        goto L_0x0063;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.e.a(android.content.Context, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    static android.util.Pair<java.lang.Integer, java.lang.Object> a(android.content.Context r9, int r10, int r11, java.lang.String r12, java.lang.Class<?>[] r13, java.lang.Object... r14) {
        /*
        r0 = android.text.TextUtils.isEmpty(r12);	 Catch:{ Throwable -> 0x006f }
        if (r0 == 0) goto L_0x0011;
    L_0x0006:
        r0 = 1;
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Throwable -> 0x006f }
        r1 = 0;
        r0 = android.util.Pair.create(r0, r1);	 Catch:{ Throwable -> 0x006f }
    L_0x0010:
        return r0;
    L_0x0011:
        r0 = "gzfi";
        r0 = r0.equals(r12);	 Catch:{ Throwable -> 0x006f }
        if (r0 != 0) goto L_0x0021;
    L_0x0019:
        r0 = "gz";
        r0 = r0.equals(r12);	 Catch:{ Throwable -> 0x006f }
        if (r0 == 0) goto L_0x0062;
    L_0x0021:
        r1 = r12;
    L_0x0022:
        r2 = new com.baidu.techain.core.c;	 Catch:{ Throwable -> 0x006f }
        r2.<init>();	 Catch:{ Throwable -> 0x006f }
        r2.a = r10;	 Catch:{ Throwable -> 0x006f }
        r2.c = r12;	 Catch:{ Throwable -> 0x006f }
        r2.b = r11;	 Catch:{ Throwable -> 0x006f }
        if (r13 == 0) goto L_0x0080;
    L_0x002f:
        r0 = r13.length;	 Catch:{ Throwable -> 0x006f }
        r3 = new java.lang.Object[r0];	 Catch:{ Throwable -> 0x006f }
        r0 = 0;
    L_0x0033:
        r4 = r13.length;	 Catch:{ Throwable -> 0x006f }
        if (r0 >= r4) goto L_0x007e;
    L_0x0036:
        r4 = r13[r0];	 Catch:{ Throwable -> 0x006f }
        r4 = r4.isPrimitive();	 Catch:{ Throwable -> 0x006f }
        if (r4 == 0) goto L_0x0066;
    L_0x003e:
        r4 = r13[r0];	 Catch:{ Throwable -> 0x006f }
        r4 = com.baidu.techain.b.e.a(r4);	 Catch:{ Throwable -> 0x006f }
        r5 = android.text.TextUtils.isEmpty(r4);	 Catch:{ Throwable -> 0x006f }
        if (r5 != 0) goto L_0x005f;
    L_0x004a:
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x006f }
        r5.<init>();	 Catch:{ Throwable -> 0x006f }
        r4 = r5.append(r4);	 Catch:{ Throwable -> 0x006f }
        r5 = "@@";
        r4 = r4.append(r5);	 Catch:{ Throwable -> 0x006f }
        r4 = r4.toString();	 Catch:{ Throwable -> 0x006f }
        r3[r0] = r4;	 Catch:{ Throwable -> 0x006f }
    L_0x005f:
        r0 = r0 + 1;
        goto L_0x0033;
    L_0x0062:
        r0 = "invokeMethod";
        r1 = r0;
        goto L_0x0022;
    L_0x0066:
        r4 = r13[r0];	 Catch:{ Throwable -> 0x006f }
        r4 = r4.getCanonicalName();	 Catch:{ Throwable -> 0x006f }
        r3[r0] = r4;	 Catch:{ Throwable -> 0x006f }
        goto L_0x005f;
    L_0x006f:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = 3;
        r0 = java.lang.Integer.valueOf(r0);
        r1 = 0;
        r0 = android.util.Pair.create(r0, r1);
        goto L_0x0010;
    L_0x007e:
        r2.d = r3;	 Catch:{ Throwable -> 0x006f }
    L_0x0080:
        r2.e = r14;	 Catch:{ Throwable -> 0x006f }
        r3 = new android.os.Bundle;	 Catch:{ Throwable -> 0x006f }
        r3.<init>();	 Catch:{ Throwable -> 0x006f }
        r0 = "args";
        r3.putParcelable(r0, r2);	 Catch:{ Throwable -> 0x006f }
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x006f }
        r2 = "content://";
        r0.<init>(r2);	 Catch:{ Throwable -> 0x006f }
        r2 = r9.getPackageName();	 Catch:{ Throwable -> 0x006f }
        r2 = r0.append(r2);	 Catch:{ Throwable -> 0x006f }
        r4 = ".techain.ac.provider";
        r2.append(r4);	 Catch:{ Throwable -> 0x006f }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x006f }
        r2 = android.net.Uri.parse(r0);	 Catch:{ Throwable -> 0x006f }
        r0 = 0;
        r4 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x006f }
        r5 = 11;
        if (r4 < r5) goto L_0x00c7;
    L_0x00af:
        r0 = r9.getContentResolver();	 Catch:{ Throwable -> 0x006f }
        r4 = 0;
        r0 = r0.call(r2, r1, r4, r3);	 Catch:{ Throwable -> 0x006f }
        r1 = r0;
    L_0x00b9:
        if (r1 != 0) goto L_0x014e;
    L_0x00bb:
        r0 = 3;
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Throwable -> 0x006f }
        r1 = 0;
        r0 = android.util.Pair.create(r0, r1);	 Catch:{ Throwable -> 0x006f }
        goto L_0x0010;
    L_0x00c7:
        r4 = r9.getContentResolver();	 Catch:{ Throwable -> 0x006f }
        r2 = r4.acquireContentProviderClient(r2);	 Catch:{ Throwable -> 0x006f }
        if (r2 != 0) goto L_0x00dd;
    L_0x00d1:
        r0 = 3;
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ Throwable -> 0x006f }
        r1 = 0;
        r0 = android.util.Pair.create(r0, r1);	 Catch:{ Throwable -> 0x006f }
        goto L_0x0010;
    L_0x00dd:
        r4 = android.content.ContentProviderClient.class;
        r5 = "mContentProvider";
        r4 = r4.getDeclaredField(r5);	 Catch:{ Throwable -> 0x0135 }
        r5 = r4.isAccessible();	 Catch:{ Throwable -> 0x0135 }
        if (r5 != 0) goto L_0x00ef;
    L_0x00eb:
        r5 = 1;
        r4.setAccessible(r5);	 Catch:{ Throwable -> 0x0135 }
    L_0x00ef:
        r4 = r4.get(r2);	 Catch:{ Throwable -> 0x0135 }
        if (r4 == 0) goto L_0x0130;
    L_0x00f5:
        r0 = "android.content.IContentProvider";
        r0 = java.lang.Class.forName(r0);	 Catch:{ Throwable -> 0x0135 }
        r5 = "call";
        r6 = 3;
        r6 = new java.lang.Class[r6];	 Catch:{ Throwable -> 0x0135 }
        r7 = 0;
        r8 = java.lang.String.class;
        r6[r7] = r8;	 Catch:{ Throwable -> 0x0135 }
        r7 = 1;
        r8 = java.lang.String.class;
        r6[r7] = r8;	 Catch:{ Throwable -> 0x0135 }
        r7 = 2;
        r8 = android.os.Bundle.class;
        r6[r7] = r8;	 Catch:{ Throwable -> 0x0135 }
        r0 = r0.getDeclaredMethod(r5, r6);	 Catch:{ Throwable -> 0x0135 }
        r5 = r0.isAccessible();	 Catch:{ Throwable -> 0x0135 }
        if (r5 != 0) goto L_0x011d;
    L_0x0119:
        r5 = 1;
        r0.setAccessible(r5);	 Catch:{ Throwable -> 0x0135 }
    L_0x011d:
        r5 = 3;
        r5 = new java.lang.Object[r5];	 Catch:{ Throwable -> 0x0135 }
        r6 = 0;
        r5[r6] = r1;	 Catch:{ Throwable -> 0x0135 }
        r1 = 1;
        r6 = 0;
        r5[r1] = r6;	 Catch:{ Throwable -> 0x0135 }
        r1 = 2;
        r5[r1] = r3;	 Catch:{ Throwable -> 0x0135 }
        r0 = r0.invoke(r4, r5);	 Catch:{ Throwable -> 0x0135 }
        r0 = (android.os.Bundle) r0;	 Catch:{ Throwable -> 0x0135 }
    L_0x0130:
        r2.release();	 Catch:{ Throwable -> 0x006f }
        r1 = r0;
        goto L_0x00b9;
    L_0x0135:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0149 }
        r0 = 9;
        r0 = java.lang.Integer.valueOf(r0);	 Catch:{ all -> 0x0149 }
        r1 = 0;
        r0 = android.util.Pair.create(r0, r1);	 Catch:{ all -> 0x0149 }
        r2.release();	 Catch:{ Throwable -> 0x006f }
        goto L_0x0010;
    L_0x0149:
        r0 = move-exception;
        r2.release();	 Catch:{ Throwable -> 0x006f }
        throw r0;	 Catch:{ Throwable -> 0x006f }
    L_0x014e:
        r0 = com.baidu.techain.core.c.class;
        r0 = r0.getClassLoader();	 Catch:{ Throwable -> 0x006f }
        r1.setClassLoader(r0);	 Catch:{ Throwable -> 0x006f }
        r0 = "status";
        r2 = r1.getInt(r0);	 Catch:{ Throwable -> 0x006f }
        r0 = 0;
        if (r2 != 0) goto L_0x0168;
    L_0x0160:
        r0 = "result";
        r0 = r1.getParcelable(r0);	 Catch:{ Throwable -> 0x006f }
        r0 = (com.baidu.techain.core.c) r0;	 Catch:{ Throwable -> 0x006f }
    L_0x0168:
        r1 = java.lang.Integer.valueOf(r2);	 Catch:{ Throwable -> 0x006f }
        if (r0 != 0) goto L_0x0175;
    L_0x016e:
        r0 = 0;
    L_0x016f:
        r0 = android.util.Pair.create(r1, r0);	 Catch:{ Throwable -> 0x006f }
        goto L_0x0010;
    L_0x0175:
        r0 = r0.f;	 Catch:{ Throwable -> 0x006f }
        goto L_0x016f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.e.a(android.content.Context, int, int, java.lang.String, java.lang.Class[], java.lang.Object[]):android.util.Pair");
    }

    private static Pair<Integer, Object> a(Context context, int i, String str, Class<?>[] clsArr, Object... objArr) {
        return a(context, i, 1, str, clsArr, objArr);
    }
}
