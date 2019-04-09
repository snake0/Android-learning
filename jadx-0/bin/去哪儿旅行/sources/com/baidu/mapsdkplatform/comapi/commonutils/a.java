package com.baidu.mapsdkplatform.comapi.commonutils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build.VERSION;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class a {
    private static final boolean a = (VERSION.SDK_INT >= 8);

    public static Bitmap a(String str, Context context) {
        try {
            InputStream open = context.getAssets().open(str);
            return open != null ? BitmapFactory.decodeStream(open) : null;
        } catch (Exception e) {
            return BitmapFactory.decodeFile(b("assets/" + str, str, context));
        }
    }

    private static void a(InputStream inputStream, FileOutputStream fileOutputStream) {
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
            } finally {
                try {
                    inputStream.close();
                    try {
                        fileOutputStream.close();
                    } catch (IOException e) {
                        return;
                    }
                } catch (IOException e2) {
                    return;
                }
            }
        }
        fileOutputStream.flush();
        try {
            fileOutputStream.close();
        } catch (IOException e3) {
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x008e A:{SYNTHETIC, Splitter:B:32:0x008e} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0093 A:{Catch:{ IOException -> 0x0097 }} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008e A:{SYNTHETIC, Splitter:B:32:0x008e} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0093 A:{Catch:{ IOException -> 0x0097 }} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0079 A:{SYNTHETIC, Splitter:B:23:0x0079} */
    /* JADX WARNING: Removed duplicated region for block: B:52:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x007e A:{Catch:{ IOException -> 0x0082 }} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008e A:{SYNTHETIC, Splitter:B:32:0x008e} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0093 A:{Catch:{ IOException -> 0x0097 }} */
    public static void a(java.lang.String r7, java.lang.String r8, android.content.Context r9) {
        /*
        r0 = 0;
        r1 = r9.getAssets();	 Catch:{ Exception -> 0x005f, all -> 0x0087 }
        r2 = r1.open(r7);	 Catch:{ Exception -> 0x005f, all -> 0x0087 }
        if (r2 == 0) goto L_0x00b0;
    L_0x000b:
        r1 = r2.available();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r3 = new byte[r1];	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r2.read(r3);	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r4 = new java.io.File;	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1.<init>();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r5 = r9.getFilesDir();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r5 = r5.getAbsolutePath();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r5 = "/";
        r1 = r1.append(r5);	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1 = r1.append(r8);	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1 = r1.toString();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r4.<init>(r1);	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1 = r4.exists();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        if (r1 == 0) goto L_0x0041;
    L_0x003e:
        r4.delete();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
    L_0x0041:
        r4.createNewFile();	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1.<init>(r4);	 Catch:{ Exception -> 0x00a9, all -> 0x009c }
        r1.write(r3);	 Catch:{ Exception -> 0x00ac, all -> 0x00a1 }
        r1.close();	 Catch:{ Exception -> 0x00ac, all -> 0x00a1 }
    L_0x004f:
        if (r2 == 0) goto L_0x0054;
    L_0x0051:
        r2.close();	 Catch:{ IOException -> 0x005a }
    L_0x0054:
        if (r1 == 0) goto L_0x0059;
    L_0x0056:
        r1.close();	 Catch:{ IOException -> 0x005a }
    L_0x0059:
        return;
    L_0x005a:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0059;
    L_0x005f:
        r1 = move-exception;
        r1 = r0;
    L_0x0061:
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00a3 }
        r2.<init>();	 Catch:{ all -> 0x00a3 }
        r3 = "assets/";
        r2 = r2.append(r3);	 Catch:{ all -> 0x00a3 }
        r2 = r2.append(r7);	 Catch:{ all -> 0x00a3 }
        r2 = r2.toString();	 Catch:{ all -> 0x00a3 }
        b(r2, r8, r9);	 Catch:{ all -> 0x00a3 }
        if (r1 == 0) goto L_0x007c;
    L_0x0079:
        r1.close();	 Catch:{ IOException -> 0x0082 }
    L_0x007c:
        if (r0 == 0) goto L_0x0059;
    L_0x007e:
        r0.close();	 Catch:{ IOException -> 0x0082 }
        goto L_0x0059;
    L_0x0082:
        r0 = move-exception;
        r0.printStackTrace();
        goto L_0x0059;
    L_0x0087:
        r1 = move-exception;
        r2 = r0;
        r6 = r0;
        r0 = r1;
        r1 = r6;
    L_0x008c:
        if (r2 == 0) goto L_0x0091;
    L_0x008e:
        r2.close();	 Catch:{ IOException -> 0x0097 }
    L_0x0091:
        if (r1 == 0) goto L_0x0096;
    L_0x0093:
        r1.close();	 Catch:{ IOException -> 0x0097 }
    L_0x0096:
        throw r0;
    L_0x0097:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0096;
    L_0x009c:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x008c;
    L_0x00a1:
        r0 = move-exception;
        goto L_0x008c;
    L_0x00a3:
        r2 = move-exception;
        r6 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x008c;
    L_0x00a9:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0061;
    L_0x00ac:
        r0 = move-exception;
        r0 = r1;
        r1 = r2;
        goto L_0x0061;
    L_0x00b0:
        r1 = r0;
        goto L_0x004f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.commonutils.a.a(java.lang.String, java.lang.String, android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:34:0x00be A:{SYNTHETIC, Splitter:B:34:0x00be} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00be A:{SYNTHETIC, Splitter:B:34:0x00be} */
    private static java.lang.String b(java.lang.String r9, java.lang.String r10, android.content.Context r11) {
        /*
        r1 = 0;
        r0 = "";
        r4 = new java.lang.StringBuilder;
        r2 = r11.getFilesDir();
        r2 = r2.getAbsolutePath();
        r4.<init>(r2);
        r2 = a;
        if (r2 == 0) goto L_0x0018;
    L_0x0014:
        r0 = r11.getPackageCodePath();
    L_0x0018:
        r2 = new java.util.zip.ZipFile;	 Catch:{ Exception -> 0x00cd, all -> 0x00ba }
        r2.<init>(r0);	 Catch:{ Exception -> 0x00cd, all -> 0x00ba }
        r0 = "/";
        r0 = r10.lastIndexOf(r0);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        if (r0 <= 0) goto L_0x0071;
    L_0x0025:
        r3 = new java.io.File;	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = r11.getFilesDir();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = r5.getAbsolutePath();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r3.<init>(r5);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = 0;
        r5 = r10.substring(r5, r0);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0 = r0 + 1;
        r6 = r10.length();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r6 = r10.substring(r0, r6);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r7 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r7.<init>();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r8 = r3.getAbsolutePath();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r8 = "/";
        r7 = r7.append(r8);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = r7.append(r5);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = r5.toString();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0.<init>(r5, r6);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
    L_0x0061:
        r3.mkdirs();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r3 = r2.getEntry(r9);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        if (r3 != 0) goto L_0x009d;
    L_0x006a:
        if (r2 == 0) goto L_0x006f;
    L_0x006c:
        r2.close();	 Catch:{ IOException -> 0x00c2 }
    L_0x006f:
        r0 = r1;
    L_0x0070:
        return r0;
    L_0x0071:
        r3 = new java.io.File;	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0 = r11.getFilesDir();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = "assets";
        r3.<init>(r0, r5);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0 = new java.io.File;	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r5 = r3.getAbsolutePath();	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0.<init>(r5, r10);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        goto L_0x0061;
    L_0x0086:
        r0 = move-exception;
        r1 = r2;
    L_0x0088:
        r2 = com.baidu.mapsdkplatform.comapi.commonutils.a.class;
        r2 = r2.getSimpleName();	 Catch:{ all -> 0x00ca }
        r3 = "copyAssetsError";
        android.util.Log.e(r2, r3, r0);	 Catch:{ all -> 0x00ca }
        if (r1 == 0) goto L_0x0098;
    L_0x0095:
        r1.close();	 Catch:{ IOException -> 0x00c4 }
    L_0x0098:
        r0 = r4.toString();
        goto L_0x0070;
    L_0x009d:
        r1 = r2.getInputStream(r3);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r3 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r3.<init>(r0);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        a(r1, r3);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0 = "/";
        r0 = r4.append(r0);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        r0.append(r9);	 Catch:{ Exception -> 0x0086, all -> 0x00c8 }
        if (r2 == 0) goto L_0x0098;
    L_0x00b4:
        r2.close();	 Catch:{ IOException -> 0x00b8 }
        goto L_0x0098;
    L_0x00b8:
        r0 = move-exception;
        goto L_0x0098;
    L_0x00ba:
        r0 = move-exception;
        r2 = r1;
    L_0x00bc:
        if (r2 == 0) goto L_0x00c1;
    L_0x00be:
        r2.close();	 Catch:{ IOException -> 0x00c6 }
    L_0x00c1:
        throw r0;
    L_0x00c2:
        r0 = move-exception;
        goto L_0x006f;
    L_0x00c4:
        r0 = move-exception;
        goto L_0x0098;
    L_0x00c6:
        r1 = move-exception;
        goto L_0x00c1;
    L_0x00c8:
        r0 = move-exception;
        goto L_0x00bc;
    L_0x00ca:
        r0 = move-exception;
        r2 = r1;
        goto L_0x00bc;
    L_0x00cd:
        r0 = move-exception;
        goto L_0x0088;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.commonutils.a.b(java.lang.String, java.lang.String, android.content.Context):java.lang.String");
    }
}
