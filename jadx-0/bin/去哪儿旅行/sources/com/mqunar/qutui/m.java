package com.mqunar.qutui;

import java.util.Map;

class m implements Runnable {
    final /* synthetic */ Map a;
    final /* synthetic */ Map b;
    final /* synthetic */ k c;

    m(k kVar, Map map, Map map2) {
        this.c = kVar;
        this.a = map;
        this.b = map2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:70:0x00ab A:{SYNTHETIC} */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x00ef  */
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
        if (r0 == 0) goto L_0x01e0;
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
        if (r1 != 0) goto L_0x01a0;
    L_0x0078:
        if (r1 != 0) goto L_0x01dd;
    L_0x007a:
        r1 = new com.mqunar.qutui.model.LogModel;
        r1.<init>();
        r1.startTime = r5;
        r5 = r1;
    L_0x0082:
        r1 = r14.a;
        if (r1 == 0) goto L_0x0095;
    L_0x0086:
        r1 = r14.a;
        r1 = r1.size();
        if (r1 <= 0) goto L_0x0095;
    L_0x008e:
        r1 = r5.installMap;
        r2 = r14.a;
        r1.putAll(r2);
    L_0x0095:
        r1 = r14.b;
        if (r1 == 0) goto L_0x0119;
    L_0x0099:
        r1 = r14.b;
        r1 = r1.size();
        if (r1 <= 0) goto L_0x0119;
    L_0x00a1:
        r1 = r14.b;
        r1 = r1.keySet();
        r10 = r1.iterator();
    L_0x00ab:
        r1 = r10.hasNext();
        if (r1 == 0) goto L_0x0119;
    L_0x00b1:
        r1 = r10.next();
        r1 = (java.lang.String) r1;
        r6 = r3;
    L_0x00b8:
        r2 = r5.callDatas;
        r2 = r2.size();
        if (r6 >= r2) goto L_0x01da;
    L_0x00c0:
        r2 = r5.callDatas;
        r2 = r2.get(r6);
        r2 = (com.mqunar.qutui.model.LogModel.CallData) r2;
        r2 = r2.key;
        r2 = r2.equals(r1);
        if (r2 == 0) goto L_0x0115;
    L_0x00d0:
        r2 = r14.b;
        r2 = r2.get(r1);
        r2 = (java.lang.Boolean) r2;
        r2 = r2.booleanValue();
        if (r2 == 0) goto L_0x0106;
    L_0x00de:
        r2 = r5.callDatas;
        r2 = r2.get(r6);
        r2 = (com.mqunar.qutui.model.LogModel.CallData) r2;
        r6 = r2.effectiveCount;
        r6 = r6 + 1;
        r2.effectiveCount = r6;
    L_0x00ec:
        r2 = r7;
    L_0x00ed:
        if (r2 != 0) goto L_0x00ab;
    L_0x00ef:
        r6 = r5.callDatas;
        r11 = new com.mqunar.qutui.model.LogModel$CallData;
        r2 = r14.b;
        r2 = r2.get(r1);
        r2 = (java.lang.Boolean) r2;
        r2 = r2.booleanValue();
        r11.<init>(r1, r2);
        r6.add(r11);
        goto L_0x00ab;
    L_0x0106:
        r2 = r5.callDatas;
        r2 = r2.get(r6);
        r2 = (com.mqunar.qutui.model.LogModel.CallData) r2;
        r6 = r2.invalidCount;
        r6 = r6 + 1;
        r2.invalidCount = r6;
        goto L_0x00ec;
    L_0x0115:
        r2 = r6 + 1;
        r6 = r2;
        goto L_0x00b8;
    L_0x0119:
        r1 = java.lang.System.currentTimeMillis();
        r5.endTime = r1;
        r0 = r0.getKey();
        r0 = (java.lang.String) r0;
        r1 = com.alibaba.fastjson.JSON.toJSONString(r5);
        r8.putString(r0, r1);
        r0 = r7;
        r1 = r4;
    L_0x012e:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r4 = "needUpload = ";
        r2 = r2.append(r4);
        r2 = r2.append(r1);
        r2 = r2.toString();
        r4 = new java.lang.Object[r3];
        com.mqunar.tools.log.QLog.i(r2, r4);
        if (r1 == 0) goto L_0x01a5;
    L_0x0148:
        if (r0 == 0) goto L_0x01a5;
    L_0x014a:
        r4 = r1;
    L_0x014b:
        if (r0 != 0) goto L_0x01c9;
    L_0x014d:
        r2 = java.lang.System.currentTimeMillis();
        r5 = new com.mqunar.qutui.model.LogModel;
        r5.<init>();
        r5.startTime = r2;
        r0 = r14.a;
        if (r0 == 0) goto L_0x0163;
    L_0x015c:
        r0 = r5.installMap;
        r1 = r14.a;
        r0.putAll(r1);
    L_0x0163:
        r0 = r14.b;
        if (r0 == 0) goto L_0x01a9;
    L_0x0167:
        r0 = r14.b;
        r0 = r0.size();
        if (r0 <= 0) goto L_0x01a9;
    L_0x016f:
        r0 = r14.b;
        r0 = r0.entrySet();
        r6 = r0.iterator();
    L_0x0179:
        r0 = r6.hasNext();
        if (r0 == 0) goto L_0x01a9;
    L_0x017f:
        r0 = r6.next();
        r0 = (java.util.Map.Entry) r0;
        r7 = r5.callDatas;
        r9 = new com.mqunar.qutui.model.LogModel$CallData;
        r1 = r0.getKey();
        r1 = (java.lang.String) r1;
        r0 = r0.getValue();
        r0 = (java.lang.Boolean) r0;
        r0 = r0.booleanValue();
        r9.<init>(r1, r0);
        r7.add(r9);
        goto L_0x0179;
    L_0x01a0:
        if (r4 != 0) goto L_0x01d6;
    L_0x01a2:
        r0 = r2;
        r1 = r7;
        goto L_0x012e;
    L_0x01a5:
        r2 = r0;
        r4 = r1;
        goto L_0x001c;
    L_0x01a9:
        r0 = java.lang.System.currentTimeMillis();
        r5.endTime = r0;
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r0 = r0.append(r2);
        r1 = "";
        r0 = r0.append(r1);
        r0 = r0.toString();
        r1 = com.alibaba.fastjson.JSON.toJSONString(r5);
        r8.putString(r0, r1);
    L_0x01c9:
        r0 = r14.c;
        r0.a(r8);
        if (r4 == 0) goto L_0x01d5;
    L_0x01d0:
        r0 = r14.c;
        r0.d();
    L_0x01d5:
        return;
    L_0x01d6:
        r0 = r2;
        r1 = r4;
        goto L_0x012e;
    L_0x01da:
        r2 = r3;
        goto L_0x00ed;
    L_0x01dd:
        r5 = r1;
        goto L_0x0082;
    L_0x01e0:
        r0 = r2;
        goto L_0x014b;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mqunar.qutui.m.run():void");
    }
}
