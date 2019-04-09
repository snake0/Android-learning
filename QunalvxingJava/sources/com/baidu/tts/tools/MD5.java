package com.baidu.tts.tools;

import java.io.File;
import java.security.MessageDigest;

public class MD5 {
    private static volatile MD5 a = null;
    private char[] b = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private MD5() {
    }

    public static MD5 getInstance() {
        if (a == null) {
            synchronized (MD5.class) {
                if (a == null) {
                    a = new MD5();
                }
            }
        }
        return a;
    }

    public String getMD5(byte[] bArr) {
        int i = 0;
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            instance.update(bArr);
            byte[] digest = instance.digest();
            int length = digest.length;
            char[] cArr = new char[(length * 2)];
            int i2 = 0;
            while (i < length) {
                int i3 = i2 + 1;
                cArr[i2] = this.b[(digest[i] >>> 4) & 15];
                i2 = i3 + 1;
                cArr[i3] = this.b[digest[i] & 15];
                i++;
            }
            return new String(cArr);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0043 A:{SYNTHETIC, Splitter:B:28:0x0043} */
    public java.lang.String getBigFileMd5(java.io.File r8) {
        /*
        r7 = this;
        r0 = 0;
        if (r8 == 0) goto L_0x0024;
    L_0x0003:
        r1 = "MD5";
        r2 = java.security.MessageDigest.getInstance(r1);	 Catch:{ Exception -> 0x004e, all -> 0x003d }
        r1 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x004e, all -> 0x003d }
        r1.<init>(r8);	 Catch:{ Exception -> 0x004e, all -> 0x003d }
        r3 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r3 = new byte[r3];	 Catch:{ Exception -> 0x001e, all -> 0x004c }
    L_0x0012:
        r4 = r1.read(r3);	 Catch:{ Exception -> 0x001e, all -> 0x004c }
        r5 = -1;
        if (r4 == r5) goto L_0x0025;
    L_0x0019:
        r5 = 0;
        r2.update(r3, r5, r4);	 Catch:{ Exception -> 0x001e, all -> 0x004c }
        goto L_0x0012;
    L_0x001e:
        r2 = move-exception;
    L_0x001f:
        if (r1 == 0) goto L_0x0024;
    L_0x0021:
        r1.close();	 Catch:{ IOException -> 0x0038 }
    L_0x0024:
        return r0;
    L_0x0025:
        r2 = r2.digest();	 Catch:{ Exception -> 0x001e, all -> 0x004c }
        r0 = r7.a(r2);	 Catch:{ Exception -> 0x001e, all -> 0x004c }
        if (r1 == 0) goto L_0x0024;
    L_0x002f:
        r1.close();	 Catch:{ IOException -> 0x0033 }
        goto L_0x0024;
    L_0x0033:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0024;
    L_0x0038:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0024;
    L_0x003d:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
    L_0x0041:
        if (r1 == 0) goto L_0x0046;
    L_0x0043:
        r1.close();	 Catch:{ IOException -> 0x0047 }
    L_0x0046:
        throw r0;
    L_0x0047:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0046;
    L_0x004c:
        r0 = move-exception;
        goto L_0x0041;
    L_0x004e:
        r1 = move-exception;
        r1 = r0;
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.MD5.getBigFileMd5(java.io.File):java.lang.String");
    }

    public String getBigFileMd5(String str) {
        return getBigFileMd5(new File(str));
    }

    /* JADX WARNING: Removed duplicated region for block: B:28:0x0055 A:{SYNTHETIC, Splitter:B:28:0x0055} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x005a A:{Catch:{ IOException -> 0x005e }} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0055 A:{SYNTHETIC, Splitter:B:28:0x0055} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x005a A:{Catch:{ IOException -> 0x005e }} */
    public java.lang.String getFileMd5(java.lang.String r10) {
        /*
        r9 = this;
        r6 = 0;
        r0 = "MD5";
        r8 = java.security.MessageDigest.getInstance(r0);	 Catch:{ Exception -> 0x003d, all -> 0x0051 }
        r4 = new java.io.File;	 Catch:{ Exception -> 0x003d, all -> 0x0051 }
        r4.<init>(r10);	 Catch:{ Exception -> 0x003d, all -> 0x0051 }
        r7 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x003d, all -> 0x0051 }
        r7.<init>(r4);	 Catch:{ Exception -> 0x003d, all -> 0x0051 }
        r0 = r7.getChannel();	 Catch:{ Exception -> 0x0069, all -> 0x0063 }
        r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY;	 Catch:{ Exception -> 0x006d, all -> 0x0065 }
        r2 = 0;
        r4 = r4.length();	 Catch:{ Exception -> 0x006d, all -> 0x0065 }
        r1 = r0.map(r1, r2, r4);	 Catch:{ Exception -> 0x006d, all -> 0x0065 }
        r8.update(r1);	 Catch:{ Exception -> 0x006d, all -> 0x0065 }
        r1 = r8.digest();	 Catch:{ Exception -> 0x006d, all -> 0x0065 }
        r1 = r9.a(r1);	 Catch:{ Exception -> 0x006d, all -> 0x0065 }
        if (r0 == 0) goto L_0x0031;
    L_0x002e:
        r0.close();	 Catch:{ IOException -> 0x0038 }
    L_0x0031:
        if (r7 == 0) goto L_0x0036;
    L_0x0033:
        r7.close();	 Catch:{ IOException -> 0x0038 }
    L_0x0036:
        r0 = r1;
    L_0x0037:
        return r0;
    L_0x0038:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0036;
    L_0x003d:
        r0 = move-exception;
        r0 = r6;
        r1 = r6;
    L_0x0040:
        if (r0 == 0) goto L_0x0045;
    L_0x0042:
        r0.close();	 Catch:{ IOException -> 0x004c }
    L_0x0045:
        if (r1 == 0) goto L_0x004a;
    L_0x0047:
        r1.close();	 Catch:{ IOException -> 0x004c }
    L_0x004a:
        r0 = r6;
        goto L_0x0037;
    L_0x004c:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x004a;
    L_0x0051:
        r0 = move-exception;
        r7 = r6;
    L_0x0053:
        if (r6 == 0) goto L_0x0058;
    L_0x0055:
        r6.close();	 Catch:{ IOException -> 0x005e }
    L_0x0058:
        if (r7 == 0) goto L_0x005d;
    L_0x005a:
        r7.close();	 Catch:{ IOException -> 0x005e }
    L_0x005d:
        throw r0;
    L_0x005e:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x005d;
    L_0x0063:
        r0 = move-exception;
        goto L_0x0053;
    L_0x0065:
        r1 = move-exception;
        r6 = r0;
        r0 = r1;
        goto L_0x0053;
    L_0x0069:
        r0 = move-exception;
        r0 = r6;
        r1 = r7;
        goto L_0x0040;
    L_0x006d:
        r1 = move-exception;
        r1 = r7;
        goto L_0x0040;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.MD5.getFileMd5(java.lang.String):java.lang.String");
    }

    private String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    private String a(byte[] bArr, int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer(i2 * 2);
        int i3 = i + i2;
        while (i < i3) {
            a(bArr[i], stringBuffer);
            i++;
        }
        return stringBuffer.toString();
    }

    private void a(byte b, StringBuffer stringBuffer) {
        char c = this.b[(b & 240) >> 4];
        char c2 = this.b[b & 15];
        stringBuffer.append(c);
        stringBuffer.append(c2);
    }
}
