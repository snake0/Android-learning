package com.mqunar.tools;

import android.os.Build;
import android.support.v4.os.EnvironmentCompat;
import android.text.TextUtils;

class c {
    private static String a;
    private static String b;

    public static boolean a() {
        return a("MIUI");
    }

    public static boolean b() {
        return a("FLYME");
    }

    public static boolean a(String str) {
        if (a != null) {
            return a.equals(str);
        }
        String b = b("ro.miui.ui.version.name");
        b = b;
        if (TextUtils.isEmpty(b)) {
            b = Build.DISPLAY;
            if (b.toUpperCase().contains("FLYME")) {
                a = "FLYME";
            } else {
                b = EnvironmentCompat.MEDIA_UNKNOWN;
                a = Build.MANUFACTURER.toUpperCase();
            }
        } else {
            a = "MIUI";
        }
        return a.equals(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0067 A:{SYNTHETIC, Splitter:B:22:0x0067} */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x005a A:{SYNTHETIC, Splitter:B:15:0x005a} */
    public static java.lang.String b(java.lang.String r6) {
        /*
        r1 = 0;
        r0 = java.lang.Runtime.getRuntime();	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r2 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r2.<init>();	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r3 = "getprop ";
        r2 = r2.append(r3);	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r2 = r2.append(r6);	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r2 = r2.toString();	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r0 = r0.exec(r2);	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r2 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r3 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r0 = r0.getInputStream();	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r3.<init>(r0);	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r2.<init>(r3, r0);	 Catch:{ IOException -> 0x003e, all -> 0x0064 }
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0073 }
        r2.close();	 Catch:{ IOException -> 0x0073 }
        if (r2 == 0) goto L_0x0038;
    L_0x0035:
        r2.close();	 Catch:{ IOException -> 0x0039 }
    L_0x0038:
        return r0;
    L_0x0039:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0038;
    L_0x003e:
        r0 = move-exception;
        r2 = r1;
    L_0x0040:
        r3 = "ContentValues";
        r4 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0070 }
        r4.<init>();	 Catch:{ all -> 0x0070 }
        r5 = "Unable to read prop ";
        r4 = r4.append(r5);	 Catch:{ all -> 0x0070 }
        r4 = r4.append(r6);	 Catch:{ all -> 0x0070 }
        r4 = r4.toString();	 Catch:{ all -> 0x0070 }
        android.util.Log.e(r3, r4, r0);	 Catch:{ all -> 0x0070 }
        if (r2 == 0) goto L_0x005d;
    L_0x005a:
        r2.close();	 Catch:{ IOException -> 0x005f }
    L_0x005d:
        r0 = r1;
        goto L_0x0038;
    L_0x005f:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x005d;
    L_0x0064:
        r0 = move-exception;
    L_0x0065:
        if (r1 == 0) goto L_0x006a;
    L_0x0067:
        r1.close();	 Catch:{ IOException -> 0x006b }
    L_0x006a:
        throw r0;
    L_0x006b:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x006a;
    L_0x0070:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0065;
    L_0x0073:
        r0 = move-exception;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.tools.c.b(java.lang.String):java.lang.String");
    }
}
