package com.baidu.tts.b.a.b;

import com.baidu.tts.f.j;
import com.baidu.tts.m.b;

public class c {
    private b a;
    private j b;

    public void a(b bVar) {
        this.a = bVar;
    }

    public boolean a() {
        /*
        r7 = this;
        r6 = 9;
        r2 = 1;
        r1 = 0;
        r0 = com.baidu.tts.h.b.b.a();	 Catch:{ Exception -> 0x006c }
        r0 = r0.h();	 Catch:{ Exception -> 0x006c }
        if (r0 == 0) goto L_0x0060;
    L_0x000e:
        r3 = r7.b();	 Catch:{ Exception -> 0x006c }
        if (r3 == 0) goto L_0x0037;
    L_0x0014:
        r3 = r7.a;	 Catch:{ Exception -> 0x006c }
        r3 = r3.a();	 Catch:{ Exception -> 0x006c }
        r4 = r7.b;	 Catch:{ Exception -> 0x006c }
        r5 = com.baidu.tts.f.j.HIGH_SPEED_SYNTHESIZE;	 Catch:{ Exception -> 0x006c }
        r4 = r4.equals(r5);	 Catch:{ Exception -> 0x006c }
        if (r4 != 0) goto L_0x002e;
    L_0x0024:
        r4 = r7.b;	 Catch:{ Exception -> 0x006c }
        r5 = com.baidu.tts.f.j.HIGH_SPEED_SYNTHESIZE_WIFI;	 Catch:{ Exception -> 0x006c }
        r4 = r4.equals(r5);	 Catch:{ Exception -> 0x006c }
        if (r4 == 0) goto L_0x0062;
    L_0x002e:
        r4 = com.baidu.tts.f.l.FAST_SWITCH;	 Catch:{ Exception -> 0x006c }
        r4 = r4.b();	 Catch:{ Exception -> 0x006c }
        r3.c(r4);	 Catch:{ Exception -> 0x006c }
    L_0x0037:
        r3 = "connectivity";
        r0 = r0.getSystemService(r3);	 Catch:{ Exception -> 0x006c }
        r0 = (android.net.ConnectivityManager) r0;	 Catch:{ Exception -> 0x006c }
        r0 = r0.getActiveNetworkInfo();	 Catch:{ Exception -> 0x006c }
        if (r0 == 0) goto L_0x0060;
    L_0x0045:
        r3 = r0.isConnected();	 Catch:{ Exception -> 0x006c }
        if (r3 == 0) goto L_0x0060;
    L_0x004b:
        r3 = r0.getType();	 Catch:{ Exception -> 0x006c }
        r0 = r0.getSubtype();	 Catch:{ Exception -> 0x006c }
        r4 = com.baidu.tts.b.a.b.c.AnonymousClass1.a;	 Catch:{ Exception -> 0x006c }
        r5 = r7.b;	 Catch:{ Exception -> 0x006c }
        r5 = r5.ordinal();	 Catch:{ Exception -> 0x006c }
        r4 = r4[r5];	 Catch:{ Exception -> 0x006c }
        switch(r4) {
            case 1: goto L_0x0077;
            case 2: goto L_0x0077;
            case 3: goto L_0x0081;
            case 4: goto L_0x0081;
            default: goto L_0x0060;
        };	 Catch:{ Exception -> 0x006c }
    L_0x0060:
        r0 = r1;
    L_0x0061:
        return r0;
    L_0x0062:
        r4 = com.baidu.tts.f.l.MIX_ONLINE_REQUEST_TIMEOUT;	 Catch:{ Exception -> 0x006c }
        r4 = r4.b();	 Catch:{ Exception -> 0x006c }
        r3.c(r4);	 Catch:{ Exception -> 0x006c }
        goto L_0x0037;
    L_0x006c:
        r0 = move-exception;
        r2 = "MixStrategy";
        r0 = r0.toString();
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r0);
        goto L_0x0060;
    L_0x0077:
        r0 = r7.c(r3);	 Catch:{ Exception -> 0x006c }
        if (r0 != 0) goto L_0x007f;
    L_0x007d:
        if (r3 != r6) goto L_0x0060;
    L_0x007f:
        r0 = r2;
        goto L_0x0061;
    L_0x0081:
        r4 = r7.c(r3);	 Catch:{ Exception -> 0x006c }
        if (r4 != 0) goto L_0x008f;
    L_0x0087:
        if (r3 == r6) goto L_0x008f;
    L_0x0089:
        r0 = r7.a(r0);	 Catch:{ Exception -> 0x006c }
        if (r0 == 0) goto L_0x0060;
    L_0x008f:
        r0 = r2;
        goto L_0x0061;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.b.a.b.c.a():boolean");
    }

    private boolean b() {
        j jVar = null;
        try {
            jVar = this.a.c();
        } catch (Exception e) {
        }
        if (this.b == null) {
            if (jVar == null) {
                this.b = j.DEFAULT;
                return true;
            }
            this.b = jVar;
            return true;
        } else if (jVar == null) {
            return false;
        } else {
            if (this.b.equals(jVar)) {
                return false;
            }
            this.b = jVar;
            return true;
        }
    }

    private boolean a(int i) {
        return b(i) >= 2;
    }

    private int b(int i) {
        switch (i) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 2;
            case 13:
                return 3;
            default:
                return 0;
        }
    }

    private boolean c(int i) {
        switch (i) {
            case 1:
                return true;
            default:
                return false;
        }
    }
}
