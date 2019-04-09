package com.baidu.location.d;

import com.mqunar.necro.agent.instrumentation.Instrumented;

@Instrumented
class f extends Thread {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:71:0x011e A:{LOOP_END, LOOP:0: B:1:0x001b->B:71:0x011e} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0099 A:{SYNTHETIC, EDGE_INSN: B:89:0x0099->B:31:0x0099 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x010b A:{SYNTHETIC, Splitter:B:61:0x010b} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0110 A:{SYNTHETIC, Splitter:B:64:0x0110} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d A:{SYNTHETIC, Splitter:B:24:0x008d} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0092 A:{SYNTHETIC, Splitter:B:27:0x0092} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0099 A:{SYNTHETIC, EDGE_INSN: B:89:0x0099->B:31:0x0099 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x011e A:{LOOP_END, LOOP:0: B:1:0x001b->B:71:0x011e} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x010b A:{SYNTHETIC, Splitter:B:61:0x010b} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0110 A:{SYNTHETIC, Splitter:B:64:0x0110} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d A:{SYNTHETIC, Splitter:B:24:0x008d} */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0092 A:{SYNTHETIC, Splitter:B:27:0x0092} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x011e A:{LOOP_END, LOOP:0: B:1:0x001b->B:71:0x011e} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0099 A:{SYNTHETIC, EDGE_INSN: B:89:0x0099->B:31:0x0099 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x010b A:{SYNTHETIC, Splitter:B:61:0x010b} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0110 A:{SYNTHETIC, Splitter:B:64:0x0110} */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0088  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x008d A:{SYNTHETIC, Splitter:B:24:0x008d} */
    /* JADX WARNING: Removed duplicated region for block: B:87:0x014e  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0092 A:{SYNTHETIC, Splitter:B:27:0x0092} */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x0099 A:{SYNTHETIC, EDGE_INSN: B:89:0x0099->B:31:0x0099 ?: BREAK  } */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x011e A:{LOOP_END, LOOP:0: B:1:0x001b->B:71:0x011e} */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0106  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x010b A:{SYNTHETIC, Splitter:B:61:0x010b} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0110 A:{SYNTHETIC, Splitter:B:64:0x0110} */
    public void run() {
        /*
        r13 = this;
        r2 = 0;
        r6 = 1;
        r5 = 0;
        r0 = r13.a;
        r1 = com.baidu.location.d.j.c();
        r0.h = r1;
        r0 = r13.a;
        r0.b();
        r0 = r13.a;
        r0.a();
        r0 = r13.a;
        r0 = r0.i;
        r1 = r2;
        r4 = r0;
    L_0x001b:
        if (r4 <= 0) goto L_0x0099;
    L_0x001d:
        r0 = new java.net.URL;	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r3 = r13.a;	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r3 = r3.h;	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r0.<init>(r3);	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r0 = r0.openConnection();	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r0 = com.mqunar.necro.agent.instrumentation.HttpInstrumentation.openConnection(r0);	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r0 = (java.net.HttpURLConnection) r0;	 Catch:{ Exception -> 0x0148, all -> 0x0139 }
        r1 = "GET";
        r0.setRequestMethod(r1);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = 1;
        r0.setDoInput(r1);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = 1;
        r0.setDoOutput(r1);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = 0;
        r0.setUseCaches(r1);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = com.baidu.location.d.a.b;	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r0.setConnectTimeout(r1);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = com.baidu.location.d.a.b;	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r0.setReadTimeout(r1);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = "Content-Type";
        r3 = "application/x-www-form-urlencoded; charset=utf-8";
        r0.setRequestProperty(r1, r3);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = "Accept-Charset";
        r3 = "UTF-8";
        r0.setRequestProperty(r1, r3);	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = r0.getResponseCode();	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r3 = 200; // 0xc8 float:2.8E-43 double:9.9E-322;
        if (r1 != r3) goto L_0x00df;
    L_0x0061:
        r3 = r0.getInputStream();	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = new java.io.ByteArrayOutputStream;	 Catch:{ Exception -> 0x0142, all -> 0x0126 }
        r1.<init>();	 Catch:{ Exception -> 0x0142, all -> 0x0126 }
        r7 = 1024; // 0x400 float:1.435E-42 double:5.06E-321;
        r7 = new byte[r7];	 Catch:{ Exception -> 0x007a, all -> 0x012b }
    L_0x006e:
        r8 = r3.read(r7);	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r9 = -1;
        if (r8 == r9) goto L_0x00ab;
    L_0x0075:
        r9 = 0;
        r1.write(r7, r9, r8);	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        goto L_0x006e;
    L_0x007a:
        r7 = move-exception;
        r11 = r1;
        r1 = r3;
        r3 = r0;
        r0 = r11;
    L_0x007f:
        r7 = com.baidu.location.d.a.a;	 Catch:{ all -> 0x0131 }
        r8 = "NetworkCommunicationException!";
        android.util.Log.d(r7, r8);	 Catch:{ all -> 0x0131 }
        if (r3 == 0) goto L_0x008b;
    L_0x0088:
        r3.disconnect();
    L_0x008b:
        if (r1 == 0) goto L_0x0090;
    L_0x008d:
        r1.close();	 Catch:{ Exception -> 0x00f3 }
    L_0x0090:
        if (r0 == 0) goto L_0x014e;
    L_0x0092:
        r0.close();	 Catch:{ Exception -> 0x00f8 }
        r0 = r5;
        r1 = r3;
    L_0x0097:
        if (r0 == 0) goto L_0x011e;
    L_0x0099:
        if (r4 > 0) goto L_0x0123;
    L_0x009b:
        r0 = com.baidu.location.d.e.o;
        r0 = r0 + 1;
        com.baidu.location.d.e.o = r0;
        r0 = r13.a;
        r0.j = r2;
        r0 = r13.a;
        r0.a(r5);
    L_0x00aa:
        return;
    L_0x00ab:
        r3.close();	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r1.close();	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r7 = r13.a;	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r8 = new java.lang.String;	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r9 = r1.toByteArray();	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r10 = "utf-8";
        r8.<init>(r9, r10);	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r7.j = r8;	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r7 = r13.a;	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r8 = 1;
        r7.a(r8);	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r0.disconnect();	 Catch:{ Exception -> 0x007a, all -> 0x012b }
        r7 = r3;
        r3 = r1;
        r1 = r6;
    L_0x00cc:
        if (r0 == 0) goto L_0x00d1;
    L_0x00ce:
        r0.disconnect();
    L_0x00d1:
        if (r7 == 0) goto L_0x00d6;
    L_0x00d3:
        r7.close();	 Catch:{ Exception -> 0x00e6 }
    L_0x00d6:
        if (r3 == 0) goto L_0x0152;
    L_0x00d8:
        r3.close();	 Catch:{ Exception -> 0x00eb }
        r11 = r1;
        r1 = r0;
        r0 = r11;
        goto L_0x0097;
    L_0x00df:
        r0.disconnect();	 Catch:{ Exception -> 0x013c, all -> 0x00ff }
        r1 = r5;
        r3 = r2;
        r7 = r2;
        goto L_0x00cc;
    L_0x00e6:
        r7 = move-exception;
        r7.printStackTrace();
        goto L_0x00d6;
    L_0x00eb:
        r3 = move-exception;
        r3.printStackTrace();
        r11 = r1;
        r1 = r0;
        r0 = r11;
        goto L_0x0097;
    L_0x00f3:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0090;
    L_0x00f8:
        r0 = move-exception;
        r0.printStackTrace();
        r0 = r5;
        r1 = r3;
        goto L_0x0097;
    L_0x00ff:
        r1 = move-exception;
        r3 = r2;
        r11 = r1;
        r1 = r0;
        r0 = r11;
    L_0x0104:
        if (r1 == 0) goto L_0x0109;
    L_0x0106:
        r1.disconnect();
    L_0x0109:
        if (r3 == 0) goto L_0x010e;
    L_0x010b:
        r3.close();	 Catch:{ Exception -> 0x0114 }
    L_0x010e:
        if (r2 == 0) goto L_0x0113;
    L_0x0110:
        r2.close();	 Catch:{ Exception -> 0x0119 }
    L_0x0113:
        throw r0;
    L_0x0114:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x010e;
    L_0x0119:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0113;
    L_0x011e:
        r0 = r4 + -1;
        r4 = r0;
        goto L_0x001b;
    L_0x0123:
        com.baidu.location.d.e.o = r5;
        goto L_0x00aa;
    L_0x0126:
        r1 = move-exception;
        r11 = r1;
        r1 = r0;
        r0 = r11;
        goto L_0x0104;
    L_0x012b:
        r2 = move-exception;
        r11 = r2;
        r2 = r1;
        r1 = r0;
        r0 = r11;
        goto L_0x0104;
    L_0x0131:
        r2 = move-exception;
        r11 = r2;
        r2 = r0;
        r0 = r11;
        r12 = r1;
        r1 = r3;
        r3 = r12;
        goto L_0x0104;
    L_0x0139:
        r0 = move-exception;
        r3 = r2;
        goto L_0x0104;
    L_0x013c:
        r1 = move-exception;
        r1 = r2;
        r3 = r0;
        r0 = r2;
        goto L_0x007f;
    L_0x0142:
        r1 = move-exception;
        r1 = r3;
        r3 = r0;
        r0 = r2;
        goto L_0x007f;
    L_0x0148:
        r0 = move-exception;
        r0 = r2;
        r3 = r1;
        r1 = r2;
        goto L_0x007f;
    L_0x014e:
        r0 = r5;
        r1 = r3;
        goto L_0x0097;
    L_0x0152:
        r11 = r1;
        r1 = r0;
        r0 = r11;
        goto L_0x0097;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.location.d.f.run():void");
    }
}
