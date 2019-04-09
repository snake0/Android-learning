package com.baidu.techain.b;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.provider.Settings.System;
import android.text.TextUtils;
import com.baidu.techain.e;
import java.io.File;

public final class p {
    private static String a = "";

    /* JADX WARNING: Removed duplicated region for block: B:54:0x010d A:{SYNTHETIC, Splitter:B:54:0x010d} */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x010d A:{SYNTHETIC, Splitter:B:54:0x010d} */
    private static java.lang.String b(android.content.Context r7) {
        /*
        r1 = 1;
        r2 = 0;
        r0 = c(r7);
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 == 0) goto L_0x012d;
    L_0x000c:
        r0 = d(r7);
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 == 0) goto L_0x0126;
    L_0x0016:
        r0 = e(r7);
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 == 0) goto L_0x0120;
    L_0x0020:
        r0 = com.baidu.techain.b.g.e(r7);
        r2 = com.baidu.techain.b.g.f(r7);
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 == 0) goto L_0x00c9;
    L_0x002e:
        r3 = android.text.TextUtils.isEmpty(r2);
        if (r3 == 0) goto L_0x00c9;
    L_0x0034:
        r0 = new java.lang.StringBuilder;
        r2 = "1|";
        r0.<init>(r2);
        r2 = java.util.UUID.randomUUID();
        r2 = r2.toString();
        r2 = com.baidu.techain.b.o.a(r2);
        r0 = r0.append(r2);
        r0 = r0.toString();
    L_0x004f:
        r2 = r0;
        r3 = r1;
        r0 = r1;
    L_0x0052:
        if (r3 != 0) goto L_0x005e;
    L_0x0054:
        r3 = c(r7);
        r3 = android.text.TextUtils.isEmpty(r3);
        if (r3 == 0) goto L_0x006f;
    L_0x005e:
        r3 = new com.baidu.techain.e;
        r3.<init>(r7);
        r4 = r3.d;
        r5 = "rpnewuid";
        r4.putString(r5, r2);
        r3 = r3.d;
        r3.commit();
    L_0x006f:
        if (r1 != 0) goto L_0x007b;
    L_0x0071:
        r1 = d(r7);
        r1 = android.text.TextUtils.isEmpty(r1);
        if (r1 == 0) goto L_0x0080;
    L_0x007b:
        r1 = "com.q.zi.i";
        a(r7, r1, r2);
    L_0x0080:
        r1 = "android.permission.WRITE_EXTERNAL_STORAGE";
        r1 = b(r7, r1);
        if (r1 == 0) goto L_0x00c8;
    L_0x0088:
        if (r0 != 0) goto L_0x0094;
    L_0x008a:
        r0 = e(r7);
        r0 = android.text.TextUtils.isEmpty(r0);
        if (r0 == 0) goto L_0x00c8;
    L_0x0094:
        r0 = 0;
        r1 = new java.io.File;	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r3 = android.os.Environment.getExternalStorageDirectory();	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r4 = ".zp";
        r1.<init>(r3, r4);	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r3 = new java.io.File;	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r4 = ".icosc";
        r3.<init>(r1, r4);	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r4 = r1.exists();	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        if (r4 == 0) goto L_0x00ef;
    L_0x00ad:
        r4 = r1.isDirectory();	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        if (r4 != 0) goto L_0x00b9;
    L_0x00b3:
        r1.delete();	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r1.mkdirs();	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
    L_0x00b9:
        r1 = new java.io.FileWriter;	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r4 = 0;
        r1.<init>(r3, r4);	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        r1.write(r2);	 Catch:{ Throwable -> 0x011d, all -> 0x0116 }
        r1.flush();	 Catch:{ Throwable -> 0x011d, all -> 0x0116 }
        r1.close();	 Catch:{ Throwable -> 0x0102 }
    L_0x00c8:
        return r2;
    L_0x00c9:
        r3 = new java.lang.StringBuilder;
        r4 = "0|";
        r3.<init>(r4);
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r0 = r4.append(r0);
        r0 = r0.append(r2);
        r0 = r0.toString();
        r0 = com.baidu.techain.b.o.a(r0);
        r0 = r3.append(r0);
        r0 = r0.toString();
        goto L_0x004f;
    L_0x00ef:
        r1.mkdirs();	 Catch:{ Throwable -> 0x00f3, all -> 0x0107 }
        goto L_0x00b9;
    L_0x00f3:
        r1 = move-exception;
    L_0x00f4:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0118 }
        if (r0 == 0) goto L_0x00c8;
    L_0x00f9:
        r0.close();	 Catch:{ Throwable -> 0x00fd }
        goto L_0x00c8;
    L_0x00fd:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00c8;
    L_0x0102:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x00c8;
    L_0x0107:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x010b:
        if (r1 == 0) goto L_0x0110;
    L_0x010d:
        r1.close();	 Catch:{ Throwable -> 0x0111 }
    L_0x0110:
        throw r0;
    L_0x0111:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0110;
    L_0x0116:
        r0 = move-exception;
        goto L_0x010b;
    L_0x0118:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x010b;
    L_0x011d:
        r0 = move-exception;
        r0 = r1;
        goto L_0x00f4;
    L_0x0120:
        r3 = r1;
        r6 = r2;
        r2 = r0;
        r0 = r6;
        goto L_0x0052;
    L_0x0126:
        r3 = r1;
        r1 = r2;
        r6 = r2;
        r2 = r0;
        r0 = r6;
        goto L_0x0052;
    L_0x012d:
        r1 = r2;
        r3 = r2;
        r6 = r0;
        r0 = r2;
        r2 = r6;
        goto L_0x0052;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.p.b(android.content.Context):java.lang.String");
    }

    public static String a(Context context) {
        if (TextUtils.isEmpty(a)) {
            p pVar = new p();
            a = b(context);
        }
        return a;
    }

    private static String c(Context context) {
        try {
            return new e(context).b.getString("rpnewuid", "");
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    private static String d(Context context) {
        try {
            return a(context, "com.q.zi.i");
        } catch (Throwable th) {
            e.a();
            return "";
        }
    }

    private static String e(Context context) {
        try {
            if (!b(context, "android.permission.READ_EXTERNAL_STORAGE")) {
                return "";
            }
            File file = new File(Environment.getExternalStorageDirectory(), ".zp/.icosc");
            if (file.exists()) {
                return a(file);
            }
            return "";
        } catch (Throwable th) {
            e.a();
        }
    }

    private static String a(Context context, String str) {
        try {
            return System.getString(context.getContentResolver(), str);
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x003c A:{SYNTHETIC, Splitter:B:28:0x003c} */
    private static java.lang.String a(java.io.File r7) {
        /*
        r0 = 0;
        r1 = new java.io.FileReader;	 Catch:{ Throwable -> 0x0047, all -> 0x0036 }
        r1.<init>(r7);	 Catch:{ Throwable -> 0x0047, all -> 0x0036 }
        r2 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r2 = new char[r2];	 Catch:{ Throwable -> 0x001a }
        r3 = new java.io.CharArrayWriter;	 Catch:{ Throwable -> 0x001a }
        r3.<init>();	 Catch:{ Throwable -> 0x001a }
    L_0x000f:
        r4 = r1.read(r2);	 Catch:{ Throwable -> 0x001a }
        if (r4 <= 0) goto L_0x0024;
    L_0x0015:
        r5 = 0;
        r3.write(r2, r5, r4);	 Catch:{ Throwable -> 0x001a }
        goto L_0x000f;
    L_0x001a:
        r2 = move-exception;
    L_0x001b:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0045 }
        if (r1 == 0) goto L_0x0023;
    L_0x0020:
        r1.close();	 Catch:{ Throwable -> 0x0031 }
    L_0x0023:
        return r0;
    L_0x0024:
        r0 = r3.toString();	 Catch:{ Throwable -> 0x001a }
        r1.close();	 Catch:{ Throwable -> 0x002c }
        goto L_0x0023;
    L_0x002c:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0023;
    L_0x0031:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0023;
    L_0x0036:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x003a:
        if (r1 == 0) goto L_0x003f;
    L_0x003c:
        r1.close();	 Catch:{ Throwable -> 0x0040 }
    L_0x003f:
        throw r0;
    L_0x0040:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x003f;
    L_0x0045:
        r0 = move-exception;
        goto L_0x003a;
    L_0x0047:
        r1 = move-exception;
        r1 = r0;
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.p.a(java.io.File):java.lang.String");
    }

    private static boolean b(Context context, String str) {
        try {
            if (context.checkPermission(str, Process.myPid(), Process.myUid()) == 0) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }

    private static boolean a(Context context, String str, String str2) {
        try {
            return System.putString(context.getContentResolver(), str, str2);
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }
}
