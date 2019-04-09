package com.baidu.techain;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.baidu.techain.ac.Callback;
import com.baidu.techain.b.e;
import com.baidu.techain.b.r;

public class TechainReceiver extends BroadcastReceiver {
    Callback a = new Callback() {
        public final Object onEnd(Object... objArr) {
            return super.onEnd(objArr);
        }
    };
    private boolean b = false;
    private long c = 0;

    public void onReceive(final Context context, final Intent intent) {
        if (intent != null) {
            try {
                if (!this.b || System.currentTimeMillis() - this.c >= 2000) {
                    new StringBuilder().append(intent.toString());
                    b.a();
                    final boolean z = this.b;
                    r.a().a(new Runnable() {
                        /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
                        public final void run() {
                            /*
                            r14 = this;
                            r1 = 1;
                            r11 = 0;
                            r2 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0171 }
                            r2.<init>();	 Catch:{ Throwable -> 0x0171 }
                            r3 = r6;	 Catch:{ Throwable -> 0x0171 }
                            r3 = r3.toString();	 Catch:{ Throwable -> 0x0171 }
                            r2.append(r3);	 Catch:{ Throwable -> 0x0171 }
                            com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0171 }
                            java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0171 }
                            r2 = r6;	 Catch:{ Throwable -> 0x0171 }
                            r2 = r2.getAction();	 Catch:{ Throwable -> 0x0171 }
                            r3 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Throwable -> 0x0171 }
                            if (r3 != 0) goto L_0x0056;
                        L_0x0022:
                            r3 = "android.intent.action.BOOT_COMPLETED";
                            r3 = r2.equals(r3);	 Catch:{ Throwable -> 0x0171 }
                            if (r3 == 0) goto L_0x0056;
                        L_0x002a:
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            com.baidu.techain.b.e.d(r1);	 Catch:{ Throwable -> 0x0171 }
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r2 = 1;
                            com.baidu.techain.b.b.a(r1, r2);	 Catch:{ Throwable -> 0x0171 }
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r1 = com.baidu.techain.rp.Report.getInstance(r1);	 Catch:{ Throwable -> 0x0171 }
                            r2 = 1;
                            r1.r(r2);	 Catch:{ Throwable -> 0x0171 }
                            r1 = 2;
                            com.baidu.techain.core.d.a(r1);	 Catch:{ Throwable -> 0x0171 }
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r1 = r1.getApplicationContext();	 Catch:{ Throwable -> 0x0171 }
                            r1 = com.baidu.techain.core.d.a(r1);	 Catch:{ Throwable -> 0x0171 }
                            r2 = new com.baidu.techain.TechainReceiver$2$1;	 Catch:{ Throwable -> 0x0171 }
                            r2.<init>();	 Catch:{ Throwable -> 0x0171 }
                            r1.a(r2);	 Catch:{ Throwable -> 0x0171 }
                        L_0x0055:
                            return;
                        L_0x0056:
                            r3 = "android.net.conn.CONNECTIVITY_CHANGE";
                            r3 = r3.equals(r2);	 Catch:{ Throwable -> 0x0171 }
                            if (r3 == 0) goto L_0x01a9;
                        L_0x005e:
                            r3 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r3 = com.baidu.techain.b.e.f(r3);	 Catch:{ Throwable -> 0x0171 }
                            if (r3 == 0) goto L_0x01a9;
                        L_0x0066:
                            r3 = com.baidu.techain.ac.U.sMonitorNetworkWhenUpgradeNoNet;	 Catch:{ Throwable -> 0x0171 }
                            if (r3 == 0) goto L_0x01a9;
                        L_0x006a:
                            r3 = new com.baidu.techain.ac.U;	 Catch:{ Throwable -> 0x0171 }
                            r4 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r4 = r4.getApplicationContext();	 Catch:{ Throwable -> 0x0171 }
                            r5 = 3;
                            r6 = 0;
                            r3.<init>(r4, r5, r6);	 Catch:{ Throwable -> 0x0171 }
                            r3.start();	 Catch:{ Throwable -> 0x0171 }
                        L_0x007a:
                            r3 = "android.net.conn.CONNECTIVITY_CHANGE";
                            r3 = r3.equals(r2);	 Catch:{ Throwable -> 0x0171 }
                            if (r3 == 0) goto L_0x00a0;
                        L_0x0082:
                            r3 = com.baidu.techain.b.e.a;	 Catch:{ Throwable -> 0x0171 }
                            if (r3 == 0) goto L_0x00a0;
                        L_0x0086:
                            if (r1 != 0) goto L_0x00a0;
                        L_0x0088:
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r1 = com.baidu.techain.b.e.e(r1);	 Catch:{ Throwable -> 0x0171 }
                            if (r1 == 0) goto L_0x00a0;
                        L_0x0090:
                            r1 = new com.baidu.techain.ac.U;	 Catch:{ Throwable -> 0x0171 }
                            r3 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r3 = r3.getApplicationContext();	 Catch:{ Throwable -> 0x0171 }
                            r4 = 3;
                            r5 = 0;
                            r1.<init>(r3, r4, r5);	 Catch:{ Throwable -> 0x0171 }
                            r1.start();	 Catch:{ Throwable -> 0x0171 }
                        L_0x00a0:
                            r1 = r0;	 Catch:{ Throwable -> 0x0171 }
                            if (r1 != 0) goto L_0x0055;
                        L_0x00a4:
                            r1 = android.text.TextUtils.isEmpty(r2);	 Catch:{ Throwable -> 0x0171 }
                            if (r1 != 0) goto L_0x00b9;
                        L_0x00aa:
                            r1 = "android.intent.action.PACKAGE_REMOVED";
                            r1 = r2.equals(r1);	 Catch:{ Throwable -> 0x0171 }
                            if (r1 == 0) goto L_0x00b9;
                        L_0x00b2:
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r2 = r6;	 Catch:{ Throwable -> 0x0171 }
                            com.baidu.techain.b.e.a(r1, r2);	 Catch:{ Throwable -> 0x0171 }
                        L_0x00b9:
                            r1 = r6;	 Catch:{ Throwable -> 0x0171 }
                            r2 = "from_plugin_package";
                            r1 = r1.getStringExtra(r2);	 Catch:{ Throwable -> 0x0171 }
                            r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ Throwable -> 0x0171 }
                            if (r2 == 0) goto L_0x0177;
                        L_0x00c7:
                            r1 = com.baidu.techain.core.g.a();	 Catch:{ Throwable -> 0x0171 }
                            if (r1 == 0) goto L_0x0055;
                        L_0x00cd:
                            r13 = r1.b();	 Catch:{ Throwable -> 0x0171 }
                            if (r13 == 0) goto L_0x016c;
                        L_0x00d3:
                            r12 = r11;
                        L_0x00d4:
                            r1 = r13.size();	 Catch:{ Throwable -> 0x0171 }
                            if (r12 >= r1) goto L_0x016c;
                        L_0x00da:
                            r1 = r13.get(r12);	 Catch:{ Throwable -> 0x0171 }
                            r0 = r1;
                            r0 = (com.baidu.techain.core.ApkInfo) r0;	 Catch:{ Throwable -> 0x0171 }
                            r8 = r0;
                            r1 = r8.intentFilters;	 Catch:{ Throwable -> 0x0171 }
                            if (r1 == 0) goto L_0x0167;
                        L_0x00e6:
                            r10 = r11;
                        L_0x00e7:
                            r1 = r8.intentFilters;	 Catch:{ Throwable -> 0x0163 }
                            r1 = r1.size();	 Catch:{ Throwable -> 0x0163 }
                            if (r10 >= r1) goto L_0x0167;
                        L_0x00ef:
                            r1 = r8.intentFilters;	 Catch:{ Throwable -> 0x0163 }
                            r1 = r1.get(r10);	 Catch:{ Throwable -> 0x0163 }
                            r0 = r1;
                            r0 = (com.baidu.techain.core.h) r0;	 Catch:{ Throwable -> 0x0163 }
                            r9 = r0;
                            r1 = r9.d;	 Catch:{ Throwable -> 0x0163 }
                            r2 = r6;	 Catch:{ Throwable -> 0x0163 }
                            r2 = r2.getAction();	 Catch:{ Throwable -> 0x0163 }
                            r3 = r6;	 Catch:{ Throwable -> 0x0163 }
                            r3 = r3.getType();	 Catch:{ Throwable -> 0x0163 }
                            r4 = r6;	 Catch:{ Throwable -> 0x0163 }
                            r4 = r4.getScheme();	 Catch:{ Throwable -> 0x0163 }
                            r5 = r6;	 Catch:{ Throwable -> 0x0163 }
                            r5 = r5.getData();	 Catch:{ Throwable -> 0x0163 }
                            r6 = r6;	 Catch:{ Throwable -> 0x0163 }
                            r6 = r6.getCategories();	 Catch:{ Throwable -> 0x0163 }
                            r7 = "PIF";
                            r1 = r1.match(r2, r3, r4, r5, r6, r7);	 Catch:{ Throwable -> 0x0163 }
                            if (r1 < 0) goto L_0x015f;
                        L_0x0121:
                            r1 = new java.lang.StringBuilder;	 Catch:{ Throwable -> 0x0163 }
                            r1.<init>();	 Catch:{ Throwable -> 0x0163 }
                            r1.append(r8);	 Catch:{ Throwable -> 0x0163 }
                            com.baidu.techain.b.a();	 Catch:{ Throwable -> 0x0163 }
                            r1 = r8.classLoader;	 Catch:{ Throwable -> 0x0163 }
                            r2 = r9.b;	 Catch:{ Throwable -> 0x0163 }
                            r1 = r1.loadClass(r2);	 Catch:{ Throwable -> 0x0163 }
                            r2 = r1.newInstance();	 Catch:{ Throwable -> 0x0163 }
                            r3 = r9.c;	 Catch:{ Throwable -> 0x0163 }
                            r4 = 2;
                            r4 = new java.lang.Class[r4];	 Catch:{ Throwable -> 0x0163 }
                            r5 = 0;
                            r6 = android.content.Context.class;
                            r4[r5] = r6;	 Catch:{ Throwable -> 0x0163 }
                            r5 = 1;
                            r6 = android.content.Intent.class;
                            r4[r5] = r6;	 Catch:{ Throwable -> 0x0163 }
                            r1 = r1.getDeclaredMethod(r3, r4);	 Catch:{ Throwable -> 0x0163 }
                            r3 = 2;
                            r3 = new java.lang.Object[r3];	 Catch:{ Throwable -> 0x0163 }
                            r4 = 0;
                            r5 = r5;	 Catch:{ Throwable -> 0x0163 }
                            r5 = r5.getApplicationContext();	 Catch:{ Throwable -> 0x0163 }
                            r3[r4] = r5;	 Catch:{ Throwable -> 0x0163 }
                            r4 = 1;
                            r5 = r6;	 Catch:{ Throwable -> 0x0163 }
                            r3[r4] = r5;	 Catch:{ Throwable -> 0x0163 }
                            r1.invoke(r2, r3);	 Catch:{ Throwable -> 0x0163 }
                        L_0x015f:
                            r1 = r10 + 1;
                            r10 = r1;
                            goto L_0x00e7;
                        L_0x0163:
                            r1 = move-exception;
                            com.baidu.techain.b.e.a();	 Catch:{ Throwable -> 0x0171 }
                        L_0x0167:
                            r1 = r12 + 1;
                            r12 = r1;
                            goto L_0x00d4;
                        L_0x016c:
                            java.lang.System.currentTimeMillis();	 Catch:{ Throwable -> 0x0171 }
                            goto L_0x0055;
                        L_0x0171:
                            r1 = move-exception;
                            com.baidu.techain.b.e.a();
                            goto L_0x0055;
                        L_0x0177:
                            r2 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r2 = r2.getPackageName();	 Catch:{ Throwable -> 0x0171 }
                            r2 = r2.equals(r1);	 Catch:{ Throwable -> 0x0171 }
                            if (r2 == 0) goto L_0x0192;
                        L_0x0183:
                            r1 = r5;	 Catch:{ Throwable -> 0x0171 }
                            r1 = r1.getClassLoader();	 Catch:{ Throwable -> 0x0171 }
                            r2 = r6;	 Catch:{ Throwable -> 0x0171 }
                            r3 = r5;	 Catch:{ Throwable -> 0x0171 }
                            com.baidu.techain.TechainReceiver.a(r1, r2, r3);	 Catch:{ Throwable -> 0x0171 }
                            goto L_0x0055;
                        L_0x0192:
                            r2 = com.baidu.techain.core.g.a();	 Catch:{ Throwable -> 0x0171 }
                            if (r2 == 0) goto L_0x0055;
                        L_0x0198:
                            r1 = r2.d(r1);	 Catch:{ Throwable -> 0x0171 }
                            if (r1 == 0) goto L_0x0055;
                        L_0x019e:
                            r1 = r1.classLoader;	 Catch:{ Throwable -> 0x0171 }
                            r2 = r6;	 Catch:{ Throwable -> 0x0171 }
                            r3 = r5;	 Catch:{ Throwable -> 0x0171 }
                            com.baidu.techain.TechainReceiver.a(r1, r2, r3);	 Catch:{ Throwable -> 0x0171 }
                            goto L_0x0055;
                        L_0x01a9:
                            r1 = r11;
                            goto L_0x007a;
                            */
                            throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.TechainReceiver$AnonymousClass2.run():void");
                        }
                    });
                }
            } catch (Throwable th) {
                e.a();
            }
        }
    }

    public final TechainReceiver a() {
        try {
            this.c = System.currentTimeMillis();
            this.b = true;
        } catch (Throwable th) {
            e.a();
        }
        return this;
    }

    static /* synthetic */ void a(ClassLoader classLoader, Intent intent, Context context) {
        try {
            Class loadClass = classLoader.loadClass(intent.getStringExtra("target_class"));
            Object newInstance = loadClass.newInstance();
            loadClass.getDeclaredMethod(intent.getStringExtra("target_method"), new Class[]{Context.class, Intent.class}).invoke(newInstance, new Object[]{context.getApplicationContext(), intent});
        } catch (Throwable th) {
            th.getMessage();
            b.b();
        }
    }
}
