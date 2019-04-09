package com.baidu.techain.core;

import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Base64;
import com.baidu.techain.R;
import com.baidu.techain.TechainReceiver;
import com.baidu.techain.a.a;
import com.baidu.techain.ac.Callback;
import com.baidu.techain.b;
import com.baidu.techain.b.i;
import com.baidu.techain.c;
import com.baidu.techain.e;
import com.baidu.techain.rp.Report;
import com.mqunar.yvideo.BuildConfig;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.io.IOUtils;
import org.json.JSONObject;

public final class d {
    public static Context b;
    public static List<Integer> d = new ArrayList();
    private static d f;
    private static int g = 0;
    public e a;
    a c;
    private volatile boolean e = false;

    private d(Context context) {
        b.a();
        b = context.getApplicationContext();
        this.c = a.a(b);
        this.a = new e(b);
    }

    public static d a() {
        return f;
    }

    public static synchronized d a(Context context) {
        d dVar;
        synchronized (d.class) {
            if (f == null) {
                f = new d(context.getApplicationContext());
            }
            dVar = f;
        }
        return dVar;
    }

    public final synchronized void a(final Callback callback) {
        try {
            com.baidu.techain.b.e.d(b);
            new StringBuilder().append(this.e);
            b.a();
            if (!this.e) {
                this.e = true;
                e eVar = this.a;
                eVar.c.putString("ssv", "3.1.6.1");
                eVar.c.commit();
                Report.getInstance(b).n();
                IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_REMOVED");
                intentFilter.addDataScheme("package");
                b.registerReceiver(new TechainReceiver(), intentFilter);
                com.baidu.techain.b.b.a(b);
                for (ApkInfo apkInfo : this.c.a()) {
                    String str = null;
                    try {
                        str = b.getFilesDir().getCanonicalPath();
                    } catch (IOException e) {
                        com.baidu.techain.b.e.a();
                    }
                    if (str != null) {
                        apkInfo.dataDir = str + "/.techain_" + apkInfo.key;
                        com.baidu.techain.b.e.d(apkInfo.dataDir + "/lib");
                    }
                }
                new Thread() {
                    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                    public final void run() {
                        /*
                        r5 = this;
                        super.run();	 Catch:{ Throwable -> 0x0081 }
                        r0 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.c;	 Catch:{ Throwable -> 0x0081 }
                        r0.d();	 Catch:{ Throwable -> 0x0081 }
                        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0081 }
                        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0081 }
                        r0.<init>();	 Catch:{ Throwable -> 0x0081 }
                        r1 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x0081 }
                        r1 = r1.a;	 Catch:{ Throwable -> 0x0081 }
                        r1 = r1.a();	 Catch:{ Throwable -> 0x0081 }
                        r0.append(r1);	 Catch:{ Throwable -> 0x0081 }
                        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0081 }
                        r0 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.a;	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.a();	 Catch:{ Throwable -> 0x0081 }
                        if (r0 != 0) goto L_0x005c;
                    L_0x0030:
                        r0 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.a;	 Catch:{ Throwable -> 0x0081 }
                        r1 = r0.c;	 Catch:{ Throwable -> 0x0081 }
                        r2 = "iio";
                        r3 = 1;
                        r1.putBoolean(r2, r3);	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.c;	 Catch:{ Throwable -> 0x0081 }
                        r0.commit();	 Catch:{ Throwable -> 0x0081 }
                    L_0x0043:
                        r0 = new com.baidu.techain.ac.U;	 Catch:{ Throwable -> 0x0081 }
                        r1 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x0081 }
                        r2 = 1;
                        r3 = 0;
                        r0.<init>(r1, r2, r3);	 Catch:{ Throwable -> 0x0081 }
                        r0.start();	 Catch:{ Throwable -> 0x0081 }
                        r0 = r5;	 Catch:{ Throwable -> 0x0081 }
                        if (r0 == 0) goto L_0x005b;
                    L_0x0053:
                        r0 = r5;	 Catch:{ Throwable -> 0x0081 }
                        r1 = 0;
                        r1 = new java.lang.Object[r1];	 Catch:{ Throwable -> 0x0081 }
                        r0.onEnd(r1);	 Catch:{ Throwable -> 0x0081 }
                    L_0x005b:
                        return;
                    L_0x005c:
                        r0 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.c;	 Catch:{ Throwable -> 0x0081 }
                        r1 = new android.content.ContentValues;	 Catch:{ Throwable -> 0x0081 }
                        r1.<init>();	 Catch:{ Throwable -> 0x0081 }
                        r2 = "n";
                        r3 = 0;
                        r3 = java.lang.Integer.valueOf(r3);	 Catch:{ Throwable -> 0x0081 }
                        r1.put(r2, r3);	 Catch:{ Throwable -> 0x0081 }
                        r0 = r0.c;	 Catch:{ Throwable -> 0x007c }
                        r2 = "pgntechain";
                        r3 = "n=-1";
                        r4 = 0;
                        r0.update(r2, r1, r3, r4);	 Catch:{ Throwable -> 0x007c }
                        goto L_0x0043;
                    L_0x007c:
                        r0 = move-exception;
                        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0081 }
                        goto L_0x0043;
                    L_0x0081:
                        r0 = move-exception;
                        com.baidu.techain.b.e.a();
                        goto L_0x005b;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.d$AnonymousClass1.run():void");
                    }
                }.start();
            } else if (callback != null) {
                callback.onEnd(new Object[0]);
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
        return;
    }

    public final void b() {
        try {
            List<ApkInfo> a = this.c.a();
            new StringBuilder("all=").append(a);
            b.a();
            final List q = this.a.q();
            List p = this.a.p();
            for (int i = 0; i < p.size(); i++) {
                if (!q.contains(p.get(i))) {
                    q.add(p.get(i));
                }
            }
            Collections.sort(a, new Comparator<ApkInfo>() {
                public final /* synthetic */ int compare(Object obj, Object obj2) {
                    ApkInfo apkInfo = (ApkInfo) obj;
                    ApkInfo apkInfo2 = (ApkInfo) obj2;
                    if (apkInfo.priority == -1 && apkInfo2.priority != -1) {
                        return 1;
                    }
                    if ((apkInfo.priority != -1 && apkInfo2.priority == -1) || apkInfo.priority < apkInfo2.priority) {
                        return -1;
                    }
                    if (apkInfo.priority > apkInfo2.priority) {
                        return 1;
                    }
                    int i;
                    int i2;
                    if (q == null || !q.contains(Integer.valueOf(apkInfo.key))) {
                        i = -1;
                    } else {
                        i = q.indexOf(Integer.valueOf(apkInfo.key));
                    }
                    if (q == null || !q.contains(Integer.valueOf(apkInfo2.key))) {
                        i2 = -1;
                    } else {
                        i2 = q.indexOf(Integer.valueOf(apkInfo2.key));
                    }
                    if (i != -1 && i2 == -1) {
                        return -1;
                    }
                    if (i == -1 && i2 != -1) {
                        return 1;
                    }
                    if (i > i2) {
                        return 1;
                    }
                    if (i >= i2) {
                        return 0;
                    }
                    return -1;
                }
            });
            for (ApkInfo apkInfo : a) {
                ApkInfo d;
                g a2 = g.a();
                if (a2 != null) {
                    d = a2.d(apkInfo.packageName);
                } else {
                    d = null;
                }
                if (d == null) {
                    Object obj = 1;
                    if (this.c.g(apkInfo.key) == 3) {
                        b.a();
                        obj = null;
                    }
                    File file;
                    File file2;
                    if (!this.a.d() || obj == null) {
                        file = new File(b.getFilesDir(), ".b_techain");
                        if (file.exists()) {
                            file2 = new File(file, apkInfo.key + "-" + apkInfo.versionName);
                            if (com.baidu.techain.b.e.a(file2)) {
                                c.a(file2);
                                new StringBuilder().append(file2.getAbsolutePath()).append(" s=").append(file2.delete());
                                b.a();
                            }
                        }
                    } else {
                        file = new File(b.getFilesDir(), ".b_techain");
                        if (!file.exists()) {
                            file.mkdir();
                        }
                        file2 = new File(apkInfo.pkgPath);
                        File file3 = new File(file, apkInfo.key + "-" + apkInfo.versionName);
                        if (!com.baidu.techain.b.e.a(file3)) {
                            com.baidu.techain.b.e.a(file2, file3);
                        }
                        c.a(b, apkInfo.key, file2, file3);
                    }
                    a(apkInfo.key, apkInfo.versionName, null);
                }
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    public final void b(android.content.Context r14) {
        /*
        r13 = this;
        r2 = 0;
        r0 = r13.a;	 Catch:{ Throwable -> 0x0093 }
        r0 = r0.a;	 Catch:{ Throwable -> 0x0093 }
        r1 = "lpcf";
        r3 = 0;
        r0 = r0.getBoolean(r1, r3);	 Catch:{ Throwable -> 0x0093 }
        if (r0 == 0) goto L_0x000f;
    L_0x000e:
        return;
    L_0x000f:
        r0 = "techain_local.cfg";
        r1 = "local";
        r0 = com.baidu.techain.b.e.a(r14, r0, r1);	 Catch:{ Throwable -> 0x0093 }
        r1 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x0093 }
        r1.<init>(r0);	 Catch:{ Throwable -> 0x0093 }
        r4 = new java.util.HashMap;	 Catch:{ Throwable -> 0x0093 }
        r4.<init>();	 Catch:{ Throwable -> 0x0093 }
        r3 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x0093 }
        r3.<init>();	 Catch:{ Throwable -> 0x0093 }
        r0 = r2;
    L_0x0027:
        r5 = r1.length();	 Catch:{ Throwable -> 0x0093 }
        if (r0 >= r5) goto L_0x0081;
    L_0x002d:
        r5 = r1.optJSONObject(r0);	 Catch:{ Throwable -> 0x0093 }
        r6 = "pkgname";
        r6 = r5.optString(r6);	 Catch:{ Throwable -> 0x0093 }
        r7 = "version";
        r7 = r5.optString(r7);	 Catch:{ Throwable -> 0x0093 }
        r8 = "id";
        r8 = r5.optInt(r8);	 Catch:{ Throwable -> 0x0093 }
        if (r8 <= 0) goto L_0x004c;
    L_0x0045:
        r9 = java.lang.Integer.valueOf(r8);	 Catch:{ Throwable -> 0x0093 }
        r3.add(r9);	 Catch:{ Throwable -> 0x0093 }
    L_0x004c:
        r9 = "md5";
        r5 = r5.optString(r9);	 Catch:{ Throwable -> 0x0093 }
        r9 = android.text.TextUtils.isEmpty(r6);	 Catch:{ Throwable -> 0x0093 }
        if (r9 != 0) goto L_0x007e;
    L_0x0058:
        r9 = android.text.TextUtils.isEmpty(r7);	 Catch:{ Throwable -> 0x0093 }
        if (r9 != 0) goto L_0x007e;
    L_0x005e:
        r9 = android.text.TextUtils.isEmpty(r5);	 Catch:{ Throwable -> 0x0093 }
        if (r9 != 0) goto L_0x007e;
    L_0x0064:
        if (r8 <= 0) goto L_0x007e;
    L_0x0066:
        r5 = r5.toLowerCase();	 Catch:{ Throwable -> 0x0093 }
        r9 = new com.baidu.techain.core.ApkInfo;	 Catch:{ Throwable -> 0x0093 }
        r9.<init>();	 Catch:{ Throwable -> 0x0093 }
        r9.packageName = r6;	 Catch:{ Throwable -> 0x0093 }
        r9.versionName = r7;	 Catch:{ Throwable -> 0x0093 }
        r9.key = r8;	 Catch:{ Throwable -> 0x0093 }
        r9.apkMD5 = r5;	 Catch:{ Throwable -> 0x0093 }
        r5 = java.lang.Integer.valueOf(r8);	 Catch:{ Throwable -> 0x0093 }
        r4.put(r5, r9);	 Catch:{ Throwable -> 0x0093 }
    L_0x007e:
        r0 = r0 + 1;
        goto L_0x0027;
    L_0x0081:
        r0 = r13.a;	 Catch:{ Throwable -> 0x0093 }
        r0.a(r3);	 Catch:{ Throwable -> 0x0093 }
        r0 = r4.size();	 Catch:{ Throwable -> 0x0093 }
        if (r0 > 0) goto L_0x0099;
    L_0x008c:
        r0 = r13.a;	 Catch:{ Throwable -> 0x0093 }
        r0.s();	 Catch:{ Throwable -> 0x0093 }
        goto L_0x000e;
    L_0x0093:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x000e;
    L_0x0099:
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0093 }
        r0.<init>();	 Catch:{ Throwable -> 0x0093 }
        r1 = com.baidu.techain.b.e.b();	 Catch:{ Throwable -> 0x0093 }
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x0093 }
        r1 = "p/1/pio";
        r0 = r0.append(r1);	 Catch:{ Throwable -> 0x0093 }
        r1 = r0.toString();	 Catch:{ Throwable -> 0x0093 }
        r3 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x0093 }
        r3.<init>();	 Catch:{ Throwable -> 0x0093 }
        r0 = r4.values();	 Catch:{ Throwable -> 0x0093 }
        r5 = r0.iterator();	 Catch:{ Throwable -> 0x0093 }
    L_0x00bd:
        r0 = r5.hasNext();	 Catch:{ Throwable -> 0x0093 }
        if (r0 == 0) goto L_0x00ee;
    L_0x00c3:
        r0 = r5.next();	 Catch:{ Throwable -> 0x0093 }
        r0 = (com.baidu.techain.core.ApkInfo) r0;	 Catch:{ Throwable -> 0x0093 }
        r6 = new org.json.JSONObject;	 Catch:{ Throwable -> 0x0093 }
        r6.<init>();	 Catch:{ Throwable -> 0x0093 }
        r7 = "pk";
        r8 = r0.packageName;	 Catch:{ Throwable -> 0x0093 }
        r6.put(r7, r8);	 Catch:{ Throwable -> 0x0093 }
        r7 = "m";
        r8 = r0.apkMD5;	 Catch:{ Throwable -> 0x0093 }
        r6.put(r7, r8);	 Catch:{ Throwable -> 0x0093 }
        r7 = "l";
        r8 = r0.key;	 Catch:{ Throwable -> 0x0093 }
        r6.put(r7, r8);	 Catch:{ Throwable -> 0x0093 }
        r7 = "v";
        r0 = r0.versionName;	 Catch:{ Throwable -> 0x0093 }
        r6.put(r7, r0);	 Catch:{ Throwable -> 0x0093 }
        r3.put(r6);	 Catch:{ Throwable -> 0x0093 }
        goto L_0x00bd;
    L_0x00ee:
        r0 = r3.toString();	 Catch:{ Throwable -> 0x0093 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0093 }
        r0 = com.baidu.techain.b.h.a(r14, r1, r0);	 Catch:{ Throwable -> 0x0093 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0093 }
        r1.<init>();	 Catch:{ Throwable -> 0x0093 }
        r1.append(r0);	 Catch:{ Throwable -> 0x0093 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0093 }
        r5 = new org.json.JSONArray;	 Catch:{ Throwable -> 0x0093 }
        r5.<init>(r0);	 Catch:{ Throwable -> 0x0093 }
        r0 = r5.length();	 Catch:{ Throwable -> 0x0093 }
        if (r0 <= 0) goto L_0x0114;
    L_0x010f:
        r0 = r13.a;	 Catch:{ Throwable -> 0x0093 }
        r0.s();	 Catch:{ Throwable -> 0x0093 }
    L_0x0114:
        r1 = r2;
    L_0x0115:
        r0 = r5.length();	 Catch:{ Throwable -> 0x0093 }
        if (r1 >= r0) goto L_0x000e;
    L_0x011b:
        r0 = r5.optJSONObject(r1);	 Catch:{ Throwable -> 0x0093 }
        r3 = "errno";
        r3 = r0.optInt(r3);	 Catch:{ Throwable -> 0x0093 }
        r6 = "l";
        r6 = r0.optInt(r6);	 Catch:{ Throwable -> 0x0093 }
        r7 = 1;
        if (r3 != r7) goto L_0x022b;
    L_0x012e:
        r3 = "detail";
        r0 = r0.optJSONObject(r3);	 Catch:{ Throwable -> 0x0206 }
        r3 = new android.content.pm.PackageInfo;	 Catch:{ Throwable -> 0x0206 }
        r3.<init>();	 Catch:{ Throwable -> 0x0206 }
        r7 = "p";
        r7 = r0.optString(r7);	 Catch:{ Throwable -> 0x0206 }
        r3.packageName = r7;	 Catch:{ Throwable -> 0x0206 }
        r7 = "v";
        r7 = r0.optString(r7);	 Catch:{ Throwable -> 0x0206 }
        r3.versionName = r7;	 Catch:{ Throwable -> 0x0206 }
        r7 = new android.content.pm.ApplicationInfo;	 Catch:{ Throwable -> 0x0206 }
        r7.<init>();	 Catch:{ Throwable -> 0x0206 }
        r8 = "n";
        r8 = r0.optString(r8);	 Catch:{ Throwable -> 0x0206 }
        r7.className = r8;	 Catch:{ Throwable -> 0x0206 }
        r8 = r7.className;	 Catch:{ Throwable -> 0x0206 }
        r8 = android.text.TextUtils.isEmpty(r8);	 Catch:{ Throwable -> 0x0206 }
        if (r8 != 0) goto L_0x017f;
    L_0x015e:
        r8 = r7.className;	 Catch:{ Throwable -> 0x0206 }
        r9 = ".";
        r8 = r8.startsWith(r9);	 Catch:{ Throwable -> 0x0206 }
        if (r8 == 0) goto L_0x017f;
    L_0x0168:
        r8 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0206 }
        r8.<init>();	 Catch:{ Throwable -> 0x0206 }
        r9 = r3.packageName;	 Catch:{ Throwable -> 0x0206 }
        r8 = r8.append(r9);	 Catch:{ Throwable -> 0x0206 }
        r9 = r7.className;	 Catch:{ Throwable -> 0x0206 }
        r8 = r8.append(r9);	 Catch:{ Throwable -> 0x0206 }
        r8 = r8.toString();	 Catch:{ Throwable -> 0x0206 }
        r7.className = r8;	 Catch:{ Throwable -> 0x0206 }
    L_0x017f:
        r8 = "t";
        r8 = r0.optInt(r8);	 Catch:{ Throwable -> 0x0206 }
        r7.theme = r8;	 Catch:{ Throwable -> 0x0206 }
        r3.applicationInfo = r7;	 Catch:{ Throwable -> 0x0206 }
        r7 = "a";
        r7 = r0.optJSONArray(r7);	 Catch:{ Throwable -> 0x0206 }
        if (r7 == 0) goto L_0x020c;
    L_0x0191:
        r0 = r7.length();	 Catch:{ Throwable -> 0x0206 }
        if (r0 <= 0) goto L_0x020c;
    L_0x0197:
        r8 = new java.util.ArrayList;	 Catch:{ Throwable -> 0x0206 }
        r8.<init>();	 Catch:{ Throwable -> 0x0206 }
        r0 = r2;
    L_0x019d:
        r9 = r7.length();	 Catch:{ Throwable -> 0x0206 }
        if (r0 >= r9) goto L_0x0230;
    L_0x01a3:
        r9 = r7.getJSONObject(r0);	 Catch:{ Throwable -> 0x0201 }
        if (r9 == 0) goto L_0x01fe;
    L_0x01a9:
        r10 = new android.content.pm.ActivityInfo;	 Catch:{ Throwable -> 0x0201 }
        r10.<init>();	 Catch:{ Throwable -> 0x0201 }
        r11 = "n";
        r11 = r9.optString(r11);	 Catch:{ Throwable -> 0x0201 }
        r10.name = r11;	 Catch:{ Throwable -> 0x0201 }
        r11 = r10.name;	 Catch:{ Throwable -> 0x0201 }
        r11 = android.text.TextUtils.isEmpty(r11);	 Catch:{ Throwable -> 0x0201 }
        if (r11 != 0) goto L_0x01df;
    L_0x01be:
        r11 = r10.name;	 Catch:{ Throwable -> 0x0201 }
        r12 = ".";
        r11 = r11.startsWith(r12);	 Catch:{ Throwable -> 0x0201 }
        if (r11 == 0) goto L_0x01df;
    L_0x01c8:
        r11 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0201 }
        r11.<init>();	 Catch:{ Throwable -> 0x0201 }
        r12 = r3.packageName;	 Catch:{ Throwable -> 0x0201 }
        r11 = r11.append(r12);	 Catch:{ Throwable -> 0x0201 }
        r12 = r10.name;	 Catch:{ Throwable -> 0x0201 }
        r11 = r11.append(r12);	 Catch:{ Throwable -> 0x0201 }
        r11 = r11.toString();	 Catch:{ Throwable -> 0x0201 }
        r10.name = r11;	 Catch:{ Throwable -> 0x0201 }
    L_0x01df:
        r11 = r3.packageName;	 Catch:{ Throwable -> 0x0201 }
        r10.packageName = r11;	 Catch:{ Throwable -> 0x0201 }
        r11 = "t";
        r11 = r9.optInt(r11);	 Catch:{ Throwable -> 0x0201 }
        r10.theme = r11;	 Catch:{ Throwable -> 0x0201 }
        r11 = "l";
        r9 = r9.optInt(r11);	 Catch:{ Throwable -> 0x0201 }
        r10.labelRes = r9;	 Catch:{ Throwable -> 0x0201 }
        r9 = r10.name;	 Catch:{ Throwable -> 0x0201 }
        r9 = android.text.TextUtils.isEmpty(r9);	 Catch:{ Throwable -> 0x0201 }
        if (r9 != 0) goto L_0x01fe;
    L_0x01fb:
        r8.add(r10);	 Catch:{ Throwable -> 0x0201 }
    L_0x01fe:
        r0 = r0 + 1;
        goto L_0x019d;
    L_0x0201:
        r9 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0206 }
        goto L_0x01fe;
    L_0x0206:
        r0 = move-exception;
        r0 = 0;
        r3 = r0;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0093 }
    L_0x020c:
        r0 = java.lang.Integer.valueOf(r6);	 Catch:{ Throwable -> 0x0093 }
        r0 = r4.get(r0);	 Catch:{ Throwable -> 0x0093 }
        r0 = (com.baidu.techain.core.ApkInfo) r0;	 Catch:{ Throwable -> 0x0093 }
        if (r0 == 0) goto L_0x022b;
    L_0x0218:
        if (r3 == 0) goto L_0x022b;
    L_0x021a:
        r6 = r3.packageName;	 Catch:{ Throwable -> 0x0093 }
        r6 = android.text.TextUtils.isEmpty(r6);	 Catch:{ Throwable -> 0x0093 }
        if (r6 != 0) goto L_0x022b;
    L_0x0222:
        r6 = r0.key;	 Catch:{ Throwable -> 0x0093 }
        r7 = r0.versionName;	 Catch:{ Throwable -> 0x0093 }
        r0 = r0.apkMD5;	 Catch:{ Throwable -> 0x0093 }
        r13.a(r6, r7, r0, r3);	 Catch:{ Throwable -> 0x0093 }
    L_0x022b:
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0115;
    L_0x0230:
        r0 = r8.size();	 Catch:{ Throwable -> 0x0206 }
        if (r0 <= 0) goto L_0x020c;
    L_0x0236:
        r0 = r8.size();	 Catch:{ Throwable -> 0x0206 }
        r0 = new android.content.pm.ActivityInfo[r0];	 Catch:{ Throwable -> 0x0206 }
        r0 = r8.toArray(r0);	 Catch:{ Throwable -> 0x0206 }
        r0 = (android.content.pm.ActivityInfo[]) r0;	 Catch:{ Throwable -> 0x0206 }
        r3.activities = r0;	 Catch:{ Throwable -> 0x0206 }
        goto L_0x020c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.d.b(android.content.Context):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:109:0x0217 A:{SYNTHETIC, Splitter:B:109:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:150:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x021c A:{SYNTHETIC, Splitter:B:112:0x021c} */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x022b A:{SYNTHETIC, Splitter:B:118:0x022b} */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0230 A:{SYNTHETIC, Splitter:B:121:0x0230} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0087 A:{Catch:{ all -> 0x024f }} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0217 A:{SYNTHETIC, Splitter:B:109:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x021c A:{SYNTHETIC, Splitter:B:112:0x021c} */
    /* JADX WARNING: Removed duplicated region for block: B:150:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:115:0x0224 A:{ExcHandler: all (r1_31 'th' java.lang.Throwable), Splitter:B:9:0x001c} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0087 A:{Catch:{ all -> 0x024f }} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0217 A:{SYNTHETIC, Splitter:B:109:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:150:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x021c A:{SYNTHETIC, Splitter:B:112:0x021c} */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x022b A:{SYNTHETIC, Splitter:B:118:0x022b} */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0230 A:{SYNTHETIC, Splitter:B:121:0x0230} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0087 A:{Catch:{ all -> 0x024f }} */
    /* JADX WARNING: Removed duplicated region for block: B:109:0x0217 A:{SYNTHETIC, Splitter:B:109:0x0217} */
    /* JADX WARNING: Removed duplicated region for block: B:112:0x021c A:{SYNTHETIC, Splitter:B:112:0x021c} */
    /* JADX WARNING: Removed duplicated region for block: B:150:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:118:0x022b A:{SYNTHETIC, Splitter:B:118:0x022b} */
    /* JADX WARNING: Removed duplicated region for block: B:121:0x0230 A:{SYNTHETIC, Splitter:B:121:0x0230} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:115:0x0224, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:116:0x0225, code skipped:
            r2 = r0;
            r8 = r1;
            r1 = r0;
            r0 = r8;
     */
    /* JADX WARNING: Missing block: B:140:0x025a, code skipped:
            r2 = r0;
            r8 = r0;
            r0 = r1;
            r1 = r8;
     */
    private void a(int r10, java.lang.String r11, java.lang.String r12, android.content.pm.PackageInfo r13) {
        /*
        r9 = this;
        r3 = 0;
        r0 = 0;
        r4 = 1;
        r1 = r9.c;	 Catch:{ Throwable -> 0x00fe }
        r1 = r1.a(r10);	 Catch:{ Throwable -> 0x00fe }
        if (r1 == 0) goto L_0x001c;
    L_0x000b:
        r1 = r1.versionName;	 Catch:{ Throwable -> 0x00fe }
        r1 = com.baidu.techain.b.e.c(r11, r1);	 Catch:{ Throwable -> 0x00fe }
        if (r1 != 0) goto L_0x0014;
    L_0x0013:
        return;
    L_0x0014:
        r1 = r9.c;	 Catch:{ Throwable -> 0x00f8 }
        r1 = r1.a(r10);	 Catch:{ Throwable -> 0x00f8 }
        if (r1 != 0) goto L_0x00a7;
    L_0x001c:
        r1 = android.text.TextUtils.isEmpty(r11);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        if (r1 != 0) goto L_0x026d;
    L_0x0022:
        r2 = new java.io.File;	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r1 = b;	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r1 = r1.getFilesDir();	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r5 = ".tmp_techain";
        r2.<init>(r1, r5);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r1 = r2.exists();	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        if (r1 != 0) goto L_0x0038;
    L_0x0035:
        r2.mkdir();	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
    L_0x0038:
        r1 = new java.io.File;	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r5.<init>();	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r5 = r5.append(r10);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r6 = "-";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r5 = r5.append(r11);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r6 = ".zip";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r1.<init>(r2, r5);	 Catch:{ Throwable -> 0x0254, all -> 0x0224 }
        r2 = new java.io.FileOutputStream;	 Catch:{ Throwable -> 0x0259, all -> 0x0224 }
        r2.<init>(r1);	 Catch:{ Throwable -> 0x0259, all -> 0x0224 }
        r5 = b;	 Catch:{ Throwable -> 0x0260, all -> 0x0245 }
        r5 = r5.getAssets();	 Catch:{ Throwable -> 0x0260, all -> 0x0245 }
        r6 = java.lang.String.valueOf(r10);	 Catch:{ Throwable -> 0x0260, all -> 0x0245 }
        r0 = r5.open(r6);	 Catch:{ Throwable -> 0x0260, all -> 0x0245 }
        r5 = 8192; // 0x2000 float:1.14794E-41 double:4.0474E-320;
        r5 = new byte[r5];	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
    L_0x0071:
        r6 = r0.read(r5);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r7 = -1;
        if (r6 == r7) goto L_0x0104;
    L_0x0078:
        r7 = 0;
        r2.write(r5, r7, r6);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        goto L_0x0071;
    L_0x007d:
        r3 = move-exception;
        r8 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r8;
    L_0x0082:
        com.baidu.techain.b.e.a();	 Catch:{ all -> 0x024f }
        if (r0 == 0) goto L_0x0215;
    L_0x0087:
        r3 = r0.exists();	 Catch:{ all -> 0x024f }
        if (r3 == 0) goto L_0x0215;
    L_0x008d:
        com.baidu.techain.c.a(r0);	 Catch:{ all -> 0x024f }
        r3 = r9.c;	 Catch:{ all -> 0x024f }
        r3.h(r10);	 Catch:{ all -> 0x024f }
        r0.delete();	 Catch:{ all -> 0x024f }
        if (r2 == 0) goto L_0x009d;
    L_0x009a:
        r2.close();	 Catch:{ IOException -> 0x023c }
    L_0x009d:
        if (r1 == 0) goto L_0x0013;
    L_0x009f:
        r1.close();	 Catch:{ IOException -> 0x00a4 }
        goto L_0x0013;
    L_0x00a4:
        r0 = move-exception;
        goto L_0x0013;
    L_0x00a7:
        r2 = r9.c;	 Catch:{ Throwable -> 0x00f8 }
        r2.h(r10);	 Catch:{ Throwable -> 0x00f8 }
        r2 = new java.io.File;	 Catch:{ Throwable -> 0x00f8 }
        r1 = r1.pkgPath;	 Catch:{ Throwable -> 0x00f8 }
        r2.<init>(r1);	 Catch:{ Throwable -> 0x00f8 }
        r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00f8 }
        r1.<init>();	 Catch:{ Throwable -> 0x00f8 }
        r5 = r2.getAbsolutePath();	 Catch:{ Throwable -> 0x00f8 }
        r1 = r1.append(r5);	 Catch:{ Throwable -> 0x00f8 }
        r5 = ", e=";
        r1 = r1.append(r5);	 Catch:{ Throwable -> 0x00f8 }
        r5 = r2.exists();	 Catch:{ Throwable -> 0x00f8 }
        r1.append(r5);	 Catch:{ Throwable -> 0x00f8 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00f8 }
        r1 = r2.exists();	 Catch:{ Throwable -> 0x00f8 }
        if (r1 == 0) goto L_0x001c;
    L_0x00d6:
        com.baidu.techain.c.a(r2);	 Catch:{ Throwable -> 0x00f8 }
        r1 = r2.delete();	 Catch:{ Throwable -> 0x00f8 }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00f8 }
        r5.<init>();	 Catch:{ Throwable -> 0x00f8 }
        r2 = r2.getAbsolutePath();	 Catch:{ Throwable -> 0x00f8 }
        r2 = r5.append(r2);	 Catch:{ Throwable -> 0x00f8 }
        r5 = " s=";
        r2 = r2.append(r5);	 Catch:{ Throwable -> 0x00f8 }
        r2.append(r1);	 Catch:{ Throwable -> 0x00f8 }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00f8 }
        goto L_0x001c;
    L_0x00f8:
        r1 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x00fe }
        goto L_0x001c;
    L_0x00fe:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x001c;
    L_0x0104:
        r2.flush();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r1.getAbsolutePath();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r6 = 1;
        com.baidu.techain.b.e.a(r5, r6);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = com.baidu.techain.b.o.a(r1);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r5 == 0) goto L_0x011b;
    L_0x0115:
        r6 = r5.equalsIgnoreCase(r12);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r6 != 0) goto L_0x012b;
    L_0x011b:
        r1.delete();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r0 == 0) goto L_0x0123;
    L_0x0120:
        r0.close();	 Catch:{ IOException -> 0x0234 }
    L_0x0123:
        r2.close();	 Catch:{ IOException -> 0x0128 }
        goto L_0x0013;
    L_0x0128:
        r0 = move-exception;
        goto L_0x0013;
    L_0x012b:
        r6 = new com.baidu.techain.core.ApkInfo;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r7 = r1.getAbsolutePath();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r6.<init>(r10, r11, r7);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r6.apkMD5 = r5;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = 1;
        r6.priority = r5;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r9.c;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5.a(r6);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r9.c;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.g(r10);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r6 = 3;
        if (r5 != r6) goto L_0x026a;
    L_0x0147:
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
    L_0x014a:
        r4 = r9.a;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = r4.d();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r4 == 0) goto L_0x01b7;
    L_0x0152:
        if (r3 == 0) goto L_0x01b7;
    L_0x0154:
        r3 = new java.io.File;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = b;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = r4.getFilesDir();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = ".b_techain";
        r3.<init>(r4, r5);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = r3.exists();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r4 != 0) goto L_0x016a;
    L_0x0167:
        r3.mkdir();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
    L_0x016a:
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5.<init>();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.append(r10);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r6 = "-";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.append(r11);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4.<init>(r3, r5);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r3 = com.baidu.techain.b.e.a(r4);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r3 != 0) goto L_0x018f;
    L_0x018c:
        com.baidu.techain.b.e.a(r1, r4);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
    L_0x018f:
        r3 = b;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        com.baidu.techain.c.a(r3, r10, r1, r4);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r8 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r8;
    L_0x0198:
        r3 = r9.c;	 Catch:{ Throwable -> 0x0267 }
        r3 = r3.a(r10);	 Catch:{ Throwable -> 0x0267 }
        if (r3 == 0) goto L_0x01a8;
    L_0x01a0:
        r3 = r3.pkgPath;	 Catch:{ Throwable -> 0x0267 }
        r3 = com.baidu.techain.b.e.c(r3);	 Catch:{ Throwable -> 0x0267 }
        if (r3 != 0) goto L_0x01f7;
    L_0x01a8:
        if (r2 == 0) goto L_0x01ad;
    L_0x01aa:
        r2.close();	 Catch:{ IOException -> 0x0237 }
    L_0x01ad:
        if (r1 == 0) goto L_0x0013;
    L_0x01af:
        r1.close();	 Catch:{ IOException -> 0x01b4 }
        goto L_0x0013;
    L_0x01b4:
        r0 = move-exception;
        goto L_0x0013;
    L_0x01b7:
        r3 = new java.io.File;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = b;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = r4.getFilesDir();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = ".b_techain";
        r3.<init>(r4, r5);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4 = r3.exists();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r4 == 0) goto L_0x01f2;
    L_0x01ca:
        r4 = new java.io.File;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5.<init>();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.append(r10);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r6 = "-";
        r5 = r5.append(r6);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.append(r11);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r5 = r5.toString();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4.<init>(r3, r5);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r3 = com.baidu.techain.b.e.a(r4);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        if (r3 == 0) goto L_0x01f2;
    L_0x01ec:
        com.baidu.techain.c.a(r4);	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
        r4.delete();	 Catch:{ Throwable -> 0x007d, all -> 0x024a }
    L_0x01f2:
        r8 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r8;
        goto L_0x0198;
    L_0x01f7:
        r3 = r9.a(r10, r11, r13);	 Catch:{ Throwable -> 0x0267 }
        if (r3 == 0) goto L_0x0206;
    L_0x01fd:
        r3 = d;	 Catch:{ Throwable -> 0x0267 }
        r4 = java.lang.Integer.valueOf(r10);	 Catch:{ Throwable -> 0x0267 }
        r3.add(r4);	 Catch:{ Throwable -> 0x0267 }
    L_0x0206:
        if (r2 == 0) goto L_0x020b;
    L_0x0208:
        r2.close();	 Catch:{ IOException -> 0x023a }
    L_0x020b:
        if (r1 == 0) goto L_0x0013;
    L_0x020d:
        r1.close();	 Catch:{ IOException -> 0x0212 }
        goto L_0x0013;
    L_0x0212:
        r0 = move-exception;
        goto L_0x0013;
    L_0x0215:
        if (r2 == 0) goto L_0x021a;
    L_0x0217:
        r2.close();	 Catch:{ IOException -> 0x023f }
    L_0x021a:
        if (r1 == 0) goto L_0x0013;
    L_0x021c:
        r1.close();	 Catch:{ IOException -> 0x0221 }
        goto L_0x0013;
    L_0x0221:
        r0 = move-exception;
        goto L_0x0013;
    L_0x0224:
        r1 = move-exception;
        r2 = r0;
        r8 = r1;
        r1 = r0;
        r0 = r8;
    L_0x0229:
        if (r1 == 0) goto L_0x022e;
    L_0x022b:
        r1.close();	 Catch:{ IOException -> 0x0241 }
    L_0x022e:
        if (r2 == 0) goto L_0x0233;
    L_0x0230:
        r2.close();	 Catch:{ IOException -> 0x0243 }
    L_0x0233:
        throw r0;
    L_0x0234:
        r0 = move-exception;
        goto L_0x0123;
    L_0x0237:
        r0 = move-exception;
        goto L_0x01ad;
    L_0x023a:
        r0 = move-exception;
        goto L_0x020b;
    L_0x023c:
        r0 = move-exception;
        goto L_0x009d;
    L_0x023f:
        r0 = move-exception;
        goto L_0x021a;
    L_0x0241:
        r1 = move-exception;
        goto L_0x022e;
    L_0x0243:
        r1 = move-exception;
        goto L_0x0233;
    L_0x0245:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0229;
    L_0x024a:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
        goto L_0x0229;
    L_0x024f:
        r0 = move-exception;
        r8 = r1;
        r1 = r2;
        r2 = r8;
        goto L_0x0229;
    L_0x0254:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
        goto L_0x0082;
    L_0x0259:
        r2 = move-exception;
        r2 = r0;
        r8 = r0;
        r0 = r1;
        r1 = r8;
        goto L_0x0082;
    L_0x0260:
        r3 = move-exception;
        r8 = r1;
        r1 = r2;
        r2 = r0;
        r0 = r8;
        goto L_0x0082;
    L_0x0267:
        r3 = move-exception;
        goto L_0x0082;
    L_0x026a:
        r3 = r4;
        goto L_0x014a;
    L_0x026d:
        r1 = r0;
        r2 = r0;
        goto L_0x0198;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.d.a(int, java.lang.String, java.lang.String, android.content.pm.PackageInfo):void");
    }

    public final synchronized boolean a(int i, String str, PackageInfo packageInfo) {
        return a(i, str, false, packageInfo);
    }

    private synchronized boolean a(int i, String str, boolean z, PackageInfo packageInfo) {
        boolean z2;
        try {
            new StringBuilder().append(i);
            b.a();
            if (!z || this.c.c(i) == 1) {
                ApkInfo a = this.c.a(i);
                Map hashMap;
                if (a == null) {
                    b.a();
                    hashMap = new HashMap();
                    hashMap.put("0", Integer.valueOf(1));
                    hashMap.put(BuildConfig.VERSION_NAME, String.valueOf(i));
                    hashMap.put("2", str);
                    if (!z) {
                        com.baidu.techain.b.e.a(b, "1003105", hashMap);
                    }
                    z2 = false;
                } else {
                    File file = new File(a.pkgPath);
                    file.getAbsolutePath();
                    b.a();
                    if (com.baidu.techain.b.e.a(file)) {
                        if (packageInfo != null) {
                            a.cloudPkgInfo = packageInfo;
                        }
                        g a2 = g.a(b.getApplicationContext());
                        b.a();
                        if (a2.a(a, false)) {
                            b.a();
                            String str2;
                            try {
                                String str3;
                                String str4;
                                String[] g = com.baidu.techain.b.e.g(b);
                                if (g == null || g.length != 2 || TextUtils.isEmpty(g[0]) || TextUtils.isEmpty(g[1])) {
                                    str3 = "925fc15df8a49bed0b3eca8d2b44cb7b";
                                    str4 = "3";
                                } else {
                                    str2 = g[0];
                                    str3 = g[1];
                                    str4 = str2;
                                }
                                new StringBuilder("ak=").append(str4).append(", sk=").append(str3);
                                b.a();
                                a = a2.c(a.pkgPath);
                                f fVar = (f) a.classLoader;
                                Class a3 = fVar.a("com.baidu.techain.engine.EngineImpl");
                                if (a3 == null) {
                                    b.a();
                                    Class a4 = fVar.a("java.lang.String");
                                    Map hashMap2 = new HashMap();
                                    hashMap2.put("0", Integer.valueOf(9));
                                    hashMap2.put(BuildConfig.VERSION_NAME, String.valueOf(i));
                                    hashMap2.put("2", str);
                                    hashMap2.put("3", Base64.encodeToString(("classloader=" + fVar + ",StringClass=" + a4).getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
                                    if (!z) {
                                        com.baidu.techain.b.e.a(b, "1003105", hashMap2);
                                    }
                                    this.c.f(i);
                                    z2 = false;
                                } else {
                                    Object invoke = a3.getDeclaredMethod("getInstance", new Class[]{Context.class}).invoke(a3, new Object[]{b});
                                    new StringBuilder("ai=").append(invoke);
                                    b.a();
                                    com.baidu.techain.b.e.a(invoke, "setSecurityVerifyInfo", new Class[]{String.class, String.class}, str4, str3);
                                    if (((Boolean) com.baidu.techain.b.e.a(invoke, "init", new Class[]{Integer.TYPE, Boolean.TYPE}, Integer.valueOf(0), Boolean.valueOf(this.a.o()))).booleanValue()) {
                                        a.initStatus = 1;
                                        a.apkParseSuc = 1;
                                        this.c.a(a);
                                        b.a();
                                        int g2 = this.c.g(a.key);
                                        new StringBuilder("plugin now loadStatus :").append(a.key).append(" ").append(g2);
                                        b.a();
                                        if (g2 < 3 && g2 != -1) {
                                            this.c.b(a.key, g2 + 1);
                                        }
                                        b(a.key);
                                        hashMap = new HashMap();
                                        hashMap.put("0", Integer.valueOf(0));
                                        hashMap.put(BuildConfig.VERSION_NAME, Integer.valueOf(i));
                                        hashMap.put("2", str);
                                        if (!z) {
                                            com.baidu.techain.b.e.a(b, "1003105", hashMap);
                                        }
                                        com.baidu.techain.b.e.c(b);
                                        z2 = true;
                                    } else {
                                        hashMap = new HashMap();
                                        hashMap.put("0", Integer.valueOf(6));
                                        hashMap.put(BuildConfig.VERSION_NAME, String.valueOf(i));
                                        hashMap.put("2", str);
                                        if (!z) {
                                            com.baidu.techain.b.e.a(b, "1003105", hashMap);
                                        }
                                        this.c.f(i);
                                        a2.a(a.pkgPath);
                                        b.a();
                                        z2 = false;
                                    }
                                }
                            } catch (Throwable th) {
                                try {
                                    b.b();
                                    this.c.f(i);
                                    str2 = i.a(b, b.a(th), a.packageName);
                                    a2.a(a.pkgPath);
                                    Map hashMap3 = new HashMap();
                                    hashMap3.put("0", Integer.valueOf(7));
                                    hashMap3.put(BuildConfig.VERSION_NAME, String.valueOf(i));
                                    hashMap3.put("2", str);
                                    hashMap3.put("3", Base64.encodeToString(str2.getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
                                    if (!z) {
                                        com.baidu.techain.b.e.a(b, "1003105", hashMap3);
                                    }
                                } catch (Throwable th2) {
                                    com.baidu.techain.b.e.a();
                                }
                                z2 = false;
                            }
                        } else {
                            this.c.f(i);
                            a2.a(a.pkgPath);
                            hashMap = new HashMap();
                            hashMap.put("0", Integer.valueOf(4));
                            hashMap.put(BuildConfig.VERSION_NAME, String.valueOf(i));
                            hashMap.put("2", str);
                            if (!z) {
                                com.baidu.techain.b.e.a(b, "1003105", hashMap);
                            }
                            b.a();
                            z2 = false;
                        }
                    } else {
                        b.a();
                        this.c.f(i);
                        hashMap = new HashMap();
                        hashMap.put("0", Integer.valueOf(3));
                        hashMap.put(BuildConfig.VERSION_NAME, String.valueOf(i));
                        hashMap.put("2", str);
                        if (!z) {
                            com.baidu.techain.b.e.a(b, "1003105", hashMap);
                        }
                        z2 = false;
                    }
                }
            } else {
                z2 = false;
            }
        } catch (Throwable th3) {
            com.baidu.techain.b.e.a();
            z2 = false;
        }
        return z2;
    }

    public final boolean a(ApkInfo apkInfo, String str) {
        new StringBuilder().append(apkInfo);
        b.a();
        if (apkInfo == null) {
            return false;
        }
        File file = new File(apkInfo.pkgPath);
        try {
            Map hashMap;
            if (com.baidu.techain.b.e.a(file)) {
                if (!this.c.b(apkInfo.key)) {
                    this.c.a(apkInfo);
                }
                g a = g.a(b.getApplicationContext());
                this.c.a(apkInfo.key, 1);
                b(apkInfo.packageName);
                if (a.a(apkInfo, true)) {
                    Object obj;
                    Object obj2;
                    String[] g = com.baidu.techain.b.e.g(b);
                    if (g == null || g.length != 2 || TextUtils.isEmpty(g[0]) || TextUtils.isEmpty(g[1])) {
                        String obj3 = "3";
                        String obj22 = "925fc15df8a49bed0b3eca8d2b44cb7b";
                    } else {
                        obj3 = g[0];
                        obj22 = g[1];
                    }
                    apkInfo = a.c(apkInfo.pkgPath);
                    if (apkInfo == null) {
                        return false;
                    }
                    f fVar = (f) apkInfo.classLoader;
                    Class a2 = fVar.a("com.baidu.techain.engine.EngineImpl");
                    if (a2 == null) {
                        b.a();
                        Class a3 = fVar.a("java.lang.String");
                        Map hashMap2 = new HashMap();
                        hashMap2.put("0", Integer.valueOf(6));
                        hashMap2.put(BuildConfig.VERSION_NAME, apkInfo.key);
                        hashMap2.put("2", apkInfo.versionName);
                        hashMap2.put("3", Base64.encodeToString(("classloader=" + fVar + ",StringClass=" + a3).getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
                        com.baidu.techain.b.e.a(b, "1003106", hashMap2);
                        c.a(file);
                        file.delete();
                        this.c.a(apkInfo.key, 0);
                        return false;
                    }
                    Object invoke = a2.getDeclaredMethod("getInstance", new Class[]{Context.class}).invoke(a2, new Object[]{b});
                    com.baidu.techain.b.e.a(invoke, "setSecurityVerifyInfo", new Class[]{String.class, String.class}, obj3, obj22);
                    if (((Boolean) com.baidu.techain.b.e.a(invoke, "init", new Class[]{Integer.TYPE, Boolean.TYPE}, Integer.valueOf(0), Boolean.valueOf(this.a.o()))).booleanValue()) {
                        if (apkInfo.isMem) {
                            c.a(file);
                            file.delete();
                            com.baidu.techain.b.e.d(apkInfo.dataDir);
                            if (g.b != null) {
                                g.b.add(Integer.valueOf(apkInfo.key));
                            }
                        }
                        b.a();
                        try {
                            File file2;
                            ApkInfo a4 = this.c.a(apkInfo.key);
                            new StringBuilder().append(a4);
                            b.a();
                            if (a4 == null || a4.versionName.equals(apkInfo.versionName)) {
                                file2 = null;
                            } else {
                                file2 = new File(a4.pkgPath);
                            }
                            apkInfo.initStatus = 1;
                            apkInfo.apkParseSuc = 1;
                            long a5 = this.c.a(apkInfo);
                            if (a5 > 0 && file2 != null && file2.exists()) {
                                c.a(file2);
                                new StringBuilder().append(file2.delete());
                                b.a();
                            }
                            b(apkInfo.key);
                            new StringBuilder().append(a5).append(", c=").append(this.c.a(apkInfo.key, 0));
                            b.a();
                            com.baidu.techain.b.e.c(b);
                            hashMap = new HashMap();
                            hashMap.put("0", Integer.valueOf(0));
                            hashMap.put(BuildConfig.VERSION_NAME, apkInfo.key);
                            hashMap.put("2", apkInfo.versionName);
                            com.baidu.techain.b.e.a(b, "1003106", hashMap);
                        } catch (Throwable th) {
                            com.baidu.techain.b.e.a();
                        }
                        return true;
                    }
                    b.a();
                    c.a(file);
                    b(apkInfo.packageName);
                    file.delete();
                    a(apkInfo.key, apkInfo.versionName, true, null);
                    this.c.a(apkInfo.key, 0);
                    hashMap = new HashMap();
                    hashMap.put("0", Integer.valueOf(4));
                    hashMap.put(BuildConfig.VERSION_NAME, apkInfo.key);
                    hashMap.put("2", apkInfo.versionName);
                    com.baidu.techain.b.e.a(b, "1003106", hashMap);
                    return false;
                }
                hashMap = new HashMap();
                hashMap.put("0", Integer.valueOf(2));
                hashMap.put(BuildConfig.VERSION_NAME, apkInfo.key);
                hashMap.put("2", apkInfo.versionName);
                com.baidu.techain.b.e.a(b, "1003106", hashMap);
                b.a();
                c.a(file);
                file.delete();
                a(apkInfo.key, apkInfo.versionName, true, null);
                this.c.a(apkInfo.key, 0);
                return false;
            }
            b.a();
            hashMap = new HashMap();
            hashMap.put("0", Integer.valueOf(1));
            hashMap.put(BuildConfig.VERSION_NAME, apkInfo.key);
            hashMap.put("2", apkInfo.versionName);
            hashMap.put("3", Base64.encodeToString(("nowTime:" + System.currentTimeMillis() + ", nowFileInfo: path=" + file.getAbsolutePath() + ", exists=" + file.exists() + ", canRead=" + file.canRead() + ", isFile=" + file.isFile() + ",length" + file.length() + " - " + str).getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
            com.baidu.techain.b.e.a(b, "1003106", hashMap);
            return false;
        } catch (Throwable th2) {
            try {
                th2.getMessage();
                b.a();
                c.a(file);
                b(apkInfo.packageName);
                file.delete();
                a(apkInfo.key, apkInfo.versionName, true, null);
                this.c.a(apkInfo.key, 0);
                Map hashMap3 = new HashMap();
                hashMap3.put("0", Integer.valueOf(5));
                hashMap3.put(BuildConfig.VERSION_NAME, apkInfo.key);
                hashMap3.put("2", apkInfo.versionName);
                hashMap3.put("3", Base64.encodeToString(b.a(th2).getBytes(), 0).replace(IOUtils.LINE_SEPARATOR_UNIX, "").replace("\t", "").replace("\r", ""));
                com.baidu.techain.b.e.a(b, "1003106", hashMap3);
            } catch (Throwable th3) {
                com.baidu.techain.b.e.a();
            }
            return false;
        }
    }

    public final void a(int i, String str, Callback callback, Class<?>[] clsArr, Object... objArr) {
        try {
            new StringBuilder().append(str);
            b.a();
            Map hashMap = new HashMap();
            hashMap.put("0", Integer.toString(i));
            hashMap.put(BuildConfig.VERSION_NAME, !TextUtils.isEmpty(str) ? str : " ");
            hashMap.put("2", "0");
            com.baidu.techain.b.e.a(b, "1003136", hashMap);
            if (!TextUtils.isEmpty(str)) {
                final Callback callback2 = callback;
                final int i2 = i;
                final String str2 = str;
                final Class<?>[] clsArr2 = clsArr;
                final Object[] objArr2 = objArr;
                new Thread() {
                    /* JADX WARNING: Removed duplicated region for block: B:14:0x004b A:{ExcHandler: NoSuchMethodException (r0_20 'e' java.lang.NoSuchMethodException), Splitter:B:18:0x0064} */
                    /* JADX WARNING: Removed duplicated region for block: B:24:0x008a A:{ExcHandler: InvocationTargetException (r0_23 'e' java.lang.reflect.InvocationTargetException), Splitter:B:1:0x0008} */
                    /* JADX WARNING: Removed duplicated region for block: B:44:0x0102 A:{ExcHandler: IllegalAccessException (r0_26 'e' java.lang.IllegalAccessException), Splitter:B:1:0x0008} */
                    /* JADX WARNING: Removed duplicated region for block: B:53:0x0127 A:{ExcHandler: IllegalArgumentException (r0_29 'e' java.lang.IllegalArgumentException), Splitter:B:1:0x0008} */
                    /* JADX WARNING: Removed duplicated region for block: B:44:0x0102 A:{ExcHandler: IllegalAccessException (r0_26 'e' java.lang.IllegalAccessException), Splitter:B:1:0x0008} */
                    /* JADX WARNING: Removed duplicated region for block: B:53:0x0127 A:{ExcHandler: IllegalArgumentException (r0_29 'e' java.lang.IllegalArgumentException), Splitter:B:1:0x0008} */
                    /* JADX WARNING: Removed duplicated region for block: B:24:0x008a A:{ExcHandler: InvocationTargetException (r0_23 'e' java.lang.reflect.InvocationTargetException), Splitter:B:1:0x0008} */
                    /* JADX WARNING: Removed duplicated region for block: B:14:0x004b A:{ExcHandler: NoSuchMethodException (r0_20 'e' java.lang.NoSuchMethodException), Splitter:B:18:0x0064} */
                    /* JADX WARNING: Failed to process nested try/catch */
                    /* JADX WARNING: Missing block: B:14:0x004b, code skipped:
            r0 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:15:0x004c, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
                    /* JADX WARNING: Missing block: B:16:0x0054, code skipped:
            if (r2 != null) goto L_0x0056;
     */
                    /* JADX WARNING: Missing block: B:17:0x0056, code skipped:
            r2.onError(java.lang.Integer.valueOf(2));
     */
                    /* JADX WARNING: Missing block: B:24:0x008a, code skipped:
            r0 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:25:0x008b, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
                    /* JADX WARNING: Missing block: B:26:0x0093, code skipped:
            if (r2 != null) goto L_0x0095;
     */
                    /* JADX WARNING: Missing block: B:27:0x0095, code skipped:
            r2.onError(java.lang.Integer.valueOf(2));
     */
                    /* JADX WARNING: Missing block: B:44:0x0102, code skipped:
            r0 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:45:0x0103, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
                    /* JADX WARNING: Missing block: B:46:0x010b, code skipped:
            if (r2 != null) goto L_0x010d;
     */
                    /* JADX WARNING: Missing block: B:47:0x010d, code skipped:
            r2.onError(java.lang.Integer.valueOf(2));
     */
                    /* JADX WARNING: Missing block: B:53:0x0127, code skipped:
            r0 = move-exception;
     */
                    /* JADX WARNING: Missing block: B:54:0x0128, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
                    /* JADX WARNING: Missing block: B:55:0x0130, code skipped:
            if (r2 != null) goto L_0x0132;
     */
                    /* JADX WARNING: Missing block: B:56:0x0132, code skipped:
            r2.onError(java.lang.Integer.valueOf(2));
     */
                    /* JADX WARNING: Missing block: B:71:?, code skipped:
            com.baidu.techain.b.e.a();
     */
                    /* JADX WARNING: Missing block: B:76:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:77:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:79:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:80:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:82:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:83:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:84:?, code skipped:
            return;
     */
                    /* JADX WARNING: Missing block: B:85:?, code skipped:
            return;
     */
                    public final void run() {
                        /*
                        r13 = this;
                        r0 = 0;
                        r12 = 3;
                        r11 = 2;
                        r1 = 1;
                        r2 = 0;
                        super.run();
                        r3 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r3 == 0) goto L_0x0014;
                    L_0x000c:
                        r3 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = 0;
                        r4 = new java.lang.Object[r4];	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3.onBegin(r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                    L_0x0014:
                        r3 = com.baidu.techain.core.d.this;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3.c;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = r3;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3.d(r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        com.baidu.techain.b.a();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r3 == 0) goto L_0x0064;
                    L_0x0025:
                        r3 = java.lang.System.currentTimeMillis();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                    L_0x0029:
                        r5 = com.baidu.techain.core.d.this;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = r5.c;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r6 = r3;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = r5.d(r6);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r5 == 0) goto L_0x0064;
                    L_0x0037:
                        r5 = java.lang.System.currentTimeMillis();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = r5 - r3;
                        r7 = 10000; // 0x2710 float:1.4013E-41 double:4.9407E-320;
                        r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1));
                        if (r5 >= 0) goto L_0x0064;
                    L_0x0042:
                        com.baidu.techain.b.a();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
                        android.os.SystemClock.sleep(r5);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        goto L_0x0029;
                    L_0x004b:
                        r0 = move-exception;
                        r0.getMessage();
                        com.baidu.techain.b.b();
                        r0 = r2;
                        if (r0 == 0) goto L_0x0063;
                    L_0x0056:
                        r0 = r2;
                        r1 = new java.lang.Object[r1];
                        r3 = java.lang.Integer.valueOf(r11);
                        r1[r2] = r3;
                        r0.onError(r1);
                    L_0x0063:
                        return;
                    L_0x0064:
                        com.baidu.techain.b.a();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = com.baidu.techain.core.d.this;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3.c;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = r3;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3.d(r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r3 == 0) goto L_0x00a3;
                    L_0x0075:
                        r0 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r0 == 0) goto L_0x0063;
                    L_0x0079:
                        r0 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = 1;
                        r3 = new java.lang.Object[r3];	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = 0;
                        r5 = 3;
                        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3[r4] = r5;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0.onError(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        goto L_0x0063;
                    L_0x008a:
                        r0 = move-exception;
                        r0.getMessage();
                        com.baidu.techain.b.b();
                        r0 = r2;
                        if (r0 == 0) goto L_0x0063;
                    L_0x0095:
                        r0 = r2;
                        r1 = new java.lang.Object[r1];
                        r3 = java.lang.Integer.valueOf(r11);
                        r1[r2] = r3;
                        r0.onError(r1);
                        goto L_0x0063;
                    L_0x00a3:
                        r3 = com.baidu.techain.core.d.this;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3.e;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r3 != 0) goto L_0x00b5;
                    L_0x00ab:
                        r3 = 3;
                        com.baidu.techain.core.d.a(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = com.baidu.techain.core.d.this;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = 0;
                        r3.a(r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                    L_0x00b5:
                        r3 = com.baidu.techain.core.d.b;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3.getApplicationContext();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = com.baidu.techain.core.g.a(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = java.lang.System.currentTimeMillis();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                    L_0x00c3:
                        r7 = java.lang.System.currentTimeMillis();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r7 = r7 - r5;
                        r9 = 120000; // 0x1d4c0 float:1.68156E-40 double:5.9288E-319;
                        r3 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
                        if (r3 > 0) goto L_0x01b0;
                    L_0x00cf:
                        com.baidu.techain.b.a();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = com.baidu.techain.core.d.this;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = r0.c;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r3;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = r0.a(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r0 == 0) goto L_0x0121;
                    L_0x00e0:
                        r3 = r0.packageName;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r4.d(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r3 == 0) goto L_0x011c;
                    L_0x00e8:
                        r3 = r0;
                        r0 = r1;
                    L_0x00ea:
                        if (r0 != 0) goto L_0x0141;
                    L_0x00ec:
                        r0 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r0 == 0) goto L_0x0063;
                    L_0x00f0:
                        r0 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = 1;
                        r3 = new java.lang.Object[r3];	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = 0;
                        r5 = 4;
                        r5 = java.lang.Integer.valueOf(r5);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3[r4] = r5;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0.onError(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        goto L_0x0063;
                    L_0x0102:
                        r0 = move-exception;
                        r0.getMessage();
                        com.baidu.techain.b.b();
                        r0 = r2;
                        if (r0 == 0) goto L_0x0063;
                    L_0x010d:
                        r0 = r2;
                        r1 = new java.lang.Object[r1];
                        r3 = java.lang.Integer.valueOf(r11);
                        r1[r2] = r3;
                        r0.onError(r1);
                        goto L_0x0063;
                    L_0x011c:
                        r3 = r0.initStatus;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r7 = -1;
                        if (r3 == r7) goto L_0x01b0;
                    L_0x0121:
                        r7 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
                        android.os.SystemClock.sleep(r7);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        goto L_0x00c3;
                    L_0x0127:
                        r0 = move-exception;
                        r0.getMessage();
                        com.baidu.techain.b.b();
                        r0 = r2;
                        if (r0 == 0) goto L_0x0063;
                    L_0x0132:
                        r0 = r2;
                        r1 = new java.lang.Object[r1];
                        r3 = java.lang.Integer.valueOf(r11);
                        r1[r2] = r3;
                        r0.onError(r1);
                        goto L_0x0063;
                    L_0x0141:
                        r0 = r3.packageName;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = r4.d(r0);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = r0.classLoader;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = (com.baidu.techain.core.f) r0;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = "com.baidu.techain.engine.EngineImpl";
                        r0 = r0.a(r3);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = "getInstance";
                        r4 = 1;
                        r4 = new java.lang.Class[r4];	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = 0;
                        r6 = android.content.Context.class;
                        r4[r5] = r6;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r0.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = 1;
                        r4 = new java.lang.Object[r4];	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = 0;
                        r6 = com.baidu.techain.core.d.b;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4[r5] = r6;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = r3.invoke(r0, r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = r4;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = r5;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = r6;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r0 = com.baidu.techain.b.e.a(r0, r3, r4, r5);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x01ab, NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127 }
                        r3.<init>();	 Catch:{ Throwable -> 0x01ab, NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127 }
                        r3.append(r0);	 Catch:{ Throwable -> 0x01ab, NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127 }
                        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x01ab, NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127 }
                    L_0x0180:
                        r3 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        if (r3 == 0) goto L_0x0063;
                    L_0x0184:
                        r3 = r2;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r4 = 1;
                        r4 = new java.lang.Object[r4];	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r5 = 0;
                        r4[r5] = r0;	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        r3.onEnd(r4);	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        goto L_0x0063;
                    L_0x0191:
                        r0 = move-exception;
                        r0.getMessage();
                        com.baidu.techain.b.b();
                        r0 = r2;
                        if (r0 == 0) goto L_0x0063;
                    L_0x019c:
                        r0 = r2;
                        r1 = new java.lang.Object[r1];
                        r3 = java.lang.Integer.valueOf(r12);
                        r1[r2] = r3;
                        r0.onError(r1);
                        goto L_0x0063;
                    L_0x01ab:
                        r3 = move-exception;
                        com.baidu.techain.b.e.a();	 Catch:{ NoSuchMethodException -> 0x004b, InvocationTargetException -> 0x008a, IllegalAccessException -> 0x0102, IllegalArgumentException -> 0x0127, Throwable -> 0x0191 }
                        goto L_0x0180;
                    L_0x01b0:
                        r3 = r0;
                        r0 = r2;
                        goto L_0x00ea;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.d$AnonymousClass3.run():void");
                    }
                }.start();
            } else if (callback != null) {
                callback.onError(Integer.valueOf(1));
            }
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:11:0x006a A:{ExcHandler: NoSuchMethodException (r0_31 'e' java.lang.NoSuchMethodException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x008b A:{ExcHandler: InvocationTargetException (r0_33 'e' java.lang.reflect.InvocationTargetException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00ae A:{ExcHandler: IllegalAccessException (r0_35 'e' java.lang.IllegalAccessException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00df A:{ExcHandler: IllegalArgumentException (r0_37 'e' java.lang.IllegalArgumentException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x006a A:{ExcHandler: NoSuchMethodException (r0_31 'e' java.lang.NoSuchMethodException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x008b A:{ExcHandler: InvocationTargetException (r0_33 'e' java.lang.reflect.InvocationTargetException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x00ae A:{ExcHandler: IllegalAccessException (r0_35 'e' java.lang.IllegalAccessException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00df A:{ExcHandler: IllegalArgumentException (r0_37 'e' java.lang.IllegalArgumentException), Splitter:B:7:0x004b} */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing block: B:11:0x006a, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:12:0x006b, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
    /* JADX WARNING: Missing block: B:17:0x008b, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:18:0x008c, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
    /* JADX WARNING: Missing block: B:23:0x00ae, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:24:0x00af, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
    /* JADX WARNING: Missing block: B:33:0x00df, code skipped:
            r0 = move-exception;
     */
    /* JADX WARNING: Missing block: B:34:0x00e0, code skipped:
            r0.getMessage();
            com.baidu.techain.b.b();
     */
    /* JADX WARNING: Missing block: B:45:?, code skipped:
            com.baidu.techain.b.e.a();
     */
    /* JADX WARNING: Missing block: B:48:?, code skipped:
            return new android.util.Pair(java.lang.Integer.valueOf(2), null);
     */
    /* JADX WARNING: Missing block: B:49:?, code skipped:
            return new android.util.Pair(java.lang.Integer.valueOf(2), null);
     */
    /* JADX WARNING: Missing block: B:50:?, code skipped:
            return new android.util.Pair(java.lang.Integer.valueOf(2), null);
     */
    /* JADX WARNING: Missing block: B:51:?, code skipped:
            return new android.util.Pair(java.lang.Integer.valueOf(2), null);
     */
    public final android.util.Pair<java.lang.Integer, java.lang.Object> a(int r9, java.lang.String r10, java.lang.Class<?>[] r11, java.lang.Object... r12) {
        /*
        r8 = this;
        r7 = 3;
        r6 = 2;
        r1 = 1;
        r2 = 0;
        r5 = 0;
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r0.append(r10);
        com.baidu.techain.b.a();
        r3 = new java.util.HashMap;
        r3.<init>();
        r0 = "0";
        r4 = java.lang.Integer.toString(r9);
        r3.put(r0, r4);
        r4 = "1";
        r0 = android.text.TextUtils.isEmpty(r10);
        if (r0 != 0) goto L_0x0048;
    L_0x0026:
        r0 = r10;
    L_0x0027:
        r3.put(r4, r0);
        r0 = "2";
        r4 = "1";
        r3.put(r0, r4);
        r0 = b;
        r4 = "1003136";
        com.baidu.techain.b.e.a(r0, r4, r3);
        r0 = android.text.TextUtils.isEmpty(r10);
        if (r0 == 0) goto L_0x004b;
    L_0x003e:
        r0 = new android.util.Pair;
        r1 = java.lang.Integer.valueOf(r1);
        r0.<init>(r1, r5);
    L_0x0047:
        return r0;
    L_0x0048:
        r0 = " ";
        goto L_0x0027;
    L_0x004b:
        r0 = r8.c;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = r0.d(r9);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r3 = new java.lang.StringBuilder;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r3.<init>();	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r3.append(r0);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        com.baidu.techain.b.a();	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        if (r0 == 0) goto L_0x007b;
    L_0x005e:
        r0 = new android.util.Pair;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = 3;
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2 = 0;
        r0.<init>(r1, r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        goto L_0x0047;
    L_0x006a:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        r0 = new android.util.Pair;
        r1 = java.lang.Integer.valueOf(r6);
        r0.<init>(r1, r5);
        goto L_0x0047;
    L_0x007b:
        r0 = r8.e;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        if (r0 != 0) goto L_0x009c;
    L_0x007f:
        r0 = new android.util.Pair;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = 3;
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2 = 0;
        r0.<init>(r1, r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        goto L_0x0047;
    L_0x008b:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        r0 = new android.util.Pair;
        r1 = java.lang.Integer.valueOf(r6);
        r0.<init>(r1, r5);
        goto L_0x0047;
    L_0x009c:
        r3 = com.baidu.techain.core.g.a();	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        if (r3 != 0) goto L_0x00bf;
    L_0x00a2:
        r0 = new android.util.Pair;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = 3;
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2 = 0;
        r0.<init>(r1, r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        goto L_0x0047;
    L_0x00ae:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        r0 = new android.util.Pair;
        r1 = java.lang.Integer.valueOf(r6);
        r0.<init>(r1, r5);
        goto L_0x0047;
    L_0x00bf:
        r0 = r8.c;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r4 = r0.a(r9);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        if (r4 == 0) goto L_0x014d;
    L_0x00c7:
        r0 = r4.packageName;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = r3.d(r0);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        if (r0 == 0) goto L_0x014d;
    L_0x00cf:
        r0 = r1;
    L_0x00d0:
        if (r0 != 0) goto L_0x00f1;
    L_0x00d2:
        r0 = new android.util.Pair;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = 4;
        r1 = java.lang.Integer.valueOf(r1);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2 = 0;
        r0.<init>(r1, r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        goto L_0x0047;
    L_0x00df:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        r0 = new android.util.Pair;
        r1 = java.lang.Integer.valueOf(r6);
        r0.<init>(r1, r5);
        goto L_0x0047;
    L_0x00f1:
        r0 = r4.packageName;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = r3.d(r0);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = r0.classLoader;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = (com.baidu.techain.core.f) r0;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = "com.baidu.techain.engine.EngineImpl";
        r0 = r0.a(r1);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = "getInstance";
        r2 = 1;
        r2 = new java.lang.Class[r2];	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r3 = 0;
        r4 = android.content.Context.class;
        r2[r3] = r4;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = r0.getDeclaredMethod(r1, r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2 = 1;
        r2 = new java.lang.Object[r2];	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r3 = 0;
        r4 = b;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2[r3] = r4;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = r1.invoke(r0, r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r1 = com.baidu.techain.b.e.a(r0, r10, r11, r12);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0148, NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df }
        r0.<init>();	 Catch:{ Throwable -> 0x0148, NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df }
        r0.append(r1);	 Catch:{ Throwable -> 0x0148, NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df }
        com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0148, NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df }
    L_0x012a:
        r0 = new android.util.Pair;	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r2 = 0;
        r2 = java.lang.Integer.valueOf(r2);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        r0.<init>(r2, r1);	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        goto L_0x0047;
    L_0x0136:
        r0 = move-exception;
        r0.getMessage();
        com.baidu.techain.b.b();
        r0 = new android.util.Pair;
        r1 = java.lang.Integer.valueOf(r7);
        r0.<init>(r1, r5);
        goto L_0x0047;
    L_0x0148:
        r0 = move-exception;
        com.baidu.techain.b.e.a();	 Catch:{ NoSuchMethodException -> 0x006a, InvocationTargetException -> 0x008b, IllegalAccessException -> 0x00ae, IllegalArgumentException -> 0x00df, Throwable -> 0x0136 }
        goto L_0x012a;
    L_0x014d:
        r0 = r2;
        goto L_0x00d0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.d.a(int, java.lang.String, java.lang.Class[], java.lang.Object[]):android.util.Pair");
    }

    private static void b(String str) {
        new StringBuilder().append(str);
        b.a();
        try {
            if (!TextUtils.isEmpty(str)) {
                g a = g.a();
                if (a != null) {
                    ApkInfo d = a.d(str);
                    if (d != null) {
                        Class a2 = ((f) d.classLoader).a("com.baidu.techain.engine.EngineImpl");
                        Object invoke = a2.getDeclaredMethod("getInstance", new Class[]{Context.class}).invoke(a2, new Object[]{b});
                        if (invoke != null) {
                            new StringBuilder().append(com.baidu.techain.b.e.a(invoke, "unload", null, new Object[0]));
                            b.a();
                            a.b(str);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.getMessage();
            b.b();
        }
    }

    public final void a(final String str) {
        try {
            new StringBuilder().append(str);
            b.a();
            new Thread() {
                /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                public final void run() {
                    /*
                    r7 = this;
                    super.run();
                    r0 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = android.text.TextUtils.isEmpty(r0);	 Catch:{ Throwable -> 0x00b7 }
                    if (r0 == 0) goto L_0x000c;
                L_0x000b:
                    return;
                L_0x000c:
                    r0 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.getApplicationContext();	 Catch:{ Throwable -> 0x00b7 }
                    r1 = com.baidu.techain.core.g.a(r0);	 Catch:{ Throwable -> 0x00b7 }
                    r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r0.<init>();	 Catch:{ Throwable -> 0x00b7 }
                    r2 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    r2 = ", h=";
                    r0 = r0.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    r0.append(r1);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    if (r1 == 0) goto L_0x000b;
                L_0x002f:
                    r0 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r2 = r1.d(r0);	 Catch:{ Throwable -> 0x00b7 }
                    r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r0.<init>();	 Catch:{ Throwable -> 0x00b7 }
                    r3 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.append(r3);	 Catch:{ Throwable -> 0x00b7 }
                    r3 = ", i=";
                    r0 = r0.append(r3);	 Catch:{ Throwable -> 0x00b7 }
                    r0.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    if (r2 != 0) goto L_0x00c0;
                L_0x004e:
                    r0 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.c;	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.c(r1);	 Catch:{ Throwable -> 0x00b7 }
                    r1 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x00b7 }
                    r2 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.pkgPath;	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r1.c;	 Catch:{ Throwable -> 0x00b1 }
                    r1.a(r2);	 Catch:{ Throwable -> 0x00b1 }
                    r1 = new java.io.File;	 Catch:{ Throwable -> 0x00b1 }
                    r1.<init>(r0);	 Catch:{ Throwable -> 0x00b1 }
                    r0 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
                    r2 = "f=";
                    r0.<init>(r2);	 Catch:{ Throwable -> 0x00b1 }
                    r2 = r1.getAbsolutePath();	 Catch:{ Throwable -> 0x00b1 }
                    r0 = r0.append(r2);	 Catch:{ Throwable -> 0x00b1 }
                    r2 = ", e=";
                    r0 = r0.append(r2);	 Catch:{ Throwable -> 0x00b1 }
                    r2 = r1.exists();	 Catch:{ Throwable -> 0x00b1 }
                    r0.append(r2);	 Catch:{ Throwable -> 0x00b1 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
                    r0 = r1.exists();	 Catch:{ Throwable -> 0x00b1 }
                    if (r0 == 0) goto L_0x000b;
                L_0x008f:
                    com.baidu.techain.c.a(r1);	 Catch:{ Throwable -> 0x00b1 }
                    r0 = r1.delete();	 Catch:{ Throwable -> 0x00b1 }
                    r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b1 }
                    r2.<init>();	 Catch:{ Throwable -> 0x00b1 }
                    r1 = r1.getAbsolutePath();	 Catch:{ Throwable -> 0x00b1 }
                    r1 = r2.append(r1);	 Catch:{ Throwable -> 0x00b1 }
                    r2 = " s=";
                    r1 = r1.append(r2);	 Catch:{ Throwable -> 0x00b1 }
                    r1.append(r0);	 Catch:{ Throwable -> 0x00b1 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b1 }
                    goto L_0x000b;
                L_0x00b1:
                    r0 = move-exception;
                    com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x00b7 }
                    goto L_0x000b;
                L_0x00b7:
                    r0 = move-exception;
                    r0.getMessage();
                    com.baidu.techain.b.b();
                    goto L_0x000b;
                L_0x00c0:
                    r0 = r2.classLoader;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = (com.baidu.techain.core.f) r0;	 Catch:{ Throwable -> 0x00b7 }
                    r3 = "com.baidu.techain.engine.EngineImpl";
                    r0 = r0.a(r3);	 Catch:{ Throwable -> 0x00b7 }
                    r3 = "getInstance";
                    r4 = 1;
                    r4 = new java.lang.Class[r4];	 Catch:{ Throwable -> 0x00b7 }
                    r5 = 0;
                    r6 = android.content.Context.class;
                    r4[r5] = r6;	 Catch:{ Throwable -> 0x00b7 }
                    r3 = r0.getDeclaredMethod(r3, r4);	 Catch:{ Throwable -> 0x00b7 }
                    r4 = 1;
                    r4 = new java.lang.Object[r4];	 Catch:{ Throwable -> 0x00b7 }
                    r5 = 0;
                    r6 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00b7 }
                    r4[r5] = r6;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r3.invoke(r0, r4);	 Catch:{ Throwable -> 0x00b7 }
                    r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r3.<init>();	 Catch:{ Throwable -> 0x00b7 }
                    r4 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r3 = r3.append(r4);	 Catch:{ Throwable -> 0x00b7 }
                    r4 = ", i=";
                    r3 = r3.append(r4);	 Catch:{ Throwable -> 0x00b7 }
                    r3.append(r0);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    if (r0 == 0) goto L_0x000b;
                L_0x00fd:
                    r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r4 = "t:";
                    r3.<init>(r4);	 Catch:{ Throwable -> 0x00b7 }
                    r4 = java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x00b7 }
                    r3.append(r4);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    r3 = new java.util.Timer;	 Catch:{ Throwable -> 0x00b7 }
                    r3.<init>();	 Catch:{ Throwable -> 0x00b7 }
                    r4 = new com.baidu.techain.core.d$4$1;	 Catch:{ Throwable -> 0x00b7 }
                    r4.<init>(r1, r2);	 Catch:{ Throwable -> 0x00b7 }
                    r5 = 600000; // 0x927c0 float:8.40779E-40 double:2.964394E-318;
                    r3.schedule(r4, r5);	 Catch:{ Throwable -> 0x00b7 }
                    r3 = "unload";
                    r4 = 0;
                    r5 = 0;
                    r5 = new java.lang.Object[r5];	 Catch:{ Throwable -> 0x00b7 }
                    r0 = com.baidu.techain.b.e.a(r0, r3, r4, r5);	 Catch:{ Throwable -> 0x00b7 }
                    r3 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r3.<init>();	 Catch:{ Throwable -> 0x00b7 }
                    r4 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r3 = r3.append(r4);	 Catch:{ Throwable -> 0x00b7 }
                    r4 = ", CommonMethods.callMethodOfClass result object=";
                    r3 = r3.append(r4);	 Catch:{ Throwable -> 0x00b7 }
                    r3.append(r0);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r1.b(r0);	 Catch:{ Throwable -> 0x00b7 }
                    r0 = com.baidu.techain.core.d.this;	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.c;	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r2;	 Catch:{ Throwable -> 0x00b7 }
                    r0.a(r1);	 Catch:{ Throwable -> 0x00b7 }
                    r0 = com.baidu.techain.core.d.b;	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.e.c(r0);	 Catch:{ Throwable -> 0x00b7 }
                    r0 = new java.io.File;	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r2.pkgPath;	 Catch:{ Throwable -> 0x00b7 }
                    r0.<init>(r1);	 Catch:{ Throwable -> 0x00b7 }
                    r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r2 = "f=";
                    r1.<init>(r2);	 Catch:{ Throwable -> 0x00b7 }
                    r2 = r0.getAbsolutePath();	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r1.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    r2 = ", e=";
                    r1 = r1.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    r2 = r0.exists();	 Catch:{ Throwable -> 0x00b7 }
                    r1.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r0.exists();	 Catch:{ Throwable -> 0x00b7 }
                    if (r1 == 0) goto L_0x000b;
                L_0x0180:
                    com.baidu.techain.c.a(r0);	 Catch:{ Throwable -> 0x00b7 }
                    r1 = r0.delete();	 Catch:{ Throwable -> 0x00b7 }
                    r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x00b7 }
                    r3 = "d: ";
                    r2.<init>(r3);	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r0.getAbsolutePath();	 Catch:{ Throwable -> 0x00b7 }
                    r0 = r2.append(r0);	 Catch:{ Throwable -> 0x00b7 }
                    r2 = " s=";
                    r0 = r0.append(r2);	 Catch:{ Throwable -> 0x00b7 }
                    r0.append(r1);	 Catch:{ Throwable -> 0x00b7 }
                    com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x00b7 }
                    goto L_0x000b;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.d$AnonymousClass4.run():void");
                }
            }.start();
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
        }
    }

    public static void a(int i) {
        if (g == 0) {
            g = i;
        }
    }

    public final boolean c() {
        this.c.d();
        this.e = true;
        return c(b);
    }

    private void b(int i) {
        if (i == 100028 || i == 100019) {
            int i2;
            try {
                new StringBuilder().append(i).append(" init suceed now to sri/src");
                b.a();
                i2 = i;
                a(i2, "sri", new Callback() {
                    public final Object onEnd(Object... objArr) {
                        return null;
                    }

                    public final Object onError(Object... objArr) {
                        return null;
                    }
                }, new Class[]{Integer.TYPE, Integer.TYPE}, Integer.valueOf(R.layout.a_a), Integer.valueOf(R.drawable.b_b));
            } catch (Throwable th) {
                com.baidu.techain.b.e.a();
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("n_b_s0", R.drawable.n_b_s0);
                jSONObject.put("n_b_s1", R.drawable.n_b_s1);
                jSONObject.put("n_b_s2", R.drawable.n_b_s2);
                jSONObject.put("n_b_s3", R.drawable.n_b_s3);
                Object[] objArr = new Object[]{jSONObject.toString()};
                i2 = i;
                a(i2, "src", new Callback() {
                    public final Object onEnd(Object... objArr) {
                        return null;
                    }

                    public final Object onError(Object... objArr) {
                        return null;
                    }
                }, new Class[]{String.class}, objArr);
            } catch (Throwable th2) {
                com.baidu.techain.b.e.a();
            }
        }
    }

    private boolean c(Context context) {
        try {
            g a = g.a(context);
            if (a == null) {
                return false;
            }
            if (a.d("com.baidu.techain.x18") != null) {
                return true;
            }
            if (this.c == null) {
                this.c = a.a(b);
            }
            ApkInfo c = this.c.c("com.baidu.techain.x18");
            new StringBuilder("push::").append(c);
            b.a();
            if (c != null) {
                if (this.a.d()) {
                    File file = new File(b.getFilesDir(), ".b_techain");
                    if (!file.exists()) {
                        file.mkdir();
                    }
                    File file2 = new File(c.pkgPath);
                    File file3 = new File(file, c.key + "-" + c.versionName);
                    if (!com.baidu.techain.b.e.a(file3)) {
                        com.baidu.techain.b.e.a(file2, file3);
                    }
                    c.a(b, c.key, file2, file3);
                }
                if (a(c.key, c.versionName, null)) {
                    return true;
                }
            }
            if (a.d("com.baidu.techain.x18") != null) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            com.baidu.techain.b.e.a();
            return false;
        }
    }
}
