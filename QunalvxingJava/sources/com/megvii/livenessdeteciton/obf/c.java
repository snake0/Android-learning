package com.megvii.livenessdeteciton.obf;

import android.content.Context;
import android.os.Build;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;

public class c {
    private static Context a;
    private static c b;

    final class a implements FileFilter {
        private String a = "";

        public a(c cVar, String str) {
            this.a = str;
        }

        public final boolean accept(File file) {
            return file.getName().startsWith(this.a);
        }
    }

    public static synchronized c a(Context context) {
        c cVar;
        synchronized (c.class) {
            if (b == null) {
                b = new c(context);
            }
            cVar = b;
        }
        return cVar;
    }

    private c(Context context) {
        a = context;
    }

    public final boolean a(String str, String str2) {
        boolean z;
        try {
            System.loadLibrary("livenessdetection_v2.4.2");
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            return true;
        }
        String str3 = str + "_bak";
        File filesDir = a.getFilesDir();
        String str4;
        if (a(filesDir.toString(), str3, str, str2)) {
            File file = new File(filesDir.toString() + File.separator + (str3 + File.separator + ("lib" + str + "_" + str2 + ".so")));
            d.a("copy lib to " + file.toString());
            if (file.exists()) {
                try {
                    System.load(file.toString());
                    return true;
                } catch (UnsatisfiedLinkError e2) {
                    d.a("SoProtect", e2.toString());
                    return z;
                }
            }
            str4 = "SoProtect";
            d.b(str4, String.format(Locale.ENGLISH, "error can't find %1$s lib in plugins_lib", new Object[]{str}));
            return z;
        }
        str4 = "SoProtect";
        d.a(str4, String.format(Locale.ENGLISH, "error copy %1$s lib fail", new Object[]{str}));
        return z;
    }

    private void a(File file, String str) {
        try {
            for (File a : file.listFiles(new a(this, str))) {
                a(a);
            }
        } catch (Exception e) {
            d.a("SoProtect", e.toString());
        }
    }

    private void a(File file) {
        if (!file.exists()) {
            d.b("SoProtect", "所删除的文件不存在！\n");
        } else if (file.isFile()) {
            file.delete();
        } else if (file.isDirectory()) {
            for (File a : file.listFiles()) {
                a(a);
            }
            file.delete();
        }
    }

    private boolean a(String str, String str2, String str3, String str4) {
        String str5;
        String str6 = Build.CPU_ABI;
        String str7 = "lib" + str3 + "_" + str4 + ".so";
        if ("x86".equals(str6)) {
            str5 = "lib/x86/" + str7;
        } else if ("armeabi-v7a".equals(str6)) {
            str5 = "lib/armeabi-v7a/" + str7;
        } else {
            d.a("SoProtect", "apse is not support for this mode");
            return false;
        }
        try {
            File file = new File(str + File.separator + str2);
            File file2 = new File(file.toString() + File.separator + str7);
            if (file2.exists()) {
                d.b("SoProtect", "file " + file2.toString() + " is exist");
                return true;
            }
            a(file, "lib" + str3);
            file.mkdirs();
            boolean a = a(str, str5, str7, file2);
            if (a || !str6.equals("armeabi-v7a")) {
                return a;
            }
            d.b("SoProtect", String.format("%s arch copy failed, try to copy %s arch", new Object[]{"armeabi-v7a", "armeabi"}));
            return a(str, "lib/armeabi/" + str7, str7, file2);
        } catch (Exception e) {
            d.a("SoProtect", e.toString());
            return false;
        }
    }

