package com.mqunar.atomenv;

public abstract class Caller<T, R> {
    protected String className;
    protected int modifierType;
    protected Class returnType;

    public class CallerObject<R> {
        public Throwable cause;
        public R returns;
        public boolean success = false;
    }

    public abstract void callInternal(CallerObject<R> callerObject, Object obj, Object... objArr);

    public abstract void sync(T t);

    public CallerObject<R> call(Object obj, Object... objArr) {
        CallerObject callerObject = new CallerObject();
        try {
            callInternal(callerObject, obj, objArr);
        } catch (Throwable th) {
            callerObject.success = false;
            callerObject.cause = th;
        }
        return callerObject;
    }

    /* Access modifiers changed, original: protected */
    public Class findClass(String str) {
        return Class.forName(str);
    }
}
