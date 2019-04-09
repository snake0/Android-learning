package com.baidu.tts.k;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Future;

public class c<A extends b<A, R>, R extends a> {
    private final ConcurrentMap<A, Future<R>> a = new ConcurrentHashMap();

    /* JADX WARNING: Removed duplicated region for block: B:8:0x006e  */
    public R a(A r8) {
        /*
        r7 = this;
        r1 = 0;
        r3 = r7.b(r8);
        if (r3 == 0) goto L_0x00cf;
    L_0x0007:
        r0 = r7.a;
        r0 = r0.get(r3);
        r0 = (java.util.concurrent.Future) r0;
        r2 = r0;
    L_0x0010:
        if (r2 == 0) goto L_0x00cd;
    L_0x0012:
        r0 = "Memorizer";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "+ get f=";
        r4 = r4.append(r5);
        r4 = r4.append(r2);
        r4 = r4.toString();
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r0, r4);
        r0 = r2.get();
        r0 = (com.baidu.tts.k.a) r0;
        r4 = "Memorizer";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "- get f=";
        r5 = r5.append(r6);
        r5 = r5.append(r2);
        r5 = r5.toString();
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r4, r5);
        r4 = r0.g();
        if (r4 != 0) goto L_0x00cd;
    L_0x004e:
        r2 = "Memorizer";
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "arg invalid r=";
        r4 = r4.append(r5);
        r0 = r4.append(r0);
        r0 = r0.toString();
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r2, r0);
        r0 = r7.a;
        r0.remove(r3);
        r0 = r1;
    L_0x006c:
        if (r0 != 0) goto L_0x00cb;
    L_0x006e:
        r1 = new java.util.concurrent.FutureTask;
        r1.<init>(r8);
        r0 = r7.a;
        r0 = r0.putIfAbsent(r8, r1);
        r0 = (java.util.concurrent.Future) r0;
        if (r0 != 0) goto L_0x00cb;
    L_0x007d:
        r0 = "Memorizer";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "+ run f=";
        r2 = r2.append(r3);
        r2 = r2.append(r1);
        r2 = r2.toString();
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r0, r2);
        r1.run();
        r0 = "Memorizer";
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = "- run f=";
        r2 = r2.append(r3);
        r2 = r2.append(r1);
        r2 = r2.toString();
        com.baidu.tts.chainofresponsibility.logger.LoggerProxy.d(r0, r2);
    L_0x00b0:
        r0 = r1.get();	 Catch:{ ExecutionException -> 0x00b7, Exception -> 0x00c4 }
        r0 = (com.baidu.tts.k.a) r0;	 Catch:{ ExecutionException -> 0x00b7, Exception -> 0x00c4 }
        return r0;
    L_0x00b7:
        r0 = move-exception;
        r2 = r7.a;
        r2.remove(r8, r1);
        r0 = r0.getCause();
        r0 = (java.lang.Exception) r0;
        throw r0;
    L_0x00c4:
        r0 = move-exception;
        r2 = r7.a;
        r2.remove(r8, r1);
        throw r0;
    L_0x00cb:
        r1 = r0;
        goto L_0x00b0;
    L_0x00cd:
        r0 = r2;
        goto L_0x006c;
    L_0x00cf:
        r2 = r1;
        goto L_0x0010;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.tts.k.c.a(com.baidu.tts.k.b):com.baidu.tts.k.a");
    }

    private A b(A a) {
        for (b bVar : this.a.keySet()) {
            if (a.compareTo(bVar) == 0) {
                return bVar;
            }
        }
        return null;
    }

    public void a() {
        if (this.a != null) {
            this.a.clear();
        }
    }
}
