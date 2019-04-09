package com.iflytek.cloud.thirdparty;

import com.mqunar.libtask.ProgressType;
import java.util.concurrent.ConcurrentLinkedQueue;

public class aa {
    private ConcurrentLinkedQueue<y> a = new ConcurrentLinkedQueue();
    private long b;
    private int c = ProgressType.PRO_END;

    public aa(int i) {
        this.c = i;
    }

    public void a() {
        this.a.clear();
        this.b = 0;
    }

    public void a(y yVar) {
        if (yVar != null && yVar.a() != -1) {
            if (this.a.size() >= this.c) {
                this.a.poll();
            } else {
                this.b += (long) yVar.a();
            }
            this.a.add(yVar);
        }
    }

    public y b() {
        y yVar = (y) this.a.poll();
        if (yVar != null) {
            this.b -= (long) yVar.a();
        }
        return yVar;
    }

    public long c() {
        return this.b;
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:17:? A:{SYNTHETIC, RETURN, ORIG_RETURN} */
    public com.iflytek.cloud.thirdparty.y d() {
        /*
        r5 = this;
        r1 = 0;
        r2 = new java.io.ByteArrayOutputStream;
        r2.<init>();
        r0 = r1;
    L_0x0007:
        r3 = r5.b();	 Catch:{ IOException -> 0x0015 }
        if (r3 == 0) goto L_0x0021;
    L_0x000d:
        r0 = r3.e;	 Catch:{ IOException -> 0x0015 }
        r3 = r3.c;	 Catch:{ IOException -> 0x0015 }
        r2.write(r3);	 Catch:{ IOException -> 0x0015 }
        goto L_0x0007;
    L_0x0015:
        r2 = move-exception;
        r3 = r0;
        r0 = r2;
        r2 = r1;
    L_0x0019:
        r0.printStackTrace();
        r0 = r3;
        r3 = r2;
    L_0x001e:
        if (r3 != 0) goto L_0x002f;
    L_0x0020:
        return r1;
    L_0x0021:
        r3 = r2.toByteArray();	 Catch:{ IOException -> 0x0015 }
        r2.close();	 Catch:{ IOException -> 0x0029 }
        goto L_0x001e;
    L_0x0029:
        r2 = move-exception;
        r4 = r2;
        r2 = r3;
        r3 = r0;
        r0 = r4;
        goto L_0x0019;
    L_0x002f:
        r1 = new com.iflytek.cloud.thirdparty.y;
        r1.<init>(r3, r0);
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iflytek.cloud.thirdparty.aa.d():com.iflytek.cloud.thirdparty.y");
    }
}
