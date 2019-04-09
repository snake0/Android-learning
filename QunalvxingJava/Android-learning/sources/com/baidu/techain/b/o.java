package com.baidu.techain.b;

import android.text.TextUtils;
import com.mqunar.yvideo.BuildConfig;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class o {
    private static final String[] a = new String[]{"0", BuildConfig.VERSION_NAME, "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

    private static String d(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i : bArr) {
            int i2;
            if (i2 < 0) {
                i2 += 256;
            }
            stringBuffer.append(a[i2 / 16] + a[i2 % 16]);
        }
        return stringBuffer.toString();
    }

    public static String a(String str) {
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String str3 = new String(str);
            try {
                return d(MessageDigest.getInstance("MD5").digest(str3.getBytes()));
            } catch (Throwable th) {
                str2 = str3;
            }
        } catch (Throwable th2) {
            e.a();
            return str2;
        }
    }

    public static String a(byte[] bArr) {
        String str = null;
        if (bArr == null || bArr.length <= 0) {
            return str;
        }
        try {
            return d(MessageDigest.getInstance("MD5").digest(bArr));
        } catch (Throwable th) {
            e.a();
            return str;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x004b A:{SYNTHETIC, Splitter:B:31:0x004b} */
    public static java.lang.String a(java.io.File r7) {
        /*
        r0 = 0;
        if (r7 == 0) goto L_0x0009;
    L_0x0003:
        r1 = r7.exists();
        if (r1 != 0) goto L_0x000a;
    L_0x0009:
        return r0;
    L_0x000a:
        r1 = "MD5";
        r2 = java.security.MessageDigest.getInstance(r1);	 Catch:{ Throwable -> 0x0056, all -> 0x0045 }
        r1 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x0056, all -> 0x0045 }
        r1.<init>(r7);	 Catch:{ Throwable -> 0x0056, all -> 0x0045 }
        r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r3 = new byte[r3];	 Catch:{ Throwable -> 0x0025 }
    L_0x0019:
        r4 = r1.read(r3);	 Catch:{ Throwable -> 0x0025 }
        r5 = -1;
        if (r4 == r5) goto L_0x0034;
    L_0x0020:
        r5 = 0;
        r2.update(r3, r5, r4);	 Catch:{ Throwable -> 0x0025 }
        goto L_0x0019;
    L_0x0025:
        r2 = move-exception;
    L_0x0026:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0054 }
        if (r1 == 0) goto L_0x0009;
    L_0x002b:
        r1.close();	 Catch:{ IOException -> 0x002f }
        goto L_0x0009;
    L_0x002f:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0009;
    L_0x0034:
        r2 = r2.digest();	 Catch:{ Throwable -> 0x0025 }
        r0 = e(r2);	 Catch:{ Throwable -> 0x0025 }
        r1.close();	 Catch:{ IOException -> 0x0040 }
        goto L_0x0009;
    L_0x0040:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0009;
    L_0x0045:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0049:
        if (r1 == 0) goto L_0x004e;
    L_0x004b:
        r1.close();	 Catch:{ IOException -> 0x004f }
    L_0x004e:
        throw r0;
    L_0x004f:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x004e;
    L_0x0054:
        r0 = move-exception;
        goto L_0x0049;
    L_0x0056:
        r1 = move-exception;
        r1 = r0;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.o.a(java.io.File):java.lang.String");
    }

    private static String e(byte[] bArr) {
        char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        char[] cArr2 = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            cArr2[i * 2] = cArr[(b >>> 4) & 15];
            cArr2[(i * 2) + 1] = cArr[b & 15];
        }
        return new String(cArr2);
    }

    public static String b(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.reset();
            instance.update(bArr);
            byte[] digest = instance.digest();
            String str = "";
            StringBuilder stringBuilder = new StringBuilder();
            for (byte b : digest) {
                String toUpperCase = Integer.toHexString(b & 255).toUpperCase();
                if (toUpperCase.length() == 1) {
                    stringBuilder.append("0");
                }
                stringBuilder.append(toUpperCase).append(str);
            }
            return stringBuilder.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static byte[] c(byte[] bArr) {
        byte[] bArr2 = null;
        if (bArr == null || bArr.length <= 0) {
            return bArr2;
        }
        try {
            return MessageDigest.getInstance("MD5").digest(bArr);
        } catch (Throwable th) {
            e.a();
            return bArr2;
        }
    }
}
