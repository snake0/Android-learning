package com.mqunar.storage;

import android.content.Context;
import android.util.Base64;
import java.io.File;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class FileStorage implements IStorage {
    private File a;
    private JSONObject b;

    private FileStorage(Context context, File file) {
        if (file == null) {
            RuntimeException runtimeException = new RuntimeException("file is null!");
        }
        this.a = file;
        if (!file.getParentFile().exists()) {
            file.getParentFile().mkdirs();
            this.b = new JSONObject();
        } else if (file.exists() && file.isDirectory()) {
            throw new RuntimeException("无法创建文件!已存在同名的文件夹!");
        } else {
            this.b = a();
        }
    }

    public static IStorage newInstance(Context context, File file) {
        return new FileStorage(context, file);
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:40:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:40:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0028 A:{SYNTHETIC, Splitter:B:12:0x0028} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARNING: Removed duplicated region for block: B:40:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0054 A:{SYNTHETIC, Splitter:B:29:0x0054} */
    private org.json.JSONObject a() {
        /*
        r7 = this;
        r1 = 0;
        r0 = r7.a;
        r0 = r0.exists();
        if (r0 == 0) goto L_0x0062;
    L_0x0009:
        r3 = new java.io.ByteArrayOutputStream;
        r3.<init>();
        r0 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r2 = new byte[r0];	 Catch:{ Exception -> 0x005f, all -> 0x0051 }
        r0 = new java.io.FileInputStream;	 Catch:{ Exception -> 0x005f, all -> 0x0051 }
        r4 = r7.a;	 Catch:{ Exception -> 0x005f, all -> 0x0051 }
        r0.<init>(r4);	 Catch:{ Exception -> 0x005f, all -> 0x0051 }
    L_0x0019:
        r4 = r0.read(r2);	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        r5 = -1;
        if (r4 == r5) goto L_0x0034;
    L_0x0020:
        r5 = 0;
        r3.write(r2, r5, r4);	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        goto L_0x0019;
    L_0x0025:
        r2 = move-exception;
    L_0x0026:
        if (r0 == 0) goto L_0x0062;
    L_0x0028:
        r0.close();	 Catch:{ IOException -> 0x004e }
        r0 = r1;
    L_0x002c:
        if (r0 != 0) goto L_0x0033;
    L_0x002e:
        r0 = new org.json.JSONObject;
        r0.<init>();
    L_0x0033:
        return r0;
    L_0x0034:
        r2 = new org.json.JSONObject;	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        r4 = new java.lang.String;	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        r3 = r3.toByteArray();	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        r5 = "UTF-8";
        r4.<init>(r3, r5);	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        r2.<init>(r4);	 Catch:{ Exception -> 0x0025, all -> 0x005a }
        if (r0 == 0) goto L_0x0064;
    L_0x0046:
        r0.close();	 Catch:{ IOException -> 0x004b }
        r0 = r2;
        goto L_0x002c;
    L_0x004b:
        r0 = move-exception;
        r0 = r2;
        goto L_0x002c;
    L_0x004e:
        r0 = move-exception;
        r0 = r1;
        goto L_0x002c;
    L_0x0051:
        r0 = move-exception;
    L_0x0052:
        if (r1 == 0) goto L_0x0057;
    L_0x0054:
        r1.close();	 Catch:{ IOException -> 0x0058 }
    L_0x0057:
        throw r0;
    L_0x0058:
        r1 = move-exception;
        goto L_0x0057;
    L_0x005a:
        r1 = move-exception;
        r6 = r1;
        r1 = r0;
        r0 = r6;
        goto L_0x0052;
    L_0x005f:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0026;
    L_0x0062:
        r0 = r1;
        goto L_0x002c;
    L_0x0064:
        r0 = r2;
        goto L_0x002c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.FileStorage.a():org.json.JSONObject");
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x001f A:{SYNTHETIC, Splitter:B:11:0x001f} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0028 A:{SYNTHETIC, Splitter:B:16:0x0028} */
    private void a(org.json.JSONObject r5) {
        /*
        r4 = this;
        r1 = 0;
        r0 = new java.io.FileOutputStream;	 Catch:{ Exception -> 0x001b, all -> 0x0025 }
        r2 = r4.a;	 Catch:{ Exception -> 0x001b, all -> 0x0025 }
        r0.<init>(r2);	 Catch:{ Exception -> 0x001b, all -> 0x0025 }
        r1 = r5.toString();	 Catch:{ Exception -> 0x0035, all -> 0x0030 }
        r2 = "UTF-8";
        r1 = r1.getBytes(r2);	 Catch:{ Exception -> 0x0035, all -> 0x0030 }
        r0.write(r1);	 Catch:{ Exception -> 0x0035, all -> 0x0030 }
        if (r0 == 0) goto L_0x001a;
    L_0x0017:
        r0.close();	 Catch:{ IOException -> 0x002c }
    L_0x001a:
        return;
    L_0x001b:
        r0 = move-exception;
        r0 = r1;
    L_0x001d:
        if (r0 == 0) goto L_0x001a;
    L_0x001f:
        r0.close();	 Catch:{ IOException -> 0x0023 }
        goto L_0x001a;
    L_0x0023:
        r0 = move-exception;
        goto L_0x001a;
    L_0x0025:
        r0 = move-exception;
    L_0x0026:
        if (r1 == 0) goto L_0x002b;
    L_0x0028:
        r1.close();	 Catch:{ IOException -> 0x002e }
    L_0x002b:
        throw r0;
    L_0x002c:
        r0 = move-exception;
        goto L_0x001a;
    L_0x002e:
        r1 = move-exception;
        goto L_0x002b;
    L_0x0030:
        r1 = move-exception;
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0026;
    L_0x0035:
        r1 = move-exception;
        goto L_0x001d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.FileStorage.a(org.json.JSONObject):void");
    }

    private void a(String str, String str2) {
        synchronized (this.a) {
            this.b.put(str, str2);
            a(this.b);
        }
    }

    private String a(String str) {
        String optString;
        synchronized (this.a) {
            optString = this.b.optString(str, null);
        }
        return optString;
    }

    public static byte[] i2b(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    private static byte[] a(long j) {
        return new byte[]{(byte) ((int) ((j >> 56) & 255)), (byte) ((int) ((j >> 48) & 255)), (byte) ((int) ((j >> 40) & 255)), (byte) ((int) ((j >> 32) & 255)), (byte) ((int) ((j >> 24) & 255)), (byte) ((int) ((j >> 16) & 255)), (byte) ((int) ((j >> 8) & 255)), (byte) ((int) (j & 255))};
    }

    public static int b2i(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (i < 4) {
            i2 += (bArr[i] & 255) << ((3 - i) * 8);
            i++;
        }
        return i2;
    }

    private static long a(byte[] bArr) {
        long j = 0;
        for (int i = 0; i < 8; i++) {
            j += (((long) bArr[i]) & 255) << ((7 - i) * 8);
        }
        return j;
    }

    private boolean a(int i, String str, byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            try {
                a(str, "");
                return true;
            } catch (JSONException e) {
                return false;
            }
        }
        try {
            byte[] bArr2 = new byte[(bArr.length + 1)];
            bArr2[0] = (byte) i;
            System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
            a(str, Base64.encodeToString(EggRoll.ea(bArr2), 2));
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private byte[] b(String str) {
        if (str != null) {
            return EggRoll.da(Base64.decode(str, 2));
        }
        return null;
    }

    private byte[] c(String str) {
        return b(a(str));
    }

    private byte[] a(int i, String str) {
        byte[] c = c(str);
        if (c == null || c.length <= 0) {
            return c;
        }
        if (c[0] != ((byte) i)) {
            throw new RuntimeException("类型不匹配");
        }
        byte[] bArr = new byte[(c.length - 1)];
        System.arraycopy(c, 1, bArr, 0, bArr.length);
        return bArr;
    }

    public boolean putBytes(String str, byte[] bArr) {
        return a(0, str, bArr);
    }

    public boolean putSmoothBytes(String str, byte[] bArr) {
        return putBytes(str, bArr);
    }

    public byte[] getBytes(String str, byte[] bArr) {
        try {
            byte[] a = a(0, str);
            if (a == null || a.length == 0) {
                return bArr;
            }
            return a;
        } catch (Throwable th) {
            return bArr;
        }
    }

    public boolean putInt(String str, int i) {
        return a(2, str, i2b(i));
    }

    public boolean putSmoothInt(String str, int i) {
        return putInt(str, i);
    }

    public boolean putShort(String str, short s) {
        return a(1, str, new byte[]{(byte) ((s >> 8) & 255), (byte) (s & 255)});
    }

    public boolean putSmoothShort(String str, short s) {
        return putShort(str, s);
    }

    public boolean putLong(String str, long j) {
        return a(3, str, a(j));
    }

    public boolean putSmoothLong(String str, long j) {
        return putLong(str, j);
    }

    public boolean putFloat(String str, float f) {
        return a(4, str, i2b(Float.floatToIntBits(f)));
    }

    public boolean putSmoothFloat(String str, float f) {
        return putFloat(str, f);
    }

    public boolean putDouble(String str, double d) {
        return a(5, str, a(Double.doubleToLongBits(d)));
    }

    public boolean putSmoothDouble(String str, double d) {
        return putDouble(str, d);
    }

    public boolean putString(String str, String str2) {
        try {
            return a(7, str, str2 == null ? null : str2.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public boolean putSmoothString(String str, String str2) {
        return putString(str, str2);
    }

    public boolean putBoolean(String str, boolean z) {
        int i;
        if (z) {
            i = 1;
        } else {
            i = 0;
        }
        return a(6, str, new byte[]{(byte) i});
    }

    public boolean putSmoothBoolean(String str, boolean z) {
        return putBoolean(str, z);
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x002e A:{SYNTHETIC, Splitter:B:19:0x002e} */
    /* JADX WARNING: Removed duplicated region for block: B:46:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0033 A:{SYNTHETIC, Splitter:B:22:0x0033} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0040 A:{SYNTHETIC, Splitter:B:28:0x0040} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0045 A:{SYNTHETIC, Splitter:B:31:0x0045} */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0040 A:{SYNTHETIC, Splitter:B:28:0x0040} */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0045 A:{SYNTHETIC, Splitter:B:31:0x0045} */
    public boolean putSerializable(java.lang.String r5, java.io.Serializable r6) {
        /*
        r4 = this;
        r0 = 0;
        if (r6 == 0) goto L_0x0021;
    L_0x0003:
        r2 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x0028, all -> 0x0039 }
        r2.<init>();	 Catch:{ IOException -> 0x0028, all -> 0x0039 }
        r1 = new java.io.ObjectOutputStream;	 Catch:{ IOException -> 0x005a, all -> 0x0053 }
        r1.<init>(r2);	 Catch:{ IOException -> 0x005a, all -> 0x0053 }
        r1.writeObject(r6);	 Catch:{ IOException -> 0x005d, all -> 0x0058 }
        r1.flush();	 Catch:{ IOException -> 0x005d, all -> 0x0058 }
        r0 = r2.toByteArray();	 Catch:{ IOException -> 0x005d, all -> 0x0058 }
        if (r1 == 0) goto L_0x001c;
    L_0x0019:
        r1.close();	 Catch:{ IOException -> 0x0049 }
    L_0x001c:
        if (r2 == 0) goto L_0x0021;
    L_0x001e:
        r2.close();	 Catch:{ IOException -> 0x004b }
    L_0x0021:
        r1 = 8;
        r0 = r4.a(r1, r5, r0);
    L_0x0027:
        return r0;
    L_0x0028:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
    L_0x002b:
        r0 = 0;
        if (r1 == 0) goto L_0x0031;
    L_0x002e:
        r1.close();	 Catch:{ IOException -> 0x004d }
    L_0x0031:
        if (r2 == 0) goto L_0x0027;
    L_0x0033:
        r2.close();	 Catch:{ IOException -> 0x0037 }
        goto L_0x0027;
    L_0x0037:
        r1 = move-exception;
        goto L_0x0027;
    L_0x0039:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r0 = r1;
        r1 = r3;
    L_0x003e:
        if (r1 == 0) goto L_0x0043;
    L_0x0040:
        r1.close();	 Catch:{ IOException -> 0x004f }
    L_0x0043:
        if (r2 == 0) goto L_0x0048;
    L_0x0045:
        r2.close();	 Catch:{ IOException -> 0x0051 }
    L_0x0048:
        throw r0;
    L_0x0049:
        r1 = move-exception;
        goto L_0x001c;
    L_0x004b:
        r1 = move-exception;
        goto L_0x0021;
    L_0x004d:
        r1 = move-exception;
        goto L_0x0031;
    L_0x004f:
        r1 = move-exception;
        goto L_0x0043;
    L_0x0051:
        r1 = move-exception;
        goto L_0x0048;
    L_0x0053:
        r1 = move-exception;
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x003e;
    L_0x0058:
        r0 = move-exception;
        goto L_0x003e;
    L_0x005a:
        r1 = move-exception;
        r1 = r0;
        goto L_0x002b;
    L_0x005d:
        r0 = move-exception;
        goto L_0x002b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.FileStorage.putSerializable(java.lang.String, java.io.Serializable):boolean");
    }

    public boolean putSmoothSerializable(String str, Serializable serializable) {
        return putSerializable(str, serializable);
    }

    public short getShort(String str, short s) {
        int i = 0;
        try {
            byte[] a = a(1, str);
            if (a != null) {
                s = (short) 0;
                while (i < 2) {
                    s = (short) (((a[i] & 255) << ((1 - i) * 8)) + s);
                    i++;
                }
            }
        } catch (Throwable th) {
        }
        return s;
    }

    public int getInt(String str, int i) {
        try {
            byte[] a = a(2, str);
            if (a != null) {
                return b2i(a);
            }
            return i;
        } catch (Throwable th) {
            return i;
        }
    }

    public long getLong(String str, long j) {
        try {
            byte[] a = a(3, str);
            if (a != null) {
                return a(a);
            }
            return j;
        } catch (Throwable th) {
            return j;
        }
    }

    public float getFloat(String str, float f) {
        try {
            byte[] a = a(4, str);
            if (a != null) {
                return Float.intBitsToFloat(b2i(a));
            }
            return f;
        } catch (Throwable th) {
            return f;
        }
    }

    public double getDouble(String str, double d) {
        try {
            byte[] a = a(5, str);
            if (a != null) {
                return Double.longBitsToDouble(a(a));
            }
            return d;
        } catch (Throwable th) {
            return d;
        }
    }

    public String getString(String str, String str2) {
        try {
            byte[] a = a(7, str);
            if (a != null) {
                return new String(a, "UTF-8");
            }
            return str2;
        } catch (Throwable th) {
            return str2;
        }
    }

    public boolean getBoolean(String str, boolean z) {
        try {
            byte[] a = a(6, str);
            if (a == null) {
                return z;
            }
            if (a[0] == (byte) 1) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            return z;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:18:0x002a A:{SYNTHETIC, Splitter:B:18:0x002a} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002f A:{SYNTHETIC, Splitter:B:21:0x002f} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0039 A:{SYNTHETIC, Splitter:B:27:0x0039} */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x003e A:{SYNTHETIC, Splitter:B:30:0x003e} */
    public <T extends java.io.Serializable> T getSerializable(java.lang.String r6, java.lang.Class<T> r7, T r8) {
        /*
        r5 = this;
        r2 = 0;
        r3 = 0;
        r0 = 8;
        r0 = r5.a(r0, r6);	 Catch:{ Throwable -> 0x0026, all -> 0x0035 }
        if (r0 == 0) goto L_0x0051;
    L_0x000a:
        r1 = new java.io.ObjectInputStream;	 Catch:{ Throwable -> 0x0026, all -> 0x0035 }
        r4 = new java.io.ByteArrayInputStream;	 Catch:{ Throwable -> 0x0026, all -> 0x0035 }
        r4.<init>(r0);	 Catch:{ Throwable -> 0x0026, all -> 0x0035 }
        r1.<init>(r4);	 Catch:{ Throwable -> 0x0026, all -> 0x0035 }
        r0 = r1.readObject();	 Catch:{ Throwable -> 0x004e, all -> 0x004c }
        r0 = (java.io.Serializable) r0;	 Catch:{ Throwable -> 0x004e, all -> 0x004c }
        r8 = r0;
    L_0x001b:
        if (r1 == 0) goto L_0x0020;
    L_0x001d:
        r1.close();	 Catch:{ IOException -> 0x0042 }
    L_0x0020:
        if (r2 == 0) goto L_0x0025;
    L_0x0022:
        r3.close();	 Catch:{ IOException -> 0x0044 }
    L_0x0025:
        return r8;
    L_0x0026:
        r0 = move-exception;
        r0 = r2;
    L_0x0028:
        if (r0 == 0) goto L_0x002d;
    L_0x002a:
        r0.close();	 Catch:{ IOException -> 0x0046 }
    L_0x002d:
        if (r2 == 0) goto L_0x0025;
    L_0x002f:
        r3.close();	 Catch:{ IOException -> 0x0033 }
        goto L_0x0025;
    L_0x0033:
        r0 = move-exception;
        goto L_0x0025;
    L_0x0035:
        r0 = move-exception;
        r1 = r2;
    L_0x0037:
        if (r1 == 0) goto L_0x003c;
    L_0x0039:
        r1.close();	 Catch:{ IOException -> 0x0048 }
    L_0x003c:
        if (r2 == 0) goto L_0x0041;
    L_0x003e:
        r3.close();	 Catch:{ IOException -> 0x004a }
    L_0x0041:
        throw r0;
    L_0x0042:
        r0 = move-exception;
        goto L_0x0020;
    L_0x0044:
        r0 = move-exception;
        goto L_0x0025;
    L_0x0046:
        r0 = move-exception;
        goto L_0x002d;
    L_0x0048:
        r1 = move-exception;
        goto L_0x003c;
    L_0x004a:
        r1 = move-exception;
        goto L_0x0041;
    L_0x004c:
        r0 = move-exception;
        goto L_0x0037;
    L_0x004e:
        r0 = move-exception;
        r0 = r1;
        goto L_0x0028;
    L_0x0051:
        r1 = r2;
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.FileStorage.getSerializable(java.lang.String, java.lang.Class, java.io.Serializable):java.io.Serializable");
    }

    public boolean remove(String str) {
        try {
            boolean z;
            synchronized (this.a) {
                Object remove = this.b.remove(str);
                if (remove != null) {
                    a(this.b);
                }
                if (remove != null) {
                    z = true;
                } else {
                    z = false;
                }
            }
            return z;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public boolean contains(java.lang.String r3) {
        /*
        r2 = this;
        r1 = r2.a;
        monitor-enter(r1);
        r0 = r2.b;	 Catch:{ Exception -> 0x000b }
        r0 = r0.has(r3);	 Catch:{ Exception -> 0x000b }
        monitor-exit(r1);	 Catch:{ all -> 0x000f }
    L_0x000a:
        return r0;
    L_0x000b:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x000f }
        r0 = 0;
        goto L_0x000a;
    L_0x000f:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x000f }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.FileStorage.contains(java.lang.String):boolean");
    }

    public List<String> getKeys() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.a) {
            Iterator keys = this.b.keys();
            while (keys.hasNext()) {
                arrayList.add((String) keys.next());
            }
        }
        return arrayList;
    }

    /* JADX WARNING: Removed duplicated region for block: B:71:0x00e2 A:{SYNTHETIC, Splitter:B:71:0x00e2} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00e7 A:{SYNTHETIC, Splitter:B:74:0x00e7} */
    public java.util.Map<java.lang.String, java.lang.Object> getAll() {
        /*
        r13 = this;
        r2 = 0;
        r4 = 1;
        r5 = 0;
        r7 = r13.a;
        monitor-enter(r7);
        r8 = new java.util.HashMap;	 Catch:{ all -> 0x00eb }
        r8.<init>();	 Catch:{ all -> 0x00eb }
        r0 = r13.b;	 Catch:{ Throwable -> 0x0046 }
        r9 = r0.keys();	 Catch:{ Throwable -> 0x0046 }
    L_0x0011:
        r0 = r9.hasNext();	 Catch:{ Throwable -> 0x0046 }
        if (r0 == 0) goto L_0x004a;
    L_0x0017:
        r0 = r9.next();	 Catch:{ Throwable -> 0x0046 }
        r0 = (java.lang.String) r0;	 Catch:{ Throwable -> 0x0046 }
        r1 = r13.b;	 Catch:{ Throwable -> 0x0046 }
        r1 = r1.get(r0);	 Catch:{ Throwable -> 0x0046 }
        r1 = java.lang.String.valueOf(r1);	 Catch:{ Throwable -> 0x0046 }
        r1 = r13.b(r1);	 Catch:{ Throwable -> 0x0046 }
        if (r1 == 0) goto L_0x0041;
    L_0x002d:
        r3 = r1.length;	 Catch:{ Throwable -> 0x0046 }
        if (r3 <= 0) goto L_0x0041;
    L_0x0030:
        r3 = 0;
        r6 = r1[r3];	 Catch:{ Throwable -> 0x0046 }
        r3 = r1.length;	 Catch:{ Throwable -> 0x0046 }
        r3 = r3 + -1;
        r3 = new byte[r3];	 Catch:{ Throwable -> 0x0046 }
        r10 = 1;
        r11 = 0;
        r12 = r3.length;	 Catch:{ Throwable -> 0x0046 }
        java.lang.System.arraycopy(r1, r10, r3, r11, r12);	 Catch:{ Throwable -> 0x0046 }
        switch(r6) {
            case 0: goto L_0x004c;
            case 1: goto L_0x004e;
            case 2: goto L_0x0067;
            case 3: goto L_0x0070;
            case 4: goto L_0x0079;
            case 5: goto L_0x0086;
            case 6: goto L_0x0093;
            case 7: goto L_0x00a0;
            case 8: goto L_0x00ab;
            default: goto L_0x0041;
        };	 Catch:{ Throwable -> 0x0046 }
    L_0x0041:
        r1 = r2;
    L_0x0042:
        r8.put(r0, r1);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0011;
    L_0x0046:
        r0 = move-exception;
        r0.printStackTrace();	 Catch:{ all -> 0x00eb }
    L_0x004a:
        monitor-exit(r7);	 Catch:{ all -> 0x00eb }
        return r8;
    L_0x004c:
        r1 = r3;
        goto L_0x0042;
    L_0x004e:
        r1 = r5;
        r6 = r5;
    L_0x0050:
        r10 = 2;
        if (r1 >= r10) goto L_0x0062;
    L_0x0053:
        r10 = 1 - r1;
        r10 = r10 * 8;
        r11 = r3[r1];	 Catch:{ Throwable -> 0x0046 }
        r11 = r11 & 255;
        r10 = r11 << r10;
        r6 = r6 + r10;
        r6 = (short) r6;	 Catch:{ Throwable -> 0x0046 }
        r1 = r1 + 1;
        goto L_0x0050;
    L_0x0062:
        r1 = java.lang.Short.valueOf(r6);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0042;
    L_0x0067:
        r1 = b2i(r3);	 Catch:{ Throwable -> 0x0046 }
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0042;
    L_0x0070:
        r10 = a(r3);	 Catch:{ Throwable -> 0x0046 }
        r1 = java.lang.Long.valueOf(r10);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0042;
    L_0x0079:
        r1 = b2i(r3);	 Catch:{ Throwable -> 0x0046 }
        r1 = java.lang.Float.intBitsToFloat(r1);	 Catch:{ Throwable -> 0x0046 }
        r1 = java.lang.Float.valueOf(r1);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0042;
    L_0x0086:
        r10 = a(r3);	 Catch:{ Throwable -> 0x0046 }
        r10 = java.lang.Double.longBitsToDouble(r10);	 Catch:{ Throwable -> 0x0046 }
        r1 = java.lang.Double.valueOf(r10);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0042;
    L_0x0093:
        r1 = 0;
        r1 = r3[r1];	 Catch:{ Throwable -> 0x0046 }
        if (r1 != r4) goto L_0x009e;
    L_0x0098:
        r1 = r4;
    L_0x0099:
        r1 = java.lang.Boolean.valueOf(r1);	 Catch:{ Throwable -> 0x0046 }
        goto L_0x0042;
    L_0x009e:
        r1 = r5;
        goto L_0x0099;
    L_0x00a0:
        r1 = new java.lang.String;	 Catch:{ UnsupportedEncodingException -> 0x00a8 }
        r6 = "UTF-8";
        r1.<init>(r3, r6);	 Catch:{ UnsupportedEncodingException -> 0x00a8 }
        goto L_0x0042;
    L_0x00a8:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0042;
    L_0x00ab:
        r6 = 0;
        r1 = new java.io.ObjectInputStream;	 Catch:{ Throwable -> 0x00cb, all -> 0x00de }
        r10 = new java.io.ByteArrayInputStream;	 Catch:{ Throwable -> 0x00cb, all -> 0x00de }
        r10.<init>(r3);	 Catch:{ Throwable -> 0x00cb, all -> 0x00de }
        r1.<init>(r10);	 Catch:{ Throwable -> 0x00cb, all -> 0x00de }
        r3 = r1.readObject();	 Catch:{ Throwable -> 0x00f8, all -> 0x00f6 }
        if (r1 == 0) goto L_0x00bf;
    L_0x00bc:
        r1.close();	 Catch:{ IOException -> 0x00ee }
    L_0x00bf:
        if (r2 == 0) goto L_0x00fa;
    L_0x00c1:
        r6.close();	 Catch:{ IOException -> 0x00c7 }
        r1 = r3;
        goto L_0x0042;
    L_0x00c7:
        r1 = move-exception;
        r1 = r3;
        goto L_0x0042;
    L_0x00cb:
        r1 = move-exception;
        r1 = r2;
    L_0x00cd:
        if (r1 == 0) goto L_0x00d2;
    L_0x00cf:
        r1.close();	 Catch:{ IOException -> 0x00f0 }
    L_0x00d2:
        if (r2 == 0) goto L_0x0041;
    L_0x00d4:
        r6.close();	 Catch:{ IOException -> 0x00da }
        r1 = r2;
        goto L_0x0042;
    L_0x00da:
        r1 = move-exception;
        r1 = r2;
        goto L_0x0042;
    L_0x00de:
        r0 = move-exception;
        r1 = r2;
    L_0x00e0:
        if (r1 == 0) goto L_0x00e5;
    L_0x00e2:
        r1.close();	 Catch:{ IOException -> 0x00f2 }
    L_0x00e5:
        if (r2 == 0) goto L_0x00ea;
    L_0x00e7:
        r6.close();	 Catch:{ IOException -> 0x00f4 }
    L_0x00ea:
        throw r0;	 Catch:{ Throwable -> 0x0046 }
    L_0x00eb:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x00eb }
        throw r0;
    L_0x00ee:
        r1 = move-exception;
        goto L_0x00bf;
    L_0x00f0:
        r1 = move-exception;
        goto L_0x00d2;
    L_0x00f2:
        r1 = move-exception;
        goto L_0x00e5;
    L_0x00f4:
        r1 = move-exception;
        goto L_0x00ea;
    L_0x00f6:
        r0 = move-exception;
        goto L_0x00e0;
    L_0x00f8:
        r3 = move-exception;
        goto L_0x00cd;
    L_0x00fa:
        r1 = r3;
        goto L_0x0042;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.storage.FileStorage.getAll():java.util.Map");
    }

    public boolean cleanAllStorage() {
        synchronized (this.a) {
            a(this.b);
        }
        return true;
    }
}
