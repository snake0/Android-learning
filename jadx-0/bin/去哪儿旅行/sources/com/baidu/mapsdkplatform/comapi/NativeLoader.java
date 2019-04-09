package com.baidu.mapsdkplatform.comapi;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Set;

public class NativeLoader {
    private static Context a;
    private static final Set<String> b = new HashSet();
    private static final Set<String> c = new HashSet();
    private static NativeLoader d;
    private static a e = a.ARMEABI;

    enum a {
        ARMEABI("armeabi"),
        ARMV7("armeabi-v7a"),
        ARM64("arm64-v8a"),
        X86("x86"),
        X86_64("x86_64");
        
        private String f;

        private a(String str) {
            this.f = str;
        }

        public String a() {
            return this.f;
        }
    }

    private NativeLoader() {
    }

    @TargetApi(21)
    private static a a() {
        String str = VERSION.SDK_INT < 21 ? Build.CPU_ABI : Build.SUPPORTED_ABIS[0];
        if (str == null) {
            return a.ARMEABI;
        }
        if (str.contains("arm") && str.contains("v7")) {
            e = a.ARMV7;
        }
        if (str.contains("arm") && str.contains("64")) {
            e = a.ARM64;
        }
        if (str.contains("x86")) {
            if (str.contains("64")) {
                e = a.X86_64;
            } else {
                e = a.X86;
            }
        }
        return e;
    }

