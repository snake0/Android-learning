package com.mqunar.idscan.algo;

import java.util.HashSet;
import java.util.Set;
import org.apache.http.HttpStatus;

public final class c {
    private Set a = new HashSet(HttpStatus.SC_REQUEST_URI_TOO_LONG);

    public c() {
        a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0031 A:{SYNTHETIC, Splitter:B:12:0x0031} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0054 A:{SYNTHETIC, Splitter:B:24:0x0054} */
    private void a() {
        /*
        r4 = this;
        r2 = 0;
        r0 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1 = com.mqunar.idscan.a.a();	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r1 = r1.getResources();	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
        r3 = com.mqunar.idscan.R.raw.idscan_pinyin;	 Catch:{ IOException -> 0x0060, all -> 0x0051 }
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
        r2 = r4.a;	 Catch:{ IOException -> 0x002b }
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
        r0 = "CheckName";
        r2 = r4.a;	 Catch:{ IOException -> 0x002b }
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
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.idscan.algo.c.a():void");
    }

    public final boolean a(String str) {
        if (str.charAt(0) != 'P' || str.charAt(2) != 'C' || str.charAt(3) != 'H' || str.charAt(4) != 'N') {
            return true;
        }
        int indexOf = str.indexOf("<<", 5);
        String substring = str.substring(indexOf + 2, str.indexOf("<<", indexOf + 2));
        return substring.isEmpty() ? false : b(substring);
    }

    public final boolean b(String str) {
        Set set = this.a;
        boolean[] zArr = new boolean[(str.length() + 1)];
        zArr[0] = true;
        int i = 1;
        while (i < str.length() + 1) {
            int i2 = i - 1;
            while (i2 >= 0) {
                if (zArr[i2] && set.contains(str.substring(i2, i))) {
                    zArr[i] = true;
                    break;
                }
                i2--;
            }
            i++;
        }
        return zArr[str.length()];
    }
}
