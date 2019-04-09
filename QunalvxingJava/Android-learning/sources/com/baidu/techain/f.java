package com.baidu.techain;

import android.app.Activity;
import com.baidu.techain.b.e;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class f {
    public static boolean a(Activity activity, Activity activity2) {
        if (activity == null || activity2 == null) {
            return false;
        }
        Class cls = Activity.class;
        while (cls != null && cls != Object.class) {
            for (Field field : cls.getDeclaredFields()) {
                try {
                    field.setAccessible(true);
                    if (field.getName().equals("mWindow")) {
                        field.set(activity2, activity.getWindow());
                    } else {
                        field.set(activity2, field.get(activity));
                    }
                } catch (Throwable th) {
                    e.a();
                }
            }
            cls = cls.getSuperclass();
        }
        return true;
    }

    public static boolean a(Class<?> cls, Object obj, Object obj2) {
        if (obj == null || obj2 == null) {
            return false;
        }
        Class cls2;
        while (cls2 != null && cls2 != Object.class) {
            for (Field field : cls2.getDeclaredFields()) {
                try {
                    field.setAccessible(true);
                    field.set(obj2, field.get(obj));
                } catch (Throwable th) {
                    e.a();
                }
            }
            cls2 = cls2.getSuperclass();
        }
        return true;
    }

    /* JADX WARNING: Missing block: B:2:0x0004, code skipped:
            if (r0 != null) goto L_0x0006;
     */
    private static java.lang.reflect.Method b(java.lang.Class<?> r2, java.lang.String r3, java.lang.Class<?>... r4) {
        /*
        r0 = r2.getMethod(r3, r4);	 Catch:{ Throwable -> 0x0007 }
        if (r0 == 0) goto L_0x000b;
    L_0x0006:
        return r0;
    L_0x0007:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
    L_0x000b:
        if (r2 == 0) goto L_0x001f;
    L_0x000d:
        r0 = r2.getDeclaredMethod(r3, r4);	 Catch:{ NoSuchMethodException -> 0x0016 }
        r1 = 1;
        r0.setAccessible(r1);	 Catch:{ NoSuchMethodException -> 0x0016 }
        goto L_0x0006;
    L_0x0016:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r2 = r2.getSuperclass();
        goto L_0x000b;
    L_0x001f:
        r0 = new java.lang.NoSuchMethodException;
        r0.<init>();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.f.b(java.lang.Class, java.lang.String, java.lang.Class[]):java.lang.reflect.Method");
    }

    public static Method a(Class<?> cls, String str, Class<?>... clsArr) {
        Method method = null;
        try {
            method = b(cls, str, clsArr);
            method.setAccessible(true);
            return method;
        } catch (Throwable th) {
            e.a();
            return method;
        }
    }

    /* JADX WARNING: Missing block: B:2:0x0004, code skipped:
            if (r0 != null) goto L_0x0006;
     */
    private static java.lang.reflect.Field b(java.lang.Class<?> r2, java.lang.String r3) {
        /*
        r0 = r2.getField(r3);	 Catch:{ Throwable -> 0x0007 }
        if (r0 == 0) goto L_0x000b;
    L_0x0006:
        return r0;
    L_0x0007:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
    L_0x000b:
        if (r2 == 0) goto L_0x001f;
    L_0x000d:
        r0 = r2.getDeclaredField(r3);	 Catch:{ NoSuchFieldException -> 0x0016 }
        r1 = 1;
        r0.setAccessible(r1);	 Catch:{ NoSuchFieldException -> 0x0016 }
        goto L_0x0006;
    L_0x0016:
        r0 = move-exception;
        com.baidu.techain.b.e.a();
        r2 = r2.getSuperclass();
        goto L_0x000b;
    L_0x001f:
        r0 = new java.lang.NoSuchFieldException;
        r0.<init>();
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.baidu.techain.f.b(java.lang.Class, java.lang.String):java.lang.reflect.Field");
    }

    public static Field a(Class<?> cls, String str) {
        Field field = null;
        try {
            return b(cls, str);
        } catch (NoSuchFieldException e) {
            e.a();
            return field;
        }
    }
}