    private boolean a(String str, String str2, String str3, File file) {
        boolean z = false;
        InputStream resourceAsStream = c.class.getClassLoader().getResourceAsStream(str2);
        if (resourceAsStream != null) {
            if (str == null) {
                d.a("SoProtect", "apse file cann't be null...");
            }
            z = a(resourceAsStream, file);
            try {
                resourceAsStream.close();
            } catch (IOException e) {
                d.a("SoProtect", e.toString());
            }
        } else {
            d.b("SoProtect", "error: can't find " + str3 + " in apk");
        }
        return z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:55:0x00a2 A:{SYNTHETIC, Splitter:B:55:0x00a2} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00a7 A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ac A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x003c A:{SYNTHETIC, Splitter:B:22:0x003c} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0041 A:{Catch:{ IOException -> 0x0068 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0046 A:{Catch:{ IOException -> 0x0068 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0082 A:{SYNTHETIC, Splitter:B:43:0x0082} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0087 A:{Catch:{ IOException -> 0x0091 }} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x008c A:{Catch:{ IOException -> 0x0091 }} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00a2 A:{SYNTHETIC, Splitter:B:55:0x00a2} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00a7 A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ac A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x003c A:{SYNTHETIC, Splitter:B:22:0x003c} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0041 A:{Catch:{ IOException -> 0x0068 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0046 A:{Catch:{ IOException -> 0x0068 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0082 A:{SYNTHETIC, Splitter:B:43:0x0082} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0087 A:{Catch:{ IOException -> 0x0091 }} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x008c A:{Catch:{ IOException -> 0x0091 }} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00a2 A:{SYNTHETIC, Splitter:B:55:0x00a2} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00a7 A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ac A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x003c A:{SYNTHETIC, Splitter:B:22:0x003c} */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0041 A:{Catch:{ IOException -> 0x0068 }} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0046 A:{Catch:{ IOException -> 0x0068 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0082 A:{SYNTHETIC, Splitter:B:43:0x0082} */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x0087 A:{Catch:{ IOException -> 0x0091 }} */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x008c A:{Catch:{ IOException -> 0x0091 }} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00a2 A:{SYNTHETIC, Splitter:B:55:0x00a2} */
    /* JADX WARNING: Removed duplicated region for block: B:58:0x00a7 A:{Catch:{ IOException -> 0x00b0 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00ac A:{Catch:{ IOException -> 0x00b0 }} */
    private static boolean a(java.io.InputStream r8, java.io.File r9) {
        /*
        r2 = 0;
        r1 = 0;
        r0 = r9.exists();	 Catch:{ FileNotFoundException -> 0x00d1, IOException -> 0x0074, all -> 0x009d }
        if (r0 == 0) goto L_0x000b;
    L_0x0008:
        r9.delete();	 Catch:{ FileNotFoundException -> 0x00d1, IOException -> 0x0074, all -> 0x009d }
    L_0x000b:
        r9.createNewFile();	 Catch:{ FileNotFoundException -> 0x00d1, IOException -> 0x0074, all -> 0x009d }
        r3 = new java.io.BufferedInputStream;	 Catch:{ FileNotFoundException -> 0x00d1, IOException -> 0x0074, all -> 0x009d }
        r3.<init>(r8);	 Catch:{ FileNotFoundException -> 0x00d1, IOException -> 0x0074, all -> 0x009d }
        r5 = new java.io.FileOutputStream;	 Catch:{ FileNotFoundException -> 0x00d6, IOException -> 0x00c9, all -> 0x00bb }
        r5.<init>(r9);	 Catch:{ FileNotFoundException -> 0x00d6, IOException -> 0x00c9, all -> 0x00bb }
        r4 = new java.io.BufferedOutputStream;	 Catch:{ FileNotFoundException -> 0x00dd, IOException -> 0x00cc }
        r4.<init>(r5);	 Catch:{ FileNotFoundException -> 0x00dd, IOException -> 0x00cc }
        r0 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r0 = new byte[r0];	 Catch:{ FileNotFoundException -> 0x002d, IOException -> 0x00ce, all -> 0x00c0 }
    L_0x0021:
        r2 = r3.read(r0);	 Catch:{ FileNotFoundException -> 0x002d, IOException -> 0x00ce, all -> 0x00c0 }
        r6 = -1;
        if (r2 == r6) goto L_0x004b;
    L_0x0028:
        r6 = 0;
        r4.write(r0, r6, r2);	 Catch:{ FileNotFoundException -> 0x002d, IOException -> 0x00ce, all -> 0x00c0 }
        goto L_0x0021;
    L_0x002d:
        r0 = move-exception;
        r2 = r3;
        r3 = r4;
        r4 = r5;
    L_0x0031:
        r5 = "SoProtect";
        r0 = r0.toString();	 Catch:{ all -> 0x00c3 }
        com.megvii.livenessdeteciton.obf.d.a(r5, r0);	 Catch:{ all -> 0x00c3 }
        if (r4 == 0) goto L_0x003f;
    L_0x003c:
        r4.close();	 Catch:{ IOException -> 0x0068 }
    L_0x003f:
        if (r2 == 0) goto L_0x0044;
    L_0x0041:
        r2.close();	 Catch:{ IOException -> 0x0068 }
    L_0x0044:
        if (r3 == 0) goto L_0x0049;
    L_0x0046:
        r3.close();	 Catch:{ IOException -> 0x0068 }
    L_0x0049:
        r0 = r1;
    L_0x004a:
        return r0;
    L_0x004b:
        r4.flush();	 Catch:{ FileNotFoundException -> 0x002d, IOException -> 0x00ce, all -> 0x00c0 }
        r5.flush();	 Catch:{ FileNotFoundException -> 0x002d, IOException -> 0x00ce, all -> 0x00c0 }
        r0 = 1;
        r5.close();	 Catch:{ IOException -> 0x005c }
        r3.close();	 Catch:{ IOException -> 0x005c }
        r4.close();	 Catch:{ IOException -> 0x005c }
        goto L_0x004a;
    L_0x005c:
        r0 = move-exception;
        r2 = "SoProtect";
        r0 = r0.toString();
        com.megvii.livenessdeteciton.obf.d.a(r2, r0);
        r0 = r1;
        goto L_0x004a;
    L_0x0068:
        r0 = move-exception;
        r2 = "SoProtect";
        r0 = r0.toString();
        com.megvii.livenessdeteciton.obf.d.a(r2, r0);
        r0 = r1;
        goto L_0x004a;
    L_0x0074:
        r0 = move-exception;
        r3 = r2;
        r5 = r2;
    L_0x0077:
        r4 = "SoProtect";
        r0 = r0.toString();	 Catch:{ all -> 0x00be }
        com.megvii.livenessdeteciton.obf.d.a(r4, r0);	 Catch:{ all -> 0x00be }
        if (r5 == 0) goto L_0x0085;
    L_0x0082:
        r5.close();	 Catch:{ IOException -> 0x0091 }
    L_0x0085:
        if (r3 == 0) goto L_0x008a;
    L_0x0087:
        r3.close();	 Catch:{ IOException -> 0x0091 }
    L_0x008a:
        if (r2 == 0) goto L_0x008f;
    L_0x008c:
        r2.close();	 Catch:{ IOException -> 0x0091 }
    L_0x008f:
        r0 = r1;
        goto L_0x004a;
    L_0x0091:
        r0 = move-exception;
        r2 = "SoProtect";
        r0 = r0.toString();
        com.megvii.livenessdeteciton.obf.d.a(r2, r0);
        r0 = r1;
        goto L_0x004a;
    L_0x009d:
        r0 = move-exception;
        r3 = r2;
        r5 = r2;
    L_0x00a0:
        if (r5 == 0) goto L_0x00a5;
    L_0x00a2:
        r5.close();	 Catch:{ IOException -> 0x00b0 }
    L_0x00a5:
        if (r3 == 0) goto L_0x00aa;
    L_0x00a7:
        r3.close();	 Catch:{ IOException -> 0x00b0 }
    L_0x00aa:
        if (r2 == 0) goto L_0x00af;
    L_0x00ac:
        r2.close();	 Catch:{ IOException -> 0x00b0 }
    L_0x00af:
        throw r0;
    L_0x00b0:
        r1 = move-exception;
        r2 = "SoProtect";
        r1 = r1.toString();
        com.megvii.livenessdeteciton.obf.d.a(r2, r1);
        goto L_0x00af;
    L_0x00bb:
        r0 = move-exception;
        r5 = r2;
        goto L_0x00a0;
    L_0x00be:
        r0 = move-exception;
        goto L_0x00a0;
    L_0x00c0:
        r0 = move-exception;
        r2 = r4;
        goto L_0x00a0;
    L_0x00c3:
        r0 = move-exception;
        r5 = r4;
        r7 = r3;
        r3 = r2;
        r2 = r7;
        goto L_0x00a0;
    L_0x00c9:
        r0 = move-exception;
        r5 = r2;
        goto L_0x0077;
    L_0x00cc:
        r0 = move-exception;
        goto L_0x0077;
    L_0x00ce:
        r0 = move-exception;
        r2 = r4;
        goto L_0x0077;
    L_0x00d1:
        r0 = move-exception;
        r3 = r2;
        r4 = r2;
        goto L_0x0031;
    L_0x00d6:
        r0 = move-exception;
        r4 = r2;
        r7 = r2;
        r2 = r3;
        r3 = r7;
        goto L_0x0031;
    L_0x00dd:
        r0 = move-exception;
        r4 = r5;
        r7 = r2;
        r2 = r3;
        r3 = r7;
        goto L_0x0031;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.megvii.livenessdeteciton.obf.c.a(java.io.InputStream, java.io.File):boolean");
    }
}
