package com.iflytek.cloud.thirdparty;

import java.security.MessageDigest;

public class bu {
    public static synchronized String a(String str) {
        String stringBuffer;
        int i = 0;
        synchronized (bu.class) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                char[] toCharArray = str.toCharArray();
                byte[] bArr = new byte[toCharArray.length];
                for (int i2 = 0; i2 < toCharArray.length; i2++) {
                    bArr[i2] = (byte) toCharArray[i2];
                }
                byte[] digest = instance.digest(bArr);
                StringBuffer stringBuffer2 = new StringBuffer();
                while (i < digest.length) {
                    int i3 = digest[i] & 255;
                    if (i3 < 16) {
                        stringBuffer2.append("0");
                    }
                    stringBuffer2.append(Integer.toHexString(i3));
                    i++;
                }
                stringBuffer = stringBuffer2.toString();
            } catch (Exception e) {
                cb.a(e);
                stringBuffer = "";
            }
        }
        return stringBuffer;
    }

    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 5);
        }
        return bArr;
    }

    public static synchronized String b(String str) {
        String str2 = null;
        synchronized (bu.class) {
            cb.a("cut16MD5 start:" + str);
            String a = a(str);
            cb.a("cut16MD5 start:" + a);
            StringBuffer stringBuffer = new StringBuffer();
            if (!(a == null || a.length() == 0)) {
                cb.a("cut16MD5 md5 size is:" + a.length());
                for (int i = 0; i < a.length(); i++) {
                    if (i % 2 == 0) {
                        cb.a("cut16MD5 result i:" + a.charAt(i));
                        stringBuffer.append(a.charAt(i));
                    }
                    cb.a("cut16MD5 result i = :" + i);
                }
                cb.a("cut16MD5 result:" + stringBuffer);
                if (stringBuffer != null) {
                    str2 = stringBuffer.toString();
                }
            }
        }
        return str2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x0046 A:{SYNTHETIC, Splitter:B:27:0x0046} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x004b A:{Catch:{ IOException -> 0x004f }} */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0059 A:{SYNTHETIC, Splitter:B:36:0x0059} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x005e A:{Catch:{ IOException -> 0x0062 }} */
    public static byte[] b(byte[] r5) {
        /*
        r0 = 0;
        if (r5 != 0) goto L_0x0004;
    L_0x0003:
        return r0;
    L_0x0004:
        r3 = new java.io.ByteArrayOutputStream;
        r3.<init>();
        r2 = new java.util.zip.GZIPOutputStream;	 Catch:{ IOException -> 0x003f, all -> 0x0054 }
        r2.<init>(r3);	 Catch:{ IOException -> 0x003f, all -> 0x0054 }
        r2.write(r5);	 Catch:{ IOException -> 0x0069 }
        r2.finish();	 Catch:{ IOException -> 0x0069 }
        r1 = android.os.Build.VERSION.SDK_INT;	 Catch:{ IOException -> 0x0069 }
        r4 = 19;
        if (r1 >= r4) goto L_0x001d;
    L_0x001a:
        r2.flush();	 Catch:{ IOException -> 0x0069 }
    L_0x001d:
        r0 = r3.toByteArray();	 Catch:{ IOException -> 0x0069 }
        r1 = 0;
    L_0x0022:
        r4 = r0.length;	 Catch:{ IOException -> 0x0069 }
        if (r1 >= r4) goto L_0x002f;
    L_0x0025:
        r4 = r0[r1];	 Catch:{ IOException -> 0x0069 }
        r4 = r4 ^ 5;
        r4 = (byte) r4;	 Catch:{ IOException -> 0x0069 }
        r0[r1] = r4;	 Catch:{ IOException -> 0x0069 }
        r1 = r1 + 1;
        goto L_0x0022;
    L_0x002f:
        if (r2 == 0) goto L_0x0034;
    L_0x0031:
        r2.close();	 Catch:{ IOException -> 0x003a }
    L_0x0034:
        if (r3 == 0) goto L_0x0003;
    L_0x0036:
        r3.close();	 Catch:{ IOException -> 0x003a }
        goto L_0x0003;
    L_0x003a:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0003;
    L_0x003f:
        r1 = move-exception;
        r2 = r0;
    L_0x0041:
        com.iflytek.cloud.thirdparty.cb.a(r1);	 Catch:{ all -> 0x0067 }
        if (r2 == 0) goto L_0x0049;
    L_0x0046:
        r2.close();	 Catch:{ IOException -> 0x004f }
    L_0x0049:
        if (r3 == 0) goto L_0x0003;
    L_0x004b:
        r3.close();	 Catch:{ IOException -> 0x004f }
        goto L_0x0003;
    L_0x004f:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0003;
    L_0x0054:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x0057:
        if (r2 == 0) goto L_0x005c;
    L_0x0059:
        r2.close();	 Catch:{ IOException -> 0x0062 }
    L_0x005c:
        if (r3 == 0) goto L_0x0061;
    L_0x005e:
        r3.close();	 Catch:{ IOException -> 0x0062 }
    L_0x0061:
        throw r0;
    L_0x0062:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0061;
    L_0x0067:
        r0 = move-exception;
        goto L_0x0057;
    L_0x0069:
        r1 = move-exception;
        goto L_0x0041;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.bu.b(byte[]):byte[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x003d A:{SYNTHETIC, Splitter:B:21:0x003d} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0042 A:{Catch:{ IOException -> 0x004b }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0047 A:{Catch:{ IOException -> 0x004b }} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0070 A:{SYNTHETIC, Splitter:B:45:0x0070} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0075 A:{Catch:{ IOException -> 0x007e }} */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x007a A:{Catch:{ IOException -> 0x007e }} */
    public static byte[] c(byte[] r8) {
        /*
        r1 = 0;
        r0 = 0;
        if (r8 != 0) goto L_0x0006;
    L_0x0004:
        r0 = r1;
    L_0x0005:
        return r0;
    L_0x0006:
        r2 = r8.length;
        if (r0 >= r2) goto L_0x0013;
    L_0x0009:
        r2 = r8[r0];
        r2 = r2 ^ 5;
        r2 = (byte) r2;
        r8[r0] = r2;
        r0 = r0 + 1;
        goto L_0x0006;
    L_0x0013:
        r3 = new java.io.ByteArrayInputStream;
        r3.<init>(r8);
        r4 = new java.io.ByteArrayOutputStream;
        r4.<init>();
        r2 = new java.util.zip.GZIPInputStream;	 Catch:{ IOException -> 0x0085, all -> 0x006c }
        r2.<init>(r3);	 Catch:{ IOException -> 0x0085, all -> 0x006c }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new byte[r0];	 Catch:{ IOException -> 0x0034 }
    L_0x0026:
        r5 = 0;
        r6 = r0.length;	 Catch:{ IOException -> 0x0034 }
        r5 = r2.read(r0, r5, r6);	 Catch:{ IOException -> 0x0034 }
        r6 = -1;
        if (r5 == r6) goto L_0x0050;
    L_0x002f:
        r6 = 0;
        r4.write(r0, r6, r5);	 Catch:{ IOException -> 0x0034 }
        goto L_0x0026;
    L_0x0034:
        r0 = move-exception;
        r7 = r0;
        r0 = r1;
        r1 = r7;
    L_0x0038:
        com.iflytek.cloud.thirdparty.cb.a(r1);	 Catch:{ all -> 0x0083 }
        if (r2 == 0) goto L_0x0040;
    L_0x003d:
        r2.close();	 Catch:{ IOException -> 0x004b }
    L_0x0040:
        if (r3 == 0) goto L_0x0045;
    L_0x0042:
        r3.close();	 Catch:{ IOException -> 0x004b }
    L_0x0045:
        if (r4 == 0) goto L_0x0005;
    L_0x0047:
        r4.close();	 Catch:{ IOException -> 0x004b }
        goto L_0x0005;
    L_0x004b:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0005;
    L_0x0050:
        r0 = r4.toByteArray();	 Catch:{ IOException -> 0x0034 }
        r4.flush();	 Catch:{ IOException -> 0x008b }
        if (r2 == 0) goto L_0x005c;
    L_0x0059:
        r2.close();	 Catch:{ IOException -> 0x0067 }
    L_0x005c:
        if (r3 == 0) goto L_0x0061;
    L_0x005e:
        r3.close();	 Catch:{ IOException -> 0x0067 }
    L_0x0061:
        if (r4 == 0) goto L_0x0005;
    L_0x0063:
        r4.close();	 Catch:{ IOException -> 0x0067 }
        goto L_0x0005;
    L_0x0067:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0005;
    L_0x006c:
        r0 = move-exception;
        r2 = r1;
    L_0x006e:
        if (r2 == 0) goto L_0x0073;
    L_0x0070:
        r2.close();	 Catch:{ IOException -> 0x007e }
    L_0x0073:
        if (r3 == 0) goto L_0x0078;
    L_0x0075:
        r3.close();	 Catch:{ IOException -> 0x007e }
    L_0x0078:
        if (r4 == 0) goto L_0x007d;
    L_0x007a:
        r4.close();	 Catch:{ IOException -> 0x007e }
    L_0x007d:
        throw r0;
    L_0x007e:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x007d;
    L_0x0083:
        r0 = move-exception;
        goto L_0x006e;
    L_0x0085:
        r0 = move-exception;
        r2 = r1;
        r7 = r0;
        r0 = r1;
        r1 = r7;
        goto L_0x0038;
    L_0x008b:
        r1 = move-exception;
        goto L_0x0038;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.bu.c(byte[]):byte[]");
    }
}
