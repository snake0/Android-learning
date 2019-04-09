package com.squareup.wire;

import com.squareup.wire.ExtendableMessage.ExtendableBuilder;
import com.squareup.wire.Message.Builder;
import com.squareup.wire.Message.Datatype;
import com.squareup.wire.Message.Label;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class MessageAdapter<M extends Message> {
    private final Class<Builder<M>> builderType;
    private final Map<Integer, FieldInfo> fieldInfoMap = new LinkedHashMap();
    private final Class<M> messageType;
    private final Map<String, Integer> tagMap = new LinkedHashMap();
    private final Wire wire;

    public final class FieldInfo {
        private final Method builderMethod;
        final Datatype datatype;
        final Class<? extends ProtoEnum> enumType;
        final Label label;
        private final Field messageField;
        final Class<? extends Message> messageType;
        final String name;
        final int tag;

        private FieldInfo(int i, String str, Datatype datatype, Label label, Class<?> cls, Field field, Method method) {
            this.tag = i;
            this.name = str;
            this.datatype = datatype;
            this.label = label;
            if (datatype == Datatype.ENUM) {
                this.enumType = cls;
                this.messageType = null;
            } else if (datatype == Datatype.MESSAGE) {
                this.messageType = cls;
                this.enumType = null;
            } else {
                this.enumType = null;
                this.messageType = null;
            }
            this.messageField = field;
            this.builderMethod = method;
        }
    }

    class Storage {
        private final Map<Integer, List<Object>> map;

        private Storage() {
            this.map = new LinkedHashMap();
        }

        /* Access modifiers changed, original: 0000 */
        public void add(int i, Object obj) {
            List list = (List) this.map.get(Integer.valueOf(i));
            if (list == null) {
                list = new ArrayList();
                this.map.put(Integer.valueOf(i), list);
            }
            list.add(obj);
        }

        /* Access modifiers changed, original: 0000 */
        public Set<Integer> getTags() {
            return this.map.keySet();
        }

        /* Access modifiers changed, original: 0000 */
        public List<Object> get(int i) {
            return (List) this.map.get(Integer.valueOf(i));
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Builder<M> newBuilder() {
        try {
            return (Builder) this.builderType.newInstance();
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InstantiationException e2) {
            throw new AssertionError(e2);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public Collection<FieldInfo> getFields() {
        return this.fieldInfoMap.values();
    }

    /* Access modifiers changed, original: 0000 */
    public FieldInfo getField(String str) {
        Integer num = (Integer) this.tagMap.get(str);
        return num == null ? null : (FieldInfo) this.fieldInfoMap.get(num);
    }

    /* Access modifiers changed, original: 0000 */
    public Object getFieldValue(M m, FieldInfo fieldInfo) {
        if (fieldInfo.messageField == null) {
            throw new AssertionError("Field is not of type \"Message\"");
        }
        try {
            return fieldInfo.messageField.get(m);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        }
    }

    public void setBuilderField(Builder<M> builder, int i, Object obj) {
        try {
            ((FieldInfo) this.fieldInfoMap.get(Integer.valueOf(i))).builderMethod.invoke(builder, new Object[]{obj});
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError(e2);
        }
    }

    MessageAdapter(Wire wire, Class<M> cls) {
        this.wire = wire;
        this.messageType = cls;
        this.builderType = getBuilderType(cls);
        for (Field field : cls.getDeclaredFields()) {
            ProtoField protoField = (ProtoField) field.getAnnotation(ProtoField.class);
            if (protoField != null) {
                int tag = protoField.tag();
                String name = field.getName();
                this.tagMap.put(name, Integer.valueOf(tag));
                Class cls2 = null;
                Datatype type = protoField.type();
                if (type == Datatype.ENUM) {
                    cls2 = getEnumType(field);
                } else if (type == Datatype.MESSAGE) {
                    cls2 = getMessageType(field);
                }
                this.fieldInfoMap.put(Integer.valueOf(tag), new FieldInfo(tag, name, type, protoField.label(), cls2, field, getBuilderMethod(name, field.getType())));
            }
        }
    }

    private Class<Builder<M>> getBuilderType(Class<M> cls) {
        try {
            return Class.forName(cls.getName() + "$Builder");
        } catch (ClassNotFoundException e) {
            throw new IllegalArgumentException("No builder class found for message type " + cls.getName());
        }
    }

    private Method getBuilderMethod(String str, Class<?> cls) {
        try {
            return this.builderType.getMethod(str, new Class[]{cls});
        } catch (NoSuchMethodException e) {
            throw new AssertionError("No builder method " + this.builderType.getName() + "." + str + "(" + cls.getName() + ")");
        }
    }

    private Class<Message> getMessageType(Field field) {
        Class type = field.getType();
        if (Message.class.isAssignableFrom(type)) {
            return type;
        }
        if (List.class.isAssignableFrom(type)) {
            Type type2 = ((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0];
            if ((type2 instanceof Class) && Message.class.isAssignableFrom((Class) type2)) {
                return (Class) type2;
            }
        }
        return null;
    }

    private Class<Enum> getEnumType(Field field) {
        Class type = field.getType();
        if (Enum.class.isAssignableFrom(type)) {
            return type;
        }
        if (List.class.isAssignableFrom(type)) {
            Type type2 = ((ParameterizedType) field.getGenericType()).getActualTypeArguments()[0];
            if ((type2 instanceof Class) && Enum.class.isAssignableFrom((Class) type2)) {
                return (Class) type2;
            }
        }
        return null;
    }

    /* Access modifiers changed, original: 0000 */
    public int getSerializedSize(M m) {
        int i = 0;
        for (FieldInfo fieldInfo : getFields()) {
            Object fieldValue = getFieldValue(m, fieldInfo);
            if (fieldValue != null) {
                int serializedSize;
                int i2 = fieldInfo.tag;
                Datatype datatype = fieldInfo.datatype;
                Label label = fieldInfo.label;
                if (!label.isRepeated()) {
                    serializedSize = getSerializedSize(i2, fieldValue, datatype);
                } else if (label.isPacked()) {
                    serializedSize = getPackedSize((List) fieldValue, i2, datatype);
                } else {
                    serializedSize = getRepeatedSize((List) fieldValue, i2, datatype);
                }
                i = serializedSize + i;
            }
        }
        if (m instanceof ExtendableMessage) {
            ExtendableMessage extendableMessage = (ExtendableMessage) m;
            if (extendableMessage.extensionMap != null) {
                i += getExtensionsSerializedSize(extendableMessage.extensionMap);
            }
        }
        return m.getUnknownFieldsSerializedSize() + i;
    }

    private <T extends ExtendableMessage<?>> int getExtensionsSerializedSize(ExtensionMap<T> extensionMap) {
        int i = 0;
        Iterator it = extensionMap.getExtensions().iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            Extension extension = (Extension) it.next();
            Object obj = extensionMap.get(extension);
            int tag = extension.getTag();
            Datatype datatype = extension.getDatatype();
            Label label = extension.getLabel();
            if (!label.isRepeated()) {
                i = getSerializedSize(tag, obj, datatype);
            } else if (label.isPacked()) {
                i = getPackedSize((List) obj, tag, datatype);
            } else {
                i = getRepeatedSize((List) obj, tag, datatype);
            }
            i += i2;
        }
    }

    private int getRepeatedSize(List<?> list, int i, Datatype datatype) {
        int i2 = 0;
        for (Object serializedSize : list) {
            i2 += getSerializedSize(i, serializedSize, datatype);
        }
        return i2;
    }

    private int getPackedSize(List<?> list, int i, Datatype datatype) {
        int i2 = 0;
        for (Object serializedSizeNoTag : list) {
            i2 += getSerializedSizeNoTag(serializedSizeNoTag, datatype);
        }
        return i2 + (WireOutput.varint32Size(WireOutput.makeTag(i, WireType.LENGTH_DELIMITED)) + WireOutput.varint32Size(i2));
    }

    /* Access modifiers changed, original: 0000 */
    public void write(M m, WireOutput wireOutput) {
        for (FieldInfo fieldInfo : getFields()) {
            Object fieldValue = getFieldValue(m, fieldInfo);
            if (fieldValue != null) {
                int i = fieldInfo.tag;
                Datatype datatype = fieldInfo.datatype;
                Label label = fieldInfo.label;
                if (!label.isRepeated()) {
                    writeValue(wireOutput, i, fieldValue, datatype);
                } else if (label.isPacked()) {
                    writePacked(wireOutput, (List) fieldValue, i, datatype);
                } else {
                    writeRepeated(wireOutput, (List) fieldValue, i, datatype);
                }
            }
        }
        if (m instanceof ExtendableMessage) {
            ExtendableMessage extendableMessage = (ExtendableMessage) m;
            if (extendableMessage.extensionMap != null) {
                writeExtensions(wireOutput, extendableMessage.extensionMap);
            }
        }
        m.writeUnknownFieldMap(wireOutput);
    }

    private <T extends ExtendableMessage<?>> void writeExtensions(WireOutput wireOutput, ExtensionMap<T> extensionMap) {
        for (Extension extension : extensionMap.getExtensions()) {
            Object obj = extensionMap.get(extension);
            int tag = extension.getTag();
            Datatype datatype = extension.getDatatype();
            Label label = extension.getLabel();
            if (!label.isRepeated()) {
                writeValue(wireOutput, tag, obj, datatype);
            } else if (label.isPacked()) {
                writePacked(wireOutput, (List) obj, tag, datatype);
            } else {
                writeRepeated(wireOutput, (List) obj, tag, datatype);
            }
        }
    }

    private void writeRepeated(WireOutput wireOutput, List<?> list, int i, Datatype datatype) {
        for (Object writeValue : list) {
            writeValue(wireOutput, i, writeValue, datatype);
        }
    }

    private void writePacked(WireOutput wireOutput, List<?> list, int i, Datatype datatype) {
        int i2 = 0;
        for (Object serializedSizeNoTag : list) {
            i2 += getSerializedSizeNoTag(serializedSizeNoTag, datatype);
        }
        wireOutput.writeTag(i, WireType.LENGTH_DELIMITED);
        wireOutput.writeVarint32(i2);
        for (Object writeValueNoTag : list) {
            writeValueNoTag(wireOutput, writeValueNoTag, datatype);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public byte[] toByteArray(M m) {
        byte[] bArr = new byte[getSerializedSize(m)];
        try {
            write(m, WireOutput.newInstance(bArr));
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /* Access modifiers changed, original: 0000 */
    public String toString(M m) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.messageType.getSimpleName());
        stringBuilder.append("{");
        String str = "";
        for (FieldInfo fieldInfo : getFields()) {
            Object fieldValue = getFieldValue(m, fieldInfo);
            if (fieldValue != null) {
                stringBuilder.append(str);
                str = ", ";
                stringBuilder.append(fieldInfo.name);
                stringBuilder.append("=");
                stringBuilder.append(fieldValue);
            }
        }
        if (m instanceof ExtendableMessage) {
            ExtendableMessage extendableMessage = (ExtendableMessage) m;
            stringBuilder.append(str);
            stringBuilder.append("{extensions=");
            stringBuilder.append(extendableMessage.extensionsToString());
            stringBuilder.append("}");
        }
        stringBuilder.append("}");
        return stringBuilder.toString();
    }

    private int getSerializedSize(int i, Object obj, Datatype datatype) {
        return WireOutput.varintTagSize(i) + getSerializedSizeNoTag(obj, datatype);
    }

    private int getSerializedSizeNoTag(Object obj, Datatype datatype) {
        int utf8Length;
        switch (datatype) {
            case INT32:
                return WireOutput.int32Size(((Integer) obj).intValue());
            case INT64:
            case UINT64:
                return WireOutput.varint64Size(((Long) obj).longValue());
            case UINT32:
                return WireOutput.varint32Size(((Integer) obj).intValue());
            case SINT32:
                return WireOutput.varint32Size(WireOutput.zigZag32(((Integer) obj).intValue()));
            case SINT64:
                return WireOutput.varint64Size(WireOutput.zigZag64(((Long) obj).longValue()));
            case BOOL:
                return 1;
            case ENUM:
                return getEnumSize((ProtoEnum) obj);
            case STRING:
                utf8Length = utf8Length((String) obj);
                return utf8Length + WireOutput.varint32Size(utf8Length);
            case BYTES:
                utf8Length = ((ByteString) obj).size();
                return utf8Length + WireOutput.varint32Size(utf8Length);
            case MESSAGE:
                return getMessageSize((Message) obj);
            case FIXED32:
            case SFIXED32:
            case FLOAT:
                return 4;
            case FIXED64:
            case SFIXED64:
            case DOUBLE:
                return 8;
            default:
                throw new RuntimeException();
        }
    }

    private int utf8Length(String str) {
        int i = 0;
        int length = str.length();
        int i2 = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt <= 127) {
                i2++;
            } else if (charAt <= 2047) {
                i2 += 2;
            } else if (Character.isHighSurrogate(charAt)) {
                i2 += 4;
                i++;
            } else {
                i2 += 3;
            }
            i++;
        }
        return i2;
    }

    private <E extends ProtoEnum> int getEnumSize(E e) {
        return WireOutput.varint32Size(this.wire.enumAdapter(e.getClass()).toInt(e));
    }

    private <M extends Message> int getMessageSize(M m) {
        int serializedSize = m.getSerializedSize();
        return serializedSize + WireOutput.varint32Size(serializedSize);
    }

    private void writeValue(WireOutput wireOutput, int i, Object obj, Datatype datatype) {
        wireOutput.writeTag(i, datatype.wireType());
        writeValueNoTag(wireOutput, obj, datatype);
    }

    private void writeValueNoTag(WireOutput wireOutput, Object obj, Datatype datatype) {
        switch (datatype) {
            case INT32:
                wireOutput.writeSignedVarint32(((Integer) obj).intValue());
                return;
            case INT64:
            case UINT64:
                wireOutput.writeVarint64(((Long) obj).longValue());
                return;
            case UINT32:
                wireOutput.writeVarint32(((Integer) obj).intValue());
                return;
            case SINT32:
                wireOutput.writeVarint32(WireOutput.zigZag32(((Integer) obj).intValue()));
                return;
            case SINT64:
                wireOutput.writeVarint64(WireOutput.zigZag64(((Long) obj).longValue()));
                return;
            case BOOL:
                wireOutput.writeRawByte(((Boolean) obj).booleanValue() ? 1 : 0);
                return;
            case ENUM:
                writeEnum((ProtoEnum) obj, wireOutput);
                return;
            case STRING:
                byte[] bytes = ((String) obj).getBytes("UTF-8");
                wireOutput.writeVarint32(bytes.length);
                wireOutput.writeRawBytes(bytes);
                return;
            case BYTES:
                ByteString byteString = (ByteString) obj;
                wireOutput.writeVarint32(byteString.size());
                wireOutput.writeRawBytes(byteString.toByteArray());
                return;
            case MESSAGE:
                writeMessage((Message) obj, wireOutput);
                return;
            case FIXED32:
            case SFIXED32:
                wireOutput.writeFixed32(((Integer) obj).intValue());
                return;
            case FLOAT:
                wireOutput.writeFixed32(Float.floatToIntBits(((Float) obj).floatValue()));
                return;
            case FIXED64:
            case SFIXED64:
                wireOutput.writeFixed64(((Long) obj).longValue());
                return;
            case DOUBLE:
                wireOutput.writeFixed64(Double.doubleToLongBits(((Double) obj).doubleValue()));
                return;
            default:
                throw new RuntimeException();
        }
    }

    private <M extends Message> void writeMessage(M m, WireOutput wireOutput) {
        wireOutput.writeVarint32(m.getSerializedSize());
        this.wire.messageAdapter(m.getClass()).write(m, wireOutput);
    }

    private <E extends ProtoEnum> void writeEnum(E e, WireOutput wireOutput) {
        wireOutput.writeVarint32(this.wire.enumAdapter(e.getClass()).toInt(e));
    }

    /* Access modifiers changed, original: 0000 */
    /* JADX WARNING: Missing block: B:5:0x001b, code skipped:
            r3 = r7.getTags().iterator();
     */
    /* JADX WARNING: Missing block: B:7:0x0027, code skipped:
            if (r3.hasNext() == false) goto L_0x0067;
     */
    /* JADX WARNING: Missing block: B:8:0x0029, code skipped:
            r4 = ((java.lang.Integer) r3.next()).intValue();
     */
    /* JADX WARNING: Missing block: B:9:0x003f, code skipped:
            if (((com.squareup.wire.MessageAdapter.FieldInfo) r15.fieldInfoMap.get(java.lang.Integer.valueOf(r4))) == null) goto L_0x0050;
     */
    /* JADX WARNING: Missing block: B:10:0x0041, code skipped:
            setBuilderField(r1, r4, r7.get(r4));
     */
    /* JADX WARNING: Missing block: B:16:?, code skipped:
            setExtension((com.squareup.wire.ExtendableMessage.ExtendableBuilder) r1, getExtension(r4), r7.get(r4));
     */
    /* JADX WARNING: Missing block: B:23:0x006b, code skipped:
            return r1.build();
     */
    public M read(com.squareup.wire.WireInput r16) {
        /*
        r15 = this;
        r6 = 0;
        r1 = r15.builderType;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r1 = r1.newInstance();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r1 = (com.squareup.wire.Message.Builder) r1;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r7 = new com.squareup.wire.MessageAdapter$Storage;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = 0;
        r7.<init>();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
    L_0x000f:
        r2 = r16.readTag();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r8 = r2 >> 3;
        r9 = com.squareup.wire.WireType.valueOf(r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r8 != 0) goto L_0x006c;
    L_0x001b:
        r2 = r7.getTags();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r3 = r2.iterator();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
    L_0x0023:
        r2 = r3.hasNext();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r2 == 0) goto L_0x0067;
    L_0x0029:
        r2 = r3.next();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = (java.lang.Integer) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r4 = r2.intValue();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r15.fieldInfoMap;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r5 = java.lang.Integer.valueOf(r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r2.get(r5);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = (com.squareup.wire.MessageAdapter.FieldInfo) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r2 == 0) goto L_0x0050;
    L_0x0041:
        r2 = r7.get(r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r15.setBuilderField(r1, r4, r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x0023;
    L_0x0049:
        r1 = move-exception;
        r2 = new java.lang.RuntimeException;
        r2.<init>(r1);
        throw r2;
    L_0x0050:
        r0 = r1;
        r0 = (com.squareup.wire.ExtendableMessage.ExtendableBuilder) r0;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r0;
        r5 = r15.getExtension(r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r4 = r7.get(r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r15.setExtension(r2, r5, r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x0023;
    L_0x0060:
        r1 = move-exception;
        r2 = new java.lang.RuntimeException;
        r2.<init>(r1);
        throw r2;
    L_0x0067:
        r1 = r1.build();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        return r1;
    L_0x006c:
        r2 = r15.fieldInfoMap;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r3 = java.lang.Integer.valueOf(r8);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r2.get(r3);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = (com.squareup.wire.MessageAdapter.FieldInfo) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r2 == 0) goto L_0x00bc;
    L_0x007a:
        r3 = r2.datatype;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r2.label;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r4 = r3;
        r5 = r6;
        r3 = r2;
    L_0x0081:
        r2 = r3.isPacked();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r2 == 0) goto L_0x00f0;
    L_0x0087:
        r2 = com.squareup.wire.WireType.LENGTH_DELIMITED;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r9 != r2) goto L_0x00f0;
    L_0x008b:
        r3 = r16.readVarint32();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r9 = r16.getPosition();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r0 = r16;
        r5 = r0.pushLimit(r3);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
    L_0x0099:
        r11 = r16.getPosition();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r13 = (long) r3;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r13 = r13 + r9;
        r2 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1));
        if (r2 >= 0) goto L_0x00d9;
    L_0x00a3:
        r0 = r16;
        r2 = r15.readValue(r0, r8, r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r11 = com.squareup.wire.Message.Datatype.ENUM;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r4 != r11) goto L_0x00d5;
    L_0x00ad:
        r11 = r2 instanceof java.lang.Integer;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r11 == 0) goto L_0x00d5;
    L_0x00b1:
        r2 = (java.lang.Integer) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r2.intValue();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r11 = (long) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r1.addVarint(r8, r11);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x0099;
    L_0x00bc:
        r4 = r15.getExtension(r8);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r4 != 0) goto L_0x00c9;
    L_0x00c2:
        r0 = r16;
        r15.readUnknownField(r1, r0, r8, r9);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x000f;
    L_0x00c9:
        r3 = r4.getDatatype();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r4.getLabel();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r5 = r4;
        r4 = r3;
        r3 = r2;
        goto L_0x0081;
    L_0x00d5:
        r7.add(r8, r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x0099;
    L_0x00d9:
        r0 = r16;
        r0.popLimit(r5);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r4 = r16.getPosition();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = (long) r3;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r2 + r9;
        r2 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1));
        if (r2 == 0) goto L_0x000f;
    L_0x00e8:
        r1 = new java.io.IOException;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = "Packed data had wrong length!";
        r1.<init>(r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        throw r1;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
    L_0x00f0:
        r0 = r16;
        r2 = r15.readValue(r0, r8, r4);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r9 = com.squareup.wire.Message.Datatype.ENUM;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r4 != r9) goto L_0x010a;
    L_0x00fa:
        r4 = r2 instanceof java.lang.Integer;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r4 == 0) goto L_0x010a;
    L_0x00fe:
        r2 = (java.lang.Integer) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = r2.intValue();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r2 = (long) r2;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r1.addVarint(r8, r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x000f;
    L_0x010a:
        r3 = r3.isRepeated();	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        if (r3 == 0) goto L_0x0115;
    L_0x0110:
        r7.add(r8, r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x000f;
    L_0x0115:
        if (r5 == 0) goto L_0x0120;
    L_0x0117:
        r0 = r1;
        r0 = (com.squareup.wire.ExtendableMessage.ExtendableBuilder) r0;	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        r3 = r0;
        r15.setExtension(r3, r5, r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x000f;
    L_0x0120:
        r15.setBuilderField(r1, r8, r2);	 Catch:{ IllegalAccessException -> 0x0049, InstantiationException -> 0x0060 }
        goto L_0x000f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.wire.MessageAdapter.read(com.squareup.wire.WireInput):com.squareup.wire.Message");
    }

    private Object readValue(WireInput wireInput, int i, Datatype datatype) {
        switch (datatype) {
            case INT32:
            case UINT32:
                return Integer.valueOf(wireInput.readVarint32());
            case INT64:
            case UINT64:
                return Long.valueOf(wireInput.readVarint64());
            case SINT32:
                return Integer.valueOf(WireInput.decodeZigZag32(wireInput.readVarint32()));
            case SINT64:
                return Long.valueOf(WireInput.decodeZigZag64(wireInput.readVarint64()));
            case BOOL:
                return Boolean.valueOf(wireInput.readVarint32() != 0);
            case ENUM:
                EnumAdapter enumAdapter = this.wire.enumAdapter(getEnumClass(i));
                int readVarint32 = wireInput.readVarint32();
                try {
                    return enumAdapter.fromInt(readVarint32);
                } catch (IllegalArgumentException e) {
                    return Integer.valueOf(readVarint32);
                }
            case STRING:
                return wireInput.readString();
            case BYTES:
                return wireInput.readBytes();
            case MESSAGE:
                return readMessage(wireInput, i);
            case FIXED32:
            case SFIXED32:
                return Integer.valueOf(wireInput.readFixed32());
            case FLOAT:
                return Float.valueOf(Float.intBitsToFloat(wireInput.readFixed32()));
            case FIXED64:
            case SFIXED64:
                return Long.valueOf(wireInput.readFixed64());
            case DOUBLE:
                return Double.valueOf(Double.longBitsToDouble(wireInput.readFixed64()));
            default:
                throw new RuntimeException();
        }
    }

    private Message readMessage(WireInput wireInput, int i) {
        int readVarint32 = wireInput.readVarint32();
        if (wireInput.recursionDepth >= 64) {
            throw new IOException("Wire recursion limit exceeded");
        }
        readVarint32 = wireInput.pushLimit(readVarint32);
        wireInput.recursionDepth++;
        Message read = this.wire.messageAdapter(getMessageClass(i)).read(wireInput);
        wireInput.checkLastTagWas(0);
        wireInput.recursionDepth--;
        wireInput.popLimit(readVarint32);
        return read;
    }

    private Class<Message> getMessageClass(int i) {
        FieldInfo fieldInfo = (FieldInfo) this.fieldInfoMap.get(Integer.valueOf(i));
        Class<Message> cls = fieldInfo == null ? null : fieldInfo.messageType;
        if (cls != null) {
            return cls;
        }
        Extension extension = getExtension(i);
        if (extension != null) {
            return extension.getMessageType();
        }
        return cls;
    }

    private void readUnknownField(Builder builder, WireInput wireInput, int i, WireType wireType) {
        switch (wireType) {
            case VARINT:
                builder.addVarint(i, wireInput.readVarint64());
                return;
            case FIXED32:
                builder.addFixed32(i, wireInput.readFixed32());
                return;
            case FIXED64:
                builder.addFixed64(i, wireInput.readFixed64());
                return;
            case LENGTH_DELIMITED:
                builder.addLengthDelimited(i, wireInput.readBytes(wireInput.readVarint32()));
                return;
            case START_GROUP:
                wireInput.skipGroup();
                return;
            case END_GROUP:
                return;
            default:
                throw new RuntimeException("Unsupported wire type: " + wireType);
        }
    }

    private Extension<ExtendableMessage<?>, ?> getExtension(int i) {
        ExtensionRegistry extensionRegistry = this.wire.registry;
        return extensionRegistry == null ? null : extensionRegistry.getExtension(this.messageType, i);
    }

    /* Access modifiers changed, original: 0000 */
    public Extension<ExtendableMessage<?>, ?> getExtension(String str) {
        ExtensionRegistry extensionRegistry = this.wire.registry;
        return extensionRegistry == null ? null : extensionRegistry.getExtension(this.messageType, str);
    }

    private void setExtension(ExtendableBuilder extendableBuilder, Extension<?, ?> extension, Object obj) {
        extendableBuilder.setExtension(extension, obj);
    }

    private Class<? extends ProtoEnum> getEnumClass(int i) {
        FieldInfo fieldInfo = (FieldInfo) this.fieldInfoMap.get(Integer.valueOf(i));
        Class<? extends ProtoEnum> cls = fieldInfo == null ? null : fieldInfo.enumType;
        if (cls != null) {
            return cls;
        }
        Extension extension = getExtension(i);
        if (extension != null) {
            return extension.getEnumType();
        }
        return cls;
    }
}
