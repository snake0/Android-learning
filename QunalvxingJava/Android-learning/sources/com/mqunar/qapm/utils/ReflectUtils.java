package com.mqunar.qapm.utils;

import com.mqunar.qapm.logging.AgentLog;
import com.mqunar.qapm.logging.AgentLogManager;
import java.lang.reflect.Method;

public class ReflectUtils {
    private static final AgentLog a = AgentLogManager.getAgentLog();

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

    public static Object invokeStaticMethod(String str, String str2, Class<?>[] clsArr, Object[] objArr) {
        Object obj = null;
        try {
            return a(Class.forName(str), str2, (Class[]) clsArr).invoke(null, objArr);
        } catch (Exception e) {
            a.error("reflect failed :" + e);
            return obj;
        }
    }

    static boolean a(String str, String str2, Class<?>[] clsArr) {
        try {
            Class.forName(str).getDeclaredMethod(str2, clsArr);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
