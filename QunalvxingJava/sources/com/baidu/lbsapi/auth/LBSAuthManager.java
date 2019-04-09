package com.baidu.lbsapi.auth;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import com.baidu.android.bbalbs.common.util.CommonParam;
import com.mqunar.tools.DateTimeUtils;
import com.mqunar.yvideo.BuildConfig;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map.Entry;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONException;
import org.json.JSONObject;

public class LBSAuthManager {
    public static final int CODE_AUTHENTICATE_SUCC = 0;
    public static final int CODE_AUTHENTICATING = 602;
    public static final int CODE_INNER_ERROR = -1;
    public static final int CODE_KEY_NOT_EXIST = 101;
    public static final int CODE_NETWORK_FAILED = -11;
    public static final int CODE_NETWORK_INVALID = -10;
    public static final int CODE_UNAUTHENTICATE = 601;
    public static final String VERSION = "1.0.22";
    private static Context a;
    private static m d = null;
    private static int e = 0;
    private static Hashtable<String, LBSAuthManagerListener> f = new Hashtable();
    private static LBSAuthManager g;
    private c b = null;
    private e c = null;
    private final Handler h = new i(this, Looper.getMainLooper());

    private LBSAuthManager(Context context) {
        a = context;
        if (!(d == null || d.isAlive())) {
            d = null;
        }
        a.b("BaiduApiAuth SDK Version:1.0.22");
        d();
    }

