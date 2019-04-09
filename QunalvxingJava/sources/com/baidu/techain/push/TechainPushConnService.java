package com.baidu.techain.push;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.util.Pair;
import com.baidu.techain.ac.Callback;
import com.baidu.techain.b;
import com.baidu.techain.b.e;
import com.baidu.techain.b.g;
import com.baidu.techain.core.d;
import com.mqunar.yvideo.BuildConfig;
import java.util.HashMap;
import java.util.Map;

public class TechainPushConnService extends Service {
    private static final int ERROR_CODE_KILL = 2;
    public static final String PUSH_SERVICE_ACTION = "com.baidu.techain.push.service.action";
    private static int sPushPluginId = -1;
    private Callback dataServerCallback = new Callback() {
        public final Object onProgress1(Object... objArr) {
            return null;
        }

        public final Object onError(Object... objArr) {
            try {
                switch (((Integer) objArr[0]).intValue()) {
                    case 2:
                        TechainPushConnService.this.reportKillSelf(4);
                        TechainPushConnService.this.stopSelf();
                        break;
                }
            } catch (Throwable th) {
                e.a();
            }
            return null;
        }
    };
    private IBinder mBinder = new Binder() {
    };
    private d mFha;
    private String mPushPluginVersion = "";

    public IBinder onBind(Intent intent) {
        try {
            new StringBuilder("ph:").append(getPackageName());
            b.a();
            if (PUSH_SERVICE_ACTION.equals(intent.getAction())) {
                return this.mBinder;
            }
        } catch (Throwable th) {
            e.a();
        }
        return null;
    }

