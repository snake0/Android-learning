package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;

public class at {

    public enum a {
        assets,
        res,
        path
    }

    public static String a(Context context, a aVar, String str) {
        return aVar == a.path ? a(str) : b(context, aVar, str);
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile()) {
            return null;
        }
        return "fo|" + str + "|" + 0 + "|" + file.length();
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x007e A:{SYNTHETIC, Splitter:B:33:0x007e} */
    private static java.lang.String b(android.content.Context r9, com.iflytek.cloud.thirdparty.at.a r10, java.lang.String r11) {
        /*
        r0 = 0;
        r1 = android.text.TextUtils.isEmpty(r11);
        if (r1 != 0) goto L_0x0009;
    L_0x0007:
        if (r9 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        r1 = r9.getPackageResourcePath();
        r2 = com.iflytek.cloud.thirdparty.at.a.assets;	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        if (r10 != r2) goto L_0x0050;
    L_0x0012:
        r2 = r9.getAssets();	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        r2 = r2.openFd(r11);	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        r5 = r2.getStartOffset();	 Catch:{ Exception -> 0x0089 }
        r3 = r2.getLength();	 Catch:{ Exception -> 0x0089 }
    L_0x0022:
        r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0089 }
        r8 = "fo|";
        r7.<init>(r8);	 Catch:{ Exception -> 0x0089 }
        r1 = r7.append(r1);	 Catch:{ Exception -> 0x0089 }
        r7 = "|";
        r1 = r1.append(r7);	 Catch:{ Exception -> 0x0089 }
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x0089 }
        r5 = "|";
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x0089 }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x0089 }
        r0 = r1.toString();	 Catch:{ Exception -> 0x0089 }
        if (r2 == 0) goto L_0x0009;
    L_0x0047:
        r2.close();	 Catch:{ Exception -> 0x004b }
        goto L_0x0009;
    L_0x004b:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x0050:
        r2 = java.lang.Integer.valueOf(r11);	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        r2 = r2.intValue();	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        r3 = r9.getResources();	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        r2 = r3.openRawResourceFd(r2);	 Catch:{ Exception -> 0x0069, all -> 0x0079 }
        r5 = r2.getStartOffset();	 Catch:{ Exception -> 0x0089 }
        r3 = r2.getLength();	 Catch:{ Exception -> 0x0089 }
        goto L_0x0022;
    L_0x0069:
        r1 = move-exception;
        r2 = r0;
    L_0x006b:
        r1.printStackTrace();	 Catch:{ all -> 0x0087 }
        if (r2 == 0) goto L_0x0009;
    L_0x0070:
        r2.close();	 Catch:{ Exception -> 0x0074 }
        goto L_0x0009;
    L_0x0074:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0009;
    L_0x0079:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x007c:
        if (r2 == 0) goto L_0x0081;
    L_0x007e:
        r2.close();	 Catch:{ Exception -> 0x0082 }
    L_0x0081:
        throw r0;
    L_0x0082:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0081;
    L_0x0087:
        r0 = move-exception;
        goto L_0x007c;
    L_0x0089:
        r1 = move-exception;
        goto L_0x006b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.at.b(android.content.Context, com.iflytek.cloud.thirdparty.at$a, java.lang.String):java.lang.String");
    }
}
