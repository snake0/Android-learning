package com.baidu.tts.aop;

import com.baidu.tts.chainofresponsibility.logger.LoggerProxy;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;

public abstract class AInterceptorHandler implements IInterceptorHandler {
    public static final Object DEFAULT = Integer.valueOf(0);
    public static final Object END = Integer.valueOf(1);
    protected List<IInterceptor> a;
    protected Object b;
    protected List<String> c = new ArrayList();

    public Object bind(Object obj, List<IInterceptor> list) {
        this.b = obj;
        this.a = list;
        Class cls = this.b.getClass();
        Object newProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), cls.getInterfaces(), this);
        LoggerProxy.d("AInterceptorHandler", "proxy=" + newProxyInstance);
        return newProxyInstance;
    }

    public Object invoke(Object obj, Method method, Object[] objArr) {
        if (!canIntercept(method.getName())) {
            return method.invoke(this.b, objArr);
        }
        if (a(this.b, method, objArr).equals(END)) {
            return null;
        }
        Object invoke = method.invoke(this.b, objArr);
        LoggerProxy.d("AInterceptorHandler", "afterResult=" + a(this.b, method, objArr, invoke));
        return invoke;
    }

    public void registerMethod(String str) {
        if (str != null) {
            this.c.add(str);
        }
    }

    public void unregisterMethod(String str) {
        if (str != null) {
            this.c.remove(str);
        }
    }

    public boolean canIntercept(String str) {
        return this.c.contains(str);
    }

    /* Access modifiers changed, original: protected */
    public Object a(Object obj, Method method, Object[] objArr) {
        Object obj2 = DEFAULT;
        int size = this.a.size();
        Object obj3 = obj2;
        for (int i = 0; i < size; i++) {
            obj3 = ((IInterceptor) this.a.get(i)).before(obj, method, objArr);
            if (obj3.equals(END)) {
                break;
            }
        }
        return obj3;
    }

    /* Access modifiers changed, original: protected */
    public Object a(Object obj, Method method, Object[] objArr, Object obj2) {
        Object obj3 = DEFAULT;
        int size = this.a.size() - 1;
        while (size >= 0) {
            Object after = ((IInterceptor) this.a.get(size)).after(obj, method, objArr, obj2);
            size--;
            obj3 = after;
        }
        return obj3;
    }
}
