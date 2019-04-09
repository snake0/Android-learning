package qunar.lego.utils.diffpatch;

import java.io.File;
import java.io.InputStream;
import java.security.MessageDigest;

public final class MD5 {
    private MD5() {
    }

    public static final String getMessageDigest(byte[] bArr) {
        int i = 0;
        char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            byte[] digest = instance.digest();
            int length = digest.length;
            char[] cArr2 = new char[(length * 2)];
            int i2 = 0;
            while (i < length) {
                byte b = digest[i];
                int i3 = i2 + 1;
                cArr2[i2] = cArr[(b >>> 4) & 15];
                i2 = i3 + 1;
                cArr2[i3] = cArr[b & 15];
                i++;
            }
            return new String(cArr2);
        } catch (Exception e) {
            return null;
        }
    }

    public static final byte[] getRawDigest(byte[] bArr) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            return instance.digest();
        } catch (Exception e) {
            return null;
        }
    }

    public static final String getMD5(InputStream inputStream, int i, int i2, int i3) {
        int i4 = 0;
        if (inputStream == null || i <= 0 || i2 < 0 || i3 <= 0) {
            return null;
        }
        try {
            if (inputStream.skip((long) i2) < ((long) i2)) {
                return null;
            }
            byte[] digest;
            MessageDigest instance = MessageDigest.getInstance("MD5");
            StringBuilder stringBuilder = new StringBuilder(32);
            byte[] bArr = new byte[i];
            int i5 = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1 || i5 >= i3) {
                    digest = instance.digest();
                } else if (i5 + read <= i3) {
                    instance.update(bArr, 0, read);
                    i5 += read;
                } else {
                    instance.update(bArr, 0, i3 - i5);
                    i5 = i3;
                }
            }
            digest = instance.digest();
            while (i4 < digest.length) {
                stringBuilder.append(Integer.toString((digest[i4] & 255) + 256, 16).substring(1));
                i4++;
            }
            return stringBuilder.toString();
        } catch (Exception e) {
            return null;
        }
    }

    public static final String getMD5(InputStream inputStream, int i) {
        if (inputStream == null || i <= 0) {
            return null;
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            StringBuilder stringBuilder = new StringBuilder(32);
            byte[] bArr = new byte[i];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                instance.update(bArr, 0, read);
            }
            byte[] digest = instance.digest();
            for (byte b : digest) {
                stringBuilder.append(Integer.toString((b & 255) + 256, 16).substring(1));
            }
            return stringBuilder.toString();
        } catch (Exception e) {
            return null;
        }
    }

    public static String getMD5(String str) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        return file.exists() ? getMD5(file, 102400) : null;
    }

    public static String getMD5(File file) {
        return getMD5(file, 102400);
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x002f A:{SYNTHETIC, Splitter:B:20:0x002f} */
    public static java.lang.String getMD5(java.io.File r7, int r8) {
        /*
        r1 = 0;
        if (r7 == 0) goto L_0x003c;
    L_0x0003:
        if (r8 <= 0) goto L_0x003c;
    L_0x0005:
        r0 = r7.exists();
        if (r0 == 0) goto L_0x003c;
    L_0x000b:
        r2 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0033, all -> 0x002b }
        r2.<init>(r7);	 Catch:{ Exception -> 0x0033, all -> 0x002b }
        r3 = (long) r8;
        r5 = r7.length();	 Catch:{ Exception -> 0x0046, all -> 0x0044 }
        r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r0 > 0) goto L_0x0026;
    L_0x0019:
        r3 = (long) r8;	 Catch:{ Exception -> 0x0046, all -> 0x0044 }
    L_0x001a:
        r0 = (int) r3;	 Catch:{ Exception -> 0x0046, all -> 0x0044 }
        r0 = getMD5(r2, r0);	 Catch:{ Exception -> 0x0046, all -> 0x0044 }
        r2.close();	 Catch:{ Exception -> 0x0046, all -> 0x0044 }
        r2.close();	 Catch:{ IOException -> 0x0042 }
    L_0x0025:
        return r0;
    L_0x0026:
        r3 = r7.length();	 Catch:{ Exception -> 0x0046, all -> 0x0044 }
        goto L_0x001a;
    L_0x002b:
        r0 = move-exception;
        r2 = r1;
    L_0x002d:
        if (r2 == 0) goto L_0x0032;
    L_0x002f:
        r2.close();	 Catch:{ IOException -> 0x003e }
    L_0x0032:
        throw r0;
    L_0x0033:
        r0 = move-exception;
        r0 = r1;
    L_0x0035:
        if (r0 == 0) goto L_0x003a;
    L_0x0037:
        r0.close();	 Catch:{ IOException -> 0x0040 }
    L_0x003a:
        r0 = r1;
        goto L_0x0025;
    L_0x003c:
        r0 = r1;
        goto L_0x0025;
    L_0x003e:
        r1 = move-exception;
        goto L_0x0032;
    L_0x0040:
        r0 = move-exception;
        goto L_0x003a;
    L_0x0042:
        r1 = move-exception;
        goto L_0x0025;
    L_0x0044:
        r0 = move-exception;
        goto L_0x002d;
    L_0x0046:
        r0 = move-exception;
        r0 = r2;
        goto L_0x0035;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.lego.utils.diffpatch.MD5.getMD5(java.io.File, int):java.lang.String");
    }

    public static String getMD5(String str, int i, int i2) {
        if (str == null) {
            return null;
        }
        File file = new File(str);
        return file.exists() ? getMD5(file, i, i2) : null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x002c A:{SYNTHETIC, Splitter:B:22:0x002c} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0024 A:{SYNTHETIC, Splitter:B:16:0x0024} */
    public static java.lang.String getMD5(java.io.File r3, int r4, int r5) {
        /*
        r1 = 0;
        if (r3 == 0) goto L_0x0031;
    L_0x0003:
        r0 = r3.exists();
        if (r0 == 0) goto L_0x0031;
    L_0x0009:
        if (r4 < 0) goto L_0x0031;
    L_0x000b:
        if (r5 <= 0) goto L_0x0031;
    L_0x000d:
        r2 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x0028, all -> 0x0020 }
        r2.<init>(r3);	 Catch:{ Exception -> 0x0028, all -> 0x0020 }
        r0 = 102400; // 0x19000 float:1.43493E-40 double:5.05923E-319;
        r0 = getMD5(r2, r0, r4, r5);	 Catch:{ Exception -> 0x003b, all -> 0x0039 }
        r2.close();	 Catch:{ Exception -> 0x003b, all -> 0x0039 }
        r2.close();	 Catch:{ IOException -> 0x0037 }
    L_0x001f:
        return r0;
    L_0x0020:
        r0 = move-exception;
        r2 = r1;
    L_0x0022:
        if (r2 == 0) goto L_0x0027;
    L_0x0024:
        r2.close();	 Catch:{ IOException -> 0x0033 }
    L_0x0027:
        throw r0;
    L_0x0028:
        r0 = move-exception;
        r0 = r1;
    L_0x002a:
        if (r0 == 0) goto L_0x002f;
    L_0x002c:
        r0.close();	 Catch:{ IOException -> 0x0035 }
    L_0x002f:
        r0 = r1;
        goto L_0x001f;
    L_0x0031:
        r0 = r1;
        goto L_0x001f;
    L_0x0033:
        r1 = move-exception;
        goto L_0x0027;
    L_0x0035:
        r0 = move-exception;
        goto L_0x002f;
    L_0x0037:
        r1 = move-exception;
        goto L_0x001f;
    L_0x0039:
        r0 = move-exception;
        goto L_0x0022;
    L_0x003b:
        r0 = move-exception;
        r0 = r2;
        goto L_0x002a;
        */
        throw new UnsupportedOperationException("Method not decompiled: qunar.lego.utils.diffpatch.MD5.getMD5(java.io.File, int, int):java.lang.String");
    }
}
