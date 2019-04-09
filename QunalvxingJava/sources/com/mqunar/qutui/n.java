package com.mqunar.qutui;

class n implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ boolean b;
    final /* synthetic */ k c;

    n(k kVar, String str, boolean z) {
        this.c = kVar;
        this.a = str;
        this.b = z;
    }

    /* JADX WARNING: Removed duplicated region for block: B:20:0x00b2  */
    public void run() {
        /*
        r14 = this;
        r7 = 1;
        r3 = 0;
        r0 = r14.c;
        r0 = r0.a;
        r8 = r0.edit();
        r0 = r14.c;
        r0 = r0.a();
        r0 = r0.entrySet();
        r9 = r0.iterator();
        r2 = r3;
        r4 = r3;
    L_0x001c:
        r0 = r9.hasNext();
        if (r0 == 0) goto L_0x015e;
    L_0x0022:
        r0 = r9.next();
        r0 = (java.util.Map.Entry) r0;
        r1 = r0.getKey();
        r1 = (java.lang.String) r1;
        r5 = "^\\d+$";
        r1 = r1.matches(r5);
        if (r1 == 0) goto L_0x001c;
    L_0x0036:
        r1 = r0.getKey();
        r1 = (java.lang.String) r1;
        r5 = java.lang.Long.parseLong(r1);
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r10 = "localLog:";
        r1 = r1.append(r10);
        r10 = r0.getValue();
        r1 = r1.append(r10);
        r1 = r1.toString();
        r10 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r1, r10);
        r1 = r0.getValue();
        r1 = (java.lang.String) r1;
        r10 = com.mqunar.qutui.model.LogModel.class;
        r1 = com.alibaba.fastjson.JSON.parseObject(r1, r10);
        r1 = (com.mqunar.qutui.model.LogModel) r1;
        r10 = 600000; // 0x927c0 float:8.40779E-40 double:2.964394E-318;
        r10 = r10 + r5;
        r12 = java.lang.System.currentTimeMillis();
        r10 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1));
        if (r10 >= 0) goto L_0x0078;
    L_0x0076:
        if (r1 != 0) goto L_0x014e;
    L_0x0078:
        if (r1 != 0) goto L_0x015b;
    L_0x007a:
        r1 = new com.mqunar.qutui.model.LogModel;
        r1.<init>();
        r1.startTime = r5;
        r5 = r1;
    L_0x0082:
        r6 = r3;
    L_0x0083:
        r1 = r5.calledDatas;
        r1 = r1.size();
        if (r6 >= r1) goto L_0x00b0;
    L_0x008b:
        r1 = r5.calledDatas;
        r1 = r1.get(r6);
        r1 = (com.mqunar.qutui.model.LogModel.CallData) r1;
        r1 = r1.key;
        r10 = r14.a;
        r1 = r1.equals(r10);
        if (r1 == 0) goto L_0x0149;
    L_0x009d:
        r1 = r14.b;
        if (r1 == 0) goto L_0x0139;
    L_0x00a1:
        r1 = r5.calledDatas;
        r1 = r1.get(r6);
        r1 = (com.mqunar.qutui.model.LogModel.CallData) r1;
        r2 = r1.effectiveCount;
        r2 = r2 + 1;
        r1.effectiveCount = r2;
    L_0x00af:
        r2 = r7;
    L_0x00b0:
        if (r2 != 0) goto L_0x00c0;
    L_0x00b2:
        r1 = r5.calledDatas;
        r2 = new com.mqunar.qutui.model.LogModel$CallData;
        r6 = r14.a;
        r10 = r14.b;
        r2.<init>(r6, r10);
        r1.add(r2);
    L_0x00c0:
        r1 = java.lang.System.currentTimeMillis();
        r5.endTime = r1;
        r0 = r0.getKey();
        r0 = (java.lang.String) r0;
        r1 = com.alibaba.fastjson.JSON.toJSONString(r5);
        r8.putString(r0, r1);
        r0 = r7;
        r1 = r4;
    L_0x00d5:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "needUpload = ";
        r2 = r2.append(r4);
        r2 = r2.append(r1);
        r2 = r2.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r2, r4);
        if (r1 == 0) goto L_0x0153;
    L_0x00ef:
        if (r0 == 0) goto L_0x0153;
    L_0x00f1:
        if (r0 != 0) goto L_0x012c;
    L_0x00f3:
        r2 = java.lang.System.currentTimeMillis();
        r0 = new com.mqunar.qutui.model.LogModel;
        r0.<init>();
        r0.startTime = r2;
        r4 = r0.calledDatas;
        r5 = new com.mqunar.qutui.model.LogModel$CallData;
        r6 = r14.a;
        r7 = r14.b;
        r5.<init>(r6, r7);
        r4.add(r5);
        r4 = java.lang.System.currentTimeMillis();
        r0.endTime = r4;
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r2 = r4.append(r2);
        r3 = "";
        r2 = r2.append(r3);
        r2 = r2.toString();
        r0 = com.alibaba.fastjson.JSON.toJSONString(r0);
        r8.putString(r2, r0);
    L_0x012c:
        r0 = r14.c;
        r0.a(r8);
        if (r1 == 0) goto L_0x0138;
    L_0x0133:
        r0 = r14.c;
        r0.d();
    L_0x0138:
        return;
    L_0x0139:
        r1 = r5.calledDatas;
        r1 = r1.get(r6);
        r1 = (com.mqunar.qutui.model.LogModel.CallData) r1;
        r2 = r1.invalidCount;
        r2 = r2 + 1;
        r1.invalidCount = r2;
        goto L_0x00af;
    L_0x0149:
        r1 = r6 + 1;
        r6 = r1;
        goto L_0x0083;
    L_0x014e:
        if (r4 != 0) goto L_0x0157;
    L_0x0150:
        r0 = r2;
        r1 = r7;
        goto L_0x00d5;
    L_0x0153:
        r2 = r0;
        r4 = r1;
        goto L_0x001c;
    L_0x0157:
        r0 = r2;
        r1 = r4;
        goto L_0x00d5;
    L_0x015b:
        r5 = r1;
        goto L_0x0082;
    L_0x015e:
        r0 = r2;
        r1 = r4;
        goto L_0x00f1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.qutui.n.run():void");
    }
}