    public void onCreate() {
        try {
            super.onCreate();
            this.mFha = d.a(getApplicationContext());
            new Thread(new Runnable() {
                /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                public final void run() {
                    /*
                    r5 = this;
                    r2 = 0;
                    r1 = 1;
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.mFha;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.c();	 Catch:{ Throwable -> 0x0036 }
                    if (r0 != 0) goto L_0x005b;
                L_0x000e:
                    r3 = 3000; // 0xbb8 float:4.204E-42 double:1.482E-320;
                    java.lang.Thread.sleep(r3);	 Catch:{ InterruptedException -> 0x0031 }
                L_0x0013:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.mFha;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.c();	 Catch:{ Throwable -> 0x0036 }
                    if (r0 != 0) goto L_0x003b;
                L_0x001f:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r1 = 0;
                    r0.reportInitPushModuleResult(r1);	 Catch:{ Throwable -> 0x0036 }
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r1 = 1;
                    r0.reportKillSelf(r1);	 Catch:{ Throwable -> 0x0036 }
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r0.stopSelf();	 Catch:{ Throwable -> 0x0036 }
                L_0x0030:
                    return;
                L_0x0031:
                    r0 = move-exception;
                    r0.printStackTrace();	 Catch:{ Throwable -> 0x0036 }
                    goto L_0x0013;
                L_0x0036:
                    r0 = move-exception;
                    com.baidu.techain.b.e.a();
                    goto L_0x0030;
                L_0x003b:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r3 = 1;
                    r0.reportInitPushModuleResult(r3);	 Catch:{ Throwable -> 0x0036 }
                L_0x0041:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r0 = com.baidu.techain.core.g.a(r0);	 Catch:{ Throwable -> 0x0036 }
                    r3 = "com.baidu.techain.x18";
                    r0 = r0.d(r3);	 Catch:{ Throwable -> 0x0036 }
                    if (r0 != 0) goto L_0x0062;
                L_0x004f:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r1 = 2;
                    r0.reportKillSelf(r1);	 Catch:{ Throwable -> 0x0036 }
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r0.stopSelf();	 Catch:{ Throwable -> 0x0036 }
                    goto L_0x0030;
                L_0x005b:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r3 = 1;
                    r0.reportInitPushModuleResult(r3);	 Catch:{ Throwable -> 0x0036 }
                    goto L_0x0041;
                L_0x0062:
                    r3 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r4 = r0.versionName;	 Catch:{ Throwable -> 0x0036 }
                    r3.mPushPluginVersion = r4;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.key;	 Catch:{ Throwable -> 0x0036 }
                    com.baidu.techain.push.TechainPushConnService.sPushPluginId = r0;	 Catch:{ Throwable -> 0x0036 }
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r3 = com.baidu.techain.push.TechainPushConnService.sPushPluginId;	 Catch:{ Throwable -> 0x0036 }
                    r4 = r0.startDataServer(r3);	 Catch:{ Throwable -> 0x0036 }
                    if (r4 == 0) goto L_0x00c3;
                L_0x007a:
                    r0 = r4.second;	 Catch:{ Throwable -> 0x0036 }
                    r0 = (java.lang.Boolean) r0;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.booleanValue();	 Catch:{ Throwable -> 0x0036 }
                    if (r0 == 0) goto L_0x00c3;
                L_0x0084:
                    r3 = r1;
                L_0x0085:
                    r0 = r4.first;	 Catch:{ Throwable -> 0x0036 }
                    r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.intValue();	 Catch:{ Throwable -> 0x0036 }
                    if (r0 != 0) goto L_0x0091;
                L_0x008f:
                    if (r3 != 0) goto L_0x00c7;
                L_0x0091:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r3 = com.baidu.techain.push.TechainPushConnService.sPushPluginId;	 Catch:{ Throwable -> 0x0036 }
                    r3 = r0.startDataServer(r3);	 Catch:{ Throwable -> 0x0036 }
                    if (r3 == 0) goto L_0x00c5;
                L_0x009d:
                    r0 = r3.second;	 Catch:{ Throwable -> 0x0036 }
                    r0 = (java.lang.Boolean) r0;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.booleanValue();	 Catch:{ Throwable -> 0x0036 }
                    if (r0 == 0) goto L_0x00c5;
                L_0x00a7:
                    r0 = r1;
                L_0x00a8:
                    r1 = r0;
                    r0 = r3;
                L_0x00aa:
                    r0 = r0.first;	 Catch:{ Throwable -> 0x0036 }
                    r0 = (java.lang.Integer) r0;	 Catch:{ Throwable -> 0x0036 }
                    r0 = r0.intValue();	 Catch:{ Throwable -> 0x0036 }
                    if (r0 != 0) goto L_0x00b6;
                L_0x00b4:
                    if (r1 != 0) goto L_0x0030;
                L_0x00b6:
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r1 = 3;
                    r0.reportKillSelf(r1);	 Catch:{ Throwable -> 0x0036 }
                    r0 = com.baidu.techain.push.TechainPushConnService.this;	 Catch:{ Throwable -> 0x0036 }
                    r0.stopSelf();	 Catch:{ Throwable -> 0x0036 }
                    goto L_0x0030;
                L_0x00c3:
                    r3 = r2;
                    goto L_0x0085;
                L_0x00c5:
                    r0 = r2;
                    goto L_0x00a8;
                L_0x00c7:
                    r1 = r3;
                    r0 = r4;
                    goto L_0x00aa;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.push.TechainPushConnService$AnonymousClass1.run():void");
                }
            }).start();
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void reportKillSelf(int i) {
        b.a();
        try {
            Map hashMap = new HashMap();
            hashMap.put("0", Long.valueOf(System.currentTimeMillis()));
            hashMap.put(BuildConfig.VERSION_NAME, "3.1.6.1");
            hashMap.put("2", g.c(getApplicationContext()));
            hashMap.put("3", this.mPushPluginVersion);
            hashMap.put("4", Integer.valueOf(i));
            e.a(getApplicationContext(), "1003133", hashMap);
        } catch (Throwable th) {
            e.a();
        }
    }

    /* Access modifiers changed, original: protected */
    public void reportInitPushModuleResult(boolean z) {
        b.a();
        try {
            Map hashMap = new HashMap();
            hashMap.put("0", Long.valueOf(System.currentTimeMillis()));
            hashMap.put(BuildConfig.VERSION_NAME, "3.1.6.1");
            hashMap.put("2", g.c(getApplicationContext()));
            hashMap.put("3", Integer.valueOf(z ? 1 : 2));
            e.a(getApplicationContext(), "1003130", hashMap);
        } catch (Throwable th) {
            e.a();
        }
    }

    private Pair<Integer, Object> startDataServer(int i) {
        try {
            Pair<Integer, Object> a = this.mFha.a(i, "startDataServer", new Class[]{Callback.class}, this.dataServerCallback);
            new StringBuilder("push::p:").append(a.first).append("-").append(a.second);
            b.a();
            if (((Integer) a.first).intValue() != 0) {
                reportMethodFail("startDataServer", (Integer) a.first);
            }
            return a;
        } catch (Throwable th) {
            e.a();
            return null;
        }
    }

    /* Access modifiers changed, original: protected */
    public void reportMethodFail(String str, Integer num) {
        new StringBuilder("ph::").append(str).append("_").append(num);
        b.a();
        try {
            Map hashMap = new HashMap();
            hashMap.put("0", Long.valueOf(System.currentTimeMillis()));
            hashMap.put(BuildConfig.VERSION_NAME, "3.1.6.1");
            hashMap.put("2", g.c(getApplicationContext()));
            hashMap.put("3", this.mPushPluginVersion);
            hashMap.put("4", str);
            hashMap.put("5", num);
            e.a(getApplicationContext(), "1003131", hashMap);
        } catch (Throwable th) {
            e.a();
        }
    }
}
