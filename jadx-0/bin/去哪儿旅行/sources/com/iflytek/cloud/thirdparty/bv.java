package com.iflytek.cloud.thirdparty;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.cloud.record.d;
import java.io.File;
import java.io.IOException;

public class bv {
    private static String a = "";

    public static String a(Context context) {
        if (!TextUtils.isEmpty(a)) {
            return a;
        }
        String absolutePath = context.getFilesDir().getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        absolutePath = absolutePath + "msclib/";
        File file = new File(absolutePath);
        if (!file.exists()) {
            file.mkdirs();
        }
        a = absolutePath;
        return a;
    }

    public static void a(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x004a A:{SYNTHETIC, Splitter:B:29:0x004a} */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0054 A:{SYNTHETIC, Splitter:B:35:0x0054} */
    public static boolean a(android.os.MemoryFile r8, long r9, java.lang.String r11) {
        /*
        r5 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        r0 = 0;
        if (r8 == 0) goto L_0x000c;
    L_0x0006:
        r1 = android.text.TextUtils.isEmpty(r11);
        if (r1 == 0) goto L_0x000d;
    L_0x000c:
        return r0;
    L_0x000d:
        r3 = 0;
        a(r11);	 Catch:{ Exception -> 0x0043, all -> 0x0050 }
        b(r11);	 Catch:{ Exception -> 0x0043, all -> 0x0050 }
        r2 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x0043, all -> 0x0050 }
        r2.<init>(r11);	 Catch:{ Exception -> 0x0043, all -> 0x0050 }
        r1 = 65536; // 0x10000 float:9.18355E-41 double:3.2379E-319;
        r7 = new byte[r1];	 Catch:{ Exception -> 0x005c }
        r1 = r0;
    L_0x001e:
        r3 = (long) r1;	 Catch:{ Exception -> 0x005c }
        r3 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1));
        if (r3 >= 0) goto L_0x003a;
    L_0x0023:
        r3 = (long) r1;	 Catch:{ Exception -> 0x005c }
        r3 = r9 - r3;
        r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1));
        if (r3 <= 0) goto L_0x0036;
    L_0x002a:
        r3 = r5;
    L_0x002b:
        r3 = (int) r3;	 Catch:{ Exception -> 0x005c }
        r4 = 0;
        r8.readBytes(r7, r1, r4, r3);	 Catch:{ Exception -> 0x005c }
        r4 = 0;
        r2.write(r7, r4, r3);	 Catch:{ Exception -> 0x005c }
        r1 = r1 + r3;
        goto L_0x001e;
    L_0x0036:
        r3 = (long) r1;
        r3 = r9 - r3;
        goto L_0x002b;
    L_0x003a:
        r0 = 1;
        if (r2 == 0) goto L_0x000c;
    L_0x003d:
        r2.close();	 Catch:{ Exception -> 0x0041 }
        goto L_0x000c;
    L_0x0041:
        r1 = move-exception;
        goto L_0x000c;
    L_0x0043:
        r1 = move-exception;
        r2 = r3;
    L_0x0045:
        com.iflytek.cloud.thirdparty.cb.a(r1);	 Catch:{ all -> 0x005a }
        if (r2 == 0) goto L_0x000c;
    L_0x004a:
        r2.close();	 Catch:{ Exception -> 0x004e }
        goto L_0x000c;
    L_0x004e:
        r1 = move-exception;
        goto L_0x000c;
    L_0x0050:
        r0 = move-exception;
        r2 = r3;
    L_0x0052:
        if (r2 == 0) goto L_0x0057;
    L_0x0054:
        r2.close();	 Catch:{ Exception -> 0x0058 }
    L_0x0057:
        throw r0;
    L_0x0058:
        r1 = move-exception;
        goto L_0x0057;
    L_0x005a:
        r0 = move-exception;
        goto L_0x0052;
    L_0x005c:
        r1 = move-exception;
        goto L_0x0045;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.bv.a(android.os.MemoryFile, long, java.lang.String):boolean");
    }

    public static boolean a(String str, int i) {
        try {
            d dVar = new d(new File(str), i);
            dVar.b();
            dVar.c();
            return true;
        } catch (IOException e) {
            cb.a(e);
            return false;
        }
    }

    public static boolean a(String str, String str2, int i) {
        if (TextUtils.isEmpty(str) || "pcm".equals(str)) {
            return true;
        }
        if ("wav".equals(str)) {
            return a(str2, i);
        }
        cb.c("format not supported");
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0024 A:{SYNTHETIC, Splitter:B:13:0x0024} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0043 A:{SYNTHETIC, Splitter:B:29:0x0043} */
    public static boolean a(java.util.concurrent.ConcurrentLinkedQueue<byte[]> r5, java.lang.String r6) {
        /*
        r3 = 0;
        r1 = 0;
        b(r6);	 Catch:{ Exception -> 0x004e, all -> 0x003f }
        r2 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x004e, all -> 0x003f }
        r2.<init>(r6);	 Catch:{ Exception -> 0x004e, all -> 0x003f }
        r4 = r5.iterator();	 Catch:{ Exception -> 0x001e }
    L_0x000e:
        r0 = r4.hasNext();	 Catch:{ Exception -> 0x001e }
        if (r0 == 0) goto L_0x0029;
    L_0x0014:
        r0 = r4.next();	 Catch:{ Exception -> 0x001e }
        r0 = (byte[]) r0;	 Catch:{ Exception -> 0x001e }
        r2.write(r0);	 Catch:{ Exception -> 0x001e }
        goto L_0x000e;
    L_0x001e:
        r0 = move-exception;
    L_0x001f:
        com.iflytek.cloud.thirdparty.cb.a(r0);	 Catch:{ all -> 0x004c }
        if (r2 == 0) goto L_0x0027;
    L_0x0024:
        r2.close();	 Catch:{ Exception -> 0x0039 }
    L_0x0027:
        r0 = r1;
    L_0x0028:
        return r0;
    L_0x0029:
        r2.close();	 Catch:{ Exception -> 0x001e }
        r1 = 0;
        r0 = 1;
        if (r3 == 0) goto L_0x0028;
    L_0x0030:
        r1.close();	 Catch:{ Exception -> 0x0034 }
        goto L_0x0028;
    L_0x0034:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0028;
    L_0x0039:
        r0 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r0);
        r0 = r1;
        goto L_0x0028;
    L_0x003f:
        r0 = move-exception;
        r2 = r3;
    L_0x0041:
        if (r2 == 0) goto L_0x0046;
    L_0x0043:
        r2.close();	 Catch:{ Exception -> 0x0047 }
    L_0x0046:
        throw r0;
    L_0x0047:
        r1 = move-exception;
        com.iflytek.cloud.thirdparty.cb.a(r1);
        goto L_0x0046;
    L_0x004c:
        r0 = move-exception;
        goto L_0x0041;
    L_0x004e:
        r0 = move-exception;
        r2 = r3;
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.bv.a(java.util.concurrent.ConcurrentLinkedQueue, java.lang.String):boolean");
    }

    public static void b(String str) {
        if (!TextUtils.isEmpty(str)) {
            File file = new File(str);
            if (!str.endsWith("/")) {
                file = file.getParentFile();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
        }
    }
}
