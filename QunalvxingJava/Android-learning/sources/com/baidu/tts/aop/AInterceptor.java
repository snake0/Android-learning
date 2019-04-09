package com.baidu.tts.aop;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

public abstract class AInterceptor implements IInterceptor {
    protected List<String> a = new ArrayList();

    public abstract Object a(Object obj, Method method, Object[] objArr);

    public abstract void a();

    public AInterceptor() {
        a();
    }

    public Object before(Object obj, Method method, Object[] objArr) {
        return a(method.getName()) ? a(obj, method, objArr) : AInterceptorHandler.DEFAULT;
    }

    public Object after(Object obj, Method method, Object[] objArr, Object obj2) {
        return AInterceptorHandler.DEFAULT;
    }

    private boolean a(String str) {
        return this.a.contains(str);
    }
}