    private String a(a aVar) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("lib/").append(aVar.a()).append("/");
        return stringBuilder.toString();
    }

    private void a(Throwable th) {
        Log.e(NativeLoader.class.getSimpleName(), "loadException", th);
        for (String str : c) {
            Log.e(NativeLoader.class.getSimpleName(), str + " Failed to load.");
        }
    }

    private boolean a(String str, String str2) {
        return !copyNativeLibrary(str2, a.ARMV7) ? b(str, str2) : f(str2, str);
    }

    private boolean b(String str, String str2) {
        if (copyNativeLibrary(str2, a.ARMEABI)) {
            return f(str2, str);
        }
        Log.e(NativeLoader.class.getSimpleName(), "found lib" + str + ".so error");
        return false;
    }

    private boolean c(String str, String str2) {
        return !copyNativeLibrary(str2, a.ARM64) ? a(str, str2) : f(str2, str);
    }

    private boolean d(String str, String str2) {
        return !copyNativeLibrary(str2, a.X86) ? a(str, str2) : f(str2, str);
    }

    private boolean e(String str, String str2) {
        return !copyNativeLibrary(str2, a.X86_64) ? d(str, str2) : f(str2, str);
    }

    private boolean f(String str, String str2) {
        try {
            System.load(new File(getCustomizeNativePath(), str).getAbsolutePath());
            synchronized (b) {
                b.add(str2);
            }
            return true;
        } catch (Throwable th) {
            synchronized (c) {
                c.add(str2);
                a(th);
                return false;
            }
        }
    }

    public static synchronized NativeLoader getInstance() {
        NativeLoader nativeLoader;
        synchronized (NativeLoader.class) {
            if (d == null) {
                d = new NativeLoader();
                e = a();
            }
            nativeLoader = d;
        }
        return nativeLoader;
    }

    public static void setContext(Context context) {
        a = context;
    }

    /* Access modifiers changed, original: protected */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0062 A:{SYNTHETIC, Splitter:B:27:0x0062} */
    public boolean copyNativeLibrary(java.lang.String r6, com.baidu.mapsdkplatform.comapi.NativeLoader.a r7) {
        /*
        r5 = this;
        r0 = 0;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = r5.a(r7);
        r1 = r1.append(r2);
        r1 = r1.append(r6);
        r1 = r1.toString();
        r3 = 0;
        r2 = new java.util.zip.ZipFile;	 Catch:{ Exception -> 0x0049, all -> 0x005e }
        r4 = r5.getCodePath();	 Catch:{ Exception -> 0x0049, all -> 0x005e }
        r2.<init>(r4);	 Catch:{ Exception -> 0x0049, all -> 0x005e }
        r3 = new java.io.File;	 Catch:{ Exception -> 0x006e }
        r4 = r5.getCustomizeNativePath();	 Catch:{ Exception -> 0x006e }
        r3.<init>(r4, r6);	 Catch:{ Exception -> 0x006e }
        r1 = r2.getEntry(r1);	 Catch:{ Exception -> 0x006e }
        if (r1 != 0) goto L_0x0035;
    L_0x002f:
        if (r2 == 0) goto L_0x0034;
    L_0x0031:
        r2.close();	 Catch:{ IOException -> 0x0066 }
    L_0x0034:
        return r0;
    L_0x0035:
        r1 = r2.getInputStream(r1);	 Catch:{ Exception -> 0x006e }
        r4 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x006e }
        r4.<init>(r3);	 Catch:{ Exception -> 0x006e }
        r5.copyStream(r1, r4);	 Catch:{ Exception -> 0x006e }
        r1 = 1;
        if (r2 == 0) goto L_0x0047;
    L_0x0044:
        r2.close();	 Catch:{ IOException -> 0x0068 }
    L_0x0047:
        r0 = r1;
        goto L_0x0034;
    L_0x0049:
        r1 = move-exception;
        r2 = r3;
    L_0x004b:
        r3 = com.baidu.mapsdkplatform.comapi.NativeLoader.class;
        r3 = r3.getSimpleName();	 Catch:{ all -> 0x006c }
        r4 = "copyError";
        android.util.Log.e(r3, r4, r1);	 Catch:{ all -> 0x006c }
        if (r2 == 0) goto L_0x0034;
    L_0x0058:
        r2.close();	 Catch:{ IOException -> 0x005c }
        goto L_0x0034;
    L_0x005c:
        r1 = move-exception;
        goto L_0x0034;
    L_0x005e:
        r1 = move-exception;
        r2 = r3;
    L_0x0060:
        if (r2 == 0) goto L_0x0065;
    L_0x0062:
        r2.close();	 Catch:{ IOException -> 0x006a }
    L_0x0065:
        throw r1;
    L_0x0066:
        r1 = move-exception;
        goto L_0x0034;
    L_0x0068:
        r1 = move-exception;
        goto L_0x0034;
    L_0x006a:
        r1 = move-exception;
        goto L_0x0034;
    L_0x006c:
        r1 = move-exception;
        goto L_0x0060;
    L_0x006e:
        r1 = move-exception;
        goto L_0x004b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.mapsdkplatform.comapi.NativeLoader.copyNativeLibrary(java.lang.String, com.baidu.mapsdkplatform.comapi.NativeLoader$a):boolean");
    }

    /* Access modifiers changed, original: protected|final */
    public final void copyStream(InputStream inputStream, FileOutputStream fileOutputStream) {
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

    /* Access modifiers changed, original: protected */
    @TargetApi(8)
    public String getCodePath() {
        return 8 <= VERSION.SDK_INT ? a.getPackageCodePath() : "";
    }

    /* Access modifiers changed, original: protected */
    public String getCustomizeNativePath() {
        File file = new File(a.getFilesDir(), "libs");
        file.mkdirs();
        return file.getAbsolutePath();
    }

    /* Access modifiers changed, original: protected */
    public boolean loadCustomizeNativeLibrary(String str) {
        String mapLibraryName = System.mapLibraryName(str);
        switch (e) {
            case ARM64:
                return c(str, mapLibraryName);
            case ARMV7:
                return a(str, mapLibraryName);
            case ARMEABI:
                return b(str, mapLibraryName);
            case X86_64:
                return e(str, mapLibraryName);
            case X86:
                return d(str, mapLibraryName);
            default:
                return false;
        }
    }

    public synchronized boolean loadLibrary(String str) {
        boolean z = true;
        synchronized (this) {
            try {
                synchronized (b) {
                    if (b.contains(str)) {
                    } else {
                        System.loadLibrary(str);
                        synchronized (b) {
                            b.add(str);
                        }
                    }
                }
            } catch (Throwable th) {
                z = loadCustomizeNativeLibrary(str);
            }
        }
        return z;
    }
}
