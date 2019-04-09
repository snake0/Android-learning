package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.serializer.FilterUtils;
import com.alibaba.fastjson.util.DeserializeBeanInfo;
import com.alibaba.fastjson.util.FieldInfo;
import com.mqunar.qapm.domain.UIData;
import java.lang.reflect.Constructor;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class JavaBeanDeserializer implements ObjectDeserializer {
    private DeserializeBeanInfo beanInfo;
    private final Class<?> clazz;
    private final Map<String, FieldDeserializer> feildDeserializerMap;
    private final List<FieldDeserializer> fieldDeserializers;
    private final List<FieldDeserializer> sortedFieldDeserializers;

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this.feildDeserializerMap = new IdentityHashMap();
        this.fieldDeserializers = new ArrayList();
        this.sortedFieldDeserializers = new ArrayList();
        this.clazz = cls;
        this.beanInfo = DeserializeBeanInfo.computeSetters(cls, type);
        for (FieldInfo addFieldDeserializer : this.beanInfo.getFieldList()) {
            addFieldDeserializer(parserConfig, cls, addFieldDeserializer);
        }
        for (FieldInfo addFieldDeserializer2 : this.beanInfo.getSortedFieldList()) {
            this.sortedFieldDeserializers.add((FieldDeserializer) this.feildDeserializerMap.get(addFieldDeserializer2.getName().intern()));
        }
    }

    public Map<String, FieldDeserializer> getFieldDeserializerMap() {
        return this.feildDeserializerMap;
    }

    private void addFieldDeserializer(ParserConfig parserConfig, Class<?> cls, FieldInfo fieldInfo) {
        String intern = fieldInfo.getName().intern();
        FieldDeserializer createFieldDeserializer = createFieldDeserializer(parserConfig, cls, fieldInfo);
        this.feildDeserializerMap.put(intern, createFieldDeserializer);
        this.fieldDeserializers.add(createFieldDeserializer);
    }

    public FieldDeserializer createFieldDeserializer(ParserConfig parserConfig, Class<?> cls, FieldInfo fieldInfo) {
        return parserConfig.createFieldDeserializer(parserConfig, cls, fieldInfo);
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        if ((type instanceof Class) && this.clazz.isInterface()) {
            Class cls = (Class) type;
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{cls}, new JSONObject());
        } else if (this.beanInfo.getDefaultConstructor() == null) {
            return null;
        } else {
            try {
                Object newInstance;
                Constructor defaultConstructor = this.beanInfo.getDefaultConstructor();
                if (defaultConstructor.getParameterTypes().length == 0) {
                    newInstance = defaultConstructor.newInstance(new Object[0]);
                } else {
                    newInstance = defaultConstructor.newInstance(new Object[]{defaultJSONParser.getContext().getObject()});
                }
                if (!defaultJSONParser.isEnabled(Feature.InitStringFieldAsEmpty)) {
                    return newInstance;
                }
                for (FieldInfo fieldInfo : this.beanInfo.getFieldList()) {
                    if (fieldInfo.getFieldClass() == String.class) {
                        try {
                            fieldInfo.set(newInstance, "");
                        } catch (Exception e) {
                            throw new JSONException("create instance error, class " + this.clazz.getName(), e);
                        }
                    }
                }
                return newInstance;
            } catch (Exception e2) {
                throw new JSONException("create instance error, class " + this.clazz.getName(), e2);
            }
        }
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return deserialze(defaultJSONParser, type, obj, null);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        if (lexer.token() != 14) {
            throw new JSONException(UIData.ERROR);
        }
        Object createInstance = createInstance(defaultJSONParser, type);
        int size = this.sortedFieldDeserializers.size();
        int i = 0;
        while (i < size) {
            char c = i == size + -1 ? ']' : ',';
            FieldDeserializer fieldDeserializer = (FieldDeserializer) this.sortedFieldDeserializers.get(i);
            Class fieldClass = fieldDeserializer.getFieldClass();
            if (fieldClass == Integer.TYPE) {
                fieldDeserializer.setValue(createInstance, lexer.scanInt(c));
            } else if (fieldClass == String.class) {
                fieldDeserializer.setValue(createInstance, lexer.scanString(c));
            } else if (fieldClass == Long.TYPE) {
                fieldDeserializer.setValue(createInstance, lexer.scanLong(c));
            } else if (fieldClass.isEnum()) {
                fieldDeserializer.setValue(createInstance, lexer.scanEnum(fieldClass, defaultJSONParser.getSymbolTable(), c));
            } else {
                lexer.nextToken(14);
                fieldDeserializer.setValue(createInstance, defaultJSONParser.parseObject(fieldDeserializer.getFieldType()));
                if (c == ']') {
                    if (lexer.token() != 15) {
                        throw new JSONException("syntax error");
                    }
                    lexer.nextToken(16);
                } else if (c == ',' && lexer.token() != 16) {
                    throw new JSONException("syntax error");
                }
            }
            i++;
        }
        lexer.nextToken(16);
        return createInstance;
    }

    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a6  */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:56:0x00d7, B:160:0x02d7, B:173:0x031b] */
    /* JADX WARNING: Missing block: B:54:0x00d3, code skipped:
            if (r3 != null) goto L_0x034b;
     */
    /* JADX WARNING: Missing block: B:55:0x00d5, code skipped:
            if (r6 != null) goto L_0x02ab;
     */
    /* JADX WARNING: Missing block: B:57:?, code skipped:
            r14 = createInstance(r11, r12);
     */
    /* JADX WARNING: Missing block: B:58:0x00db, code skipped:
            if (r2 != null) goto L_0x034d;
     */
    /* JADX WARNING: Missing block: B:60:?, code skipped:
            r1 = r11.setContext(r7, r14, r13);
     */
    /* JADX WARNING: Missing block: B:61:0x00e1, code skipped:
            if (r1 == null) goto L_0x00e6;
     */
    /* JADX WARNING: Missing block: B:62:0x00e3, code skipped:
            r1.setObject(r14);
     */
    /* JADX WARNING: Missing block: B:63:0x00e6, code skipped:
            r11.setContext(r7);
     */
    /* JADX WARNING: Missing block: B:119:0x0210, code skipped:
            if (r4 == null) goto L_0x0215;
     */
    /* JADX WARNING: Missing block: B:120:0x0212, code skipped:
            r4.setObject(r2);
     */
    /* JADX WARNING: Missing block: B:121:0x0215, code skipped:
            r11.setContext(r7);
     */
    /* JADX WARNING: Missing block: B:155:?, code skipped:
            r5 = r10.beanInfo.getFieldList();
            r8 = r5.size();
            r9 = new java.lang.Object[r8];
            r4 = 0;
     */
    /* JADX WARNING: Missing block: B:156:0x02b9, code skipped:
            if (r4 >= r8) goto L_0x02cf;
     */
    /* JADX WARNING: Missing block: B:157:0x02bb, code skipped:
            r9[r4] = r6.get(((com.alibaba.fastjson.util.FieldInfo) r5.get(r4)).getName());
            r4 = r4 + 1;
     */
    /* JADX WARNING: Missing block: B:159:0x02d5, code skipped:
            if (r10.beanInfo.getCreatorConstructor() == null) goto L_0x0313;
     */
    /* JADX WARNING: Missing block: B:161:?, code skipped:
            r1 = r10.beanInfo.getCreatorConstructor().newInstance(r9);
     */
    /* JADX WARNING: Missing block: B:162:0x02e1, code skipped:
            if (r2 == null) goto L_0x02e6;
     */
    /* JADX WARNING: Missing block: B:163:0x02e3, code skipped:
            r2.setObject(r1);
     */
    /* JADX WARNING: Missing block: B:164:0x02e6, code skipped:
            r11.setContext(r7);
     */
    /* JADX WARNING: Missing block: B:165:0x02ec, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:168:0x030f, code skipped:
            throw new com.alibaba.fastjson.JSONException("create instance error, " + r10.beanInfo.getCreatorConstructor().toGenericString(), r1);
     */
    /* JADX WARNING: Missing block: B:169:0x0310, code skipped:
            r1 = th;
     */
    /* JADX WARNING: Missing block: B:172:0x0319, code skipped:
            if (r10.beanInfo.getFactoryMethod() == null) goto L_0x034b;
     */
    /* JADX WARNING: Missing block: B:174:?, code skipped:
            r1 = r10.beanInfo.getFactoryMethod().invoke(null, r9);
     */
    /* JADX WARNING: Missing block: B:175:0x0327, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:178:0x034a, code skipped:
            throw new com.alibaba.fastjson.JSONException("create factory method error, " + r10.beanInfo.getFactoryMethod().toString(), r1);
     */
    /* JADX WARNING: Missing block: B:179:0x034b, code skipped:
            r1 = r3;
     */
    /* JADX WARNING: Missing block: B:180:0x034d, code skipped:
            r1 = r2;
     */
    /* JADX WARNING: Missing block: B:204:?, code skipped:
            return r14;
     */
    /* JADX WARNING: Missing block: B:206:?, code skipped:
            return r14;
     */
    /* JADX WARNING: Missing block: B:207:?, code skipped:
            return r1;
     */
    public <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r11, java.lang.reflect.Type r12, java.lang.Object r13, java.lang.Object r14) {
        /*
        r10 = this;
        r9 = r11.getLexer();
        r1 = r9.token();
        r2 = 8;
        if (r1 != r2) goto L_0x0013;
    L_0x000c:
        r1 = 16;
        r9.nextToken(r1);
        r14 = 0;
    L_0x0012:
        return r14;
    L_0x0013:
        r1 = r11.getContext();
        if (r14 == 0) goto L_0x0358;
    L_0x0019:
        if (r1 == 0) goto L_0x0358;
    L_0x001b:
        r1 = r1.getParentContext();
        r7 = r1;
    L_0x0020:
        r2 = 0;
        r6 = 0;
        r1 = r9.token();	 Catch:{ all -> 0x00a2 }
        r3 = 13;
        if (r1 != r3) goto L_0x003e;
    L_0x002a:
        r1 = 16;
        r9.nextToken(r1);	 Catch:{ all -> 0x00a2 }
        if (r14 != 0) goto L_0x0035;
    L_0x0031:
        r14 = r10.createInstance(r11, r12);	 Catch:{ all -> 0x00a2 }
    L_0x0035:
        if (r2 == 0) goto L_0x003a;
    L_0x0037:
        r2.setObject(r14);
    L_0x003a:
        r11.setContext(r7);
        goto L_0x0012;
    L_0x003e:
        r1 = r9.token();	 Catch:{ all -> 0x00a2 }
        r3 = 14;
        if (r1 != r3) goto L_0x005a;
    L_0x0046:
        r1 = r10.isSupportArrayToBean(r9);	 Catch:{ all -> 0x00a2 }
        if (r1 == 0) goto L_0x005a;
    L_0x004c:
        r1 = r10.deserialzeArrayMapping(r11, r12, r13, r14);	 Catch:{ all -> 0x00a2 }
        if (r2 == 0) goto L_0x0055;
    L_0x0052:
        r2.setObject(r14);
    L_0x0055:
        r11.setContext(r7);
        r14 = r1;
        goto L_0x0012;
    L_0x005a:
        r1 = r9.token();	 Catch:{ all -> 0x00a2 }
        r3 = 12;
        if (r1 == r3) goto L_0x00ad;
    L_0x0062:
        r1 = r9.token();	 Catch:{ all -> 0x00a2 }
        r3 = 16;
        if (r1 == r3) goto L_0x00ad;
    L_0x006a:
        r1 = new java.lang.StringBuffer;	 Catch:{ all -> 0x00a2 }
        r1.<init>();	 Catch:{ all -> 0x00a2 }
        r3 = "syntax error, expect {, actual ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x00a2 }
        r3 = r9.tokenName();	 Catch:{ all -> 0x00a2 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x00a2 }
        r3 = ", pos ";
        r1 = r1.append(r3);	 Catch:{ all -> 0x00a2 }
        r3 = r9.pos();	 Catch:{ all -> 0x00a2 }
        r1 = r1.append(r3);	 Catch:{ all -> 0x00a2 }
        r3 = r13 instanceof java.lang.String;	 Catch:{ all -> 0x00a2 }
        if (r3 == 0) goto L_0x0098;
    L_0x008f:
        r3 = ", fieldName ";
        r3 = r1.append(r3);	 Catch:{ all -> 0x00a2 }
        r3.append(r13);	 Catch:{ all -> 0x00a2 }
    L_0x0098:
        r3 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x00a2 }
        r1 = r1.toString();	 Catch:{ all -> 0x00a2 }
        r3.<init>(r1);	 Catch:{ all -> 0x00a2 }
        throw r3;	 Catch:{ all -> 0x00a2 }
    L_0x00a2:
        r1 = move-exception;
        r3 = r14;
    L_0x00a4:
        if (r2 == 0) goto L_0x00a9;
    L_0x00a6:
        r2.setObject(r3);
    L_0x00a9:
        r11.setContext(r7);
        throw r1;
    L_0x00ad:
        r1 = r11.getResolveStatus();	 Catch:{ all -> 0x00a2 }
        r3 = 2;
        if (r1 != r3) goto L_0x00b8;
    L_0x00b4:
        r1 = 0;
        r11.setResolveStatus(r1);	 Catch:{ all -> 0x00a2 }
    L_0x00b8:
        r4 = r2;
        r2 = r14;
    L_0x00ba:
        r1 = r11.getSymbolTable();	 Catch:{ all -> 0x012f }
        r3 = r9.scanSymbol(r1);	 Catch:{ all -> 0x012f }
        if (r3 != 0) goto L_0x00fb;
    L_0x00c4:
        r1 = r9.token();	 Catch:{ all -> 0x012f }
        r5 = 13;
        if (r1 != r5) goto L_0x00eb;
    L_0x00cc:
        r1 = 16;
        r9.nextToken(r1);	 Catch:{ all -> 0x012f }
        r3 = r2;
        r2 = r4;
    L_0x00d3:
        if (r3 != 0) goto L_0x034b;
    L_0x00d5:
        if (r6 != 0) goto L_0x02ab;
    L_0x00d7:
        r14 = r10.createInstance(r11, r12);	 Catch:{ all -> 0x0310 }
        if (r2 != 0) goto L_0x034d;
    L_0x00dd:
        r1 = r11.setContext(r7, r14, r13);	 Catch:{ all -> 0x00a2 }
    L_0x00e1:
        if (r1 == 0) goto L_0x00e6;
    L_0x00e3:
        r1.setObject(r14);
    L_0x00e6:
        r11.setContext(r7);
        goto L_0x0012;
    L_0x00eb:
        r1 = r9.token();	 Catch:{ all -> 0x012f }
        r5 = 16;
        if (r1 != r5) goto L_0x00fb;
    L_0x00f3:
        r1 = com.alibaba.fastjson.parser.Feature.AllowArbitraryCommas;	 Catch:{ all -> 0x012f }
        r1 = r11.isEnabled(r1);	 Catch:{ all -> 0x012f }
        if (r1 != 0) goto L_0x00ba;
    L_0x00fb:
        r1 = "$ref";
        if (r1 != r3) goto L_0x01c7;
    L_0x00ff:
        r1 = 4;
        r9.nextTokenWithColon(r1);	 Catch:{ all -> 0x012f }
        r1 = r9.token();	 Catch:{ all -> 0x012f }
        r3 = 4;
        if (r1 != r3) goto L_0x0193;
    L_0x010a:
        r3 = r9.stringVal();	 Catch:{ all -> 0x012f }
        r1 = "@";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x012f }
        if (r1 == 0) goto L_0x0134;
    L_0x0116:
        r2 = r7.getObject();	 Catch:{ all -> 0x012f }
    L_0x011a:
        r1 = 13;
        r9.nextToken(r1);	 Catch:{ all -> 0x012f }
        r1 = r9.token();	 Catch:{ all -> 0x012f }
        r3 = 13;
        if (r1 == r3) goto L_0x01b4;
    L_0x0127:
        r1 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x012f }
        r3 = "illegal ref";
        r1.<init>(r3);	 Catch:{ all -> 0x012f }
        throw r1;	 Catch:{ all -> 0x012f }
    L_0x012f:
        r1 = move-exception;
        r3 = r2;
        r2 = r4;
        goto L_0x00a4;
    L_0x0134:
        r1 = "..";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x012f }
        if (r1 == 0) goto L_0x015a;
    L_0x013c:
        r1 = r7.getParentContext();	 Catch:{ all -> 0x012f }
        r5 = r1.getObject();	 Catch:{ all -> 0x012f }
        if (r5 == 0) goto L_0x014c;
    L_0x0146:
        r1 = r1.getObject();	 Catch:{ all -> 0x012f }
    L_0x014a:
        r2 = r1;
        goto L_0x011a;
    L_0x014c:
        r5 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask;	 Catch:{ all -> 0x012f }
        r5.<init>(r1, r3);	 Catch:{ all -> 0x012f }
        r11.addResolveTask(r5);	 Catch:{ all -> 0x012f }
        r1 = 1;
        r11.setResolveStatus(r1);	 Catch:{ all -> 0x012f }
        r1 = r2;
        goto L_0x014a;
    L_0x015a:
        r1 = "$";
        r1 = r1.equals(r3);	 Catch:{ all -> 0x012f }
        if (r1 == 0) goto L_0x0186;
    L_0x0162:
        r1 = r7;
    L_0x0163:
        r5 = r1.getParentContext();	 Catch:{ all -> 0x012f }
        if (r5 == 0) goto L_0x016e;
    L_0x0169:
        r1 = r1.getParentContext();	 Catch:{ all -> 0x012f }
        goto L_0x0163;
    L_0x016e:
        r5 = r1.getObject();	 Catch:{ all -> 0x012f }
        if (r5 == 0) goto L_0x0179;
    L_0x0174:
        r2 = r1.getObject();	 Catch:{ all -> 0x012f }
        goto L_0x011a;
    L_0x0179:
        r5 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask;	 Catch:{ all -> 0x012f }
        r5.<init>(r1, r3);	 Catch:{ all -> 0x012f }
        r11.addResolveTask(r5);	 Catch:{ all -> 0x012f }
        r1 = 1;
        r11.setResolveStatus(r1);	 Catch:{ all -> 0x012f }
        goto L_0x011a;
    L_0x0186:
        r1 = new com.alibaba.fastjson.parser.DefaultJSONParser$ResolveTask;	 Catch:{ all -> 0x012f }
        r1.<init>(r7, r3);	 Catch:{ all -> 0x012f }
        r11.addResolveTask(r1);	 Catch:{ all -> 0x012f }
        r1 = 1;
        r11.setResolveStatus(r1);	 Catch:{ all -> 0x012f }
        goto L_0x011a;
    L_0x0193:
        r1 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x012f }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x012f }
        r3.<init>();	 Catch:{ all -> 0x012f }
        r5 = "illegal ref, ";
        r3 = r3.append(r5);	 Catch:{ all -> 0x012f }
        r5 = r9.token();	 Catch:{ all -> 0x012f }
        r5 = com.alibaba.fastjson.parser.JSONToken.name(r5);	 Catch:{ all -> 0x012f }
        r3 = r3.append(r5);	 Catch:{ all -> 0x012f }
        r3 = r3.toString();	 Catch:{ all -> 0x012f }
        r1.<init>(r3);	 Catch:{ all -> 0x012f }
        throw r1;	 Catch:{ all -> 0x012f }
    L_0x01b4:
        r1 = 16;
        r9.nextToken(r1);	 Catch:{ all -> 0x012f }
        r11.setContext(r7, r2, r13);	 Catch:{ all -> 0x012f }
        if (r4 == 0) goto L_0x01c1;
    L_0x01be:
        r4.setObject(r2);
    L_0x01c1:
        r11.setContext(r7);
        r14 = r2;
        goto L_0x0012;
    L_0x01c7:
        r1 = com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY;	 Catch:{ all -> 0x012f }
        if (r1 != r3) goto L_0x0222;
    L_0x01cb:
        r1 = 4;
        r9.nextTokenWithColon(r1);	 Catch:{ all -> 0x012f }
        r1 = r9.token();	 Catch:{ all -> 0x012f }
        r3 = 4;
        if (r1 != r3) goto L_0x021a;
    L_0x01d6:
        r3 = r9.stringVal();	 Catch:{ all -> 0x012f }
        r1 = 16;
        r9.nextToken(r1);	 Catch:{ all -> 0x012f }
        r1 = r12 instanceof java.lang.Class;	 Catch:{ all -> 0x012f }
        if (r1 == 0) goto L_0x0200;
    L_0x01e3:
        r0 = r12;
        r0 = (java.lang.Class) r0;	 Catch:{ all -> 0x012f }
        r1 = r0;
        r1 = r1.getName();	 Catch:{ all -> 0x012f }
        r1 = r3.equals(r1);	 Catch:{ all -> 0x012f }
        if (r1 == 0) goto L_0x0200;
    L_0x01f1:
        r1 = r9.token();	 Catch:{ all -> 0x012f }
        r3 = 13;
        if (r1 != r3) goto L_0x00ba;
    L_0x01f9:
        r9.nextToken();	 Catch:{ all -> 0x012f }
        r3 = r2;
        r2 = r4;
        goto L_0x00d3;
    L_0x0200:
        r1 = com.alibaba.fastjson.util.TypeUtils.loadClass(r3);	 Catch:{ all -> 0x012f }
        r3 = r11.getConfig();	 Catch:{ all -> 0x012f }
        r3 = r3.getDeserializer(r1);	 Catch:{ all -> 0x012f }
        r14 = r3.deserialze(r11, r1, r13);	 Catch:{ all -> 0x012f }
        if (r4 == 0) goto L_0x0215;
    L_0x0212:
        r4.setObject(r2);
    L_0x0215:
        r11.setContext(r7);
        goto L_0x0012;
    L_0x021a:
        r1 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x012f }
        r3 = "syntax error";
        r1.<init>(r3);	 Catch:{ all -> 0x012f }
        throw r1;	 Catch:{ all -> 0x012f }
    L_0x0222:
        if (r2 != 0) goto L_0x0350;
    L_0x0224:
        if (r6 != 0) goto L_0x0350;
    L_0x0226:
        r2 = r10.createInstance(r11, r12);	 Catch:{ all -> 0x012f }
        if (r2 != 0) goto L_0x0237;
    L_0x022c:
        r6 = new java.util.HashMap;	 Catch:{ all -> 0x012f }
        r1 = r10.fieldDeserializers;	 Catch:{ all -> 0x012f }
        r1 = r1.size();	 Catch:{ all -> 0x012f }
        r6.<init>(r1);	 Catch:{ all -> 0x012f }
    L_0x0237:
        r4 = r11.setContext(r7, r2, r13);	 Catch:{ all -> 0x012f }
        r8 = r4;
        r4 = r2;
    L_0x023d:
        r1 = r10;
        r2 = r11;
        r5 = r12;
        r1 = r1.parseField(r2, r3, r4, r5, r6);	 Catch:{ all -> 0x02a2 }
        if (r1 != 0) goto L_0x0255;
    L_0x0246:
        r1 = r9.token();	 Catch:{ all -> 0x02a2 }
        r2 = 13;
        if (r1 != r2) goto L_0x0354;
    L_0x024e:
        r9.nextToken();	 Catch:{ all -> 0x02a2 }
        r2 = r8;
        r3 = r4;
        goto L_0x00d3;
    L_0x0255:
        r1 = r9.token();	 Catch:{ all -> 0x02a2 }
        r2 = 16;
        if (r1 != r2) goto L_0x0261;
    L_0x025d:
        r2 = r4;
        r4 = r8;
        goto L_0x00ba;
    L_0x0261:
        r1 = r9.token();	 Catch:{ all -> 0x02a2 }
        r2 = 13;
        if (r1 != r2) goto L_0x0272;
    L_0x0269:
        r1 = 16;
        r9.nextToken(r1);	 Catch:{ all -> 0x02a2 }
        r2 = r8;
        r3 = r4;
        goto L_0x00d3;
    L_0x0272:
        r1 = r9.token();	 Catch:{ all -> 0x02a2 }
        r2 = 18;
        if (r1 == r2) goto L_0x0281;
    L_0x027a:
        r1 = r9.token();	 Catch:{ all -> 0x02a2 }
        r2 = 1;
        if (r1 != r2) goto L_0x02a7;
    L_0x0281:
        r1 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x02a2 }
        r2 = new java.lang.StringBuilder;	 Catch:{ all -> 0x02a2 }
        r2.<init>();	 Catch:{ all -> 0x02a2 }
        r3 = "syntax error, unexpect token ";
        r2 = r2.append(r3);	 Catch:{ all -> 0x02a2 }
        r3 = r9.token();	 Catch:{ all -> 0x02a2 }
        r3 = com.alibaba.fastjson.parser.JSONToken.name(r3);	 Catch:{ all -> 0x02a2 }
        r2 = r2.append(r3);	 Catch:{ all -> 0x02a2 }
        r2 = r2.toString();	 Catch:{ all -> 0x02a2 }
        r1.<init>(r2);	 Catch:{ all -> 0x02a2 }
        throw r1;	 Catch:{ all -> 0x02a2 }
    L_0x02a2:
        r1 = move-exception;
        r2 = r8;
        r3 = r4;
        goto L_0x00a4;
    L_0x02a7:
        r2 = r4;
        r4 = r8;
        goto L_0x00ba;
    L_0x02ab:
        r1 = r10.beanInfo;	 Catch:{ all -> 0x0310 }
        r5 = r1.getFieldList();	 Catch:{ all -> 0x0310 }
        r8 = r5.size();	 Catch:{ all -> 0x0310 }
        r9 = new java.lang.Object[r8];	 Catch:{ all -> 0x0310 }
        r1 = 0;
        r4 = r1;
    L_0x02b9:
        if (r4 >= r8) goto L_0x02cf;
    L_0x02bb:
        r1 = r5.get(r4);	 Catch:{ all -> 0x0310 }
        r1 = (com.alibaba.fastjson.util.FieldInfo) r1;	 Catch:{ all -> 0x0310 }
        r1 = r1.getName();	 Catch:{ all -> 0x0310 }
        r1 = r6.get(r1);	 Catch:{ all -> 0x0310 }
        r9[r4] = r1;	 Catch:{ all -> 0x0310 }
        r1 = r4 + 1;
        r4 = r1;
        goto L_0x02b9;
    L_0x02cf:
        r1 = r10.beanInfo;	 Catch:{ all -> 0x0310 }
        r1 = r1.getCreatorConstructor();	 Catch:{ all -> 0x0310 }
        if (r1 == 0) goto L_0x0313;
    L_0x02d7:
        r1 = r10.beanInfo;	 Catch:{ Exception -> 0x02ec }
        r1 = r1.getCreatorConstructor();	 Catch:{ Exception -> 0x02ec }
        r1 = r1.newInstance(r9);	 Catch:{ Exception -> 0x02ec }
    L_0x02e1:
        if (r2 == 0) goto L_0x02e6;
    L_0x02e3:
        r2.setObject(r1);
    L_0x02e6:
        r11.setContext(r7);
        r14 = r1;
        goto L_0x0012;
    L_0x02ec:
        r1 = move-exception;
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0310 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0310 }
        r5.<init>();	 Catch:{ all -> 0x0310 }
        r6 = "create instance error, ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0310 }
        r6 = r10.beanInfo;	 Catch:{ all -> 0x0310 }
        r6 = r6.getCreatorConstructor();	 Catch:{ all -> 0x0310 }
        r6 = r6.toGenericString();	 Catch:{ all -> 0x0310 }
        r5 = r5.append(r6);	 Catch:{ all -> 0x0310 }
        r5 = r5.toString();	 Catch:{ all -> 0x0310 }
        r4.<init>(r5, r1);	 Catch:{ all -> 0x0310 }
        throw r4;	 Catch:{ all -> 0x0310 }
    L_0x0310:
        r1 = move-exception;
        goto L_0x00a4;
    L_0x0313:
        r1 = r10.beanInfo;	 Catch:{ all -> 0x0310 }
        r1 = r1.getFactoryMethod();	 Catch:{ all -> 0x0310 }
        if (r1 == 0) goto L_0x034b;
    L_0x031b:
        r1 = r10.beanInfo;	 Catch:{ Exception -> 0x0327 }
        r1 = r1.getFactoryMethod();	 Catch:{ Exception -> 0x0327 }
        r4 = 0;
        r1 = r1.invoke(r4, r9);	 Catch:{ Exception -> 0x0327 }
        goto L_0x02e1;
    L_0x0327:
        r1 = move-exception;
        r4 = new com.alibaba.fastjson.JSONException;	 Catch:{ all -> 0x0310 }
        r5 = new java.lang.StringBuilder;	 Catch:{ all -> 0x0310 }
        r5.<init>();	 Catch:{ all -> 0x0310 }
        r6 = "create factory method error, ";
        r5 = r5.append(r6);	 Catch:{ all -> 0x0310 }
        r6 = r10.beanInfo;	 Catch:{ all -> 0x0310 }
        r6 = r6.getFactoryMethod();	 Catch:{ all -> 0x0310 }
        r6 = r6.toString();	 Catch:{ all -> 0x0310 }
        r5 = r5.append(r6);	 Catch:{ all -> 0x0310 }
        r5 = r5.toString();	 Catch:{ all -> 0x0310 }
        r4.<init>(r5, r1);	 Catch:{ all -> 0x0310 }
        throw r4;	 Catch:{ all -> 0x0310 }
    L_0x034b:
        r1 = r3;
        goto L_0x02e1;
    L_0x034d:
        r1 = r2;
        goto L_0x00e1;
    L_0x0350:
        r8 = r4;
        r4 = r2;
        goto L_0x023d;
    L_0x0354:
        r2 = r4;
        r4 = r8;
        goto L_0x00ba;
    L_0x0358:
        r7 = r1;
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        FieldDeserializer fieldDeserializer = (FieldDeserializer) this.feildDeserializerMap.get(str);
        if (fieldDeserializer == null) {
            for (Entry entry : this.feildDeserializerMap.entrySet()) {
                if (((String) entry.getKey()).equalsIgnoreCase(str)) {
                    fieldDeserializer = (FieldDeserializer) entry.getValue();
                    break;
                }
            }
        }
        if (fieldDeserializer == null) {
            parseExtra(defaultJSONParser, obj, str);
            return false;
        }
        lexer.nextTokenWithColon(fieldDeserializer.getFastMatchToken());
        fieldDeserializer.parseField(defaultJSONParser, obj, type, map);
        return true;
    }

    /* Access modifiers changed, original: 0000 */
    public void parseExtra(DefaultJSONParser defaultJSONParser, Object obj, String str) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        if (lexer.isEnabled(Feature.IgnoreNotMatch)) {
            Object parse;
            lexer.nextTokenWithColon();
            Type extratype = FilterUtils.getExtratype(defaultJSONParser, obj, str);
            if (extratype == null) {
                parse = defaultJSONParser.parse();
            } else {
                parse = defaultJSONParser.parseObject(extratype);
            }
            FilterUtils.processExtra(defaultJSONParser, obj, str, parse);
            return;
        }
        throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + str);
    }

    public int getFastMatchToken() {
        return 12;
    }

    public final boolean isSupportArrayToBean(JSONLexer jSONLexer) {
        return Feature.isEnabled(this.beanInfo.getParserFeatures(), Feature.SupportArrayToBean) || jSONLexer.isEnabled(Feature.SupportArrayToBean);
    }
}
