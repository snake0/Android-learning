package com.alibaba.fastjson.serializer;

public class MapSerializer implements ObjectSerializer {
    public static MapSerializer instance = new MapSerializer();

    /* JADX WARNING: Removed duplicated region for block: B:101:0x017e A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00f2 A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x01a7 A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x010f A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00e6 A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00f2 A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:101:0x017e A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x010f A:{Catch:{ all -> 0x0114 }} */
    /* JADX WARNING: Removed duplicated region for block: B:110:0x01a7 A:{Catch:{ all -> 0x0114 }} */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r13, java.lang.Object r14, java.lang.Object r15, java.lang.reflect.Type r16) {
        /*
        r12 = this;
        r9 = r13.getWriter();
        if (r14 != 0) goto L_0x000a;
    L_0x0006:
        r9.writeNull();
    L_0x0009:
        return;
    L_0x000a:
        r1 = r14;
        r1 = (java.util.Map) r1;
        r2 = com.alibaba.fastjson.serializer.SerializerFeature.SortField;
        r2 = r9.isEnabled(r2);
        if (r2 == 0) goto L_0x01e2;
    L_0x0015:
        r2 = r1 instanceof java.util.SortedMap;
        if (r2 != 0) goto L_0x01e2;
    L_0x0019:
        r2 = r1 instanceof java.util.LinkedHashMap;
        if (r2 != 0) goto L_0x01e2;
    L_0x001d:
        r2 = new java.util.TreeMap;	 Catch:{ Exception -> 0x002d }
        r2.<init>(r1);	 Catch:{ Exception -> 0x002d }
        r3 = r2;
    L_0x0023:
        r1 = r13.containsReference(r14);
        if (r1 == 0) goto L_0x0030;
    L_0x0029:
        r13.writeReference(r14);
        goto L_0x0009;
    L_0x002d:
        r2 = move-exception;
        r3 = r1;
        goto L_0x0023;
    L_0x0030:
        r10 = r13.getContext();
        r1 = 0;
        r13.setContext(r10, r14, r15, r1);
        r1 = 123; // 0x7b float:1.72E-43 double:6.1E-322;
        r9.write(r1);	 Catch:{ all -> 0x0114 }
        r13.incrementIndent();	 Catch:{ all -> 0x0114 }
        r5 = 0;
        r4 = 0;
        r1 = 1;
        r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName;	 Catch:{ all -> 0x0114 }
        r2 = r9.isEnabled(r2);	 Catch:{ all -> 0x0114 }
        if (r2 == 0) goto L_0x005c;
    L_0x004b:
        r1 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY;	 Catch:{ all -> 0x0114 }
        r9.writeFieldName(r1);	 Catch:{ all -> 0x0114 }
        r1 = r14.getClass();	 Catch:{ all -> 0x0114 }
        r1 = r1.getName();	 Catch:{ all -> 0x0114 }
        r9.writeString(r1);	 Catch:{ all -> 0x0114 }
        r1 = 0;
    L_0x005c:
        r2 = r3.entrySet();	 Catch:{ all -> 0x0114 }
        r11 = r2.iterator();	 Catch:{ all -> 0x0114 }
        r8 = r1;
    L_0x0065:
        r1 = r11.hasNext();	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x01c1;
    L_0x006b:
        r1 = r11.next();	 Catch:{ all -> 0x0114 }
        r1 = (java.util.Map.Entry) r1;	 Catch:{ all -> 0x0114 }
        r6 = r1.getValue();	 Catch:{ all -> 0x0114 }
        r2 = r1.getKey();	 Catch:{ all -> 0x0114 }
        r1 = r13.getPropertyPreFiltersDirect();	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0095;
    L_0x007f:
        r1 = r1.size();	 Catch:{ all -> 0x0114 }
        if (r1 <= 0) goto L_0x0095;
    L_0x0085:
        if (r2 == 0) goto L_0x008b;
    L_0x0087:
        r1 = r2 instanceof java.lang.String;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0119;
    L_0x008b:
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ all -> 0x0114 }
        r1 = r0;
        r1 = com.alibaba.fastjson.serializer.FilterUtils.applyName(r13, r14, r1);	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0065;
    L_0x0095:
        r1 = r13.getPropertyFiltersDirect();	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x00b1;
    L_0x009b:
        r1 = r1.size();	 Catch:{ all -> 0x0114 }
        if (r1 <= 0) goto L_0x00b1;
    L_0x00a1:
        if (r2 == 0) goto L_0x00a7;
    L_0x00a3:
        r1 = r2 instanceof java.lang.String;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0133;
    L_0x00a7:
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ all -> 0x0114 }
        r1 = r0;
        r1 = com.alibaba.fastjson.serializer.FilterUtils.apply(r13, r14, r1, r6);	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0065;
    L_0x00b1:
        r1 = r13.getNameFiltersDirect();	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x00c9;
    L_0x00b7:
        r1 = r1.size();	 Catch:{ all -> 0x0114 }
        if (r1 <= 0) goto L_0x00c9;
    L_0x00bd:
        if (r2 == 0) goto L_0x00c3;
    L_0x00bf:
        r1 = r2 instanceof java.lang.String;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x014d;
    L_0x00c3:
        r2 = (java.lang.String) r2;	 Catch:{ all -> 0x0114 }
        r2 = com.alibaba.fastjson.serializer.FilterUtils.processKey(r13, r14, r2, r6);	 Catch:{ all -> 0x0114 }
    L_0x00c9:
        r1 = r13.getValueFiltersDirect();	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x01df;
    L_0x00cf:
        r1 = r1.size();	 Catch:{ all -> 0x0114 }
        if (r1 <= 0) goto L_0x01df;
    L_0x00d5:
        if (r2 == 0) goto L_0x00db;
    L_0x00d7:
        r1 = r2 instanceof java.lang.String;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0165;
    L_0x00db:
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ all -> 0x0114 }
        r1 = r0;
        r1 = com.alibaba.fastjson.serializer.FilterUtils.processValue(r13, r14, r1, r6);	 Catch:{ all -> 0x0114 }
        r7 = r1;
    L_0x00e4:
        if (r7 != 0) goto L_0x00ee;
    L_0x00e6:
        r1 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue;	 Catch:{ all -> 0x0114 }
        r1 = r13.isEnabled(r1);	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0065;
    L_0x00ee:
        r1 = r2 instanceof java.lang.String;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x017e;
    L_0x00f2:
        r0 = r2;
        r0 = (java.lang.String) r0;	 Catch:{ all -> 0x0114 }
        r1 = r0;
        if (r8 != 0) goto L_0x00fd;
    L_0x00f8:
        r6 = 44;
        r9.write(r6);	 Catch:{ all -> 0x0114 }
    L_0x00fd:
        r6 = com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat;	 Catch:{ all -> 0x0114 }
        r6 = r9.isEnabled(r6);	 Catch:{ all -> 0x0114 }
        if (r6 == 0) goto L_0x0108;
    L_0x0105:
        r13.println();	 Catch:{ all -> 0x0114 }
    L_0x0108:
        r6 = 1;
        r9.writeFieldName(r1, r6);	 Catch:{ all -> 0x0114 }
    L_0x010c:
        r8 = 0;
        if (r7 != 0) goto L_0x01a7;
    L_0x010f:
        r9.writeNull();	 Catch:{ all -> 0x0114 }
        goto L_0x0065;
    L_0x0114:
        r1 = move-exception;
        r13.setContext(r10);
        throw r1;
    L_0x0119:
        r1 = r2.getClass();	 Catch:{ all -> 0x0114 }
        r1 = r1.isPrimitive();	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x0127;
    L_0x0123:
        r1 = r2 instanceof java.lang.Number;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x0095;
    L_0x0127:
        r1 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ all -> 0x0114 }
        r1 = com.alibaba.fastjson.serializer.FilterUtils.applyName(r13, r14, r1);	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x0095;
    L_0x0131:
        goto L_0x0065;
    L_0x0133:
        r1 = r2.getClass();	 Catch:{ all -> 0x0114 }
        r1 = r1.isPrimitive();	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x0141;
    L_0x013d:
        r1 = r2 instanceof java.lang.Number;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x00b1;
    L_0x0141:
        r1 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ all -> 0x0114 }
        r1 = com.alibaba.fastjson.serializer.FilterUtils.apply(r13, r14, r1, r6);	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x00b1;
    L_0x014b:
        goto L_0x0065;
    L_0x014d:
        r1 = r2.getClass();	 Catch:{ all -> 0x0114 }
        r1 = r1.isPrimitive();	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x015b;
    L_0x0157:
        r1 = r2 instanceof java.lang.Number;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x00c9;
    L_0x015b:
        r1 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ all -> 0x0114 }
        r2 = com.alibaba.fastjson.serializer.FilterUtils.processKey(r13, r14, r1, r6);	 Catch:{ all -> 0x0114 }
        goto L_0x00c9;
    L_0x0165:
        r1 = r2.getClass();	 Catch:{ all -> 0x0114 }
        r1 = r1.isPrimitive();	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x0173;
    L_0x016f:
        r1 = r2 instanceof java.lang.Number;	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x01df;
    L_0x0173:
        r1 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ all -> 0x0114 }
        r1 = com.alibaba.fastjson.serializer.FilterUtils.processValue(r13, r14, r1, r6);	 Catch:{ all -> 0x0114 }
        r7 = r1;
        goto L_0x00e4;
    L_0x017e:
        if (r8 != 0) goto L_0x0185;
    L_0x0180:
        r1 = 44;
        r9.write(r1);	 Catch:{ all -> 0x0114 }
    L_0x0185:
        r1 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible;	 Catch:{ all -> 0x0114 }
        r1 = r9.isEnabled(r1);	 Catch:{ all -> 0x0114 }
        if (r1 != 0) goto L_0x0195;
    L_0x018d:
        r1 = com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringKeyAsString;	 Catch:{ all -> 0x0114 }
        r1 = r9.isEnabled(r1);	 Catch:{ all -> 0x0114 }
        if (r1 == 0) goto L_0x01a3;
    L_0x0195:
        r1 = com.alibaba.fastjson.JSON.toJSONString(r2);	 Catch:{ all -> 0x0114 }
        r13.write(r1);	 Catch:{ all -> 0x0114 }
    L_0x019c:
        r1 = 58;
        r9.write(r1);	 Catch:{ all -> 0x0114 }
        goto L_0x010c;
    L_0x01a3:
        r13.write(r2);	 Catch:{ all -> 0x0114 }
        goto L_0x019c;
    L_0x01a7:
        r6 = r7.getClass();	 Catch:{ all -> 0x0114 }
        if (r6 != r5) goto L_0x01b7;
    L_0x01ad:
        r1 = 0;
        r4.write(r13, r7, r2, r1);	 Catch:{ all -> 0x0114 }
        r1 = r4;
        r2 = r5;
    L_0x01b3:
        r4 = r1;
        r5 = r2;
        goto L_0x0065;
    L_0x01b7:
        r1 = r13.getObjectWriter(r6);	 Catch:{ all -> 0x0114 }
        r4 = 0;
        r1.write(r13, r7, r2, r4);	 Catch:{ all -> 0x0114 }
        r2 = r6;
        goto L_0x01b3;
    L_0x01c1:
        r13.setContext(r10);
        r13.decrementIdent();
        r1 = com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat;
        r1 = r9.isEnabled(r1);
        if (r1 == 0) goto L_0x01d8;
    L_0x01cf:
        r1 = r3.size();
        if (r1 <= 0) goto L_0x01d8;
    L_0x01d5:
        r13.println();
    L_0x01d8:
        r1 = 125; // 0x7d float:1.75E-43 double:6.2E-322;
        r9.write(r1);
        goto L_0x0009;
    L_0x01df:
        r7 = r6;
        goto L_0x00e4;
    L_0x01e2:
        r3 = r1;
        goto L_0x0023;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.MapSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type):void");
    }
}
