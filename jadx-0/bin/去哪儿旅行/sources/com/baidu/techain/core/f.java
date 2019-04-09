package com.baidu.techain.core;

import com.baidu.techain.b.e;
import dalvik.system.DexClassLoader;

public final class f extends DexClassLoader {
    public f(String str, String str2, String str3, ClassLoader classLoader) {
        super(str, str2, str3, classLoader);
    }

    /* Access modifiers changed, original: protected|final */
    public final Class<?> loadClass(String str, boolean z) {
        Class<?> findLoadedClass = findLoadedClass(str);
        if (findLoadedClass == null) {
            Class<?> findClass;
            try {
                findClass = findClass(str);
            } catch (Throwable th) {
                findClass = findLoadedClass;
            }
            if (findClass == null) {
                try {
                    if (getParent() != null) {
                        findLoadedClass = getParent().loadClass(str);
                    } else {
                        findLoadedClass = (Class) getClass().getDeclaredMethod("findBootstrapClassOrNull", new Class[]{String.class}).invoke(this, new Object[]{str});
                    }
                } catch (Throwable th2) {
                    findLoadedClass = findClass;
                    e.a();
                }
            } else {
                findLoadedClass = findClass;
            }
        }
        if (z) {
            resolveClass(findLoadedClass);
        }
        if (findLoadedClass != null) {
            return findLoadedClass;
        }
        try {
            return super.loadClass(str, z);
        } catch (Throwable th3) {
            e.a();
            return findLoadedClass;
        }
    }

    public final Class<?> a(String str) {
        Class<?> findLoadedClass = findLoadedClass(str);
        if (findLoadedClass != null) {
            return findLoadedClass;
        }
        try {
            return findClass(str);
        } catch (Throwable th) {
            e.a();
            return findLoadedClass;
        }
    }
}
