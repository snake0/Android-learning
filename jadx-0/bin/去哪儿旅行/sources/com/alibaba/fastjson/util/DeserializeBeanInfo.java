package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public class DeserializeBeanInfo {
    private Constructor<?> creatorConstructor;
    private Constructor<?> defaultConstructor;
    private Method factoryMethod;
    private final List<FieldInfo> fieldList = new ArrayList();
    private int parserFeatures = 0;
    private final List<FieldInfo> sortedFieldList = new ArrayList();

    public DeserializeBeanInfo(Class<?> cls) {
        this.parserFeatures = TypeUtils.getParserFeatures(cls);
    }

    public Constructor<?> getDefaultConstructor() {
        return this.defaultConstructor;
    }

    public void setDefaultConstructor(Constructor<?> constructor) {
        this.defaultConstructor = constructor;
    }

    public Constructor<?> getCreatorConstructor() {
        return this.creatorConstructor;
    }

    public void setCreatorConstructor(Constructor<?> constructor) {
        this.creatorConstructor = constructor;
    }

    public Method getFactoryMethod() {
        return this.factoryMethod;
    }

    public void setFactoryMethod(Method method) {
        this.factoryMethod = method;
    }

    public List<FieldInfo> getFieldList() {
        return this.fieldList;
    }

    public List<FieldInfo> getSortedFieldList() {
        return this.sortedFieldList;
    }

    public boolean add(FieldInfo fieldInfo) {
        for (FieldInfo fieldInfo2 : this.fieldList) {
            if (fieldInfo2.getName().equals(fieldInfo.getName()) && (!fieldInfo2.isGetOnly() || fieldInfo.isGetOnly())) {
                return false;
            }
        }
        this.fieldList.add(fieldInfo);
        this.sortedFieldList.add(fieldInfo);
        Collections.sort(this.sortedFieldList);
        return true;
    }

    public static DeserializeBeanInfo computeSetters(Class<?> cls, Type type) {
        int i;
        int i2;
        int i3;
        String name;
        JSONField jSONField;
        Field field;
        DeserializeBeanInfo deserializeBeanInfo = new DeserializeBeanInfo(cls);
        Constructor defaultConstructor = getDefaultConstructor(cls);
        if (defaultConstructor != null) {
            TypeUtils.setAccessible(defaultConstructor);
            deserializeBeanInfo.setDefaultConstructor(defaultConstructor);
        } else if (!(defaultConstructor != null || cls.isInterface() || Modifier.isAbstract(cls.getModifiers()))) {
            Constructor creatorConstructor = getCreatorConstructor(cls);
            int i4;
            JSONField jSONField2;
            if (creatorConstructor != null) {
                TypeUtils.setAccessible(creatorConstructor);
                deserializeBeanInfo.setCreatorConstructor(creatorConstructor);
                i4 = 0;
                while (true) {
                    i = i4;
                    if (i >= creatorConstructor.getParameterTypes().length) {
                        return deserializeBeanInfo;
                    }
                    jSONField2 = null;
                    for (Annotation annotation : creatorConstructor.getParameterAnnotations()[i]) {
                        if (annotation instanceof JSONField) {
                            jSONField2 = (JSONField) annotation;
                            break;
                        }
                    }
                    if (jSONField2 == null) {
                        throw new JSONException("illegal json creator");
                    }
                    deserializeBeanInfo.add(new FieldInfo(jSONField2.name(), (Class) cls, creatorConstructor.getParameterTypes()[i], creatorConstructor.getGenericParameterTypes()[i], TypeUtils.getField(cls, jSONField2.name()), jSONField2.ordinal(), SerializerFeature.of(jSONField2.serialzeFeatures())));
                    i4 = i + 1;
                }
            } else {
                Method factoryMethod = getFactoryMethod(cls);
                if (factoryMethod != null) {
                    TypeUtils.setAccessible(factoryMethod);
                    deserializeBeanInfo.setFactoryMethod(factoryMethod);
                    i4 = 0;
                    while (true) {
                        i = i4;
                        if (i >= factoryMethod.getParameterTypes().length) {
                            return deserializeBeanInfo;
                        }
                        jSONField2 = null;
                        for (Annotation annotation2 : factoryMethod.getParameterAnnotations()[i]) {
                            if (annotation2 instanceof JSONField) {
                                jSONField2 = (JSONField) annotation2;
                                break;
                            }
                        }
                        if (jSONField2 == null) {
                            throw new JSONException("illegal json creator");
                        }
                        deserializeBeanInfo.add(new FieldInfo(jSONField2.name(), (Class) cls, factoryMethod.getParameterTypes()[i], factoryMethod.getGenericParameterTypes()[i], TypeUtils.getField(cls, jSONField2.name()), jSONField2.ordinal(), SerializerFeature.of(jSONField2.serialzeFeatures())));
                        i4 = i + 1;
                    }
                } else {
                    throw new JSONException("default constructor not found. " + cls);
                }
            }
        }
        for (Method method : cls.getMethods()) {
            i2 = 0;
            i3 = 0;
            name = method.getName();
            if (name.length() >= 4 && !Modifier.isStatic(method.getModifiers()) && ((method.getReturnType().equals(Void.TYPE) || method.getReturnType().equals(cls)) && method.getParameterTypes().length == 1)) {
                jSONField = (JSONField) method.getAnnotation(JSONField.class);
                if (jSONField == null) {
                    jSONField = TypeUtils.getSupperMethodAnnotation(cls, method);
                }
                if (jSONField != null) {
                    if (jSONField.deserialize()) {
                        i2 = jSONField.ordinal();
                        i3 = SerializerFeature.of(jSONField.serialzeFeatures());
                        if (jSONField.name().length() != 0) {
                            deserializeBeanInfo.add(new FieldInfo(jSONField.name(), method, null, (Class) cls, type, i2, i3));
                            TypeUtils.setAccessible(method);
                        }
                    }
                }
                if (name.startsWith("set")) {
                    char charAt = name.charAt(3);
                    if (Character.isUpperCase(charAt)) {
                        if (TypeUtils.compatibleWithJavaBean) {
                            name = TypeUtils.decapitalize(name.substring(3));
                        } else {
                            name = Character.toLowerCase(name.charAt(3)) + name.substring(4);
                        }
                    } else if (charAt == '_') {
                        name = name.substring(4);
                    } else if (charAt == 'f') {
                        name = name.substring(3);
                    } else if (name.length() >= 5 && Character.isUpperCase(name.charAt(4))) {
                        name = TypeUtils.decapitalize(name.substring(3));
                    }
                    field = TypeUtils.getField(cls, name);
                    if (field == null && method.getParameterTypes()[0] == Boolean.TYPE) {
                        field = TypeUtils.getField(cls, "is" + Character.toUpperCase(name.charAt(0)) + name.substring(1));
                    }
                    if (field != null) {
                        jSONField = (JSONField) field.getAnnotation(JSONField.class);
                        if (jSONField != null) {
                            i2 = jSONField.ordinal();
                            i3 = SerializerFeature.of(jSONField.serialzeFeatures());
                            if (jSONField.name().length() != 0) {
                                deserializeBeanInfo.add(new FieldInfo(jSONField.name(), method, field, (Class) cls, type, i2, i3));
                            }
                        }
                    }
                    deserializeBeanInfo.add(new FieldInfo(name, method, null, (Class) cls, type, i2, i3));
                    TypeUtils.setAccessible(method);
                }
            }
        }
        for (Field field2 : cls.getFields()) {
            if (!Modifier.isStatic(field2.getModifiers())) {
                Object obj = null;
                for (FieldInfo name2 : deserializeBeanInfo.getFieldList()) {
                    if (name2.getName().equals(field2.getName())) {
                        obj = 1;
                    }
                }
                if (obj == null) {
                    i2 = 0;
                    i3 = 0;
                    name = field2.getName();
                    jSONField = (JSONField) field2.getAnnotation(JSONField.class);
                    if (jSONField != null) {
                        i2 = jSONField.ordinal();
                        i3 = SerializerFeature.of(jSONField.serialzeFeatures());
                        if (jSONField.name().length() != 0) {
                            name = jSONField.name();
                        }
                    }
                    deserializeBeanInfo.add(new FieldInfo(name, null, field2, (Class) cls, type, i2, i3));
                }
            }
        }
        for (Method method2 : cls.getMethods()) {
            name = method2.getName();
            if (name.length() >= 4 && !Modifier.isStatic(method2.getModifiers()) && name.startsWith("get") && Character.isUpperCase(name.charAt(3)) && method2.getParameterTypes().length == 0 && (Collection.class.isAssignableFrom(method2.getReturnType()) || Map.class.isAssignableFrom(method2.getReturnType()))) {
                jSONField = (JSONField) method2.getAnnotation(JSONField.class);
                if (jSONField == null || jSONField.name().length() <= 0) {
                    name = Character.toLowerCase(name.charAt(3)) + name.substring(4);
                } else {
                    name = jSONField.name();
                }
                deserializeBeanInfo.add(new FieldInfo(name, method2, null, (Class) cls, type));
                TypeUtils.setAccessible(method2);
            }
        }
        return deserializeBeanInfo;
    }

    public static Constructor<?> getDefaultConstructor(Class<?> cls) {
        if (Modifier.isAbstract(cls.getModifiers())) {
            return null;
        }
        for (Constructor<?> constructor : cls.getDeclaredConstructors()) {
            if (constructor.getParameterTypes().length == 0) {
                break;
            }
        }
        Constructor<?> constructor2 = null;
        if (constructor2 == null && cls.isMemberClass() && !Modifier.isStatic(cls.getModifiers())) {
            for (Constructor<?> constructor3 : cls.getDeclaredConstructors()) {
                if (constructor3.getParameterTypes().length == 1 && constructor3.getParameterTypes()[0].equals(cls.getDeclaringClass())) {
                    return constructor3;
                }
            }
        }
        return constructor2;
    }

    public static Constructor<?> getCreatorConstructor(Class<?> cls) {
        Constructor[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        int i = 0;
        while (i < length) {
            Constructor<?> constructor = declaredConstructors[i];
            if (((JSONCreator) constructor.getAnnotation(JSONCreator.class)) == null) {
                i++;
            } else if (null == null) {
                return constructor;
            } else {
                throw new JSONException("multi-json creator");
            }
        }
        return null;
    }

    public static Method getFactoryMethod(Class<?> cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method = declaredMethods[i];
            if (!Modifier.isStatic(method.getModifiers()) || !cls.isAssignableFrom(method.getReturnType()) || ((JSONCreator) method.getAnnotation(JSONCreator.class)) == null) {
                i++;
            } else if (null == null) {
                return method;
            } else {
                throw new JSONException("multi-json creator");
            }
        }
        return null;
    }

    public int getParserFeatures() {
        return this.parserFeatures;
    }
}
