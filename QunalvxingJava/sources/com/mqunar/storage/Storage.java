package com.mqunar.storage;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;

public class Storage {
    public static final String DEAFAULT_USER = "visitor";
    public static final String DEFAULT_SANDBOX = "hen";
    private static int a = 0;
    private String b;
    private IStorage c;

    public static Storage newStorage(Context context) {
        return newStorage(context, DEAFAULT_USER);
    }

    public static Storage newStorage(Context context, String str) {
        return new Storage(context, str);
    }

    public static boolean hasFroyo() {
        return VERSION.SDK_INT >= 8;
    }

    @TargetApi(8)
    private static File b(Context context) {
        if (hasFroyo()) {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                return externalFilesDir;
            }
            return context.getFilesDir();
        }
        return new File(Environment.getExternalStorageDirectory(), "/Android/data/" + context.getPackageName() + "/files");
    }

    /* JADX WARNING: Unknown top exception splitter block from list: {B:45:0x0083=Splitter:B:45:0x0083, B:19:0x0045=Splitter:B:19:0x0045, B:36:0x006c=Splitter:B:36:0x006c} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN, ORIG_RETURN, Catch:{ IOException -> 0x0054, Throwable -> 0x0059 }} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0069 A:{SYNTHETIC, Splitter:B:34:0x0069} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN, ORIG_RETURN, Catch:{ IOException -> 0x0054, Throwable -> 0x0059 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0080 A:{SYNTHETIC, Splitter:B:43:0x0080} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0080 A:{SYNTHETIC, Splitter:B:43:0x0080} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0069 A:{SYNTHETIC, Splitter:B:34:0x0069} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN, ORIG_RETURN, Catch:{ IOException -> 0x0054, Throwable -> 0x0059 }} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0080 A:{SYNTHETIC, Splitter:B:43:0x0080} */
    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public static java.io.File getAppFileDir(android.content.Context r7) {
        /*
        r1 = 0;
        r5 = 1;
        r0 = "mounted";
        r2 = android.os.Environment.getExternalStorageState();	 Catch:{ Throwable -> 0x0059 }
        r0 = r0.equals(r2);	 Catch:{ Throwable -> 0x0059 }
        if (r0 == 0) goto L_0x005d;
    L_0x000e:
        r0 = b(r7);	 Catch:{ Throwable -> 0x0059 }
        r2 = a;	 Catch:{ Throwable -> 0x0059 }
        if (r2 != 0) goto L_0x004f;
    L_0x0016:
        r2 = java.util.UUID.randomUUID();	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        r3 = r2.toString();	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        r4.<init>(r0, r3);	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        r2 = r4.exists();	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        if (r2 != 0) goto L_0x002c;
    L_0x0029:
        r4.mkdirs();	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
    L_0x002c:
        r2 = new java.io.File;	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        r2.<init>(r4, r3);	 Catch:{ Throwable -> 0x0062, all -> 0x007c }
        r3 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x009d, all -> 0x0093 }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x009d, all -> 0x0093 }
        r1 = 0;
        r3.write(r1);	 Catch:{ Throwable -> 0x00a2, all -> 0x0097 }
        r3.flush();	 Catch:{ Throwable -> 0x00a2, all -> 0x0097 }
        r1 = 1;
        a = r1;	 Catch:{ Throwable -> 0x00a2, all -> 0x0097 }
        if (r3 == 0) goto L_0x004f;
    L_0x0042:
        r3.close();	 Catch:{ IOException -> 0x0054 }
    L_0x0045:
        r2.delete();	 Catch:{ Throwable -> 0x0059 }
        r1 = r2.getParentFile();	 Catch:{ Throwable -> 0x0059 }
        r1.delete();	 Catch:{ Throwable -> 0x0059 }
    L_0x004f:
        r1 = a;	 Catch:{ Throwable -> 0x0059 }
        if (r1 != r5) goto L_0x005d;
    L_0x0053:
        return r0;
    L_0x0054:
        r1 = move-exception;
        r1.printStackTrace();	 Catch:{ Throwable -> 0x0059 }
        goto L_0x0045;
    L_0x0059:
        r0 = move-exception;
        r0.printStackTrace();
    L_0x005d:
        r0 = r7.getFilesDir();
        goto L_0x0053;
    L_0x0062:
        r2 = move-exception;
        r2 = r1;
    L_0x0064:
        r3 = 2;
        a = r3;	 Catch:{ all -> 0x009a }
        if (r2 == 0) goto L_0x004f;
    L_0x0069:
        r2.close();	 Catch:{ IOException -> 0x0077 }
    L_0x006c:
        r1.delete();	 Catch:{ Throwable -> 0x0059 }
        r1 = r1.getParentFile();	 Catch:{ Throwable -> 0x0059 }
        r1.delete();	 Catch:{ Throwable -> 0x0059 }
        goto L_0x004f;
    L_0x0077:
        r2 = move-exception;
        r2.printStackTrace();	 Catch:{ Throwable -> 0x0059 }
        goto L_0x006c;
    L_0x007c:
        r0 = move-exception;
        r3 = r1;
    L_0x007e:
        if (r3 == 0) goto L_0x008d;
    L_0x0080:
        r3.close();	 Catch:{ IOException -> 0x008e }
    L_0x0083:
        r1.delete();	 Catch:{ Throwable -> 0x0059 }
        r1 = r1.getParentFile();	 Catch:{ Throwable -> 0x0059 }
        r1.delete();	 Catch:{ Throwable -> 0x0059 }
    L_0x008d:
        throw r0;	 Catch:{ Throwable -> 0x0059 }
    L_0x008e:
        r2 = move-exception;
        r2.printStackTrace();	 Catch:{ Throwable -> 0x0059 }
        goto L_0x0083;
    L_0x0093:
        r0 = move-exception;
        r3 = r1;
        r1 = r2;
        goto L_0x007e;
    L_0x0097:
        r0 = move-exception;
        r1 = r2;
        goto L_0x007e;
    L_0x009a:
        r0 = move-exception;
        r3 = r2;
        goto L_0x007e;
    L_0x009d:
        r3 = move-exception;
        r6 = r2;
        r2 = r1;
        r1 = r6;
        goto L_0x0064;
    L_0x00a2:
        r1 = move-exception;
        r1 = r2;
        r2 = r3;
        goto L_0x0064;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.Storage.getAppFileDir(android.content.Context):java.io.File");
    }

    public static File getAppDir(Context context) {
        return getAppFileDir(context).getParentFile();
    }

    public static File getFileDir(Context context) {
        File file = new File(getAppFileDir(context), a(context));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private Storage(Context context, String str, String str2) {
        Object obj = null;
        this.b = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = DEAFAULT_USER;
        }
        try {
            if (Class.forName("com.mqunar.core.QunarApkLoader") != null) {
                obj = 1;
            }
        } catch (Throwable th) {
        }
        if (obj != null) {
            this.c = SpStorage.newInstance(context, this.b, str2);
        } else if ("mounted".equals(Environment.getExternalStorageState())) {
            this.c = FileStorage.newInstance(context, new File(new File(new File(Environment.getExternalStorageDirectory(), "qunar_file"), this.b), str2));
        } else {
            throw new RuntimeException("不在spider运行时,手机必须得安装sdcard!");
        }
    }

    private Storage(Context context, String str) {
        this(context, a(context), str);
    }

    static String a(Context context) {
        String obj;
        try {
            StackTraceElement stackTraceElement;
            Class cls = Class.forName("com.mqunar.core.QunarApkLoader");
            Method declaredMethod = cls.getDeclaredMethod("isSpiderClass", new Class[]{String.class});
            Method declaredMethod2 = cls.getDeclaredMethod("getPackageName", new Class[]{String.class});
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StackTraceElement stackTraceElement2 = stackTrace[2];
            String name = Storage.class.getPackage().getName();
            for (StackTraceElement stackTraceElement3 : stackTrace) {
                if (((Boolean) declaredMethod.invoke(null, new Object[]{stackTraceElement3.getClassName()})).booleanValue() && !stackTraceElement3.getClassName().startsWith(name + ".") && !stackTraceElement3.getClassName().startsWith(name + "$")) {
                    stackTraceElement = stackTraceElement3;
                    break;
                }
            }
            stackTraceElement = stackTraceElement2;
            Object invoke = declaredMethod2.invoke(null, new Object[]{stackTraceElement.getClassName()});
            obj = invoke != null ? invoke.toString() : null;
        } catch (ClassNotFoundException e) {
            obj = context.getPackageName();
        } catch (Throwable th) {
            obj = null;
        }
        if (TextUtils.isEmpty(obj)) {
            return DEFAULT_SANDBOX;
        }
        return obj;
    }

    public <T extends Serializable> boolean append(String str, T t) {
        String string = getString(str, null);
        if (!TextUtils.isEmpty(string)) {
            return putString(str, string + t);
        }
        if (t != null) {
            return putString(str, String.valueOf(t));
        }
        return false;
    }

    public <T extends Serializable> boolean smoothAppend(String str, T t) {
        String string = getString(str, null);
        if (!TextUtils.isEmpty(string)) {
            return putSmoothString(str, string + t);
        }
        if (t != null) {
            return putSmoothString(str, String.valueOf(t));
        }
        return false;
    }

    public boolean putString(String str, String str2) {
        return this.c.putString(str, str2);
    }

    public boolean putSmoothString(String str, String str2) {
        return this.c.putSmoothString(str, str2);
    }

    public boolean putBoolean(String str, boolean z) {
        return this.c.putBoolean(str, z);
    }

    public boolean putSmoothBoolean(String str, boolean z) {
        return this.c.putSmoothBoolean(str, z);
    }

    public boolean putBytes(String str, byte[] bArr) {
        return this.c.putBytes(str, bArr);
    }

    public boolean putSmoothBytes(String str, byte[] bArr) {
        return this.c.putSmoothBytes(str, bArr);
    }

    public boolean putInt(String str, int i) {
        return this.c.putInt(str, i);
    }

    public boolean putSmoothInt(String str, int i) {
        return this.c.putSmoothInt(str, i);
    }

    public boolean putShort(String str, short s) {
        return this.c.putShort(str, s);
    }

    public boolean putSmoothShort(String str, short s) {
        return this.c.putSmoothShort(str, s);
    }

    public boolean putLong(String str, long j) {
        return this.c.putLong(str, j);
    }

    public boolean putSmoothLong(String str, long j) {
        return this.c.putSmoothLong(str, j);
    }

    public boolean putFloat(String str, float f) {
        return this.c.putFloat(str, f);
    }

    public boolean putSmoothFloat(String str, float f) {
        return this.c.putSmoothFloat(str, f);
    }

    public boolean putDouble(String str, double d) {
        return this.c.putDouble(str, d);
    }

    public boolean putSmoothDouble(String str, double d) {
        return this.c.putSmoothDouble(str, d);
    }

    public boolean putSerializable(String str, Serializable serializable) {
        return this.c.putSerializable(str, serializable);
    }

    public boolean putSmoothSerializable(String str, Serializable serializable) {
        return this.c.putSmoothSerializable(str, serializable);
    }

    public boolean getBoolean(String str, boolean z) {
        return this.c.getBoolean(str, z);
    }

    public <T extends Serializable> T getSerializable(String str, Class<T> cls, T t) {
        return this.c.getSerializable(str, cls, t);
    }

    public <T extends Serializable> T getSerializable(String str, T t) {
        return this.c.getSerializable(str, null, t);
    }

    public <T extends Serializable> T getSerializable(String str) {
        return this.c.getSerializable(str, null, null);
    }

    public byte[] getBytes(String str, byte[] bArr) {
        return this.c.getBytes(str, bArr);
    }

    public int getInt(String str, int i) {
        return this.c.getInt(str, i);
    }

    public short getShort(String str, short s) {
        return this.c.getShort(str, s);
    }

    public long getLong(String str, long j) {
        return this.c.getLong(str, j);
    }

    public float getFloat(String str, float f) {
        return this.c.getFloat(str, f);
    }

    public double getDouble(String str, double d) {
        return this.c.getDouble(str, d);
    }

    public String getString(String str, String str2) {
        return this.c.getString(str, str2);
    }

    public boolean remove(String str) {
        return this.c.remove(str);
    }

    public boolean contains(String str) {
        return this.c.contains(str);
    }

    public Map<String, Object> getAll() {
        return this.c.getAll();
    }

    public List<String> getKeys() {
        return this.c.getKeys();
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x0050 A:{SYNTHETIC, Splitter:B:39:0x0050} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0055 A:{SYNTHETIC, Splitter:B:42:0x0055} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0021 A:{SYNTHETIC, Splitter:B:14:0x0021} */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x006f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0026 A:{SYNTHETIC, Splitter:B:17:0x0026} */
    /* JADX WARNING: Removed duplicated region for block: B:59:? A:{SYNTHETIC, RETURN, SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002c A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0050 A:{SYNTHETIC, Splitter:B:39:0x0050} */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x0055 A:{SYNTHETIC, Splitter:B:42:0x0055} */
    public static byte[] openAsset(android.content.Context r7, java.lang.String r8, boolean r9) {
        /*
        r1 = 0;
        r2 = new java.io.ByteArrayOutputStream;	 Catch:{ Throwable -> 0x0068, all -> 0x004c }
        r2.<init>();	 Catch:{ Throwable -> 0x0068, all -> 0x004c }
        r0 = r7.getAssets();	 Catch:{ Throwable -> 0x006c, all -> 0x0061 }
        r0 = r0.open(r8);	 Catch:{ Throwable -> 0x006c, all -> 0x0061 }
        r3 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r3 = new byte[r3];	 Catch:{ Throwable -> 0x001e, all -> 0x0063 }
    L_0x0012:
        r4 = r0.read(r3);	 Catch:{ Throwable -> 0x001e, all -> 0x0063 }
        r5 = -1;
        if (r4 == r5) goto L_0x0033;
    L_0x0019:
        r5 = 0;
        r2.write(r3, r5, r4);	 Catch:{ Throwable -> 0x001e, all -> 0x0063 }
        goto L_0x0012;
    L_0x001e:
        r3 = move-exception;
    L_0x001f:
        if (r0 == 0) goto L_0x0024;
    L_0x0021:
        r0.close();	 Catch:{ IOException -> 0x005b }
    L_0x0024:
        if (r2 == 0) goto L_0x006f;
    L_0x0026:
        r2.close();	 Catch:{ IOException -> 0x0049 }
        r0 = r1;
    L_0x002a:
        if (r0 == 0) goto L_0x0032;
    L_0x002c:
        if (r9 == 0) goto L_0x0032;
    L_0x002e:
        r0 = com.mqunar.storage.EggRoll.da(r0);
    L_0x0032:
        return r0;
    L_0x0033:
        r2.flush();	 Catch:{ Throwable -> 0x001e, all -> 0x0063 }
        r1 = r2.toByteArray();	 Catch:{ Throwable -> 0x001e, all -> 0x0063 }
        if (r0 == 0) goto L_0x003f;
    L_0x003c:
        r0.close();	 Catch:{ IOException -> 0x0059 }
    L_0x003f:
        if (r2 == 0) goto L_0x0071;
    L_0x0041:
        r2.close();	 Catch:{ IOException -> 0x0046 }
        r0 = r1;
        goto L_0x002a;
    L_0x0046:
        r0 = move-exception;
        r0 = r1;
        goto L_0x002a;
    L_0x0049:
        r0 = move-exception;
        r0 = r1;
        goto L_0x002a;
    L_0x004c:
        r0 = move-exception;
        r2 = r1;
    L_0x004e:
        if (r1 == 0) goto L_0x0053;
    L_0x0050:
        r1.close();	 Catch:{ IOException -> 0x005d }
    L_0x0053:
        if (r2 == 0) goto L_0x0058;
    L_0x0055:
        r2.close();	 Catch:{ IOException -> 0x005f }
    L_0x0058:
        throw r0;
    L_0x0059:
        r0 = move-exception;
        goto L_0x003f;
    L_0x005b:
        r0 = move-exception;
        goto L_0x0024;
    L_0x005d:
        r1 = move-exception;
        goto L_0x0053;
    L_0x005f:
        r1 = move-exception;
        goto L_0x0058;
    L_0x0061:
        r0 = move-exception;
        goto L_0x004e;
    L_0x0063:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x004e;
    L_0x0068:
        r0 = move-exception;
        r0 = r1;
        r2 = r1;
        goto L_0x001f;
    L_0x006c:
        r0 = move-exception;
        r0 = r1;
        goto L_0x001f;
    L_0x006f:
        r0 = r1;
        goto L_0x002a;
    L_0x0071:
        r0 = r1;
        goto L_0x002a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.Storage.openAsset(android.content.Context, java.lang.String, boolean):byte[]");
    }

    public static byte[] openAsset(Context context, String str) {
        return openAsset(context, str, true);
    }

    public String getOwner() {
        return this.b;
    }

    public boolean clean() {
        return this.c.cleanAllStorage();
    }
}
