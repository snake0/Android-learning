package com.mqunar.atomenv;

import com.mqunar.atomenv.Caller.CallerObject;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;

public class FieldCaller<T> extends Caller<FieldBuilder, T> {
    protected Field field;
    protected String fieldName;

    public class FieldBuilder<T> {
        private String a;
        private Class<? extends T> b;
        private int c;
        private String d;

        public FieldBuilder setClassName(String str) {
            this.a = str;
            return this;
        }

        public FieldBuilder setReturnType(Class<? extends T> cls) {
            this.b = cls;
            return this;
        }

        public FieldBuilder setModifierType(int i) {
            this.c = i;
            return this;
        }

        public FieldBuilder setFieldName(String str) {
            this.d = str;
            return this;
        }

        public FieldCaller<T> build() {
            FieldCaller fieldCaller = new FieldCaller();
            fieldCaller.sync(this);
            return fieldCaller;
        }
    }

    /* Access modifiers changed, original: protected */
    public void sync(FieldBuilder fieldBuilder) {
        this.className = fieldBuilder.a;
        this.returnType = fieldBuilder.b;
        this.modifierType = fieldBuilder.c;
        this.fieldName = fieldBuilder.d;
        this.field = a();
    }

    /* Access modifiers changed, original: protected|varargs */
    public void callInternal(CallerObject<T> callerObject, Object obj, Object... objArr) {
        if (this.field == null) {
            throw new NullPointerException("field not found!");
        }
        if (Modifier.isStatic(this.field.getModifiers())) {
            callerObject.returns = this.field.get(null);
        } else {
            callerObject.returns = this.field.get(obj);
        }
        callerObject.success = true;
    }

    private Field a() {
        try {
            Field declaredField = findClass(this.className).getDeclaredField(this.fieldName);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable th) {
            return null;
        }
    }
}
