package com.baidu.techain.core;

import android.content.pm.ActivityInfo;
import java.io.Serializable;
import java.util.ArrayList;

public final class a implements Serializable {
    public ArrayList<b> a = null;

    public a(ActivityInfo[] activityInfoArr) {
        if (activityInfoArr != null) {
            int length = activityInfoArr.length;
            if (length > 0) {
                this.a = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    if (activityInfoArr[i] != null) {
                        b bVar = new b();
                        bVar.h = activityInfoArr[i].configChanges;
                        bVar.f = activityInfoArr[i].flags;
                        bVar.l = activityInfoArr[i].labelRes;
                        bVar.b = activityInfoArr[i].launchMode;
                        if (activityInfoArr[i].nonLocalizedLabel != null) {
                            bVar.m = activityInfoArr[i].nonLocalizedLabel.toString();
                        }
                        bVar.j = activityInfoArr[i].name;
                        bVar.k = activityInfoArr[i].packageName;
                        bVar.c = activityInfoArr[i].permission;
                        bVar.g = activityInfoArr[i].screenOrientation;
                        bVar.i = activityInfoArr[i].softInputMode;
                        bVar.e = activityInfoArr[i].targetActivity;
                        bVar.d = activityInfoArr[i].taskAffinity;
                        bVar.a = activityInfoArr[i].theme;
                        this.a.add(bVar);
                    }
                }
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:15:0x002b A:{SYNTHETIC, Splitter:B:15:0x002b} */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0030 A:{Catch:{ IOException -> 0x0034 }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0040 A:{SYNTHETIC, Splitter:B:24:0x0040} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0045 A:{Catch:{ IOException -> 0x0049 }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0040 A:{SYNTHETIC, Splitter:B:24:0x0040} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0045 A:{Catch:{ IOException -> 0x0049 }} */
    public final byte[] a() {
        /*
        r5 = this;
        r0 = 0;
        r2 = new java.io.ByteArrayOutputStream;	 Catch:{ IOException -> 0x0026, all -> 0x0039 }
        r2.<init>();	 Catch:{ IOException -> 0x0026, all -> 0x0039 }
        r1 = new java.io.ObjectOutputStream;	 Catch:{ IOException -> 0x0055, all -> 0x004e }
        r1.<init>(r2);	 Catch:{ IOException -> 0x0055, all -> 0x004e }
        r3 = r5.a;	 Catch:{ IOException -> 0x0058, all -> 0x0053 }
        r1.writeObject(r3);	 Catch:{ IOException -> 0x0058, all -> 0x0053 }
        r1.close();	 Catch:{ IOException -> 0x0058, all -> 0x0053 }
        r2.close();	 Catch:{ IOException -> 0x0058, all -> 0x0053 }
        r0 = r2.toByteArray();	 Catch:{ IOException -> 0x0058, all -> 0x0053 }
        r1.close();	 Catch:{ IOException -> 0x0021 }
        r2.close();	 Catch:{ IOException -> 0x0021 }
    L_0x0020:
        return r0;
    L_0x0021:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0020;
    L_0x0026:
        r1 = move-exception;
        r1 = r0;
        r2 = r0;
    L_0x0029:
        if (r1 == 0) goto L_0x002e;
    L_0x002b:
        r1.close();	 Catch:{ IOException -> 0x0034 }
    L_0x002e:
        if (r2 == 0) goto L_0x0020;
    L_0x0030:
        r2.close();	 Catch:{ IOException -> 0x0034 }
        goto L_0x0020;
    L_0x0034:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0020;
    L_0x0039:
        r1 = move-exception;
        r2 = r0;
        r4 = r0;
        r0 = r1;
        r1 = r4;
    L_0x003e:
        if (r1 == 0) goto L_0x0043;
    L_0x0040:
        r1.close();	 Catch:{ IOException -> 0x0049 }
    L_0x0043:
        if (r2 == 0) goto L_0x0048;
    L_0x0045:
        r2.close();	 Catch:{ IOException -> 0x0049 }
    L_0x0048:
        throw r0;
    L_0x0049:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0048;
    L_0x004e:
        r1 = move-exception;
        r4 = r1;
        r1 = r0;
        r0 = r4;
        goto L_0x003e;
    L_0x0053:
        r0 = move-exception;
        goto L_0x003e;
    L_0x0055:
        r1 = move-exception;
        r1 = r0;
        goto L_0x0029;
    L_0x0058:
        r3 = move-exception;
        goto L_0x0029;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.a.a():byte[]");
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0022 A:{SYNTHETIC, Splitter:B:14:0x0022} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0027 A:{Catch:{ IOException -> 0x002c }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0035 A:{SYNTHETIC, Splitter:B:24:0x0035} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x003a A:{Catch:{ IOException -> 0x003e }} */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0022 A:{SYNTHETIC, Splitter:B:14:0x0022} */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0027 A:{Catch:{ IOException -> 0x002c }} */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0035 A:{SYNTHETIC, Splitter:B:24:0x0035} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x003a A:{Catch:{ IOException -> 0x003e }} */
    public static java.util.ArrayList<com.baidu.techain.core.b> a(byte[] r4) {
        /*
        r1 = 0;
        r3 = new java.io.ByteArrayInputStream;	 Catch:{ Throwable -> 0x001d, all -> 0x0031 }
        r3.<init>(r4);	 Catch:{ Throwable -> 0x001d, all -> 0x0031 }
        r2 = new java.io.ObjectInputStream;	 Catch:{ Throwable -> 0x0048, all -> 0x0043 }
        r2.<init>(r3);	 Catch:{ Throwable -> 0x0048, all -> 0x0043 }
        r0 = r2.readObject();	 Catch:{ Throwable -> 0x004c, all -> 0x0045 }
        r0 = (java.util.ArrayList) r0;	 Catch:{ Throwable -> 0x004c, all -> 0x0045 }
        r2.close();	 Catch:{ IOException -> 0x0018 }
        r3.close();	 Catch:{ IOException -> 0x0018 }
    L_0x0017:
        return r0;
    L_0x0018:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x0017;
    L_0x001d:
        r0 = move-exception;
        r0 = r1;
        r2 = r1;
    L_0x0020:
        if (r0 == 0) goto L_0x0025;
    L_0x0022:
        r0.close();	 Catch:{ IOException -> 0x002c }
    L_0x0025:
        if (r2 == 0) goto L_0x002a;
    L_0x0027:
        r2.close();	 Catch:{ IOException -> 0x002c }
    L_0x002a:
        r0 = r1;
        goto L_0x0017;
    L_0x002c:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x002a;
    L_0x0031:
        r0 = move-exception;
        r3 = r1;
    L_0x0033:
        if (r1 == 0) goto L_0x0038;
    L_0x0035:
        r1.close();	 Catch:{ IOException -> 0x003e }
    L_0x0038:
        if (r3 == 0) goto L_0x003d;
    L_0x003a:
        r3.close();	 Catch:{ IOException -> 0x003e }
    L_0x003d:
        throw r0;
    L_0x003e:
        r1 = move-exception;
        com.baidu.techain.b.e.a();
        goto L_0x003d;
    L_0x0043:
        r0 = move-exception;
        goto L_0x0033;
    L_0x0045:
        r0 = move-exception;
        r1 = r2;
        goto L_0x0033;
    L_0x0048:
        r0 = move-exception;
        r0 = r1;
        r2 = r3;
        goto L_0x0020;
    L_0x004c:
        r0 = move-exception;
        r0 = r2;
        r2 = r3;
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.core.a.a(byte[]):java.util.ArrayList");
    }
}
