package com.baidu.tts.tools;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.Log;
import com.mqunar.hy.res.model.HybridManifest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.PublicKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import javax.crypto.Cipher;
import org.apache.commons.logging.LogFactory;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class DeviceId {
    private static final String a;
    private static b b;
    private final Context c;
    private int d = 0;
    private PublicKey e;

    class a {
        public ApplicationInfo a;
        public int b;
        public boolean c;
        public boolean d;

        /* synthetic */ a(AnonymousClass1 anonymousClass1) {
            this();
        }

        private a() {
            this.b = 0;
            this.c = false;
            this.d = false;
        }
    }

    class b {
        public String a;
        public String b;
        public int c;

        /* synthetic */ b(AnonymousClass1 anonymousClass1) {
            this();
        }

        private b() {
            this.c = 2;
        }

        public static b a(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            try {
                JSONObject jSONObject = new JSONObject(str);
                String string = jSONObject.getString("deviceid");
                String string2 = jSONObject.getString("imei");
                int i = jSONObject.getInt("ver");
                if (TextUtils.isEmpty(string) || string2 == null) {
                    return null;
                }
                b bVar = new b();
                bVar.a = string;
                bVar.b = string2;
                bVar.c = i;
                return bVar;
            } catch (JSONException e) {
                DeviceId.b(e);
                return null;
            }
        }

        public String a() {
            try {
                return new JSONObject().put("deviceid", this.a).put("imei", this.b).put("ver", this.c).toString();
            } catch (JSONException e) {
                DeviceId.b(e);
                return null;
            }
        }

        public String b() {
            String str = this.b;
            if (TextUtils.isEmpty(str)) {
                str = "0";
            }
            return this.a + "|" + new StringBuffer(str).reverse().toString();
        }
    }

    static {
        String str = new String(Base64.decode(new byte[]{(byte) 77, (byte) 122, (byte) 65, (byte) 121, (byte) 77, (byte) 84, (byte) 73, (byte) 120, (byte) 77, (byte) 68, (byte) 73, (byte) 61}));
        a = str + new String(Base64.decode(new byte[]{(byte) 90, (byte) 71, (byte) 108, (byte) 106, (byte) 100, (byte) 87, (byte) 82, (byte) 112, (byte) 89, (byte) 87, (byte) 73, (byte) 61}));
    }

    private DeviceId(Context context) {
        this.c = context.getApplicationContext();
        a();
    }

    private static String a(byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("Argument b ( byte array ) is null! ");
        }
        String str = "";
        str = "";
        for (byte b : bArr) {
            String toHexString = Integer.toHexString(b & 255);
            if (toHexString.length() == 1) {
                str = str + "0" + toHexString;
            } else {
                str = str + toHexString;
            }
        }
        return str.toLowerCase();
    }

    private static byte[] a(byte[] bArr, PublicKey publicKey) {
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(2, publicKey);
        return instance.doFinal(bArr);
    }

    private static void b(Throwable th) {
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x003d A:{SYNTHETIC, Splitter:B:29:0x003d} */
    private static java.lang.String a(java.io.File r6) {
        /*
        r0 = 0;
        r2 = new java.io.FileReader;	 Catch:{ Exception -> 0x0048, all -> 0x0038 }
        r2.<init>(r6);	 Catch:{ Exception -> 0x0048, all -> 0x0038 }
        r1 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r1 = new char[r1];	 Catch:{ Exception -> 0x001a }
        r3 = new java.io.CharArrayWriter;	 Catch:{ Exception -> 0x001a }
        r3.<init>();	 Catch:{ Exception -> 0x001a }
    L_0x000f:
        r4 = r2.read(r1);	 Catch:{ Exception -> 0x001a }
        if (r4 <= 0) goto L_0x0024;
    L_0x0015:
        r5 = 0;
        r3.write(r1, r5, r4);	 Catch:{ Exception -> 0x001a }
        goto L_0x000f;
    L_0x001a:
        r1 = move-exception;
    L_0x001b:
        b(r1);	 Catch:{ all -> 0x0046 }
        if (r2 == 0) goto L_0x0023;
    L_0x0020:
        r2.close();	 Catch:{ Exception -> 0x0033 }
    L_0x0023:
        return r0;
    L_0x0024:
        r0 = r3.toString();	 Catch:{ Exception -> 0x001a }
        if (r2 == 0) goto L_0x0023;
    L_0x002a:
        r2.close();	 Catch:{ Exception -> 0x002e }
        goto L_0x0023;
    L_0x002e:
        r1 = move-exception;
        b(r1);
        goto L_0x0023;
    L_0x0033:
        r1 = move-exception;
        b(r1);
        goto L_0x0023;
    L_0x0038:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
    L_0x003b:
        if (r2 == 0) goto L_0x0040;
    L_0x003d:
        r2.close();	 Catch:{ Exception -> 0x0041 }
    L_0x0040:
        throw r0;
    L_0x0041:
        r1 = move-exception;
        b(r1);
        goto L_0x0040;
    L_0x0046:
        r0 = move-exception;
        goto L_0x003b;
    L_0x0048:
        r1 = move-exception;
        r2 = r0;
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.DeviceId.a(java.io.File):java.lang.String");
    }

    public static String getCUID(Context context) {
        return a(context).b();
    }

    private static b a(Context context) {
        if (b == null) {
            Class cls = b.class;
            synchronized (b.class) {
                if (b == null) {
                    SystemClock.uptimeMillis();
                    b = new DeviceId(context).b();
                    SystemClock.uptimeMillis();
                }
            }
        }
        return b;
    }

    public static String getDeviceID(Context context) {
        return a(context).a;
    }

    public static String getIMEI(Context context) {
        return a(context).b;
    }

    public static String getAndroidId(Context context) {
        String str = "";
        str = Secure.getString(context.getContentResolver(), "android_id");
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Base64.encode(AESUtil.encrypt(a, a, str.getBytes()), "utf-8");
        } catch (UnsupportedEncodingException e) {
            b(e);
        } catch (Exception e2) {
            b(e2);
        }
        return "";
    }

    private static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new String(AESUtil.decrypt(a, a, Base64.decode(str.getBytes())));
        } catch (Exception e) {
            b(e);
            return "";
        }
    }

    private static void c(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
        File file2 = new File(file, ".cuid2");
        try {
            if (file.exists() && !file.isDirectory()) {
                File file3;
                Random random = new Random();
                File parentFile = file.getParentFile();
                String name = file.getName();
                do {
                    file3 = new File(parentFile, name + random.nextInt() + ".tmp");
                } while (file3.exists());
                file.renameTo(file3);
                file3.delete();
            }
            file.mkdirs();
            FileWriter fileWriter = new FileWriter(file2, false);
            fileWriter.write(str);
            fileWriter.flush();
            fileWriter.close();
        } catch (IOException | Exception e) {
        }
    }

    private static void a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append("=");
            stringBuilder.append(str2);
            File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig");
            File file2 = new File(file, ".cuid");
            try {
                if (file.exists() && !file.isDirectory()) {
                    File file3;
                    Random random = new Random();
                    File parentFile = file.getParentFile();
                    String name = file.getName();
                    do {
                        file3 = new File(parentFile, name + random.nextInt() + ".tmp");
                    } while (file3.exists());
                    file.renameTo(file3);
                    file3.delete();
                }
                file.mkdirs();
                FileWriter fileWriter = new FileWriter(file2, false);
                fileWriter.write(Base64.encode(AESUtil.encrypt(a, a, stringBuilder.toString().getBytes()), "utf-8"));
                fileWriter.flush();
                fileWriter.close();
            } catch (IOException | Exception e) {
            }
        }
    }

    private static String d(String str) {
        return (str == null || !str.contains(":")) ? str : "";
    }

    private String[] a(Signature[] signatureArr) {
        String[] strArr = new String[signatureArr.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = a(SHA1Util.sha1(signatureArr[i].toByteArray()));
        }
        return strArr;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0029 A:{SYNTHETIC, Splitter:B:13:0x0029} */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0035 A:{SYNTHETIC, Splitter:B:19:0x0035} */
    private void a() {
        /*
        r4 = this;
        r1 = 0;
        r0 = new java.io.ByteArrayInputStream;	 Catch:{ Exception -> 0x0025, all -> 0x0032 }
        r2 = com.baidu.tts.tools.a.a();	 Catch:{ Exception -> 0x0025, all -> 0x0032 }
        r0.<init>(r2);	 Catch:{ Exception -> 0x0025, all -> 0x0032 }
        r1 = "X.509";
        r1 = java.security.cert.CertificateFactory.getInstance(r1);	 Catch:{ Exception -> 0x0043, all -> 0x003e }
        r1 = r1.generateCertificate(r0);	 Catch:{ Exception -> 0x0043, all -> 0x003e }
        r1 = r1.getPublicKey();	 Catch:{ Exception -> 0x0043, all -> 0x003e }
        r4.e = r1;	 Catch:{ Exception -> 0x0043, all -> 0x003e }
        if (r0 == 0) goto L_0x001f;
    L_0x001c:
        r0.close();	 Catch:{ Exception -> 0x0020 }
    L_0x001f:
        return;
    L_0x0020:
        r0 = move-exception;
        b(r0);
        goto L_0x001f;
    L_0x0025:
        r0 = move-exception;
        r0 = r1;
    L_0x0027:
        if (r0 == 0) goto L_0x001f;
    L_0x0029:
        r0.close();	 Catch:{ Exception -> 0x002d }
        goto L_0x001f;
    L_0x002d:
        r0 = move-exception;
        b(r0);
        goto L_0x001f;
    L_0x0032:
        r0 = move-exception;
    L_0x0033:
        if (r1 == 0) goto L_0x0038;
    L_0x0035:
        r1.close();	 Catch:{ Exception -> 0x0039 }
    L_0x0038:
        throw r0;
    L_0x0039:
        r1 = move-exception;
        b(r1);
        goto L_0x0038;
    L_0x003e:
        r1 = move-exception;
        r3 = r1;
        r1 = r0;
        r0 = r3;
        goto L_0x0033;
    L_0x0043:
        r1 = move-exception;
        goto L_0x0027;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.DeviceId.a():void");
    }

    private List<a> a(Intent intent, boolean z) {
        ArrayList arrayList = new ArrayList();
        PackageManager packageManager = this.c.getPackageManager();
        List<ResolveInfo> queryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (queryBroadcastReceivers != null) {
            for (ResolveInfo resolveInfo : queryBroadcastReceivers) {
                if (!(resolveInfo.activityInfo == null || resolveInfo.activityInfo.applicationInfo == null)) {
                    try {
                        Bundle bundle = packageManager.getReceiverInfo(new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name), 128).metaData;
                        if (bundle != null) {
                            String string = bundle.getString("galaxy_data");
                            if (!TextUtils.isEmpty(string)) {
                                byte[] decode = Base64.decode(string.getBytes("utf-8"));
                                JSONObject jSONObject = new JSONObject(new String(decode));
                                a aVar = new a();
                                aVar.b = jSONObject.getInt(LogFactory.PRIORITY_KEY);
                                aVar.a = resolveInfo.activityInfo.applicationInfo;
                                if (this.c.getPackageName().equals(resolveInfo.activityInfo.applicationInfo.packageName)) {
                                    aVar.d = true;
                                }
                                if (z) {
                                    String string2 = bundle.getString("galaxy_sf");
                                    if (!TextUtils.isEmpty(string2)) {
                                        int i;
                                        PackageInfo packageInfo = packageManager.getPackageInfo(resolveInfo.activityInfo.applicationInfo.packageName, 64);
                                        JSONArray jSONArray = jSONObject.getJSONArray("sigs");
                                        String[] strArr = new String[jSONArray.length()];
                                        for (i = 0; i < strArr.length; i++) {
                                            strArr[i] = jSONArray.getString(i);
                                        }
                                        if (a(strArr, a(packageInfo.signatures))) {
                                            byte[] a = a(Base64.decode(string2.getBytes()), this.e);
                                            i = (a == null || !Arrays.equals(a, SHA1Util.sha1(decode))) ? 0 : 1;
                                            if (i != 0) {
                                                aVar.c = true;
                                            }
                                        }
                                    }
                                }
                                arrayList.add(aVar);
                            }
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
        Collections.sort(arrayList, new Comparator<a>() {
            /* renamed from: a */
            public int compare(a aVar, a aVar2) {
                int i = aVar2.b - aVar.b;
                if (i != 0) {
                    return i;
                }
                if (aVar.d && aVar2.d) {
                    return 0;
                }
                if (aVar.d) {
                    return -1;
                }
                if (aVar2.d) {
                    return 1;
                }
                return i;
            }
        });
        return arrayList;
    }

    private boolean a(String[] strArr, String[] strArr2) {
        int i = 0;
        if (strArr == null || strArr2 == null || strArr.length != strArr2.length) {
            return false;
        }
        HashSet hashSet = new HashSet();
        for (Object add : strArr) {
            hashSet.add(add);
        }
        HashSet hashSet2 = new HashSet();
        int length = strArr2.length;
        while (i < length) {
            hashSet2.add(strArr2[i]);
            i++;
        }
        return hashSet.equals(hashSet2);
    }

    private boolean e(String str) {
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = this.c.openFileOutput("libcuid.so", 1);
            fileOutputStream.write(str.getBytes());
            fileOutputStream.flush();
            if (fileOutputStream == null) {
                return true;
            }
            try {
                fileOutputStream.close();
                return true;
            } catch (Exception e) {
                b(e);
                return true;
            }
        } catch (Exception e2) {
            b(e2);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception e22) {
                    b(e22);
                }
            }
            return false;
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception e3) {
                    b(e3);
                }
            }
        }
    }

    private String f(String str) {
        try {
            return System.getString(this.c.getContentResolver(), str);
        } catch (Exception e) {
            b(e);
            return null;
        }
    }

    private boolean b(String str, String str2) {
        try {
            return System.putString(this.c.getContentResolver(), str, str2);
        } catch (Exception e) {
            b(e);
            return false;
        }
    }

    private b b() {
        boolean z;
        a aVar;
        boolean z2;
        b a;
        String str;
        String str2;
        b bVar;
        b e;
        String str3 = null;
        int i = 0;
        List a2 = a(new Intent("com.baidu.intent.action.GALAXY").setPackage(this.c.getPackageName()), true);
        int i2;
        if (a2 == null || a2.size() == 0) {
            for (i2 = 0; i2 < 3; i2++) {
                Log.w("DeviceId", "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy");
            }
            z = false;
        } else {
            aVar = (a) a2.get(0);
            z2 = aVar.c;
            if (!aVar.c) {
                for (i2 = 0; i2 < 3; i2++) {
                    Log.w("DeviceId", "galaxy config err, In the release version of the signature should be matched");
                }
            }
            z = z2;
        }
        File file = new File(this.c.getFilesDir(), "libcuid.so");
        if (file.exists()) {
            a = b.a(b(a(file)));
        } else {
            a = null;
        }
        if (a == null) {
            this.d |= 16;
            List<a> a3 = a(new Intent("com.baidu.intent.action.GALAXY"), z);
            if (a3 != null) {
                str = HybridManifest.FILES_KEY;
                file = this.c.getFilesDir();
                if (str.equals(file.getName())) {
                    str2 = str;
                } else {
                    Log.e("DeviceId", "fetal error:: app files dir name is unexpectedly :: " + file.getAbsolutePath());
                    str2 = file.getName();
                }
                for (a aVar2 : a3) {
                    if (!aVar2.d) {
                        File file2 = new File(new File(aVar2.a.dataDir, str2), "libcuid.so");
                        if (file2.exists()) {
                            a = b.a(b(a(file2)));
                            if (a != null) {
                                bVar = a;
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                    a = a;
                }
            }
        }
        bVar = a;
        if (bVar == null) {
            bVar = b.a(b(f("com.baidu.deviceid.v2")));
        }
        boolean g = g("android.permission.READ_EXTERNAL_STORAGE");
        if (bVar == null && g) {
            this.d |= 2;
            e = e();
        } else {
            e = bVar;
        }
        if (e == null) {
            this.d |= 8;
            e = d();
        }
        if (e == null && g) {
            this.d |= 1;
            str = i("");
            e = h(str);
            i = 1;
        } else {
            str = null;
        }
        if (e == null) {
            this.d |= 4;
            if (i == 0) {
                str = i("");
            }
            b bVar2 = new b();
            str2 = getAndroidId(this.c);
            if (VERSION.SDK_INT < 23) {
                str2 = str + str2 + UUID.randomUUID().toString();
            } else {
                str2 = "com.baidu" + str2;
            }
            bVar2.a = MD5Util.toMd5(str2.getBytes(), true);
            bVar2.b = str;
            bVar = bVar2;
        } else {
            bVar = e;
        }
        file = new File(this.c.getFilesDir(), "libcuid.so");
        if (!((this.d & 16) == 0 && file.exists())) {
            if (TextUtils.isEmpty(null)) {
                str2 = a(bVar.a());
            } else {
                str2 = null;
            }
            e(str2);
            str3 = str2;
        }
        z2 = c();
        if (z2 && ((this.d & 2) != 0 || TextUtils.isEmpty(f("com.baidu.deviceid.v2")))) {
            if (TextUtils.isEmpty(str3)) {
                str3 = a(bVar.a());
            }
            b("com.baidu.deviceid.v2", str3);
        }
        if (g("android.permission.WRITE_EXTERNAL_STORAGE")) {
            File file3 = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
            if (!((this.d & 8) == 0 && file3.exists())) {
                if (TextUtils.isEmpty(str3)) {
                    str3 = a(bVar.a());
                }
                c(str3);
            }
        }
        if (z2 && ((this.d & 1) != 0 || TextUtils.isEmpty(f("com.baidu.deviceid")))) {
            b("com.baidu.deviceid", bVar.a);
            b("bd_setting_i", bVar.b);
        }
        if (z2 && !TextUtils.isEmpty(bVar.b)) {
            file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid");
            if (!((this.d & 2) == 0 && file.exists())) {
                a(bVar.b, bVar.a);
            }
        }
        return bVar;
    }

    private boolean c() {
        return g("android.permission.WRITE_SETTINGS");
    }

    private boolean g(String str) {
        return this.c.checkPermission(str, Process.myPid(), Process.myUid()) == 0;
    }

    private b d() {
        CharSequence f = f("com.baidu.deviceid");
        String f2 = f("bd_setting_i");
        if (TextUtils.isEmpty(f2)) {
            f2 = i("");
            if (!TextUtils.isEmpty(f2)) {
                b("bd_setting_i", f2);
            }
        }
        if (TextUtils.isEmpty(f)) {
            f = f(MD5Util.toMd5(("com.baidu" + f2 + getAndroidId(this.c)).getBytes(), true));
        }
        if (TextUtils.isEmpty(f)) {
            return null;
        }
        b bVar = new b();
        bVar.a = f;
        bVar.b = f2;
        return bVar;
    }

    private b e() {
        File file = new File(Environment.getExternalStorageDirectory(), "backups/.SystemConfig/.cuid2");
        if (file.exists()) {
            String a = a(file);
            if (!TextUtils.isEmpty(a)) {
                try {
                    return b.a(new String(AESUtil.decrypt(a, a, Base64.decode(a.getBytes()))));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x009e A:{SYNTHETIC, Splitter:B:33:0x009e} */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x009e A:{SYNTHETIC, Splitter:B:33:0x009e} */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00b4  */
    private com.baidu.tts.tools.DeviceId.b h(java.lang.String r9) {
        /*
        r8 = this;
        r2 = 0;
        r4 = 0;
        r3 = 1;
        r0 = android.os.Build.VERSION.SDK_INT;
        r1 = 23;
        if (r0 >= r1) goto L_0x0014;
    L_0x0009:
        r5 = r3;
    L_0x000a:
        if (r5 == 0) goto L_0x0016;
    L_0x000c:
        r0 = android.text.TextUtils.isEmpty(r9);
        if (r0 == 0) goto L_0x0016;
    L_0x0012:
        r0 = r2;
    L_0x0013:
        return r0;
    L_0x0014:
        r5 = r4;
        goto L_0x000a;
    L_0x0016:
        r0 = "";
        r1 = new java.io.File;
        r6 = android.os.Environment.getExternalStorageDirectory();
        r7 = "baidu/.cuid";
        r1.<init>(r6, r7);
        r6 = r1.exists();
        if (r6 != 0) goto L_0x00c3;
    L_0x0029:
        r1 = new java.io.File;
        r4 = android.os.Environment.getExternalStorageDirectory();
        r6 = "backups/.SystemConfig/.cuid";
        r1.<init>(r4, r6);
    L_0x0034:
        r4 = new java.io.FileReader;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4.<init>(r1);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r1 = new java.io.BufferedReader;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r1.<init>(r4);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4.<init>();	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
    L_0x0043:
        r6 = r1.readLine();	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        if (r6 == 0) goto L_0x0065;
    L_0x0049:
        r4.append(r6);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r6 = "\r\n";
        r4.append(r6);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        goto L_0x0043;
    L_0x0052:
        r1 = move-exception;
        r1 = r9;
    L_0x0054:
        r3 = android.text.TextUtils.isEmpty(r0);
        if (r3 != 0) goto L_0x00b4;
    L_0x005a:
        r3 = new com.baidu.tts.tools.DeviceId$b;
        r3.<init>(r2);
        r3.a = r0;
        r3.b = r1;
        r0 = r3;
        goto L_0x0013;
    L_0x0065:
        r1.close();	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r1 = new java.lang.String;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r6 = a;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r7 = a;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = r4.toString();	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = r4.getBytes();	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = com.baidu.tts.tools.Base64.decode(r4);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = com.baidu.tts.tools.AESUtil.decrypt(r6, r7, r4);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r1.<init>(r4);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = "=";
        r1 = r1.split(r4);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        if (r1 == 0) goto L_0x00c1;
    L_0x0089:
        r4 = r1.length;	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r6 = 2;
        if (r4 != r6) goto L_0x00c1;
    L_0x008d:
        if (r5 == 0) goto L_0x00a4;
    L_0x008f:
        r4 = 0;
        r4 = r1[r4];	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r4 = r9.equals(r4);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        if (r4 == 0) goto L_0x00a4;
    L_0x0098:
        r4 = 1;
        r0 = r1[r4];	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r1 = r9;
    L_0x009c:
        if (r3 != 0) goto L_0x0054;
    L_0x009e:
        a(r1, r0);	 Catch:{ FileNotFoundException | IOException | Exception -> 0x00a2, IOException -> 0x00bf, Exception -> 0x00ba }
        goto L_0x0054;
    L_0x00a2:
        r3 = move-exception;
        goto L_0x0054;
    L_0x00a4:
        if (r5 != 0) goto L_0x00c1;
    L_0x00a6:
        r4 = android.text.TextUtils.isEmpty(r9);	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        if (r4 == 0) goto L_0x00af;
    L_0x00ac:
        r4 = 1;
        r9 = r1[r4];	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
    L_0x00af:
        r4 = 1;
        r0 = r1[r4];	 Catch:{ FileNotFoundException -> 0x0052, IOException -> 0x00bc, Exception -> 0x00b7 }
        r1 = r9;
        goto L_0x009c;
    L_0x00b4:
        r0 = r2;
        goto L_0x0013;
    L_0x00b7:
        r1 = move-exception;
        r1 = r9;
        goto L_0x0054;
    L_0x00ba:
        r3 = move-exception;
        goto L_0x0054;
    L_0x00bc:
        r1 = move-exception;
        r1 = r9;
        goto L_0x0054;
    L_0x00bf:
        r3 = move-exception;
        goto L_0x0054;
    L_0x00c1:
        r1 = r9;
        goto L_0x009c;
    L_0x00c3:
        r3 = r4;
        goto L_0x0034;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.DeviceId.h(java.lang.String):com.baidu.tts.tools.DeviceId$b");
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0026  */
    /* JADX WARNING: Removed duplicated region for block: B:11:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    private java.lang.String i(java.lang.String r5) {
        /*
        r4 = this;
        r1 = 0;
        r0 = r4.c;	 Catch:{ Exception -> 0x001c }
        r2 = "phone";
        r0 = r0.getSystemService(r2);	 Catch:{ Exception -> 0x001c }
        r0 = (android.telephony.TelephonyManager) r0;	 Catch:{ Exception -> 0x001c }
        if (r0 == 0) goto L_0x0024;
    L_0x000d:
        r0 = r0.getDeviceId();	 Catch:{ Exception -> 0x001c }
    L_0x0011:
        r0 = d(r0);
        r1 = android.text.TextUtils.isEmpty(r0);
        if (r1 == 0) goto L_0x0026;
    L_0x001b:
        return r5;
    L_0x001c:
        r0 = move-exception;
        r2 = "DeviceId";
        r3 = "Read IMEI failed";
        android.util.Log.e(r2, r3, r0);
    L_0x0024:
        r0 = r1;
        goto L_0x0011;
    L_0x0026:
        r5 = r0;
        goto L_0x001b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.tools.DeviceId.i(java.lang.String):java.lang.String");
    }
}
