package com.mqunar.idscan.algo;

import java.util.HashSet;

public final class b {
    private static HashSet a = new HashSet(249);

    public b() {
        a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0031 A:{SYNTHETIC, Splitter:B:12:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0054 A:{SYNTHETIC, Splitter:B:24:0x0054} */
    private static void a() {
        /*
        r2 = 0;
        r0 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1 = com.mqunar.idscan.a.a();	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1 = r1.getResources();	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r3 = com.mqunar.idscan.R.raw.idscan_country_code;	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1 = r1.openRawResource(r3);	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r3 = "utf-8";
        r3 = java.nio.charset.Charset.forName(r3);	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r0.<init>(r1, r3);	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1.<init>(r0);	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
    L_0x001f:
        r0 = r1.readLine();	 Catch:{ IOException -> 0x002b }
        if (r0 == 0) goto L_0x0035;
    L_0x0025:
        r2 = a;	 Catch:{ IOException -> 0x002b }
        r2.add(r0);	 Catch:{ IOException -> 0x002b }
        goto L_0x001f;
    L_0x002b:
        r0 = move-exception;
    L_0x002c:
        com.mqunar.tools.log.QLog.e(r0);	 Catch:{ all -> 0x005d }
        if (r1 == 0) goto L_0x0034;
    L_0x0031:
        r1.close();	 Catch:{ IOException -> 0x004c }
    L_0x0034:
        return;
    L_0x0035:
        r0 = "CheckCountryCode";
        r2 = a;	 Catch:{ IOException -> 0x002b }
        r2 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ IOException -> 0x002b }
        r3 = 0;
        r3 = new java.lang.Object[r3];	 Catch:{ IOException -> 0x002b }
        com.mqunar.tools.log.QLog.d(r0, r2, r3);	 Catch:{ IOException -> 0x002b }
        r1.close();	 Catch:{ IOException -> 0x0047 }
        goto L_0x0034;
    L_0x0047:
        r0 = move-exception;
        com.mqunar.tools.log.QLog.e(r0);
        goto L_0x0034;
    L_0x004c:
        r0 = move-exception;
        com.mqunar.tools.log.QLog.e(r0);
        goto L_0x0034;
    L_0x0051:
        r0 = move-exception;
    L_0x0052:
        if (r2 == 0) goto L_0x0057;
    L_0x0054:
        r2.close();	 Catch:{ IOException -> 0x0058 }
    L_0x0057:
        throw r0;
    L_0x0058:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x0057;
    L_0x005d:
        r0 = move-exception;
        r2 = r1;
        goto L_0x0052;
    L_0x0060:
        r0 = move-exception;
        r1 = r2;
        goto L_0x002c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.idscan.algo.b.a():void");
    }

    public static boolean a(String str) {
        String substring = str.substring(2, 5);
        if (!a.contains(substring)) {
            return false;
        }
        String substring2 = str.substring(54, 57);
        return a.contains(substring2) ? (substring != "CHN" || substring2 == "CHN") ? substring == "CHN" || substring2 != "CHN" : false : false;
    }
}
