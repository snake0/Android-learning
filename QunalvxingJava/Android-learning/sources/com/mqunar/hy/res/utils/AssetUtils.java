package com.mqunar.hy.res.utils;

public class AssetUtils {
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0044 A:{SYNTHETIC, Splitter:B:17:0x0044} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x004e A:{SYNTHETIC, Splitter:B:23:0x004e} */
    public static java.lang.String getAssetFileToStr(android.content.res.AssetManager r7, java.lang.String r8) {
        /*
        r3 = 0;
        r1 = "";
        r2 = new java.io.BufferedReader;	 Catch:{ IOException -> 0x0035, all -> 0x004a }
        r0 = new java.io.InputStreamReader;	 Catch:{ IOException -> 0x0035, all -> 0x004a }
        r4 = r7.open(r8);	 Catch:{ IOException -> 0x0035, all -> 0x004a }
        r5 = "UTF-8";
        r0.<init>(r4, r5);	 Catch:{ IOException -> 0x0035, all -> 0x004a }
        r2.<init>(r0);	 Catch:{ IOException -> 0x0035, all -> 0x004a }
    L_0x0013:
        r0 = r2.readLine();	 Catch:{ IOException -> 0x0058 }
        if (r0 == 0) goto L_0x002b;
    L_0x0019:
        r3 = new java.lang.StringBuilder;	 Catch:{ IOException -> 0x0058 }
        r3.<init>();	 Catch:{ IOException -> 0x0058 }
        r3 = r3.append(r1);	 Catch:{ IOException -> 0x0058 }
        r0 = r3.append(r0);	 Catch:{ IOException -> 0x0058 }
        r1 = r0.toString();	 Catch:{ IOException -> 0x0058 }
        goto L_0x0013;
    L_0x002b:
        r0 = r1.trim();	 Catch:{ IOException -> 0x0058 }
        if (r2 == 0) goto L_0x0034;
    L_0x0031:
        r2.close();	 Catch:{ IOException -> 0x0052 }
    L_0x0034:
        return r0;
    L_0x0035:
        r0 = move-exception;
        r2 = r3;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x003a:
        r3 = "打开asset出错";
        r4 = 0;
        r4 = new java.lang.Object[r4];	 Catch:{ all -> 0x0056 }
        com.mqunar.hy.res.logger.Timber.e(r1, r3, r4);	 Catch:{ all -> 0x0056 }
        if (r2 == 0) goto L_0x0034;
    L_0x0044:
        r2.close();	 Catch:{ IOException -> 0x0048 }
        goto L_0x0034;
    L_0x0048:
        r1 = move-exception;
        goto L_0x0034;
    L_0x004a:
        r0 = move-exception;
        r2 = r3;
    L_0x004c:
        if (r2 == 0) goto L_0x0051;
    L_0x004e:
        r2.close();	 Catch:{ IOException -> 0x0054 }
    L_0x0051:
        throw r0;
    L_0x0052:
        r1 = move-exception;
        goto L_0x0034;
    L_0x0054:
        r1 = move-exception;
        goto L_0x0051;
    L_0x0056:
        r0 = move-exception;
        goto L_0x004c;
    L_0x0058:
        r0 = move-exception;
        r6 = r0;
        r0 = r1;
        r1 = r6;
        goto L_0x003a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.hy.res.utils.AssetUtils.getAssetFileToStr(android.content.res.AssetManager, java.lang.String):java.lang.String");
    }
}
