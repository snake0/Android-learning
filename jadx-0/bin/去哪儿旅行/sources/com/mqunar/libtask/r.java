package com.mqunar.libtask;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

class r {
    private static Method a(Class<?> cls, String str, Class<?>[] clsArr) {
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

    private static Field a(Class<?> cls, String str) {
        Field field = null;
        Class cls2;
        while (cls2 != null) {
            try {
                field = cls2.getDeclaredField(str);
            } catch (Exception e) {
            }
            if (field != null) {
                field.setAccessible(true);
                break;
            }
            cls2 = cls2.getSuperclass();
        }
        return field;
    }

    public static Object a(String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        Object obj = null;
        try {
            return a(Class.forName(str), str2, clsArr).invoke(null, objArr);
        } catch (Exception e) {
            return obj;
        }
    }

    public static Object a(String str, Object obj, Class<?>[] clsArr, Object[] objArr) {
        try {
            return a(obj.getClass(), str, clsArr).invoke(obj, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static Object a(Object obj, String str) {
        try {
            Field a = a(obj.getClass(), str);
            a.setAccessible(true);
            return a.get(obj);
        } catch (Exception e) {
            return null;
        }
    }
}
