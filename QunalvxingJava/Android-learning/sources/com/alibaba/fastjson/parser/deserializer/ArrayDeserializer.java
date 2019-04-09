package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public class ArrayDeserializer implements ObjectDeserializer {
    public static final ArrayDeserializer instance = new ArrayDeserializer();

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        if (lexer.token() == 8) {
            lexer.nextToken(16);
            return null;
        } else if (lexer.token() == 4) {
            T bytesValue = lexer.bytesValue();
            lexer.nextToken(16);
            return bytesValue;
        } else {
            Type genericComponentType;
            if (type instanceof GenericArrayType) {
                genericComponentType = ((GenericArrayType) type).getGenericComponentType();
                if (genericComponentType instanceof TypeVariable) {
                    TypeVariable typeVariable = (TypeVariable) genericComponentType;
                    Type type2 = defaultJSONParser.getContext().getType();
                    if (type2 instanceof ParameterizedType) {
                        T t;
                        ParameterizedType parameterizedType = (ParameterizedType) type2;
                        Type rawType = parameterizedType.getRawType();
                        if (rawType instanceof Class) {
                            TypeVariable[] typeParameters = ((Class) rawType).getTypeParameters();
                            T t2 = null;
                            for (int i = 0; i < typeParameters.length; i++) {
                                if (typeParameters[i].getName().equals(typeVariable.getName())) {
                                    t2 = parameterizedType.getActualTypeArguments()[i];
                                }
                            }
                            t = t2;
                        } else {
                            t = null;
                        }
                        if (t instanceof Class) {
                            genericComponentType = (Class) t;
                        } else {
                            genericComponentType = Object.class;
                        }
                    } else {
                        genericComponentType = Object.class;
                    }
                } else {
                    Class cls = (Class) genericComponentType;
                }
            } else {
                genericComponentType = ((Class) type).getComponentType();
            }
            JSONArray jSONArray = new JSONArray();
            defaultJSONParser.parseArray(genericComponentType, jSONArray, obj);
            return toObjectArray(defaultJSONParser, genericComponentType, jSONArray);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0059  */
    private <T> T toObjectArray(com.alibaba.fastjson.parser.DefaultJSONParser r12, java.lang.Class<?> r13, com.alibaba.fastjson.JSONArray r14) {
        /*
        r11 = this;
        r3 = 0;
        r6 = 0;
        if (r14 != 0) goto L_0x0006;
    L_0x0004:
        r0 = r3;
    L_0x0005:
        return r0;
    L_0x0006:
        r8 = r14.size();
        r4 = java.lang.reflect.Array.newInstance(r13, r8);
        r7 = r6;
    L_0x000f:
        if (r7 >= r8) goto L_0x0065;
    L_0x0011:
        r0 = r14.get(r7);
        if (r0 != r14) goto L_0x001e;
    L_0x0017:
        java.lang.reflect.Array.set(r4, r7, r4);
    L_0x001a:
        r0 = r7 + 1;
        r7 = r0;
        goto L_0x000f;
    L_0x001e:
        r1 = r13.isArray();
        if (r1 == 0) goto L_0x0035;
    L_0x0024:
        r1 = r13.isInstance(r0);
        if (r1 == 0) goto L_0x002e;
    L_0x002a:
        java.lang.reflect.Array.set(r4, r7, r0);
        goto L_0x001a;
    L_0x002e:
        r0 = (com.alibaba.fastjson.JSONArray) r0;
        r0 = r11.toObjectArray(r12, r13, r0);
        goto L_0x002a;
    L_0x0035:
        r1 = r0 instanceof com.alibaba.fastjson.JSONArray;
        if (r1 == 0) goto L_0x006f;
    L_0x0039:
        r1 = r0;
        r1 = (com.alibaba.fastjson.JSONArray) r1;
        r9 = r1.size();
        r5 = r6;
        r2 = r6;
    L_0x0042:
        if (r5 >= r9) goto L_0x0051;
    L_0x0044:
        r10 = r1.get(r5);
        if (r10 != r14) goto L_0x004e;
    L_0x004a:
        r1.set(r7, r4);
        r2 = 1;
    L_0x004e:
        r5 = r5 + 1;
        goto L_0x0042;
    L_0x0051:
        if (r2 == 0) goto L_0x006f;
    L_0x0053:
        r1 = r1.toArray();
    L_0x0057:
        if (r1 != 0) goto L_0x006d;
    L_0x0059:
        r1 = r12.getConfig();
        r0 = com.alibaba.fastjson.util.TypeUtils.cast(r0, r13, r1);
    L_0x0061:
        java.lang.reflect.Array.set(r4, r7, r0);
        goto L_0x001a;
    L_0x0065:
        r14.setRelatedArray(r4);
        r14.setComponentType(r13);
        r0 = r4;
        goto L_0x0005;
    L_0x006d:
        r0 = r1;
        goto L_0x0061;
    L_0x006f:
        r1 = r3;
        goto L_0x0057;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.ArrayDeserializer.toObjectArray(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.Class, com.alibaba.fastjson.JSONArray):java.lang.Object");
    }

    public int getFastMatchToken() {
        return 14;
    }
}
