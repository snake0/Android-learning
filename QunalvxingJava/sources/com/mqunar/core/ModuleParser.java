package com.mqunar.core;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ModuleParser {
    public static final String ANDROID_RESOURCES = "http://schemas.android.com/apk/res/android";
    private static final String a = ModuleParser.class.getSimpleName();
    private static String b = "_([0-9a-fA-F]{32})\\.";
    private static Pattern c = Pattern.compile(b);

    /* JADX WARNING: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0034  */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0034  */
    public static com.mqunar.module.ModuleInfo parseModuleDependency(java.lang.String r8) {
        /*
        r2 = 0;
        r0 = isAtom(r8);
        if (r0 != 0) goto L_0x0008;
    L_0x0007:
        return r2;
    L_0x0008:
        r3 = new java.util.zip.ZipFile;	 Catch:{ Throwable -> 0x00d5 }
        r3.<init>(r8);	 Catch:{ Throwable -> 0x00d5 }
        r0 = "dependencies.dps";
        r0 = r3.getEntry(r0);	 Catch:{ Throwable -> 0x002c }
        r0 = r3.getInputStream(r0);	 Catch:{ Throwable -> 0x002c }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ Throwable -> 0x002c }
        r1.<init>();	 Catch:{ Throwable -> 0x002c }
        r4 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r4 = new byte[r4];	 Catch:{ Throwable -> 0x002c }
    L_0x0020:
        r5 = r0.read(r4);	 Catch:{ Throwable -> 0x002c }
        r6 = -1;
        if (r5 == r6) goto L_0x0054;
    L_0x0027:
        r6 = 0;
        r1.write(r4, r6, r5);	 Catch:{ Throwable -> 0x002c }
        goto L_0x0020;
    L_0x002c:
        r0 = move-exception;
        r1 = r3;
    L_0x002e:
        com.mqunar.tools.log.QLog.e(r0);
        r3 = r1;
    L_0x0032:
        if (r2 != 0) goto L_0x0007;
    L_0x0034:
        if (r3 == 0) goto L_0x0039;
    L_0x0036:
        r3.close();	 Catch:{ Exception -> 0x00d2 }
    L_0x0039:
        if (r0 != 0) goto L_0x0098;
    L_0x003b:
        r0 = new java.lang.RuntimeException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "解析dependencies.dps时，parseObject return null!filename is : ";
        r1 = r1.append(r2);
        r1 = r1.append(r8);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
    L_0x0054:
        r1.flush();	 Catch:{ Throwable -> 0x002c }
        r1.close();	 Catch:{ Throwable -> 0x002c }
        r0 = new java.lang.String;	 Catch:{ Throwable -> 0x002c }
        r1 = r1.toByteArray();	 Catch:{ Throwable -> 0x002c }
        r4 = "UTF-8";
        r0.<init>(r1, r4);	 Catch:{ Throwable -> 0x002c }
        r1 = com.mqunar.core.dependency.Dependency.class;
        r0 = com.alibaba.fastjson.JSON.parseObject(r0, r1);	 Catch:{ Throwable -> 0x002c }
        r0 = (com.mqunar.core.dependency.Dependency) r0;	 Catch:{ Throwable -> 0x002c }
        if (r0 == 0) goto L_0x00de;
    L_0x006f:
        r1 = new com.mqunar.module.ModuleInfo;	 Catch:{ Throwable -> 0x002c }
        r1.<init>();	 Catch:{ Throwable -> 0x002c }
        r1.fileName = r8;	 Catch:{ Throwable -> 0x002c }
        r1.dependency = r0;	 Catch:{ Throwable -> 0x002c }
        r1.zipFile = r3;	 Catch:{ Throwable -> 0x002c }
        r0 = r0.multiDex;	 Catch:{ Throwable -> 0x002c }
        if (r0 == 0) goto L_0x0086;
    L_0x007e:
        r0 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x002c }
        r4 = 1;
        r0.<init>(r4);	 Catch:{ Throwable -> 0x002c }
        r1.dexList = r0;	 Catch:{ Throwable -> 0x002c }
    L_0x0086:
        r0 = r1.fileName;	 Catch:{ Throwable -> 0x00d9 }
        r4 = "libq_lib_";
        r0 = r0.indexOf(r4);	 Catch:{ Throwable -> 0x00d9 }
        if (r0 <= 0) goto L_0x0093;
    L_0x0090:
        r0 = 1;
        r1.type = r0;	 Catch:{ Throwable -> 0x00d9 }
    L_0x0093:
        r0 = r1;
    L_0x0094:
        r7 = r0;
        r0 = r2;
        r2 = r7;
        goto L_0x0032;
    L_0x0098:
        r1 = new java.lang.RuntimeException;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "解析dependencies.dps文件时异常!filename is : ";
        r2 = r2.append(r3);
        r2 = r2.append(r8);
        r3 = ",file.length is : ";
        r2 = r2.append(r3);
        r3 = new java.io.File;
        r3.<init>(r8);
        r3 = r3.length();
        r2 = r2.append(r3);
        r3 = ",file md5 is : ";
        r2 = r2.append(r3);
        r3 = getMd5(r8);
        r2 = r2.append(r3);
        r2 = r2.toString();
        r1.<init>(r2, r0);
        throw r1;
    L_0x00d2:
        r1 = move-exception;
        goto L_0x0039;
    L_0x00d5:
        r0 = move-exception;
        r1 = r2;
        goto L_0x002e;
    L_0x00d9:
        r0 = move-exception;
        r2 = r1;
        r1 = r3;
        goto L_0x002e;
    L_0x00de:
        r0 = r2;
        goto L_0x0094;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.core.ModuleParser.parseModuleDependency(java.lang.String):com.mqunar.module.ModuleInfo");
    }

    public static String getMd5(String str) {
        return getMd5(new File(str));
    }

    public static String getMd5(File file) {
        try {
            return getMd5(new FileInputStream(file));
        } catch (Exception e) {
            return null;
        }
    }

    public static String getMd5(InputStream inputStream) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            StringBuilder stringBuilder = new StringBuilder(32);
            byte[] bArr = new byte[4096];
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
            String stringBuilder2 = stringBuilder.toString();
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                }
            }
            return stringBuilder2;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e2) {
                }
            }
        }
    }

    public static boolean isAtom(String str) {
        String str2 = null;
        if (str != null) {
            int lastIndexOf = str.lastIndexOf("/");
            if (lastIndexOf != -1) {
                str2 = str.substring(lastIndexOf + 1);
            }
        }
        return str2 != null && str2.startsWith("libq_");
    }

    public static boolean checkEquals(ZipFile zipFile, ZipEntry zipEntry, File file) {
        try {
            String md5 = getMd5(zipFile.getInputStream(zipEntry));
            if (TextUtils.isEmpty(md5)) {
                throw new RuntimeException("文件未读完!");
            }
            try {
                return md5.equals(getMd5(file));
            } catch (Throwable th) {
                return false;
            }
        } catch (Throwable th2) {
            RuntimeException runtimeException = new RuntimeException(th2);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c8  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00b6  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00bb  */
    /* JADX WARNING: Removed duplicated region for block: B:50:0x00c3  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00c8  */
    public static java.lang.String getMetaData(android.content.Context r10, java.lang.String r11) {
        /*
        r5 = 0;
        r2 = 0;
        r4 = 1;
        r0 = r10.getApplicationInfo();
        r0 = r0.metaData;
        if (r0 == 0) goto L_0x0016;
    L_0x000b:
        r1 = r0.containsKey(r11);
        if (r1 == 0) goto L_0x0016;
    L_0x0011:
        r0 = r0.getString(r11);
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = android.content.res.AssetManager.class;
        r0 = r0.newInstance();	 Catch:{ Throwable -> 0x00ae, all -> 0x00bf }
        r0 = (android.content.res.AssetManager) r0;	 Catch:{ Throwable -> 0x00ae, all -> 0x00bf }
        r1 = android.content.res.AssetManager.class;
        r3 = "addAssetPath";
        r6 = 1;
        r6 = new java.lang.Class[r6];	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r7 = 0;
        r8 = java.lang.String.class;
        r6[r7] = r8;	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r1 = r1.getDeclaredMethod(r3, r6);	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r3 = 1;
        r1.setAccessible(r3);	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r3 = 1;
        r3 = new java.lang.Object[r3];	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r6 = 0;
        r7 = r10.getApplicationInfo();	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r7 = r7.sourceDir;	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r3[r6] = r7;	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r1 = r1.invoke(r0, r3);	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r1 = (java.lang.Integer) r1;	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r1 = r1.intValue();	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        if (r1 == 0) goto L_0x00a0;
    L_0x004a:
        r3 = "AndroidManifest.xml";
        r3 = r0.openXmlResourceParser(r1, r3);	 Catch:{ Throwable -> 0x00d8, all -> 0x00cc }
        r1 = r3.getEventType();	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        r9 = r1;
        r1 = r5;
        r5 = r9;
    L_0x0057:
        if (r5 == r4) goto L_0x00a1;
    L_0x0059:
        switch(r5) {
            case 2: goto L_0x0061;
            default: goto L_0x005c;
        };	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
    L_0x005c:
        r5 = r3.next();	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        goto L_0x0057;
    L_0x0061:
        r5 = r3.getName();	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        r6 = "meta-data";
        r5 = r6.equals(r5);	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        if (r5 == 0) goto L_0x0091;
    L_0x006d:
        r1 = "http://schemas.android.com/apk/res/android";
        r5 = "name";
        r1 = r3.getAttributeValue(r1, r5);	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        r1 = r1.equals(r11);	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        if (r1 == 0) goto L_0x008f;
    L_0x007b:
        r1 = "http://schemas.android.com/apk/res/android";
        r4 = "value";
        r1 = r3.getAttributeValue(r1, r4);	 Catch:{ Throwable -> 0x00de, all -> 0x00d1 }
        if (r3 == 0) goto L_0x0088;
    L_0x0085:
        r3.close();
    L_0x0088:
        if (r0 == 0) goto L_0x008d;
    L_0x008a:
        r0.close();
    L_0x008d:
        r0 = r1;
        goto L_0x0015;
    L_0x008f:
        r1 = r4;
        goto L_0x005c;
    L_0x0091:
        if (r1 == 0) goto L_0x005c;
    L_0x0093:
        if (r3 == 0) goto L_0x0098;
    L_0x0095:
        r3.close();
    L_0x0098:
        if (r0 == 0) goto L_0x009d;
    L_0x009a:
        r0.close();
    L_0x009d:
        r0 = r2;
        goto L_0x0015;
    L_0x00a0:
        r3 = r2;
    L_0x00a1:
        if (r3 == 0) goto L_0x00a6;
    L_0x00a3:
        r3.close();
    L_0x00a6:
        if (r0 == 0) goto L_0x00ab;
    L_0x00a8:
        r0.close();
    L_0x00ab:
        r0 = r2;
        goto L_0x0015;
    L_0x00ae:
        r0 = move-exception;
        r1 = r2;
        r3 = r2;
    L_0x00b1:
        com.mqunar.tools.log.QLog.e(r0);	 Catch:{ all -> 0x00d5 }
        if (r3 == 0) goto L_0x00b9;
    L_0x00b6:
        r3.close();
    L_0x00b9:
        if (r1 == 0) goto L_0x00ab;
    L_0x00bb:
        r1.close();
        goto L_0x00ab;
    L_0x00bf:
        r0 = move-exception;
        r3 = r2;
    L_0x00c1:
        if (r3 == 0) goto L_0x00c6;
    L_0x00c3:
        r3.close();
    L_0x00c6:
        if (r2 == 0) goto L_0x00cb;
    L_0x00c8:
        r2.close();
    L_0x00cb:
        throw r0;
    L_0x00cc:
        r1 = move-exception;
        r3 = r2;
        r2 = r0;
        r0 = r1;
        goto L_0x00c1;
    L_0x00d1:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        goto L_0x00c1;
    L_0x00d5:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00c1;
    L_0x00d8:
        r1 = move-exception;
        r3 = r2;
        r9 = r0;
        r0 = r1;
        r1 = r9;
        goto L_0x00b1;
    L_0x00de:
        r1 = move-exception;
        r9 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x00b1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.core.ModuleParser.getMetaData(android.content.Context, java.lang.String):java.lang.String");
    }
}
