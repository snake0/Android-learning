package com.baidu.techain.b;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.text.TextUtils;
import java.io.File;
import org.json.JSONObject;

public final class k {
    private static final String a = new String(c.a(new byte[]{(byte) 77, (byte) 122, (byte) 65, (byte) 121, (byte) 77, (byte) 84, (byte) 73, (byte) 120, (byte) 77, (byte) 68, (byte) 73, (byte) 61}));
    private static final String b = new String(c.a(new byte[]{(byte) 90, (byte) 71, (byte) 108, (byte) 106, (byte) 100, (byte) 87, (byte) 82, (byte) 112, (byte) 89, (byte) 87, (byte) 73, (byte) 61}));
    private static final String c = (a + b);
    private static a d;
    private Context e;

    class a {
        public String a;
        public String b;

        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }

        public static a a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("deviceid");
                String string2 = jSONObject.getString("imei");
                if (TextUtils.isEmpty(string) || string2 == null) {
                    return null;
                }
                a aVar = new a();
                aVar.a = string;
                aVar.b = string2;
                return aVar;
            } catch (Throwable th) {
                k.a();
                return null;
            }
        }

        public final String a() {
            try {
                String str = this.b;
                if (TextUtils.isEmpty(str)) {
                    str = "0";
                }
                return this.a + "|" + new StringBuffer(str).reverse().toString();
            } catch (Throwable th) {
                k.a();
                return null;
            }
        }
    }

    static /* synthetic */ void a() {
    }

    private k(Context context) {
        this.e = context;
    }

    private String a(String str) {
        try {
            return System.getString(this.e.getContentResolver(), str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x0031 A:{SYNTHETIC, Splitter:B:23:0x0031} */
    private static java.lang.String a(java.io.File r7) {
        /*
        r0 = 0;
        r1 = new java.io.FileReader;	 Catch:{ Throwable -> 0x003b, all -> 0x002b }
        r1.<init>(r7);	 Catch:{ Throwable -> 0x003b, all -> 0x002b }
        r2 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r2 = new char[r2];	 Catch:{ Throwable -> 0x001a, all -> 0x0039 }
        r3 = new java.io.CharArrayWriter;	 Catch:{ Throwable -> 0x001a, all -> 0x0039 }
        r3.<init>();	 Catch:{ Throwable -> 0x001a, all -> 0x0039 }
    L_0x000f:
        r4 = r1.read(r2);	 Catch:{ Throwable -> 0x001a, all -> 0x0039 }
        if (r4 <= 0) goto L_0x0021;
    L_0x0015:
        r5 = 0;
        r3.write(r2, r5, r4);	 Catch:{ Throwable -> 0x001a, all -> 0x0039 }
        goto L_0x000f;
    L_0x001a:
        r2 = move-exception;
    L_0x001b:
        if (r1 == 0) goto L_0x0020;
    L_0x001d:
        r1.close();	 Catch:{ Throwable -> 0x0035 }
    L_0x0020:
        return r0;
    L_0x0021:
        r0 = r3.toString();	 Catch:{ Throwable -> 0x001a, all -> 0x0039 }
        r1.close();	 Catch:{ Throwable -> 0x0029 }
        goto L_0x0020;
    L_0x0029:
        r1 = move-exception;
        goto L_0x0020;
    L_0x002b:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x002f:
        if (r1 == 0) goto L_0x0034;
    L_0x0031:
        r1.close();	 Catch:{ Throwable -> 0x0037 }
    L_0x0034:
        throw r0;
    L_0x0035:
        r1 = move-exception;
        goto L_0x0020;
    L_0x0037:
        r1 = move-exception;
        goto L_0x0034;
    L_0x0039:
        r0 = move-exception;
        goto L_0x002f;
    L_0x003b:
        r1 = move-exception;
        r1 = r0;
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.k.a(java.io.File):java.lang.String");
    }

    public static String a(Context context) {
        a b = b(context);
        if (b != null) {
            return b.a();
        }
        return null;
    }

    private static a b(Context context) {
        if (d == null) {
            synchronized (a.class) {
                if (d == null) {
                    d = new k(context).b();
                }
            }
        }
        return d;
    }

    private a b() {
        try {
            a a = a.a(d(a("com.baidu.deviceid.v2")));
            if (a != null) {
                return a;
            }
            boolean e = e("android.permission.READ_EXTERNAL_STORAGE");
            if (e) {
                a = c();
            }
            if (a != null) {
                return a;
            }
            a = d();
            if (a == null && e) {
                return b(c(""));
            }
            return a;
        } catch (Throwable th) {
            return null;
        }
    }

    private static a c() {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
            if (file.exists()) {
                String a = a(file);
                if (!TextUtils.isEmpty(a)) {
                    try {
                        return a.a(new String(a.a(c, c, c.a(a.getBytes()))));
                    } catch (Throwable th) {
                    }
                }
            }
        } catch (Throwable th2) {
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0056 A:{SYNTHETIC, Splitter:B:24:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005b A:{Catch:{ Throwable -> 0x00c4 }} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00ce A:{SYNTHETIC, Splitter:B:57:0x00ce} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00d3 A:{Catch:{ Throwable -> 0x00da }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0056 A:{SYNTHETIC, Splitter:B:24:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005b A:{Catch:{ Throwable -> 0x00c4 }} */
    /* JADX WARNING: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x00ce A:{SYNTHETIC, Splitter:B:57:0x00ce} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00d3 A:{Catch:{ Throwable -> 0x00da }} */
    private static com.baidu.techain.b.k.a b(java.lang.String r11) {
        /*
        r6 = 0;
        r2 = 0;
        r0 = 1;
        r1 = android.os.Build.VERSION.SDK_INT;
        r3 = 23;
        if (r1 >= r3) goto L_0x0014;
    L_0x0009:
        r5 = r0;
    L_0x000a:
        if (r5 == 0) goto L_0x0016;
    L_0x000c:
        r0 = android.text.TextUtils.isEmpty(r11);
        if (r0 == 0) goto L_0x0016;
    L_0x0012:
        r0 = r2;
    L_0x0013:
        return r0;
    L_0x0014:
        r5 = r6;
        goto L_0x000a;
    L_0x0016:
        r1 = "";
        r0 = new java.io.File;
        r3 = android.os.Environment.getExternalStorageDirectory();
        r4 = "baidu/.cuid";
        r0.<init>(r3, r4);
        r3 = r0.exists();
        if (r3 != 0) goto L_0x0034;
    L_0x0029:
        r0 = new java.io.File;
        r3 = android.os.Environment.getExternalStorageDirectory();
        r4 = "backups/.SystemConfig/.cuid";
        r0.<init>(r3, r4);
    L_0x0034:
        r4 = new java.io.FileReader;	 Catch:{ Throwable -> 0x00e1, all -> 0x00c9 }
        r4.<init>(r0);	 Catch:{ Throwable -> 0x00e1, all -> 0x00c9 }
        r3 = new java.io.BufferedReader;	 Catch:{ Throwable -> 0x00e7, all -> 0x00dc }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x00e7, all -> 0x00dc }
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0.<init>();	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
    L_0x0043:
        r7 = r3.readLine();	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        if (r7 == 0) goto L_0x0072;
    L_0x0049:
        r0.append(r7);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r7 = "\r\n";
        r0.append(r7);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        goto L_0x0043;
    L_0x0052:
        r0 = move-exception;
        r0 = r11;
    L_0x0054:
        if (r3 == 0) goto L_0x0059;
    L_0x0056:
        r3.close();	 Catch:{ Throwable -> 0x00c4 }
    L_0x0059:
        if (r4 == 0) goto L_0x005e;
    L_0x005b:
        r4.close();	 Catch:{ Throwable -> 0x00c4 }
    L_0x005e:
        r10 = r1;
        r1 = r0;
        r0 = r10;
    L_0x0061:
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 != 0) goto L_0x00d7;
    L_0x0067:
        r2 = new com.baidu.techain.b.k$a;
        r2.<init>(r6);
        r2.a = r0;
        r2.b = r1;
        r0 = r2;
        goto L_0x0013;
    L_0x0072:
        r3.close();	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r7 = new java.lang.String;	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r8 = c;	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r9 = c;	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = r0.toString();	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = r0.getBytes();	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = com.baidu.techain.b.c.a(r0);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = com.baidu.techain.b.a.a(r8, r9, r0);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r7.<init>(r0);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = "=";
        r0 = r7.split(r0);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        if (r0 == 0) goto L_0x00ec;
    L_0x0096:
        r7 = r0.length;	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r8 = 2;
        if (r7 != r8) goto L_0x00ec;
    L_0x009a:
        if (r5 == 0) goto L_0x00b3;
    L_0x009c:
        r7 = 0;
        r7 = r0[r7];	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r7 = r11.equals(r7);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        if (r7 == 0) goto L_0x00b3;
    L_0x00a5:
        r5 = 1;
        r1 = r0[r5];	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = r1;
        r1 = r11;
    L_0x00aa:
        r3.close();	 Catch:{ Throwable -> 0x00b1 }
        r4.close();	 Catch:{ Throwable -> 0x00b1 }
        goto L_0x0061;
    L_0x00b1:
        r3 = move-exception;
        goto L_0x0061;
    L_0x00b3:
        if (r5 != 0) goto L_0x00ec;
    L_0x00b5:
        r5 = android.text.TextUtils.isEmpty(r11);	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        if (r5 == 0) goto L_0x00be;
    L_0x00bb:
        r5 = 1;
        r11 = r0[r5];	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
    L_0x00be:
        r5 = 1;
        r1 = r0[r5];	 Catch:{ Throwable -> 0x0052, all -> 0x00df }
        r0 = r1;
        r1 = r11;
        goto L_0x00aa;
    L_0x00c4:
        r3 = move-exception;
        r10 = r1;
        r1 = r0;
        r0 = r10;
        goto L_0x0061;
    L_0x00c9:
        r0 = move-exception;
        r3 = r2;
        r4 = r2;
    L_0x00cc:
        if (r3 == 0) goto L_0x00d1;
    L_0x00ce:
        r3.close();	 Catch:{ Throwable -> 0x00da }
    L_0x00d1:
        if (r4 == 0) goto L_0x00d6;
    L_0x00d3:
        r4.close();	 Catch:{ Throwable -> 0x00da }
    L_0x00d6:
        throw r0;
    L_0x00d7:
        r0 = r2;
        goto L_0x0013;
    L_0x00da:
        r1 = move-exception;
        goto L_0x00d6;
    L_0x00dc:
        r0 = move-exception;
        r3 = r2;
        goto L_0x00cc;
    L_0x00df:
        r0 = move-exception;
        goto L_0x00cc;
    L_0x00e1:
        r0 = move-exception;
        r3 = r2;
        r4 = r2;
        r0 = r11;
        goto L_0x0054;
    L_0x00e7:
        r0 = move-exception;
        r3 = r2;
        r0 = r11;
        goto L_0x0054;
    L_0x00ec:
        r0 = r1;
        r1 = r11;
        goto L_0x00aa;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.k.b(java.lang.String):com.baidu.techain.b.k$a");
    }

    private a d() {
        try {
            String c;
            CharSequence a;
            String a2 = a("com.baidu.deviceid");
            String a3 = a("bd_setting_i");
            if (TextUtils.isEmpty(a3)) {
                c = c("");
            } else {
                c = a3;
            }
            if (TextUtils.isEmpty(a2)) {
                a2 = Secure.getString(this.e.getContentResolver(), "android_id");
                if (TextUtils.isEmpty(a2)) {
                    a2 = "";
                }
                a = a(o.b(("com.baidu" + c + a2).getBytes()));
            } else {
                Object a4 = a2;
            }
            if (!TextUtils.isEmpty(a4)) {
                a aVar = new a();
                aVar.a = a4;
                aVar.b = c;
                return aVar;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:? A:{SYNTHETIC, RETURN, Catch:{ Throwable -> 0x002e }} */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x002c  */
    private java.lang.String c(java.lang.String r4) {
        /*
        r3 = this;
        r1 = 0;
        r0 = "android.permission.READ_PHONE_STATE";
        r0 = r3.e(r0);	 Catch:{ Throwable -> 0x002e }
        if (r0 != 0) goto L_0x000a;
    L_0x0009:
        return r4;
    L_0x000a:
        r0 = r3.e;	 Catch:{ Throwable -> 0x002e }
        r2 = "phone";
        r0 = r0.getSystemService(r2);	 Catch:{ Throwable -> 0x002e }
        r0 = (android.telephony.TelephonyManager) r0;	 Catch:{ Throwable -> 0x002e }
        if (r0 == 0) goto L_0x002f;
    L_0x0016:
        r0 = r0.getDeviceId();	 Catch:{ Throwable -> 0x002e }
    L_0x001a:
        if (r0 == 0) goto L_0x0026;
    L_0x001c:
        r1 = ":";
        r1 = r0.contains(r1);
        if (r1 == 0) goto L_0x0026;
    L_0x0024:
        r0 = "";
    L_0x0026:
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 != 0) goto L_0x0009;
    L_0x002c:
        r4 = r0;
        goto L_0x0009;
    L_0x002e:
        r0 = move-exception;
    L_0x002f:
        r0 = r1;
        goto L_0x001a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.k.c(java.lang.String):java.lang.String");
    }

    private static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new String(a.a(c, c, c.a(str.getBytes())));
        } catch (Throwable th) {
            return "";
        }
    }

    private boolean e(String str) {
        if (this.e.checkPermission(str, Process.myPid(), Process.myUid()) == 0) {
            return true;
        }
        return false;
    }
}
