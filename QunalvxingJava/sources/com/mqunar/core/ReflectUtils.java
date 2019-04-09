package com.mqunar.core;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReflectUtils {
    private static final String a = ReflectUtils.class.getSimpleName();

    static Method a(Class<?> cls, String str, Class<?>[] clsArr) {
        Method method = null;
        Class cls2;
        while (cls2 != null) {
            try {
                method = cls2.getDeclaredMethod(str, clsArr);
            } catch (Exception e) {
            }
            if (method != null) {
                method.setAccessible(true);
                break;
            }
            cls2 = cls2.getSuperclass();
        }
        return method;
    }

    public static List<Field> getField(Class<?> cls, String str) {
        ArrayList arrayList = new ArrayList(2);
        Class cls2;
        while (cls2 != null) {
            Field field = null;
            try {
                field = cls2.getDeclaredField(str);
            } catch (Exception e) {
            }
            if (field != null) {
                field.setAccessible(true);
                arrayList.add(field);
            }
            cls2 = cls2.getSuperclass();
        }
        return arrayList;
    }

    public static Object invokeStaticMethod(String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        try {
            return invokeStaticMethod(Class.forName(str), str2, (Class[]) clsArr, objArr);
        } catch (Exception e) {
            log("invoke method eror..." + e);
            return null;
        }
    }

    public static Object invokeStaticMethod(Class<?> cls, String str, Class<?>[] clsArr, Object[] objArr) {
        Object obj = null;
        try {
            return a(cls, str, clsArr).invoke(null, objArr);
        } catch (Exception e) {
            log("invoke method eror..." + e);
            return obj;
        }
    }

    public static Object invokeMethod(String str, Object obj, Class<?>[] clsArr, Object[] objArr) {
        try {
            return a(obj.getClass(), str, clsArr).invoke(obj, objArr);
        } catch (Exception e) {
            log("invoke method eror..." + e);
            return null;
        }
    }

    public static Object getField(Object obj, String str) {
        try {
            Iterator it = getField(obj.getClass(), str).iterator();
            if (it.hasNext()) {
                return ((Field) it.next()).get(obj);
            }
        } catch (Exception e) {
            log("getFieldOjbect failure...." + e);
        }
        return null;
    }

    public static boolean setField(String str, Object obj, Object obj2) {
        try {
            return setField(obj.getClass(), str, obj, obj2);
        } catch (Exception e) {
            log("set field object failure..." + e);
            return false;
        }
    }

    public static boolean setField(Class<?> cls, String str, Object obj, Object obj2) {
        try {
            for (Field field : getField((Class) cls, str)) {
                field.setAccessible(true);
                field.set(obj, obj2);
            }
            return true;
        } catch (Exception e) {
            log("set field object failure..." + e);
            return false;
        }
    }

    public static void log(String str) {
    }
}
