package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class JavaBeanSerializer implements ObjectSerializer {
    private int features;
    private final FieldSerializer[] getters;
    private final FieldSerializer[] sortedGetters;

    public FieldSerializer[] getGetters() {
        return this.getters;
    }

    public JavaBeanSerializer(Class<?> cls) {
        this((Class) cls, (Map) null);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this((Class) cls, createAliasMap(strArr));
    }

    static Map<String, String> createAliasMap(String... strArr) {
        HashMap hashMap = new HashMap();
        for (Object obj : strArr) {
            hashMap.put(obj, obj);
        }
        return hashMap;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this.features = 0;
        this.features = TypeUtils.getSerializeFeatures(cls);
        ArrayList arrayList = new ArrayList();
        for (FieldInfo createFieldSerializer : TypeUtils.computeGetters(cls, map, false)) {
            arrayList.add(createFieldSerializer(createFieldSerializer));
        }
        this.getters = (FieldSerializer[]) arrayList.toArray(new FieldSerializer[arrayList.size()]);
        arrayList = new ArrayList();
        for (FieldInfo createFieldSerializer2 : TypeUtils.computeGetters(cls, map, true)) {
            arrayList.add(createFieldSerializer(createFieldSerializer2));
        }
        this.sortedGetters = (FieldSerializer[]) arrayList.toArray(new FieldSerializer[arrayList.size()]);
    }

    /* Access modifiers changed, original: protected */
    public boolean isWriteClassName(JSONSerializer jSONSerializer, Object obj, Type type, Object obj2) {
        return jSONSerializer.isWriteClassName(type, obj);
    }

    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type) {
        SerializeWriter writer = jSONSerializer.getWriter();
        if (obj == null) {
            writer.writeNull();
        } else if (!writeReference(jSONSerializer, obj)) {
            FieldSerializer[] fieldSerializerArr;
            char c;
            if (writer.isEnabled(SerializerFeature.SortField)) {
                fieldSerializerArr = this.sortedGetters;
            } else {
                fieldSerializerArr = this.getters;
            }
            SerialContext context = jSONSerializer.getContext();
            jSONSerializer.setContext(context, obj, obj2, this.features);
            boolean isWriteAsArray = isWriteAsArray(jSONSerializer);
            char c2 = isWriteAsArray ? '[' : '{';
            if (isWriteAsArray) {
                c = ']';
            } else {
                c = '}';
            }
            try {
                Object obj3;
                writer.append(c2);
                if (fieldSerializerArr.length > 0 && writer.isEnabled(SerializerFeature.PrettyFormat)) {
                    jSONSerializer.incrementIndent();
                    jSONSerializer.println();
                }
                Object obj4 = null;
                if (isWriteClassName(jSONSerializer, obj, type, obj2) && obj.getClass() != type) {
                    writer.writeFieldName(JSON.DEFAULT_TYPE_KEY);
                    jSONSerializer.write(obj.getClass());
                    obj4 = 1;
                }
                obj4 = FilterUtils.writeBefore(jSONSerializer, obj, obj4 != null ? ',' : 0) == ',' ? 1 : null;
                int i = 0;
                while (true) {
                    int i2 = i;
                    obj3 = obj4;
                    if (i2 >= fieldSerializerArr.length) {
                        break;
                    }
                    FieldSerializer fieldSerializer = fieldSerializerArr[i2];
                    if (jSONSerializer.isEnabled(SerializerFeature.SkipTransientField)) {
                        Field field = fieldSerializer.getField();
                        if (field != null && Modifier.isTransient(field.getModifiers())) {
                            obj4 = obj3;
                            i = i2 + 1;
                        }
                    }
                    if (FilterUtils.applyName(jSONSerializer, obj, fieldSerializer.getName())) {
                        Object propertyValue = fieldSerializer.getPropertyValue(obj);
                        if (FilterUtils.apply(jSONSerializer, obj, fieldSerializer.getName(), propertyValue)) {
                            String processKey = FilterUtils.processKey(jSONSerializer, obj, fieldSerializer.getName(), propertyValue);
                            Object processValue = FilterUtils.processValue(jSONSerializer, obj, fieldSerializer.getName(), propertyValue);
                            if (!(processValue != null || isWriteAsArray || fieldSerializer.isWriteNull())) {
                                if (!jSONSerializer.isEnabled(SerializerFeature.WriteMapNullValue)) {
                                    obj4 = obj3;
                                }
                            }
                            if (processValue != null) {
                                if (jSONSerializer.isEnabled(SerializerFeature.NotWriteDefaultValue)) {
                                    Class fieldClass = fieldSerializer.fieldInfo.getFieldClass();
                                    if (fieldClass == Byte.TYPE && (processValue instanceof Byte) && ((Byte) processValue).byteValue() == (byte) 0) {
                                        obj4 = obj3;
                                    } else if (fieldClass == Short.TYPE && (processValue instanceof Short) && ((Short) processValue).shortValue() == (short) 0) {
                                        obj4 = obj3;
                                    } else if (fieldClass == Integer.TYPE && (processValue instanceof Integer) && ((Integer) processValue).intValue() == 0) {
                                        obj4 = obj3;
                                    } else if (fieldClass == Long.TYPE && (processValue instanceof Long) && ((Long) processValue).longValue() == 0) {
                                        obj4 = obj3;
                                    } else if (fieldClass == Float.TYPE && (processValue instanceof Float) && ((Float) processValue).floatValue() == 0.0f) {
                                        obj4 = obj3;
                                    } else if (fieldClass == Double.TYPE && (processValue instanceof Double) && ((Double) processValue).doubleValue() == 0.0d) {
                                        obj4 = obj3;
                                    } else if (fieldClass == Boolean.TYPE && (processValue instanceof Boolean) && !((Boolean) processValue).booleanValue()) {
                                        obj4 = obj3;
                                    }
                                }
                            }
                            if (obj3 != null) {
                                writer.append(',');
                                if (writer.isEnabled(SerializerFeature.PrettyFormat)) {
                                    jSONSerializer.println();
                                }
                            }
                            if (processKey != fieldSerializer.getName()) {
                                if (!isWriteAsArray) {
                                    writer.writeFieldName(processKey);
                                }
                                jSONSerializer.write(processValue);
                            } else if (propertyValue != processValue) {
                                if (!isWriteAsArray) {
                                    fieldSerializer.writePrefix(jSONSerializer);
                                }
                                jSONSerializer.write(processValue);
                            } else if (isWriteAsArray) {
                                fieldSerializer.writeValue(jSONSerializer, processValue);
                            } else {
                                fieldSerializer.writeProperty(jSONSerializer, processValue);
                            }
                            obj4 = 1;
                        } else {
                            obj4 = obj3;
                        }
                    } else {
                        obj4 = obj3;
                    }
                    i = i2 + 1;
                }
                FilterUtils.writeAfter(jSONSerializer, obj, obj3 != null ? ',' : 0);
                if (fieldSerializerArr.length > 0 && writer.isEnabled(SerializerFeature.PrettyFormat)) {
                    jSONSerializer.decrementIdent();
                    jSONSerializer.println();
                }
                writer.append(c);
                jSONSerializer.setContext(context);
            } catch (Exception e) {
                throw new JSONException("write javaBean error", e);
            } catch (Throwable th) {
                jSONSerializer.setContext(context);
            }
        }
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj) {
        SerialContext context = jSONSerializer.getContext();
        if ((context != null && context.isEnabled(SerializerFeature.DisableCircularReferenceDetect)) || !jSONSerializer.containsReference(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    public FieldSerializer createFieldSerializer(FieldInfo fieldInfo) {
        if (fieldInfo.getFieldClass() == Number.class) {
            return new NumberFieldSerializer(fieldInfo);
        }
        return new ObjectFieldSerializer(fieldInfo);
    }

    public boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        if (SerializerFeature.isEnabled(this.features, SerializerFeature.BeanToArray) || jSONSerializer.isEnabled(SerializerFeature.BeanToArray)) {
            return true;
        }
        return false;
    }
}
