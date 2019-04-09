package com.baidu.techain.core;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import com.baidu.techain.TechainReceiver;
import com.baidu.techain.b;
import com.baidu.techain.b.e;
import com.baidu.techain.b.i;
import com.baidu.techain.b.o;
import com.baidu.techain.f;
import com.mqunar.yvideo.BuildConfig;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.io.IOUtils;

public final class g {
    public static List<Integer> b = new ArrayList();
    private static g e = null;
    private static Application f = null;
    private static Random g = new Random();
    public Map<String, ApkInfo> a = new ConcurrentHashMap();
    private String c;
    private boolean d;
    private Map<String, ApkInfo> h = new ConcurrentHashMap();
    private Map<String, TechainReceiver> i = new HashMap();

    public static g a(Context context) {
        if (e == null) {
            f = (Application) context.getApplicationContext();
            e = new g();
        }
        return e;
    }

    public static g a() {
        return e;
    }

    public final synchronized void a(h hVar) {
        try {
            if (hVar.d != null) {
                ApkInfo apkInfo = (ApkInfo) this.a.get(hVar.a);
                if (apkInfo != null) {
                    if (apkInfo.intentFilters == null) {
                        apkInfo.intentFilters = new ArrayList();
                    }
                    for (int i = 0; i < apkInfo.intentFilters.size(); i++) {
                        if (hVar.a((h) apkInfo.intentFilters.get(i))) {
                            break;
                        }
                    }
                    apkInfo.intentFilters.add(hVar);
                    String a = a(hVar.d);
                    new StringBuilder().append(a);
                    b.a();
                    if (!TextUtils.isEmpty(a) && !a.equals("____") && !this.i.keySet().contains(a) && !"android.intent.action.PACKAGE_REMOVED__package".equals(a)) {
                        Object obj;
                        TechainReceiver techainReceiver = new TechainReceiver();
                        try {
                            f.registerReceiver(techainReceiver, hVar.d);
                            obj = null;
                        } catch (Throwable th) {
                            obj = 1;
                        }
                        if (obj != null) {
                            try {
                                Thread.sleep(3000);
                            } catch (InterruptedException e) {
                                e.a();
                            }
                            f.registerReceiver(techainReceiver, hVar.d);
                        }
                        this.i.put(a, techainReceiver);
                    }
                }
            }
        } catch (Throwable th2) {
            e.a();
        }
        return;
    }

