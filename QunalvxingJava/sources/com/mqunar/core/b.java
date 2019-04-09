package com.mqunar.core;

final class b extends ClassLoader {
    b(ClassLoader classLoader) {
        super(classLoader);
    }

    /* Access modifiers changed, original: protected */
    public Class<?> findClass(String str) {
        return QunarApkLoader.loadFromDexs(null, str);
    }
}