    private int a(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("status")) {
                jSONObject.put("status", -1);
            }
            int i = jSONObject.getInt("status");
            if (jSONObject.has("current") && i == 0) {
                long j = jSONObject.getLong("current");
                long currentTimeMillis = System.currentTimeMillis();
                if (((double) (currentTimeMillis - j)) / 3600000.0d >= 24.0d) {
                    i = CODE_UNAUTHENTICATE;
                } else {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(DateTimeUtils.yyyy_MM_dd);
                    if (!simpleDateFormat.format(Long.valueOf(currentTimeMillis)).equals(simpleDateFormat.format(Long.valueOf(j)))) {
                        i = CODE_UNAUTHENTICATE;
                    }
                }
            }
            if (jSONObject.has("current") && i == CODE_AUTHENTICATING) {
                if (((double) ((System.currentTimeMillis() - jSONObject.getLong("current")) / 1000)) > 180.0d) {
                    return CODE_UNAUTHENTICATE;
                }
            }
            return i;
        } catch (JSONException e) {
            JSONException jSONException = e;
            int i2 = -1;
            jSONException.printStackTrace();
            return i2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0048  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x004d  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0052  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x005c  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0061  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x007c  */
    private java.lang.String a(int r7) {
        /*
        r6 = this;
        r0 = 0;
        r1 = new java.io.File;	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r2 = new java.lang.StringBuilder;	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r2.<init>();	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r3 = "/proc/";
        r2 = r2.append(r3);	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r2 = r2.append(r7);	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r3 = "/cmdline";
        r2 = r2.append(r3);	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r2 = r2.toString();	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r3 = new java.io.FileInputStream;	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r3.<init>(r1);	 Catch:{ FileNotFoundException -> 0x0042, IOException -> 0x0056, all -> 0x006a }
        r2 = new java.io.InputStreamReader;	 Catch:{ FileNotFoundException -> 0x0096, IOException -> 0x008d, all -> 0x0080 }
        r2.<init>(r3);	 Catch:{ FileNotFoundException -> 0x0096, IOException -> 0x008d, all -> 0x0080 }
        r1 = new java.io.BufferedReader;	 Catch:{ FileNotFoundException -> 0x009a, IOException -> 0x0091, all -> 0x0086 }
        r1.<init>(r2);	 Catch:{ FileNotFoundException -> 0x009a, IOException -> 0x0091, all -> 0x0086 }
        r0 = r1.readLine();	 Catch:{ FileNotFoundException -> 0x009d, IOException -> 0x0094, all -> 0x008b }
        if (r1 == 0) goto L_0x0037;
    L_0x0034:
        r1.close();
    L_0x0037:
        if (r2 == 0) goto L_0x003c;
    L_0x0039:
        r2.close();
    L_0x003c:
        if (r3 == 0) goto L_0x0041;
    L_0x003e:
        r3.close();
    L_0x0041:
        return r0;
    L_0x0042:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
        r3 = r0;
    L_0x0046:
        if (r1 == 0) goto L_0x004b;
    L_0x0048:
        r1.close();
    L_0x004b:
        if (r2 == 0) goto L_0x0050;
    L_0x004d:
        r2.close();
    L_0x0050:
        if (r3 == 0) goto L_0x0041;
    L_0x0052:
        r3.close();
        goto L_0x0041;
    L_0x0056:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
        r3 = r0;
    L_0x005a:
        if (r1 == 0) goto L_0x005f;
    L_0x005c:
        r1.close();
    L_0x005f:
        if (r2 == 0) goto L_0x0064;
    L_0x0061:
        r2.close();
    L_0x0064:
        if (r3 == 0) goto L_0x0041;
    L_0x0066:
        r3.close();
        goto L_0x0041;
    L_0x006a:
        r1 = move-exception;
        r2 = r0;
        r3 = r0;
        r5 = r1;
        r1 = r0;
        r0 = r5;
    L_0x0070:
        if (r1 == 0) goto L_0x0075;
    L_0x0072:
        r1.close();
    L_0x0075:
        if (r2 == 0) goto L_0x007a;
    L_0x0077:
        r2.close();
    L_0x007a:
        if (r3 == 0) goto L_0x007f;
    L_0x007c:
        r3.close();
    L_0x007f:
        throw r0;
    L_0x0080:
        r1 = move-exception;
        r2 = r0;
        r5 = r0;
        r0 = r1;
        r1 = r5;
        goto L_0x0070;
    L_0x0086:
        r1 = move-exception;
        r5 = r1;
        r1 = r0;
        r0 = r5;
        goto L_0x0070;
    L_0x008b:
        r0 = move-exception;
        goto L_0x0070;
    L_0x008d:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
        goto L_0x005a;
    L_0x0091:
        r1 = move-exception;
        r1 = r0;
        goto L_0x005a;
    L_0x0094:
        r4 = move-exception;
        goto L_0x005a;
    L_0x0096:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
        goto L_0x0046;
    L_0x009a:
        r1 = move-exception;
        r1 = r0;
        goto L_0x0046;
    L_0x009d:
        r4 = move-exception;
        goto L_0x0046;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.lbsapi.auth.LBSAuthManager.a(int):java.lang.String");
    }

    private String a(Context context) {
        int myPid = Process.myPid();
        List<RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.pid == myPid) {
                    return runningAppProcessInfo.processName;
                }
            }
        }
        String str = null;
        try {
            str = a(myPid);
        } catch (IOException e) {
        }
        return str == null ? a.getPackageName() : str;
    }

    private String a(Context context, String str) {
        String str2 = "";
        LBSAuthManagerListener lBSAuthManagerListener;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                lBSAuthManagerListener = (LBSAuthManagerListener) f.get(str);
                if (lBSAuthManagerListener != null) {
                    lBSAuthManagerListener.onAuthResult(101, ErrorMessage.a(101, "AndroidManifest.xml的application中没有meta-data标签"));
                }
                return str2;
            }
            str2 = applicationInfo.metaData.getString("com.baidu.lbsapi.API_KEY");
            if (str2 == null || str2.equals("")) {
                lBSAuthManagerListener = (LBSAuthManagerListener) f.get(str);
                if (lBSAuthManagerListener != null) {
                    lBSAuthManagerListener.onAuthResult(101, ErrorMessage.a(101, "无法在AndroidManifest.xml中获取com.baidu.android.lbs.API_KEY的值"));
                }
            }
            return str2;
        } catch (NameNotFoundException e) {
            lBSAuthManagerListener = (LBSAuthManagerListener) f.get(str);
            if (lBSAuthManagerListener != null) {
                lBSAuthManagerListener.onAuthResult(101, ErrorMessage.a(101, "无法在AndroidManifest.xml中获取com.baidu.android.lbs.API_KEY的值"));
            }
        }
    }

    private synchronized void a(String str, String str2) {
        if (str == null) {
            str = e();
        }
        Message obtainMessage = this.h.obtainMessage();
        Bundle bundle;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.has("status")) {
                jSONObject.put("status", -1);
            }
            if (!jSONObject.has("current")) {
                jSONObject.put("current", System.currentTimeMillis());
            }
            c(jSONObject.toString());
            if (jSONObject.has("current")) {
                jSONObject.remove("current");
            }
            obtainMessage.what = jSONObject.getInt("status");
            obtainMessage.obj = jSONObject.toString();
            bundle = new Bundle();
            bundle.putString("listenerKey", str2);
            obtainMessage.setData(bundle);
            this.h.sendMessage(obtainMessage);
        } catch (JSONException e) {
            e.printStackTrace();
            obtainMessage.what = -1;
            obtainMessage.obj = new JSONObject();
            bundle = new Bundle();
            bundle.putString("listenerKey", str2);
            obtainMessage.setData(bundle);
            this.h.sendMessage(obtainMessage);
        }
        if (d != null) {
            d.c();
        }
        e--;
        if (a.a) {
            a.a("httpRequest called mAuthCounter-- = " + e);
        }
        if (e == 0 && d != null) {
            d.a();
            d = null;
        }
        return;
    }

    private void a(boolean z, String str, Hashtable<String, String> hashtable, String str2) {
        String a = a(a, str2);
        if (a != null && !a.equals("")) {
            HashMap hashMap = new HashMap();
            hashMap.put("url", "https://api.map.baidu.com/sdkcs/verify");
            a.a("url:https://api.map.baidu.com/sdkcs/verify");
            hashMap.put("output", "json");
            hashMap.put("ak", a);
            a.a("ak:" + a);
            hashMap.put("mcode", b.a(a));
            hashMap.put("from", "lbs_yunsdk");
            if (hashtable != null && hashtable.size() > 0) {
                for (Entry entry : hashtable.entrySet()) {
                    String str3 = (String) entry.getKey();
                    a = (String) entry.getValue();
                    if (!(TextUtils.isEmpty(str3) || TextUtils.isEmpty(a))) {
                        hashMap.put(str3, a);
                    }
                }
            }
            a = "";
            try {
                a = CommonParam.a(a);
            } catch (Exception e) {
            }
            a.a("cuid:" + a);
            if (TextUtils.isEmpty(a)) {
                hashMap.put("cuid", "");
            } else {
                hashMap.put("cuid", a);
            }
            hashMap.put("pcn", a.getPackageName());
            hashMap.put(ClientCookie.VERSION_ATTR, VERSION);
            CharSequence charSequence = "";
            try {
                charSequence = b.c(a);
            } catch (Exception e2) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("macaddr", "");
            } else {
                hashMap.put("macaddr", charSequence);
            }
            charSequence = "";
            try {
                charSequence = b.a();
            } catch (Exception e3) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("language", "");
            } else {
                hashMap.put("language", charSequence);
            }
            if (z) {
                hashMap.put("force", z ? BuildConfig.VERSION_NAME : "0");
            }
            if (str == null) {
                hashMap.put("from_service", "");
            } else {
                hashMap.put("from_service", str);
            }
            this.b = new c(a);
            this.b.a(hashMap, new k(this, str2));
        }
    }

    private void a(boolean z, String str, Hashtable<String, String> hashtable, String[] strArr, String str2) {
        String a = a(a, str2);
        if (a != null && !a.equals("")) {
            HashMap hashMap = new HashMap();
            hashMap.put("url", "https://api.map.baidu.com/sdkcs/verify");
            hashMap.put("output", "json");
            hashMap.put("ak", a);
            hashMap.put("from", "lbs_yunsdk");
            if (hashtable != null && hashtable.size() > 0) {
                for (Entry entry : hashtable.entrySet()) {
                    String str3 = (String) entry.getKey();
                    a = (String) entry.getValue();
                    if (!(TextUtils.isEmpty(str3) || TextUtils.isEmpty(a))) {
                        hashMap.put(str3, a);
                    }
                }
            }
            CharSequence charSequence = "";
            try {
                charSequence = CommonParam.a(a);
            } catch (Exception e) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("cuid", "");
            } else {
                hashMap.put("cuid", charSequence);
            }
            hashMap.put("pcn", a.getPackageName());
            hashMap.put(ClientCookie.VERSION_ATTR, VERSION);
            charSequence = "";
            try {
                charSequence = b.c(a);
            } catch (Exception e2) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("macaddr", "");
            } else {
                hashMap.put("macaddr", charSequence);
            }
            charSequence = "";
            try {
                charSequence = b.a();
            } catch (Exception e3) {
            }
            if (TextUtils.isEmpty(charSequence)) {
                hashMap.put("language", "");
            } else {
                hashMap.put("language", charSequence);
            }
            if (z) {
                hashMap.put("force", z ? BuildConfig.VERSION_NAME : "0");
            }
            if (str == null) {
                hashMap.put("from_service", "");
            } else {
                hashMap.put("from_service", str);
            }
            this.c = new e(a);
            this.c.a(hashMap, strArr, new l(this, str2));
        }
    }

    private boolean b(String str) {
        String a = a(a, str);
        String str2 = "";
        try {
            JSONObject jSONObject = new JSONObject(e());
            if (!jSONObject.has("ak")) {
                return true;
            }
            Object string = jSONObject.getString("ak");
            return (a == null || string == null || a.equals(string)) ? false : true;
        } catch (JSONException e) {
            e.printStackTrace();
            String string2 = str2;
        }
    }

    private void c(String str) {
        a.getSharedPreferences("authStatus_" + a(a), 0).edit().putString("status", str).commit();
    }

    private void d() {
        synchronized (LBSAuthManager.class) {
            if (d == null) {
                d = new m("auth");
                d.start();
                while (d.a == null) {
                    try {
                        if (a.a) {
                            a.a("wait for create auth thread.");
                        }
                        Thread.sleep(3);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    private String e() {
        return a.getSharedPreferences("authStatus_" + a(a), 0).getString("status", "{\"status\":601}");
    }

    public static LBSAuthManager getInstance(Context context) {
        if (g == null) {
            synchronized (LBSAuthManager.class) {
                if (g == null) {
                    g = new LBSAuthManager(context);
                }
            }
        } else if (context != null) {
            a = context;
        } else if (a.a) {
            a.c("input context is null");
            new RuntimeException("here").printStackTrace();
        }
        return g;
    }

    public int authenticate(boolean z, String str, Hashtable<String, String> hashtable, LBSAuthManagerListener lBSAuthManagerListener) {
        int i;
        synchronized (LBSAuthManager.class) {
            String str2 = System.currentTimeMillis() + "";
            if (lBSAuthManagerListener != null) {
                f.put(str2, lBSAuthManagerListener);
            }
            String a = a(a, str2);
            if (a == null || a.equals("")) {
                i = 101;
            } else {
                e++;
                if (a.a) {
                    a.a(" mAuthCounter  ++ = " + e);
                }
                a = e();
                if (a.a) {
                    a.a("getAuthMessage from cache:" + a);
                }
                i = a(a);
                if (i == CODE_UNAUTHENTICATE) {
                    try {
                        c(new JSONObject().put("status", CODE_AUTHENTICATING).toString());
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                }
                d();
                if (d == null || d.a == null) {
                    i = -1;
                } else {
                    if (a.a) {
                        a.a("mThreadLooper.mHandler = " + d.a);
                    }
                    d.a.post(new j(this, i, z, str2, str, hashtable));
                }
            }
        }
        return i;
    }

    public String getCUID() {
        if (a == null) {
            return "";
        }
        String str = "";
        try {
            return CommonParam.a(a);
        } catch (Exception e) {
            if (!a.a) {
                return str;
            }
            e.printStackTrace();
            return str;
        }
    }

    public String getKey() {
        if (a == null) {
            return "";
        }
        try {
            return getPublicKey(a);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public String getMCode() {
        return a == null ? "" : b.a(a);
    }

    public String getPublicKey(Context context) {
        String str = "";
        return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData.getString("com.baidu.lbsapi.API_KEY");
    }
}
