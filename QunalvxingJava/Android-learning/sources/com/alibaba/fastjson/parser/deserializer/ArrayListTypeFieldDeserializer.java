package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

public class ArrayListTypeFieldDeserializer extends FieldDeserializer {
    private ObjectDeserializer deserializer;
    private int itemFastMatchToken;
    private final Type itemType;

    public ArrayListTypeFieldDeserializer(ParserConfig parserConfig, Class<?> cls, FieldInfo fieldInfo) {
        super(cls, fieldInfo);
        if (getFieldType() instanceof ParameterizedType) {
            this.itemType = ((ParameterizedType) getFieldType()).getActualTypeArguments()[0];
        } else {
            this.itemType = Object.class;
        }
    }

    public int getFastMatchToken() {
        return 14;
    }

    public void parseField(DefaultJSONParser defaultJSONParser, Object obj, Type type, Map<String, Object> map) {
        if (defaultJSONParser.getLexer().token() == 8) {
            setValue(obj, null);
            return;
        }
        ArrayList arrayList = new ArrayList();
        ParseContext context = defaultJSONParser.getContext();
        defaultJSONParser.setContext(context, obj, this.fieldInfo.getName());
        parseArray(defaultJSONParser, type, arrayList);
        defaultJSONParser.setContext(context);
        if (obj == null) {
            map.put(this.fieldInfo.getName(), arrayList);
        } else {
            setValue(obj, (Object) arrayList);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0069  */
    public final void parseArray(com.alibaba.fastjson.parser.DefaultJSONParser r13, java.lang.reflect.Type r14, java.util.Collection r15) {
        /*
        r12 = this;
        r5 = 0;
        r6 = -1;
        r11 = 16;
        r1 = r12.itemType;
        r4 = r12.deserializer;
        r0 = r1 instanceof java.lang.reflect.TypeVariable;
        if (r0 == 0) goto L_0x00fa;
    L_0x000c:
        r0 = r14 instanceof java.lang.reflect.ParameterizedType;
        if (r0 == 0) goto L_0x00fa;
    L_0x0010:
        r0 = r1;
        r0 = (java.lang.reflect.TypeVariable) r0;
        r2 = r14;
        r2 = (java.lang.reflect.ParameterizedType) r2;
        r3 = 0;
        r7 = r2.getRawType();
        r7 = r7 instanceof java.lang.Class;
        if (r7 == 0) goto L_0x0100;
    L_0x001f:
        r3 = r2.getRawType();
        r3 = (java.lang.Class) r3;
        r7 = r3;
    L_0x0026:
        if (r7 == 0) goto L_0x00fd;
    L_0x0028:
        r3 = r7.getTypeParameters();
        r8 = r3.length;
        r3 = r5;
    L_0x002e:
        if (r3 >= r8) goto L_0x00fd;
    L_0x0030:
        r9 = r7.getTypeParameters();
        r9 = r9[r3];
        r9 = r9.getName();
        r10 = r0.getName();
        r9 = r9.equals(r10);
        if (r9 == 0) goto L_0x00a3;
    L_0x0044:
        r0 = r3;
    L_0x0045:
        if (r0 == r6) goto L_0x00fa;
    L_0x0047:
        r1 = r2.getActualTypeArguments();
        r1 = r1[r0];
        r0 = r12.itemType;
        r0 = r1.equals(r0);
        if (r0 != 0) goto L_0x00fa;
    L_0x0055:
        r0 = r13.getConfig();
        r0 = r0.getDeserializer(r1);
    L_0x005d:
        r3 = r13.getLexer();
        r2 = r3.token();
        r4 = 14;
        if (r2 == r4) goto L_0x00a6;
    L_0x0069:
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r1 = "exepct '[', but ";
        r0 = r0.append(r1);
        r1 = r3.token();
        r1 = com.alibaba.fastjson.parser.JSONToken.name(r1);
        r0 = r0.append(r1);
        r0 = r0.toString();
        if (r14 == 0) goto L_0x009d;
    L_0x0086:
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r0 = r1.append(r0);
        r1 = ", type : ";
        r0 = r0.append(r1);
        r0 = r0.append(r14);
        r0 = r0.toString();
    L_0x009d:
        r1 = new com.alibaba.fastjson.JSONException;
        r1.<init>(r0);
        throw r1;
    L_0x00a3:
        r3 = r3 + 1;
        goto L_0x002e;
    L_0x00a6:
        if (r0 != 0) goto L_0x00ba;
    L_0x00a8:
        r0 = r13.getConfig();
        r0 = r0.getDeserializer(r1);
        r12.deserializer = r0;
        r2 = r12.deserializer;
        r2 = r2.getFastMatchToken();
        r12.itemFastMatchToken = r2;
    L_0x00ba:
        r2 = r12.itemFastMatchToken;
        r3.nextToken(r2);
        r2 = r5;
    L_0x00c0:
        r4 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas;
        r4 = r3.isEnabled(r4);
        if (r4 == 0) goto L_0x00d2;
    L_0x00c8:
        r4 = r3.token();
        if (r4 != r11) goto L_0x00d2;
    L_0x00ce:
        r3.nextToken();
        goto L_0x00c8;
    L_0x00d2:
        r4 = r3.token();
        r5 = 15;
        if (r4 != r5) goto L_0x00de;
    L_0x00da:
        r3.nextToken(r11);
        return;
    L_0x00de:
        r4 = java.lang.Integer.valueOf(r2);
        r4 = r0.deserialze(r13, r1, r4);
        r15.add(r4);
        r13.checkListResolve(r15);
        r4 = r3.token();
        if (r4 != r11) goto L_0x00f7;
    L_0x00f2:
        r4 = r12.itemFastMatchToken;
        r3.nextToken(r4);
    L_0x00f7:
        r2 = r2 + 1;
        goto L_0x00c0;
    L_0x00fa:
        r0 = r4;
        goto L_0x005d;
    L_0x00fd:
        r0 = r6;
        goto L_0x0045;
    L_0x0100:
        r7 = r3;
        goto L_0x0026;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ArrayListTypeFieldDeserializer.parseArray(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.util.Collection):void");
    }
}
