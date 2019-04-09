package com.alibaba.fastjson.serializer;

public abstract class AfterFilter implements SerializeFilter {
    private static final Character COMMA = Character.valueOf(',');
    private static final ThreadLocal<Character> seperatorLocal = new ThreadLocal();
    private static final ThreadLocal<JSONSerializer> serializerLocal = new ThreadLocal();

    public abstract void writeAfter(Object obj);

    /* Access modifiers changed, original: final */
    public final char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        serializerLocal.set(jSONSerializer);
        seperatorLocal.set(Character.valueOf(c));
        writeAfter(obj);
        serializerLocal.set(null);
        return ((Character) seperatorLocal.get()).charValue();
    }

    /* Access modifiers changed, original: protected|final */
    public final void writeKeyValue(String str, Object obj) {
        JSONSerializer jSONSerializer = (JSONSerializer) serializerLocal.get();
        char charValue = ((Character) seperatorLocal.get()).charValue();
        jSONSerializer.writeKeyValue(charValue, str, obj);
        if (charValue != ',') {
            seperatorLocal.set(COMMA);
        }
    }
}
