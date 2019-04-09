package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;

public class ExceptionSerializer extends JavaBeanSerializer {
    public ExceptionSerializer(Class<?> cls) {
        super(cls);
    }

    /* Access modifiers changed, original: protected */
    public boolean isWriteClassName(JSONSerializer jSONSerializer, Object obj, Type type, Object obj2) {
        return true;
    }
}
