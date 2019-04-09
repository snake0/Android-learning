package com.mqunar.idscan.algo;

import java.util.HashSet;

public final class e {
    public final String a = "CheckSurname";
    private HashSet b = new HashSet(361);
    private c c;

    public e(c cVar) {
        this.c = cVar;
        a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:48:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0057 A:{SYNTHETIC, Splitter:B:23:0x0057} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x007b A:{SYNTHETIC, Splitter:B:36:0x007b} */
    private void a() {
        /*
        r8 = this;
        r3 = 0;
        r2 = 0;
        r0 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r1 = com.mqunar.idscan.a.a();	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r1 = r1.getResources();	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r4 = com.mqunar.idscan.R.raw.idscan_surname;	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r1 = r1.openRawResource(r4);	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r4 = "utf-8";
        r4 = java.nio.charset.Charset.forName(r4);	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r0.<init>(r1, r4);	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r1 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
        r1.<init>(r0);	 Catch:{ IOException -> 0x0086, all -> 0x0077 }
    L_0x0020:
        r0 = r1.readLine();	 Catch:{ IOException -> 0x0051 }
        if (r0 == 0) goto L_0x005b;
    L_0x0026:
        r4 = r0.toCharArray();	 Catch:{ IOException -> 0x0051 }
        r5 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0051 }
        r5.<init>();	 Catch:{ IOException -> 0x0051 }
        r6 = r4.length;	 Catch:{ IOException -> 0x0051 }
        r2 = r3;
    L_0x0031:
        if (r2 >= r6) goto L_0x0047;
    L_0x0033:
        r7 = r4[r2];	 Catch:{ IOException -> 0x0051 }
        if (r7 < 0) goto L_0x0045;
    L_0x0037:
        r0 = 255; // 0xff float:3.57E-43 double:1.26E-321;
        if (r7 > r0) goto L_0x0045;
    L_0x003b:
        r0 = 1;
    L_0x003c:
        if (r0 == 0) goto L_0x0041;
    L_0x003e:
        r5.append(r7);	 Catch:{ IOException -> 0x0051 }
    L_0x0041:
        r0 = r2 + 1;
        r2 = r0;
        goto L_0x0031;
    L_0x0045:
        r0 = r3;
        goto L_0x003c;
    L_0x0047:
        r0 = r8.b;	 Catch:{ IOException -> 0x0051 }
        r2 = r5.toString();	 Catch:{ IOException -> 0x0051 }
        r0.add(r2);	 Catch:{ IOException -> 0x0051 }
        goto L_0x0020;
    L_0x0051:
        r0 = move-exception;
    L_0x0052:
        com.mqunar.tools.log.QLog.e(r0);	 Catch:{ all -> 0x0084 }
        if (r1 == 0) goto L_0x005a;
    L_0x0057:
        r1.close();	 Catch:{ IOException -> 0x0072 }
    L_0x005a:
        return;
    L_0x005b:
        r0 = "CheckSurname";
        r2 = r8.b;	 Catch:{ IOException -> 0x0051 }
        r2 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ IOException -> 0x0051 }
        r3 = 0;
        r3 = new java.lang.Object[r3];	 Catch:{ IOException -> 0x0051 }
        com.mqunar.tools.log.QLog.d(r0, r2, r3);	 Catch:{ IOException -> 0x0051 }
        r1.close();	 Catch:{ IOException -> 0x006d }
        goto L_0x005a;
    L_0x006d:
        r0 = move-exception;
        com.mqunar.tools.log.QLog.e(r0);
        goto L_0x005a;
    L_0x0072:
        r0 = move-exception;
        com.mqunar.tools.log.QLog.e(r0);
        goto L_0x005a;
    L_0x0077:
        r0 = move-exception;
        r1 = r2;
    L_0x0079:
        if (r1 == 0) goto L_0x007e;
    L_0x007b:
        r1.close();	 Catch:{ IOException -> 0x007f }
    L_0x007e:
        throw r0;
    L_0x007f:
        r1 = move-exception;
        com.mqunar.tools.log.QLog.e(r1);
        goto L_0x007e;
    L_0x0084:
        r0 = move-exception;
        goto L_0x0079;
    L_0x0086:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0052;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.idscan.algo.e.a():void");
    }

    public final boolean a(String str) {
        if (str.charAt(0) == 'P' && str.charAt(2) == 'C' && str.charAt(3) == 'H' && str.charAt(4) == 'N') {
            String substring = str.substring(5, str.indexOf("<<", 5));
            if (substring.contains("AAA")) {
                return false;
            }
            if (!this.b.contains(substring)) {
                return substring.length() > 5 ? this.c.b(substring) : false;
            }
        }
        return true;
    }
}
