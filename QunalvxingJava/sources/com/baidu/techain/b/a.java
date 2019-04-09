package com.baidu.techain.b;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class a {
    public static byte[] a(byte[] bArr, byte[] bArr2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
            byte[] bArr3 = new byte[16];
            for (int i = 0; i < 16; i++) {
                bArr3[i] = (byte) 0;
            }
            instance.init(1, secretKeySpec, new IvParameterSpec(bArr3));
            byte[] doFinal = instance.doFinal(bArr2);
            byte[] c = o.c(bArr2);
            byte[] bArr4 = new byte[(doFinal.length + c.length)];
            System.arraycopy(doFinal, 0, bArr4, 0, doFinal.length);
            System.arraycopy(c, 0, bArr4, doFinal.length, c.length);
            return bArr4;
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    public static byte[] a(String str, String str2, byte[] bArr) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(str.getBytes()));
            return instance.doFinal(bArr);
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    public static byte[] a(byte[] bArr, byte[] bArr2, boolean z) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS7Padding");
            byte[] bArr3 = new byte[16];
            for (int i = 0; i < 16; i++) {
                bArr3[i] = (byte) 0;
            }
            instance.init(2, secretKeySpec, new IvParameterSpec(bArr3));
            if (z) {
                byte[] bArr4 = new byte[(bArr2.length - 16)];
                System.arraycopy(bArr2, 0, bArr4, 0, bArr2.length - 16);
                bArr2 = bArr4;
            }
            return instance.doFinal(bArr2);
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x006f A:{SYNTHETIC, Splitter:B:39:0x006f} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0074 A:{SYNTHETIC, Splitter:B:42:0x0074} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0051 A:{SYNTHETIC, Splitter:B:21:0x0051} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0056 A:{SYNTHETIC, Splitter:B:24:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x006f A:{SYNTHETIC, Splitter:B:39:0x006f} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0074 A:{SYNTHETIC, Splitter:B:42:0x0074} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0051 A:{SYNTHETIC, Splitter:B:21:0x0051} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0056 A:{SYNTHETIC, Splitter:B:24:0x0056} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x006f A:{SYNTHETIC, Splitter:B:39:0x006f} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0074 A:{SYNTHETIC, Splitter:B:42:0x0074} */
    public static int a(java.io.File r10, java.io.File r11, byte[] r12) {
        /*
        r3 = 0;
        r9 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r1 = -1;
        r0 = 0;
        r2 = r10.exists();
        if (r2 != 0) goto L_0x000c;
    L_0x000b:
        return r1;
    L_0x000c:
        r4 = new java.io.FileInputStream;	 Catch:{ Throwable -> 0x008a, all -> 0x006a }
        r4.<init>(r10);	 Catch:{ Throwable -> 0x008a, all -> 0x006a }
        r2 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x008d, all -> 0x0080 }
        r2.<init>(r11);	 Catch:{ Throwable -> 0x008d, all -> 0x0080 }
        r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r5 = new byte[r3];	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
    L_0x001a:
        r6 = r4.read(r5);	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        if (r6 == r1) goto L_0x005e;
    L_0x0020:
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r3.<init>();	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r3.append(r6);	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        if (r6 >= r9) goto L_0x005c;
    L_0x002d:
        r3 = new byte[r6];	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r7 = 0;
        r8 = 0;
        java.lang.System.arraycopy(r5, r7, r3, r8, r6);	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
    L_0x0034:
        r6 = 0;
        r3 = a(r12, r3, r6);	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r6 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r6.<init>();	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r7 = r3.length;	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r6.append(r7);	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        r2.write(r3);	 Catch:{ Throwable -> 0x0049, all -> 0x0083 }
        goto L_0x001a;
    L_0x0049:
        r0 = move-exception;
        r0 = r2;
        r3 = r4;
    L_0x004c:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x0085 }
        if (r3 == 0) goto L_0x0054;
    L_0x0051:
        r3.close();	 Catch:{ Throwable -> 0x007a }
    L_0x0054:
        if (r0 == 0) goto L_0x0059;
    L_0x0056:
        r0.close();	 Catch:{ Throwable -> 0x0067 }
    L_0x0059:
        r0 = r1;
    L_0x005a:
        r1 = r0;
        goto L_0x000b;
    L_0x005c:
        r3 = r5;
        goto L_0x0034;
    L_0x005e:
        r4.close();	 Catch:{ Throwable -> 0x0078 }
    L_0x0061:
        r2.close();	 Catch:{ Throwable -> 0x0065 }
        goto L_0x005a;
    L_0x0065:
        r1 = move-exception;
        goto L_0x005a;
    L_0x0067:
        r0 = move-exception;
        r0 = r1;
        goto L_0x005a;
    L_0x006a:
        r0 = move-exception;
        r2 = r3;
        r4 = r3;
    L_0x006d:
        if (r4 == 0) goto L_0x0072;
    L_0x006f:
        r4.close();	 Catch:{ Throwable -> 0x007c }
    L_0x0072:
        if (r2 == 0) goto L_0x0077;
    L_0x0074:
        r2.close();	 Catch:{ Throwable -> 0x007e }
    L_0x0077:
        throw r0;
    L_0x0078:
        r1 = move-exception;
        goto L_0x0061;
    L_0x007a:
        r2 = move-exception;
        goto L_0x0054;
    L_0x007c:
        r1 = move-exception;
        goto L_0x0072;
    L_0x007e:
        r1 = move-exception;
        goto L_0x0077;
    L_0x0080:
        r0 = move-exception;
        r2 = r3;
        goto L_0x006d;
    L_0x0083:
        r0 = move-exception;
        goto L_0x006d;
    L_0x0085:
        r1 = move-exception;
        r2 = r0;
        r4 = r3;
        r0 = r1;
        goto L_0x006d;
    L_0x008a:
        r0 = move-exception;
        r0 = r3;
        goto L_0x004c;
    L_0x008d:
        r0 = move-exception;
        r0 = r3;
        r3 = r4;
        goto L_0x004c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.b.a.a(java.io.File, java.io.File, byte[]):int");
    }
}