    private static String a(IntentFilter intentFilter) {
        if (intentFilter == null) {
            return "";
        }
        try {
            ArrayList<String> arrayList;
            int i;
            String action;
            StringBuilder stringBuilder = new StringBuilder();
            int countActions = intentFilter.countActions();
            if (countActions > 0) {
                arrayList = new ArrayList();
                for (i = 0; i < countActions; i++) {
                    action = intentFilter.getAction(i);
                    if (!TextUtils.isEmpty(action)) {
                        arrayList.add(action);
                    }
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList);
                    for (String append : arrayList) {
                        stringBuilder.append(append);
                    }
                } else {
                    stringBuilder.append("_");
                }
            } else {
                stringBuilder.append("_");
            }
            countActions = intentFilter.countCategories();
            if (countActions > 0) {
                arrayList = new ArrayList();
                for (i = 0; i < countActions; i++) {
                    try {
                        action = intentFilter.getCategory(i);
                        if (!TextUtils.isEmpty(action)) {
                            arrayList.add(action);
                        }
                    } catch (Throwable th) {
                        e.a();
                    }
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList);
                    for (String append2 : arrayList) {
                        stringBuilder.append(append2);
                    }
                } else {
                    stringBuilder.append("_");
                }
            } else {
                stringBuilder.append("_");
            }
            if (intentFilter.countDataTypes() > 0) {
                arrayList = new ArrayList();
                for (i = 0; i < countActions; i++) {
                    try {
                        action = intentFilter.getDataType(i);
                        if (!TextUtils.isEmpty(action)) {
                            arrayList.add(action);
                        }
                    } catch (Throwable th2) {
                        e.a();
                    }
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList);
                    for (String append22 : arrayList) {
                        stringBuilder.append(append22);
                    }
                } else {
                    stringBuilder.append("_");
                }
            } else {
                stringBuilder.append("_");
            }
            countActions = intentFilter.countDataSchemes();
            if (countActions > 0) {
                arrayList = new ArrayList();
                for (i = 0; i < countActions; i++) {
                    try {
                        String dataScheme = intentFilter.getDataScheme(i);
                        if (!TextUtils.isEmpty(dataScheme)) {
                            arrayList.add(dataScheme);
                        }
                    } catch (Throwable th3) {
                        e.a();
                    }
                }
                if (arrayList.size() > 0) {
                    Collections.sort(arrayList);
                    for (String append222 : arrayList) {
                        stringBuilder.append(append222);
                    }
                } else {
                    stringBuilder.append("_");
                }
            } else {
                stringBuilder.append("_");
            }
            return stringBuilder.toString();
        } catch (Throwable th4) {
            return "";
        }
    }

    public final synchronized void b(h hVar) {
        try {
            if (hVar.d != null) {
                ApkInfo apkInfo = (ApkInfo) this.a.get(hVar.a);
                if (!(apkInfo == null || apkInfo.intentFilters == null)) {
                    ArrayList<Integer> arrayList = new ArrayList();
                    for (int i = 0; i < apkInfo.intentFilters.size(); i++) {
                        if (hVar.a((h) apkInfo.intentFilters.get(i))) {
                            arrayList.add(Integer.valueOf(i));
                        }
                    }
                    for (Integer intValue : arrayList) {
                        int intValue2 = intValue.intValue();
                        if (!(apkInfo == null || apkInfo.intentFilters == null)) {
                            apkInfo.intentFilters.remove(intValue2);
                        }
                    }
                    if (apkInfo != null) {
                        if (apkInfo.intentFilters != null && apkInfo.intentFilters.size() == 0) {
                            apkInfo.intentFilters = null;
                        }
                    }
                }
                String a = a(hVar.d);
                new StringBuilder().append(a);
                b.a();
                if (!TextUtils.isEmpty(a) && !"android.intent.action.PACKAGE_REMOVED__package".equals(a)) {
                    loop2:
                    for (ApkInfo apkInfo2 : b()) {
                        if (apkInfo2.intentFilters != null && apkInfo2.intentFilters.size() > 0) {
                            for (h hVar2 : apkInfo2.intentFilters) {
                                String a2 = a(hVar2.d);
                                if (!TextUtils.isEmpty(a2) && a2.equals(a)) {
                                    new StringBuilder().append(a);
                                    b.a();
                                    break loop2;
                                }
                            }
                            continue;
                        }
                    }
                    new StringBuilder().append(a);
                    b.a();
                    f.unregisterReceiver((TechainReceiver) this.i.get(a));
                    this.i.remove(a);
                }
            }
        } catch (Throwable th) {
            e.a();
        }
        return;
    }

    public final List<ApkInfo> b() {
        try {
            ArrayList arrayList = new ArrayList();
            for (String str : this.a.keySet()) {
                arrayList.add(this.a.get(str));
            }
            return arrayList;
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    public final boolean a(ApkInfo apkInfo, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        this.d = z;
        this.c = apkInfo.versionName;
        boolean a = a(apkInfo);
        new StringBuilder().append(System.currentTimeMillis() - currentTimeMillis);
        b.a();
        return a;
    }

    private synchronized boolean a(ApkInfo apkInfo) {
        boolean z;
        Map hashMap;
        if (apkInfo != null) {
            if (!TextUtils.isEmpty(apkInfo.pkgPath)) {
                ApkInfo apkInfo2 = (ApkInfo) this.h.get(apkInfo.pkgPath);
                if (apkInfo2 != null) {
                    if (apkInfo2.versionName.equals(apkInfo.versionName)) {
                        b.a();
                        z = true;
                    } else {
                        a(apkInfo.pkgPath);
                    }
                }
                if (e.a(new File(apkInfo.pkgPath))) {
                    String str;
                    String str2;
                    Object obj;
                    try {
                        apkInfo.hostContext = f;
                        if (apkInfo.apkParseSuc == 1) {
                            b.a();
                            if (TextUtils.isEmpty(apkInfo.packageName) || TextUtils.isEmpty(apkInfo.pkgPath)) {
                                throw new RuntimeException("packageName or pkgPath miss");
                            }
                            apkInfo.dataDir = f.getFilesDir().getCanonicalPath() + "/.techain_" + apkInfo.key;
                            str = apkInfo.dataDir + "/dex";
                            str2 = apkInfo.dataDir + "/lib/" + this.c;
                            str2 = str2 + "/" + g.nextInt();
                            e(str);
                            e.a(str, false);
                            e(str2);
                            a(apkInfo, str2, str);
                            this.h.put(apkInfo.pkgPath, apkInfo);
                            this.a.put(apkInfo.packageName, apkInfo);
                            a(apkInfo, apkInfo.className);
                            obj = null;
                        } else {
                            obj = null;
                        }
                    } catch (Throwable th) {
                        try {
                            th.getMessage();
                            b.b();
                            a(apkInfo.pkgPath);
                            hashMap = new HashMap();
                            str = b.a(th) + "\r\n isUpgrade=" + this.d;
                            if (str.contains("space left")) {
                                str = i.a(f, str, apkInfo.packageName);
                            }
                            hashMap.put("0", Integer.valueOf(2));
                            hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(apkInfo.key));
                            hashMap.put("2", apkInfo.versionName);
                            hashMap.put("3", Base64.encodeToString(str.getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
                            e.a(f.getApplicationContext(), "1003117", hashMap);
                        } catch (Throwable th2) {
                            e.a();
                        }
                        z = false;
                    }
                    if (!(apkInfo.apkParseSuc == 1 && obj == null)) {
                        PackageInfo packageInfo;
                        b.a();
                        PackageInfo packageInfo2 = apkInfo.cloudPkgInfo;
                        if (packageInfo2 == null || TextUtils.isEmpty(packageInfo2.packageName) || TextUtils.isEmpty(packageInfo2.versionName)) {
                            packageInfo2 = f.getPackageManager().getPackageArchiveInfo(apkInfo.pkgPath, 1);
                            if (packageInfo2 == null || TextUtils.isEmpty(packageInfo2.packageName) || TextUtils.isEmpty(packageInfo2.versionName)) {
                                b.a();
                                packageInfo2 = a(apkInfo.packageName, apkInfo.apkMD5);
                                if (packageInfo2 == null || TextUtils.isEmpty(packageInfo2.packageName) || TextUtils.isEmpty(packageInfo2.versionName)) {
                                    throw new Exception("requestCloudPackageInfo failed");
                                }
                            }
                            packageInfo = packageInfo2;
                        } else {
                            b.a();
                            packageInfo = packageInfo2;
                        }
                        if (TextUtils.isEmpty(packageInfo.packageName) || !packageInfo.packageName.startsWith("com.baidu.techain")) {
                            throw new Exception("package name check failed");
                        }
                        if (!(apkInfo.apkParseSuc == 1 || apkInfo.initStatus == 1)) {
                            Pair pair;
                            str = apkInfo.apkMD5;
                            str2 = apkInfo.pkgPath;
                            if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                                pair = new Pair(Boolean.valueOf(false), "");
                            } else {
                                File file = new File(str2);
                                if (e.a(file)) {
                                    str2 = o.a(file);
                                    if (TextUtils.isEmpty(str2)) {
                                        pair = new Pair(Boolean.valueOf(false), "");
                                    } else if (str2.equalsIgnoreCase(str)) {
                                        pair = new Pair(Boolean.valueOf(true), "");
                                    } else {
                                        pair = new Pair(Boolean.valueOf(false), str2);
                                    }
                                } else {
                                    pair = new Pair(Boolean.valueOf(false), "");
                                }
                            }
                            new StringBuilder().append(pair.first);
                            b.a();
                            if (!((Boolean) pair.first).booleanValue()) {
                                hashMap = new HashMap();
                                hashMap.put("0", Integer.valueOf(3));
                                hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(apkInfo.key));
                                hashMap.put("2", packageInfo.versionName);
                                hashMap.put("3", Base64.encodeToString(((String) pair.second).getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
                                e.a(f.getApplicationContext(), "1003117", hashMap);
                                z = false;
                            }
                        }
                        apkInfo.packageName = packageInfo.packageName;
                        new StringBuilder("p=").append(packageInfo.packageName).append(", v=").append(packageInfo.versionName);
                        b.a();
                        apkInfo.className = packageInfo.applicationInfo.className;
                        apkInfo.versionName = packageInfo.versionName;
                        apkInfo.activities = packageInfo.activities;
                        apkInfo.applicationTheme = packageInfo.applicationInfo.theme;
                        apkInfo.dataDir = f.getFilesDir().getCanonicalPath() + "/.techain_" + apkInfo.key;
                        str = apkInfo.dataDir + "/dex";
                        str2 = apkInfo.dataDir + "/lib/" + this.c;
                        str2 = str2 + "/" + g.nextInt();
                        e(str);
                        e.a(str, false);
                        e(str2);
                        a(apkInfo, str2, str);
                        this.h.put(apkInfo.pkgPath, apkInfo);
                        this.a.put(apkInfo.packageName, apkInfo);
                        a(apkInfo, packageInfo.applicationInfo.className);
                    }
                    z = true;
                } else {
                    b.a();
                    Map hashMap2 = new HashMap();
                    hashMap2.put("0", Integer.valueOf(1));
                    hashMap2.put(BuildConfig.VERSION_NAME, Integer.valueOf(apkInfo.key));
                    hashMap2.put("2", apkInfo.versionName);
                    e.a(f.getApplicationContext(), "1003117", hashMap2);
                    z = false;
                }
            }
        }
        z = false;
        return z;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    private static android.content.pm.PackageInfo a(java.lang.String r9, java.lang.String r10) {
        /*
        r1 = 0;
        r0 = 0;
        r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012c }
        r2.<init>();	 Catch:{ Throwable -> 0x012c }
        r3 = com.baidu.techain.b.e.b();	 Catch:{ Throwable -> 0x012c }
        r2 = r2.append(r3);	 Catch:{ Throwable -> 0x012c }
        r3 = "p/1/pdl";
        r2 = r2.append(r3);	 Catch:{ Throwable -> 0x012c }
        r2 = r2.toString();	 Catch:{ Throwable -> 0x012c }
        r3 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x012c }
        r3.<init>();	 Catch:{ Throwable -> 0x012c }
        r4 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x012c }
        r4.<init>();	 Catch:{ Throwable -> 0x012c }
        r5 = "pk";
        r4.put(r5, r9);	 Catch:{ Throwable -> 0x012c }
        r5 = "m";
        r4.put(r5, r10);	 Catch:{ Throwable -> 0x012c }
        r3.put(r4);	 Catch:{ Throwable -> 0x012c }
        r3 = r3.toString();	 Catch:{ Throwable -> 0x012c }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x012c }
        r4 = f;	 Catch:{ Throwable -> 0x012c }
        r5 = 0;
        r2 = com.baidu.techain.b.h.a(r4, r2, r3, r5);	 Catch:{ Throwable -> 0x012c }
        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012c }
        r3.<init>();	 Catch:{ Throwable -> 0x012c }
        r3.append(r2);	 Catch:{ Throwable -> 0x012c }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x012c }
        r3 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x012c }
        r3.<init>(r2);	 Catch:{ Throwable -> 0x012c }
        r2 = r3.length();	 Catch:{ Throwable -> 0x012c }
        if (r2 > 0) goto L_0x0056;
    L_0x0054:
        r0 = r1;
    L_0x0055:
        return r0;
    L_0x0056:
        r2 = 0;
        r3 = r3.optJSONObject(r2);	 Catch:{ Throwable -> 0x012c }
        r2 = new android.content.pm.PackageInfo;	 Catch:{ Throwable -> 0x012c }
        r2.<init>();	 Catch:{ Throwable -> 0x012c }
        r4 = "p";
        r4 = r3.optString(r4);	 Catch:{ Throwable -> 0x012c }
        r2.packageName = r4;	 Catch:{ Throwable -> 0x012c }
        r4 = "v";
        r4 = r3.optString(r4);	 Catch:{ Throwable -> 0x012c }
        r2.versionName = r4;	 Catch:{ Throwable -> 0x012c }
        r4 = new android.content.pm.ApplicationInfo;	 Catch:{ Throwable -> 0x012c }
        r4.<init>();	 Catch:{ Throwable -> 0x012c }
        r5 = "n";
        r5 = r3.optString(r5);	 Catch:{ Throwable -> 0x012c }
        r4.className = r5;	 Catch:{ Throwable -> 0x012c }
        r5 = r4.className;	 Catch:{ Throwable -> 0x012c }
        r5 = android.text.TextUtils.isEmpty(r5);	 Catch:{ Throwable -> 0x012c }
        if (r5 != 0) goto L_0x00a6;
    L_0x0085:
        r5 = r4.className;	 Catch:{ Throwable -> 0x012c }
        r6 = ".";
        r5 = r5.startsWith(r6);	 Catch:{ Throwable -> 0x012c }
        if (r5 == 0) goto L_0x00a6;
    L_0x008f:
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x012c }
        r5.<init>();	 Catch:{ Throwable -> 0x012c }
        r6 = r2.packageName;	 Catch:{ Throwable -> 0x012c }
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x012c }
        r6 = r4.className;	 Catch:{ Throwable -> 0x012c }
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x012c }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x012c }
        r4.className = r5;	 Catch:{ Throwable -> 0x012c }
    L_0x00a6:
        r5 = "t";
        r5 = r3.optInt(r5);	 Catch:{ Throwable -> 0x012c }
        r4.theme = r5;	 Catch:{ Throwable -> 0x012c }
        r2.applicationInfo = r4;	 Catch:{ Throwable -> 0x012c }
        r4 = "a";
        r3 = r3.optJSONArray(r4);	 Catch:{ Throwable -> 0x012c }
        if (r3 == 0) goto L_0x0147;
    L_0x00b8:
        r4 = r3.length();	 Catch:{ Throwable -> 0x012c }
        if (r4 <= 0) goto L_0x0147;
    L_0x00be:
        r4 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x012c }
        r4.<init>();	 Catch:{ Throwable -> 0x012c }
    L_0x00c3:
        r5 = r3.length();	 Catch:{ Throwable -> 0x012c }
        if (r0 >= r5) goto L_0x0133;
    L_0x00c9:
        r5 = r3.getJSONObject(r0);	 Catch:{ Throwable -> 0x0127 }
        if (r5 == 0) goto L_0x0124;
    L_0x00cf:
        r6 = new android.content.pm.ActivityInfo;	 Catch:{ Throwable -> 0x0127 }
        r6.<init>();	 Catch:{ Throwable -> 0x0127 }
        r7 = "n";
        r7 = r5.optString(r7);	 Catch:{ Throwable -> 0x0127 }
        r6.name = r7;	 Catch:{ Throwable -> 0x0127 }
        r7 = r6.name;	 Catch:{ Throwable -> 0x0127 }
        r7 = android.text.TextUtils.isEmpty(r7);	 Catch:{ Throwable -> 0x0127 }
        if (r7 != 0) goto L_0x0105;
    L_0x00e4:
        r7 = r6.name;	 Catch:{ Throwable -> 0x0127 }
        r8 = ".";
        r7 = r7.startsWith(r8);	 Catch:{ Throwable -> 0x0127 }
        if (r7 == 0) goto L_0x0105;
    L_0x00ee:
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0127 }
        r7.<init>();	 Catch:{ Throwable -> 0x0127 }
        r8 = r2.packageName;	 Catch:{ Throwable -> 0x0127 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0127 }
        r8 = r6.name;	 Catch:{ Throwable -> 0x0127 }
        r7 = r7.append(r8);	 Catch:{ Throwable -> 0x0127 }
        r7 = r7.toString();	 Catch:{ Throwable -> 0x0127 }
        r6.name = r7;	 Catch:{ Throwable -> 0x0127 }
    L_0x0105:
        r7 = r2.packageName;	 Catch:{ Throwable -> 0x0127 }
        r6.packageName = r7;	 Catch:{ Throwable -> 0x0127 }
        r7 = "t";
        r7 = r5.optInt(r7);	 Catch:{ Throwable -> 0x0127 }
        r6.theme = r7;	 Catch:{ Throwable -> 0x0127 }
        r7 = "l";
        r5 = r5.optInt(r7);	 Catch:{ Throwable -> 0x0127 }
        r6.labelRes = r5;	 Catch:{ Throwable -> 0x0127 }
        r5 = r6.name;	 Catch:{ Throwable -> 0x0127 }
        r5 = android.text.TextUtils.isEmpty(r5);	 Catch:{ Throwable -> 0x0127 }
        if (r5 != 0) goto L_0x0124;
    L_0x0121:
        r4.add(r6);	 Catch:{ Throwable -> 0x0127 }
    L_0x0124:
        r0 = r0 + 1;
        goto L_0x00c3;
    L_0x0127:
        r5 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x012c }
        goto L_0x0124;
    L_0x012c:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r0 = r1;
        goto L_0x0055;
    L_0x0133:
        r0 = r4.size();	 Catch:{ Throwable -> 0x012c }
        if (r0 <= 0) goto L_0x0147;
    L_0x0139:
        r0 = r4.size();	 Catch:{ Throwable -> 0x012c }
        r0 = new android.content.pm.ActivityInfo[r0];	 Catch:{ Throwable -> 0x012c }
        r0 = r4.toArray(r0);	 Catch:{ Throwable -> 0x012c }
        r0 = (android.content.pm.ActivityInfo[]) r0;	 Catch:{ Throwable -> 0x012c }
        r2.activities = r0;	 Catch:{ Throwable -> 0x012c }
    L_0x0147:
        r0 = r2;
        goto L_0x0055;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.g.a(java.lang.String, java.lang.String):android.content.pm.PackageInfo");
    }

    private static boolean a(ApkInfo apkInfo, String str) {
        try {
            new StringBuilder().append(str);
            b.a();
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            Application application = (Application) apkInfo.classLoader.loadClass(str).newInstance();
            f.a(Application.class, f, (Object) application);
            a(application, f);
            application.onCreate();
            return true;
        } catch (Throwable th) {
            th.getMessage();
            b.b();
            return false;
        }
    }

    private void a(ApkInfo apkInfo, String str, String str2) {
        String str3;
        HashSet hashSet = new HashSet();
        StringBuilder stringBuilder = new StringBuilder();
        a(apkInfo, str, hashSet, stringBuilder, true, false);
        String str4 = ":" + System.getProperty("java.library.path");
        if (VERSION.SDK_INT >= 25) {
            str4 = "";
        }
        CharSequence charSequence = "";
        if (hashSet.contains(Build.CPU_ABI)) {
            String str5 = str + "/" + Build.CPU_ABI;
            String str6 = null;
            try {
                if (VERSION.SDK_INT >= 8 && hashSet.contains(Build.CPU_ABI2)) {
                    str6 = str + "/" + Build.CPU_ABI2;
                }
            } catch (Throwable th) {
                e.a();
            }
            charSequence = str6 != null ? str5 + ":" + str6 + str4 : str5 + str4;
        } else {
            try {
                if (VERSION.SDK_INT >= 8 && hashSet.contains(Build.CPU_ABI2)) {
                    charSequence = str + "/" + Build.CPU_ABI2 + str4;
                }
            } catch (Throwable th2) {
                e.a();
            }
        }
        if (TextUtils.isEmpty(charSequence) && (("armeabi-v7a".equals(Build.CPU_ABI) && hashSet.contains("armeabi")) || (VERSION.SDK_INT >= 8 && "armeabi-v7a".equals(Build.CPU_ABI2) && hashSet.contains("armeabi")))) {
            str3 = str + "/armeabi" + str4;
        } else {
            CharSequence str32 = charSequence;
        }
        apkInfo.libPath = str32;
        PathClassLoader pathClassLoader = new PathClassLoader(apkInfo.hostContext.getPackageResourcePath(), getClass().getClassLoader());
        new StringBuilder().append(str32);
        b.a();
        Class loadClass;
        try {
            str4 = new File(str2, "apkDex").getAbsolutePath();
            e.d(str4);
            e(str4);
            apkInfo.classLoader = new f(apkInfo.pkgPath, str4, str32, pathClassLoader);
            loadClass = apkInfo.classLoader.loadClass("com.baidu.techain.engine.EngineImpl");
            new StringBuilder().append(loadClass);
            b.a();
            if (loadClass == null || TextUtils.isEmpty(loadClass.getName())) {
                throw new Exception("class ForHostApp.ENGINE_IMPL_CLASS_FULL_PATH loaded is null");
            }
        } catch (Throwable th3) {
            b.a();
            if (apkInfo != null) {
                try {
                    e.d(apkInfo.dataDir);
                    if (f != null) {
                        e.d(f.getFileStreamPath(apkInfo.packageName).getAbsolutePath());
                    }
                } catch (Throwable th4) {
                }
            }
            RuntimeException runtimeException = new RuntimeException("can't load EngineImpl by both dexFile:" + stringBuilder.toString() + " and ZipFile:" + apkInfo.pkgPath);
        }
    }

    public final boolean a(String str) {
        ApkInfo apkInfo = (ApkInfo) this.h.get(str);
        if (apkInfo == null) {
            return false;
        }
        this.h.remove(str);
        this.a.remove(apkInfo.packageName);
        e.d(apkInfo.dataDir);
        if (f != null) {
            e.d(f.getFileStreamPath(apkInfo.packageName).getAbsolutePath());
        }
        return true;
    }

    public final boolean b(String str) {
        ApkInfo apkInfo = (ApkInfo) this.a.get(str);
        if (apkInfo == null) {
            return false;
        }
        this.h.remove(apkInfo.pkgPath);
        this.a.remove(str);
        e.d(apkInfo.dataDir);
        if (f != null) {
            e.d(f.getFileStreamPath(apkInfo.packageName).getAbsolutePath());
        }
        new StringBuilder().append(this.h.size());
        b.a();
        new StringBuilder().append(this.a.size());
        b.a();
        return true;
    }

    public final ApkInfo c(String str) {
        try {
            return (ApkInfo) this.h.get(str);
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    public final ApkInfo d(String str) {
        try {
            return (ApkInfo) this.a.get(str);
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    private static void a(Application application, Context context) {
        Class cls = context.getClass();
        for (Class cls2 = Application.class; cls2 != null; cls2 = cls2.getSuperclass()) {
            try {
                Field declaredField = cls2.getDeclaredField("mBase");
                declaredField.setAccessible(true);
                if (declaredField.getType().isAssignableFrom(cls)) {
                    declaredField.set(application, context);
                }
            } catch (Throwable th) {
                e.a();
            }
        }
    }

    private static boolean e(String str) {
        try {
            File file = new File(str);
            if (file.exists() && !file.isDirectory()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            return true;
        } catch (Throwable th) {
            e.a();
            return false;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:51:0x0127  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:191:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0131  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:192:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARNING: Removed duplicated region for block: B:192:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:192:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x030e A:{PHI: r2 r4 , ExcHandler: all (th java.lang.Throwable), Splitter:B:6:0x0022} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARNING: Removed duplicated region for block: B:192:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0127  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0131  */
    /* JADX WARNING: Removed duplicated region for block: B:191:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:192:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:172:0x0357 A:{PHI: r4 , ExcHandler: ZipException (e java.util.zip.ZipException), Splitter:B:112:0x025d} */
    /* JADX WARNING: Removed duplicated region for block: B:162:0x0339 A:{PHI: r4 , ExcHandler: EOFException (e java.io.EOFException), Splitter:B:112:0x025d} */
    /* JADX WARNING: Removed duplicated region for block: B:150:0x0316 A:{PHI: r4 , ExcHandler: all (th java.lang.Throwable), Splitter:B:112:0x025d} */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0127  */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x012c  */
    /* JADX WARNING: Removed duplicated region for block: B:191:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0131  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x01be  */
    /* JADX WARNING: Removed duplicated region for block: B:76:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x01c8  */
    /* JADX WARNING: Removed duplicated region for block: B:192:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x021c  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x0221  */
    /* JADX WARNING: Removed duplicated region for block: B:95:0x0226  */
    /* JADX WARNING: Removed duplicated region for block: B:147:0x030e A:{PHI: r2 r4 , ExcHandler: all (th java.lang.Throwable), Splitter:B:6:0x0022} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:147:0x030e, code skipped:
            r1 = th;
     */
    /* JADX WARNING: Missing block: B:150:0x0316, code skipped:
            r1 = th;
     */
    /* JADX WARNING: Missing block: B:151:0x0317, code skipped:
            r14 = r2;
            r2 = r4;
            r4 = r14;
     */
    /* JADX WARNING: Missing block: B:159:0x032e, code skipped:
            r9 = null;
            r10 = null;
            r11 = r8;
     */
    /* JADX WARNING: Missing block: B:163:0x033a, code skipped:
            r9 = r2;
            r10 = r4;
            r11 = r8;
     */
    /* JADX WARNING: Missing block: B:171:0x0352, code skipped:
            r9 = null;
            r10 = null;
            r11 = r8;
     */
    /* JADX WARNING: Missing block: B:173:0x0358, code skipped:
            r9 = r2;
            r10 = r4;
            r11 = r8;
     */
    /* JADX WARNING: Missing block: B:178:0x0369, code skipped:
            r1 = th;
     */
    /* JADX WARNING: Missing block: B:179:0x036a, code skipped:
            r6 = r4;
            r4 = r2;
            r2 = null;
     */
    private static void a(com.baidu.techain.core.ApkInfo r15, java.lang.String r16, java.util.HashSet<java.lang.String> r17, java.lang.StringBuilder r18, boolean r19, boolean r20) {
        /*
        r6 = 0;
        r2 = 0;
        r4 = 0;
        r3 = "";
        r1 = r15.versionName;
        r1 = android.text.TextUtils.isEmpty(r1);
        if (r1 != 0) goto L_0x0017;
    L_0x000d:
        r1 = r15.versionName;
        r3 = ".";
        r5 = "";
        r3 = r1.replace(r3, r5);
    L_0x0017:
        r1 = 4096; // 0x1000 float:5.74E-42 double:2.0237E-320;
        r5 = new byte[r1];
        r8 = new java.util.zip.ZipFile;	 Catch:{ FileNotFoundException -> 0x0135 }
        r1 = r15.pkgPath;	 Catch:{ FileNotFoundException -> 0x0135 }
        r8.<init>(r1);	 Catch:{ FileNotFoundException -> 0x0135 }
    L_0x0022:
        r9 = r8.entries();	 Catch:{ ZipException -> 0x0351, EOFException -> 0x032d, all -> 0x030e }
    L_0x0026:
        r1 = r9.hasMoreElements();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r1 == 0) goto L_0x02ff;
    L_0x002c:
        r1 = r9.nextElement();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r1 = (java.util.zip.ZipEntry) r1;	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r10 = r1.getName();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = "lib/";
        r6 = r10.startsWith(r6);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r6 == 0) goto L_0x0376;
    L_0x003e:
        r6 = r1.isDirectory();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r6 != 0) goto L_0x0376;
    L_0x0044:
        if (r19 == 0) goto L_0x0376;
    L_0x0046:
        r7 = android.os.Build.CPU_ABI;	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = 0;
        r11 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x0243 }
        r12 = 8;
        if (r11 < r12) goto L_0x0051;
    L_0x004f:
        r6 = android.os.Build.CPU_ABI2;	 Catch:{ Throwable -> 0x0243 }
    L_0x0051:
        com.baidu.techain.b.a();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = r10.contains(r7);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r11 != 0) goto L_0x0084;
    L_0x005a:
        r11 = android.text.TextUtils.isEmpty(r6);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r11 != 0) goto L_0x0066;
    L_0x0060:
        r11 = r10.contains(r6);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r11 != 0) goto L_0x0084;
    L_0x0066:
        r11 = "armeabi";
        r11 = r10.contains(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r11 == 0) goto L_0x0026;
    L_0x006e:
        r11 = "armeabi-v7a";
        r7 = r11.equalsIgnoreCase(r7);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r7 != 0) goto L_0x0084;
    L_0x0076:
        r7 = android.text.TextUtils.isEmpty(r6);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r7 != 0) goto L_0x0026;
    L_0x007c:
        r7 = "armeabi-v7a";
        r6 = r7.equalsIgnoreCase(r6);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        if (r6 == 0) goto L_0x0026;
    L_0x0084:
        r6 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6.<init>();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r0 = r16;
        r6 = r6.append(r0);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r7 = 3;
        r7 = r10.substring(r7);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = ".so";
        r12 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r12.<init>();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r12 = r12.append(r3);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r13 = ".so";
        r12 = r12.append(r13);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r12 = r12.toString();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r7 = r7.replace(r11, r12);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = r6.append(r7);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r7 = r6.toString();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = "l=";
        r6.<init>(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r0 = r16;
        r6 = r6.append(r0);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = ", n=";
        r6 = r6.append(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = r6.append(r10);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = ", f=";
        r6 = r6.append(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6.append(r7);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        com.baidu.techain.b.a();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = 0;
        r11 = 47;
        r11 = r7.lastIndexOf(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = r7.substring(r6, r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = 47;
        r11 = r6.lastIndexOf(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r11 = r11 + 1;
        r11 = r6.substring(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r0 = r17;
        r0.add(r11);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        e(r6);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = new java.io.File;	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6.<init>(r7);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6.delete();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r6 = r8.getInputStream(r1);	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        r2 = new java.io.FileOutputStream;	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        r2.<init>(r7);	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
    L_0x0108:
        r4 = r6.read(r5);	 Catch:{ ZipException -> 0x0113, EOFException -> 0x0333, all -> 0x0311 }
        if (r4 <= 0) goto L_0x024f;
    L_0x010e:
        r11 = 0;
        r2.write(r5, r11, r4);	 Catch:{ ZipException -> 0x0113, EOFException -> 0x0333, all -> 0x0311 }
        goto L_0x0108;
    L_0x0113:
        r1 = move-exception;
        r9 = r2;
        r10 = r6;
        r11 = r8;
    L_0x0117:
        r1 = r15;
        r2 = r16;
        r4 = r17;
        r6 = r18;
        r7 = r19;
        r8 = r20;
        a(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x0327 }
        if (r11 == 0) goto L_0x012a;
    L_0x0127:
        r11.close();
    L_0x012a:
        if (r10 == 0) goto L_0x012f;
    L_0x012c:
        r10.close();
    L_0x012f:
        if (r9 == 0) goto L_0x0134;
    L_0x0131:
        r9.close();
    L_0x0134:
        return;
    L_0x0135:
        r1 = move-exception;
        r7 = r1.getMessage();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = new java.io.File;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8 = r15.hostContext;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8 = r8.getFilesDir();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = ".b_techain";
        r1.<init>(r8, r9);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8 = r1.exists();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        if (r8 != 0) goto L_0x016b;
    L_0x014d:
        r1 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1.<init>();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.append(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = "--backupDir not exists";
        r1 = r1.append(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.toString();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = new java.io.FileNotFoundException;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7.<init>(r1);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        throw r7;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
    L_0x0166:
        r1 = move-exception;
        r9 = r4;
        r10 = r2;
        r11 = r6;
        goto L_0x0117;
    L_0x016b:
        r8 = new java.io.File;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9.<init>();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r10 = r15.key;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = r9.append(r10);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r10 = "-";
        r9 = r9.append(r10);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r10 = r15.versionName;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = r9.append(r10);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = r9.toString();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8.<init>(r1, r9);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r8.exists();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        if (r1 != 0) goto L_0x01cd;
    L_0x0191:
        r1 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1.<init>();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.append(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = "--backupFile not exists";
        r1 = r1.append(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.toString();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = new java.io.FileNotFoundException;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7.<init>(r1);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        throw r7;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
    L_0x01aa:
        r1 = move-exception;
        r9 = r4;
        r10 = r2;
        r11 = r6;
    L_0x01ae:
        r1 = r15;
        r2 = r16;
        r4 = r17;
        r6 = r18;
        r7 = r19;
        r8 = r20;
        a(r1, r2, r3, r4, r5, r6, r7, r8);	 Catch:{ all -> 0x0327 }
        if (r11 == 0) goto L_0x01c1;
    L_0x01be:
        r11.close();
    L_0x01c1:
        if (r10 == 0) goto L_0x01c6;
    L_0x01c3:
        r10.close();
    L_0x01c6:
        if (r9 == 0) goto L_0x0134;
    L_0x01c8:
        r9.close();
        goto L_0x0134;
    L_0x01cd:
        r1 = new java.io.File;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = r15.pkgPath;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1.<init>(r9);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        com.baidu.techain.b.e.a(r8, r1);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = r15.pkgPath;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r10 = 1;
        com.baidu.techain.b.e.a(r9, r10);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        com.baidu.techain.c.a(r1);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = r15.hostContext;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r10 = r15.key;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        com.baidu.techain.c.a(r9, r10, r1, r8);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.exists();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        if (r1 == 0) goto L_0x022a;
    L_0x01ed:
        r8 = new java.util.zip.ZipFile;	 Catch:{ Throwable -> 0x01f6 }
        r1 = r15.pkgPath;	 Catch:{ Throwable -> 0x01f6 }
        r8.<init>(r1);	 Catch:{ Throwable -> 0x01f6 }
        goto L_0x0022;
    L_0x01f6:
        r1 = move-exception;
        r8 = new java.io.FileNotFoundException;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9.<init>();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = r9.append(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r9 = "--";
        r7 = r7.append(r9);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.getMessage();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r7.append(r1);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1 = r1.toString();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8.<init>(r1);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        throw r8;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
    L_0x0218:
        r1 = move-exception;
        r8 = r6;
    L_0x021a:
        if (r8 == 0) goto L_0x021f;
    L_0x021c:
        r8.close();
    L_0x021f:
        if (r2 == 0) goto L_0x0224;
    L_0x0221:
        r2.close();
    L_0x0224:
        if (r4 == 0) goto L_0x0229;
    L_0x0226:
        r4.close();
    L_0x0229:
        throw r1;
    L_0x022a:
        r1 = new java.io.FileNotFoundException;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8.<init>();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = r8.append(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r8 = "--file not exists after copy";
        r7 = r7.append(r8);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r7 = r7.toString();	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        r1.<init>(r7);	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
        throw r1;	 Catch:{ ZipException -> 0x0166, EOFException -> 0x01aa, all -> 0x0218 }
    L_0x0243:
        r11 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ ZipException -> 0x0249, EOFException -> 0x0345, all -> 0x030e }
        goto L_0x0051;
    L_0x0249:
        r1 = move-exception;
        r9 = r4;
        r10 = r2;
        r11 = r8;
        goto L_0x0117;
    L_0x024f:
        r2.close();	 Catch:{ ZipException -> 0x0113, EOFException -> 0x0333, all -> 0x0311 }
        if (r6 == 0) goto L_0x0257;
    L_0x0254:
        r6.close();	 Catch:{ ZipException -> 0x0113, EOFException -> 0x0333, all -> 0x0311 }
    L_0x0257:
        r4 = 1;
        com.baidu.techain.b.e.a(r7, r4);	 Catch:{ ZipException -> 0x0113, EOFException -> 0x0333, all -> 0x0311 }
        r4 = r6;
    L_0x025c:
        r7 = 0;
        r6 = ".dex";
        r6 = r10.endsWith(r6);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        if (r6 == 0) goto L_0x02fa;
    L_0x0265:
        r6 = r1.isDirectory();	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        if (r6 != 0) goto L_0x02fa;
    L_0x026b:
        if (r20 == 0) goto L_0x02fa;
    L_0x026d:
        r10 = r15.dataDir;	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        e(r10);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r6 = new java.io.File;	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r11 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r11.<init>();	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r12 = r15.key;	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r11 = r11.append(r12);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r12 = "-";
        r11 = r11.append(r12);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r12 = r15.versionName;	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r11 = r11.append(r12);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r12 = ".dex";
        r11 = r11.append(r12);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r11 = r11.toString();	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r6.<init>(r10, r11);	 Catch:{ Throwable -> 0x0369, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r7 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r10 = "e: ";
        r7.<init>(r10);	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r10 = r6.getAbsolutePath();	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r7.append(r10);	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r4 = r8.getInputStream(r1);	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r1 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
        r1.<init>(r6);	 Catch:{ Throwable -> 0x036f, ZipException -> 0x0357, EOFException -> 0x0339, all -> 0x0316 }
    L_0x02b2:
        r2 = r4.read(r5);	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        if (r2 <= 0) goto L_0x02e0;
    L_0x02b8:
        r7 = 0;
        r1.write(r5, r7, r2);	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        goto L_0x02b2;
    L_0x02bd:
        r2 = move-exception;
        r14 = r2;
        r2 = r6;
        r6 = r4;
        r4 = r1;
        r1 = r14;
    L_0x02c3:
        r7 = new java.lang.StringBuilder;	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        r7.<init>();	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        r1 = r1.getMessage();	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        r7.append(r1);	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        com.baidu.techain.b.a();	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        if (r2 == 0) goto L_0x02dd;
    L_0x02d4:
        r1 = r2.exists();	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
        if (r1 == 0) goto L_0x02dd;
    L_0x02da:
        r2.delete();	 Catch:{ ZipException -> 0x0363, EOFException -> 0x034b, all -> 0x0323 }
    L_0x02dd:
        r2 = r6;
        goto L_0x0026;
    L_0x02e0:
        r1.close();	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        if (r4 == 0) goto L_0x02e8;
    L_0x02e5:
        r4.close();	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
    L_0x02e8:
        r2 = r6.getAbsolutePath();	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        r0 = r18;
        r0.append(r2);	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        r2 = r18.toString();	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        r7 = 1;
        com.baidu.techain.b.e.a(r2, r7);	 Catch:{ Throwable -> 0x02bd, ZipException -> 0x035d, EOFException -> 0x033f, all -> 0x031c }
        r2 = r1;
    L_0x02fa:
        r14 = r2;
        r2 = r4;
        r4 = r14;
        goto L_0x0026;
    L_0x02ff:
        r8.close();
        if (r2 == 0) goto L_0x0307;
    L_0x0304:
        r2.close();
    L_0x0307:
        if (r4 == 0) goto L_0x0134;
    L_0x0309:
        r4.close();
        goto L_0x0134;
    L_0x030e:
        r1 = move-exception;
        goto L_0x021a;
    L_0x0311:
        r1 = move-exception;
        r4 = r2;
        r2 = r6;
        goto L_0x021a;
    L_0x0316:
        r1 = move-exception;
        r14 = r2;
        r2 = r4;
        r4 = r14;
        goto L_0x021a;
    L_0x031c:
        r2 = move-exception;
        r14 = r2;
        r2 = r4;
        r4 = r1;
        r1 = r14;
        goto L_0x021a;
    L_0x0323:
        r1 = move-exception;
        r2 = r6;
        goto L_0x021a;
    L_0x0327:
        r1 = move-exception;
        r4 = r9;
        r2 = r10;
        r8 = r11;
        goto L_0x021a;
    L_0x032d:
        r1 = move-exception;
        r9 = r4;
        r10 = r2;
        r11 = r8;
        goto L_0x01ae;
    L_0x0333:
        r1 = move-exception;
        r9 = r2;
        r10 = r6;
        r11 = r8;
        goto L_0x01ae;
    L_0x0339:
        r1 = move-exception;
        r9 = r2;
        r10 = r4;
        r11 = r8;
        goto L_0x01ae;
    L_0x033f:
        r2 = move-exception;
        r9 = r1;
        r10 = r4;
        r11 = r8;
        goto L_0x01ae;
    L_0x0345:
        r1 = move-exception;
        r9 = r4;
        r10 = r2;
        r11 = r8;
        goto L_0x01ae;
    L_0x034b:
        r1 = move-exception;
        r9 = r4;
        r10 = r6;
        r11 = r8;
        goto L_0x01ae;
    L_0x0351:
        r1 = move-exception;
        r9 = r4;
        r10 = r2;
        r11 = r8;
        goto L_0x0117;
    L_0x0357:
        r1 = move-exception;
        r9 = r2;
        r10 = r4;
        r11 = r8;
        goto L_0x0117;
    L_0x035d:
        r2 = move-exception;
        r9 = r1;
        r10 = r4;
        r11 = r8;
        goto L_0x0117;
    L_0x0363:
        r1 = move-exception;
        r9 = r4;
        r10 = r6;
        r11 = r8;
        goto L_0x0117;
    L_0x0369:
        r1 = move-exception;
        r6 = r4;
        r4 = r2;
        r2 = r7;
        goto L_0x02c3;
    L_0x036f:
        r1 = move-exception;
        r14 = r6;
        r6 = r4;
        r4 = r2;
        r2 = r14;
        goto L_0x02c3;
    L_0x0376:
        r14 = r4;
        r4 = r2;
        r2 = r14;
        goto L_0x025c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.g.a(com.baidu.techain.core.ApkInfo, java.lang.String, java.util.HashSet, java.lang.StringBuilder, boolean, boolean):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01c1 A:{ExcHandler: all (r1_21 'th' java.lang.Throwable), Splitter:B:49:0x0115} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:40:0x0101, code skipped:
            r1.close();
     */
    /* JADX WARNING: Missing block: B:85:0x01c1, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:86:0x01c2, code skipped:
            r9 = r1;
            r1 = r0;
            r0 = r9;
     */
    /* JADX WARNING: Missing block: B:91:0x01d0, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:92:0x01d1, code skipped:
            r9 = r1;
            r1 = r2;
            r2 = r0;
            r0 = r9;
     */
    private static void a(com.baidu.techain.core.ApkInfo r10, java.lang.String r11, java.lang.String r12, java.util.HashSet<java.lang.String> r13, byte[] r14, java.lang.StringBuilder r15, boolean r16, boolean r17) {
        /*
        r4 = new java.util.zip.ZipInputStream;
        r0 = new java.io.FileInputStream;
        r1 = r10.pkgPath;
        r0.<init>(r1);
        r4.<init>(r0);
        r1 = 0;
    L_0x000d:
        r2 = r4.getNextEntry();	 Catch:{ all -> 0x010b }
        if (r2 == 0) goto L_0x01b8;
    L_0x0013:
        r5 = r2.getName();	 Catch:{ all -> 0x010b }
        r0 = "lib/";
        r0 = r5.startsWith(r0);	 Catch:{ all -> 0x010b }
        if (r0 == 0) goto L_0x01d6;
    L_0x001f:
        r0 = r2.isDirectory();	 Catch:{ all -> 0x010b }
        if (r0 != 0) goto L_0x01d6;
    L_0x0025:
        if (r16 == 0) goto L_0x01d6;
    L_0x0027:
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010b }
        r0.<init>();	 Catch:{ all -> 0x010b }
        r0.append(r5);	 Catch:{ all -> 0x010b }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x010b }
        r3 = android.os.Build.CPU_ABI;	 Catch:{ all -> 0x010b }
        r0 = 0;
        r6 = android.os.Build.VERSION.SDK_INT;	 Catch:{ Throwable -> 0x0105 }
        r7 = 8;
        if (r6 < r7) goto L_0x003d;
    L_0x003b:
        r0 = android.os.Build.CPU_ABI2;	 Catch:{ Throwable -> 0x0105 }
    L_0x003d:
        com.baidu.techain.b.a();	 Catch:{ all -> 0x010b }
        r6 = r5.contains(r3);	 Catch:{ all -> 0x010b }
        if (r6 != 0) goto L_0x0070;
    L_0x0046:
        r6 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x010b }
        if (r6 != 0) goto L_0x0052;
    L_0x004c:
        r6 = r5.contains(r0);	 Catch:{ all -> 0x010b }
        if (r6 != 0) goto L_0x0070;
    L_0x0052:
        r6 = "armeabi";
        r6 = r5.contains(r6);	 Catch:{ all -> 0x010b }
        if (r6 == 0) goto L_0x000d;
    L_0x005a:
        r6 = "armeabi-v7a";
        r3 = r6.equalsIgnoreCase(r3);	 Catch:{ all -> 0x010b }
        if (r3 != 0) goto L_0x0070;
    L_0x0062:
        r3 = android.text.TextUtils.isEmpty(r0);	 Catch:{ all -> 0x010b }
        if (r3 != 0) goto L_0x000d;
    L_0x0068:
        r3 = "armeabi-v7a";
        r0 = r3.equalsIgnoreCase(r0);	 Catch:{ all -> 0x010b }
        if (r0 == 0) goto L_0x000d;
    L_0x0070:
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010b }
        r0.<init>();	 Catch:{ all -> 0x010b }
        r0 = r0.append(r11);	 Catch:{ all -> 0x010b }
        r3 = 3;
        r3 = r5.substring(r3);	 Catch:{ all -> 0x010b }
        r6 = ".so";
        r7 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010b }
        r7.<init>();	 Catch:{ all -> 0x010b }
        r7 = r7.append(r12);	 Catch:{ all -> 0x010b }
        r8 = ".so";
        r7 = r7.append(r8);	 Catch:{ all -> 0x010b }
        r7 = r7.toString();	 Catch:{ all -> 0x010b }
        r3 = r3.replace(r6, r7);	 Catch:{ all -> 0x010b }
        r0 = r0.append(r3);	 Catch:{ all -> 0x010b }
        r3 = r0.toString();	 Catch:{ all -> 0x010b }
        r0 = new java.lang.StringBuilder;	 Catch:{ all -> 0x010b }
        r6 = "l=";
        r0.<init>(r6);	 Catch:{ all -> 0x010b }
        r0 = r0.append(r11);	 Catch:{ all -> 0x010b }
        r6 = ", n=";
        r0 = r0.append(r6);	 Catch:{ all -> 0x010b }
        r0 = r0.append(r5);	 Catch:{ all -> 0x010b }
        r6 = ", f=";
        r0 = r0.append(r6);	 Catch:{ all -> 0x010b }
        r0.append(r3);	 Catch:{ all -> 0x010b }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x010b }
        r0 = 0;
        r6 = 47;
        r6 = r3.lastIndexOf(r6);	 Catch:{ all -> 0x010b }
        r0 = r3.substring(r0, r6);	 Catch:{ all -> 0x010b }
        r6 = 47;
        r6 = r0.lastIndexOf(r6);	 Catch:{ all -> 0x010b }
        r6 = r6 + 1;
        r6 = r0.substring(r6);	 Catch:{ all -> 0x010b }
        r13.add(r6);	 Catch:{ all -> 0x010b }
        e(r0);	 Catch:{ all -> 0x010b }
        r0 = new java.io.File;	 Catch:{ all -> 0x010b }
        r0.<init>(r3);	 Catch:{ all -> 0x010b }
        r0.delete();	 Catch:{ all -> 0x010b }
        r0.createNewFile();	 Catch:{ all -> 0x010b }
        r0 = new java.io.FileOutputStream;	 Catch:{ all -> 0x010b }
        r0.<init>(r3);	 Catch:{ all -> 0x010b }
    L_0x00ed:
        r1 = r4.read(r14);	 Catch:{ all -> 0x00f8 }
        if (r1 <= 0) goto L_0x010d;
    L_0x00f3:
        r6 = 0;
        r0.write(r14, r6, r1);	 Catch:{ all -> 0x00f8 }
        goto L_0x00ed;
    L_0x00f8:
        r1 = move-exception;
        r9 = r1;
        r1 = r0;
        r0 = r9;
    L_0x00fc:
        r4.close();
        if (r1 == 0) goto L_0x0104;
    L_0x0101:
        r1.close();
    L_0x0104:
        throw r0;
    L_0x0105:
        r6 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x010b }
        goto L_0x003d;
    L_0x010b:
        r0 = move-exception;
        goto L_0x00fc;
    L_0x010d:
        r0.close();	 Catch:{ all -> 0x00f8 }
        r1 = 1;
        com.baidu.techain.b.e.a(r3, r1);	 Catch:{ all -> 0x00f8 }
    L_0x0114:
        r3 = 0;
        r1 = ".dex";
        r1 = r5.endsWith(r1);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        if (r1 == 0) goto L_0x01b6;
    L_0x011d:
        r1 = r2.isDirectory();	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        if (r1 != 0) goto L_0x01b6;
    L_0x0123:
        if (r17 == 0) goto L_0x01b6;
    L_0x0125:
        r1 = r10.dataDir;	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        e(r1);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r2 = new java.io.File;	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r5.<init>();	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r6 = r10.key;	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r6 = "-";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r6 = r10.versionName;	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r6 = ".dex";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r2.<init>(r1, r5);	 Catch:{ Throwable -> 0x01cb, all -> 0x01c1 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r1.<init>();	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r3 = r2.getAbsolutePath();	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r1.append(r3);	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r2.delete();	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r2.createNewFile();	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r1 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
        r1.<init>(r2);	 Catch:{ Throwable -> 0x01d0, all -> 0x01c1 }
    L_0x016a:
        r0 = r4.read(r14);	 Catch:{ Throwable -> 0x0175 }
        if (r0 <= 0) goto L_0x0199;
    L_0x0170:
        r3 = 0;
        r1.write(r14, r3, r0);	 Catch:{ Throwable -> 0x0175 }
        goto L_0x016a;
    L_0x0175:
        r0 = move-exception;
        r9 = r2;
        r2 = r1;
        r1 = r9;
    L_0x0179:
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x01c7 }
        r3.<init>();	 Catch:{ all -> 0x01c7 }
        r0 = r0.getMessage();	 Catch:{ all -> 0x01c7 }
        r3.append(r0);	 Catch:{ all -> 0x01c7 }
        com.baidu.techain.b.a();	 Catch:{ all -> 0x01c7 }
        if (r1 == 0) goto L_0x0193;
    L_0x018a:
        r0 = r1.exists();	 Catch:{ all -> 0x01c7 }
        if (r0 == 0) goto L_0x0193;
    L_0x0190:
        r1.delete();	 Catch:{ all -> 0x01c7 }
    L_0x0193:
        r1 = r2;
    L_0x0194:
        r4.closeEntry();	 Catch:{ all -> 0x010b }
        goto L_0x000d;
    L_0x0199:
        r1.close();	 Catch:{ Throwable -> 0x0175 }
        r0 = r15.length();	 Catch:{ Throwable -> 0x0175 }
        if (r0 <= 0) goto L_0x01a6;
    L_0x01a2:
        r0 = 0;
        r15.setLength(r0);	 Catch:{ Throwable -> 0x0175 }
    L_0x01a6:
        r0 = r2.getAbsolutePath();	 Catch:{ Throwable -> 0x0175 }
        r15.append(r0);	 Catch:{ Throwable -> 0x0175 }
        r0 = r15.toString();	 Catch:{ Throwable -> 0x0175 }
        r3 = 1;
        com.baidu.techain.b.e.a(r0, r3);	 Catch:{ Throwable -> 0x0175 }
        r0 = r1;
    L_0x01b6:
        r1 = r0;
        goto L_0x0194;
    L_0x01b8:
        r4.close();
        if (r1 == 0) goto L_0x01c0;
    L_0x01bd:
        r1.close();
    L_0x01c0:
        return;
    L_0x01c1:
        r1 = move-exception;
        r9 = r1;
        r1 = r0;
        r0 = r9;
        goto L_0x00fc;
    L_0x01c7:
        r0 = move-exception;
        r1 = r2;
        goto L_0x00fc;
    L_0x01cb:
        r1 = move-exception;
        r2 = r0;
        r0 = r1;
        r1 = r3;
        goto L_0x0179;
    L_0x01d0:
        r1 = move-exception;
        r9 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r9;
        goto L_0x0179;
    L_0x01d6:
        r0 = r1;
        goto L_0x0114;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.g.a(com.baidu.techain.core.ApkInfo, java.lang.String, java.lang.String, java.util.HashSet, byte[], java.lang.StringBuilder, boolean, boolean):void");
    }
}
