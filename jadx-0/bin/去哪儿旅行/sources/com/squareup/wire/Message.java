package com.squareup.wire;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public abstract class Message {
    private static final Wire WIRE = new Wire(new Class[0]);
    private transient int cachedSerializedSize;
    protected transient int hashCode = 0;
    private transient boolean haveCachedSerializedSize;
    private transient UnknownFieldMap unknownFields;

    public abstract class Builder<T extends Message> {
        UnknownFieldMap unknownFieldMap;

        public abstract T build();

        public Builder(Message message) {
            if (message != null && message.unknownFields != null) {
                this.unknownFieldMap = new UnknownFieldMap(message.unknownFields);
            }
        }

        public void addVarint(int i, long j) {
            ensureUnknownFieldMap().addVarint(i, Long.valueOf(j));
        }

        public void addFixed32(int i, int i2) {
            ensureUnknownFieldMap().addFixed32(i, Integer.valueOf(i2));
        }

        public void addFixed64(int i, long j) {
            ensureUnknownFieldMap().addFixed64(i, Long.valueOf(j));
        }

        public void addLengthDelimited(int i, ByteString byteString) {
            ensureUnknownFieldMap().addLengthDelimited(i, byteString);
        }

        private UnknownFieldMap ensureUnknownFieldMap() {
            if (this.unknownFieldMap == null) {
                this.unknownFieldMap = new UnknownFieldMap();
            }
            return this.unknownFieldMap;
        }

        public void checkRequiredFields() {
            Message.WIRE.builderAdapter(getClass()).checkRequiredFields(this);
        }

        protected static <T> List<T> checkForNulls(List<T> list) {
            if (!(list == null || list.isEmpty())) {
                for (T t : list) {
                    if (t == null) {
                        throw new NullPointerException();
                    }
                }
            }
            return list;
        }
    }

    public enum Datatype {
        INT32(1),
        INT64(2),
        UINT32(3),
        UINT64(4),
        SINT32(5),
        SINT64(6),
        BOOL(7),
        ENUM(8),
        STRING(9),
        BYTES(10),
        MESSAGE(11),
        FIXED32(12),
        SFIXED32(13),
        FIXED64(14),
        SFIXED64(15),
        FLOAT(16),
        DOUBLE(17);
        
        public static final Comparator<Datatype> ORDER_BY_NAME = null;
        private static final Map<String, Datatype> TYPES_BY_NAME = null;
        private final int value;

        static {
            ORDER_BY_NAME = new Comparator<Datatype>() {
                public int compare(Datatype datatype, Datatype datatype2) {
                    return datatype.name().compareTo(datatype2.name());
                }
            };
            TYPES_BY_NAME = new LinkedHashMap();
            TYPES_BY_NAME.put("int32", INT32);
            TYPES_BY_NAME.put("int64", INT64);
            TYPES_BY_NAME.put("uint32", UINT32);
            TYPES_BY_NAME.put("uint64", UINT64);
            TYPES_BY_NAME.put("sint32", SINT32);
            TYPES_BY_NAME.put("sint64", SINT64);
            TYPES_BY_NAME.put("bool", BOOL);
            TYPES_BY_NAME.put("enum", ENUM);
            TYPES_BY_NAME.put("string", STRING);
            TYPES_BY_NAME.put("bytes", BYTES);
            TYPES_BY_NAME.put("message", MESSAGE);
            TYPES_BY_NAME.put("fixed32", FIXED32);
            TYPES_BY_NAME.put("sfixed32", SFIXED32);
            TYPES_BY_NAME.put("fixed64", FIXED64);
            TYPES_BY_NAME.put("sfixed64", SFIXED64);
            TYPES_BY_NAME.put("float", FLOAT);
            TYPES_BY_NAME.put("double", DOUBLE);
        }

        private Datatype(int i) {
            this.value = i;
        }

        public int value() {
            return this.value;
        }

        public WireType wireType() {
            switch (this) {
                case INT32:
                case INT64:
                case UINT32:
                case UINT64:
                case SINT32:
                case SINT64:
                case BOOL:
                case ENUM:
                    return WireType.VARINT;
                case FIXED32:
                case SFIXED32:
                case FLOAT:
                    return WireType.FIXED32;
                case FIXED64:
                case SFIXED64:
                case DOUBLE:
                    return WireType.FIXED64;
                case STRING:
                case BYTES:
                case MESSAGE:
                    return WireType.LENGTH_DELIMITED;
                default:
                    throw new AssertionError("No wiretype for datatype " + this);
            }
        }

        public static Datatype of(String str) {
            return (Datatype) TYPES_BY_NAME.get(str);
        }
    }

    public enum Label {
        REQUIRED(32),
        OPTIONAL(64),
        REPEATED(128),
        PACKED(256);
        
        public static final Comparator<Label> ORDER_BY_NAME = null;
        private final int value;

        static {
            ORDER_BY_NAME = new Comparator<Label>() {
                public int compare(Label label, Label label2) {
                    return label.name().compareTo(label2.name());
                }
            };
        }

        private Label(int i) {
            this.value = i;
        }

        public int value() {
            return this.value;
        }

        public boolean isRepeated() {
            return this == REPEATED || this == PACKED;
        }

        public boolean isPacked() {
            return this == PACKED;
        }
    }

    protected Message(Builder builder) {
        if (builder.unknownFieldMap != null) {
            this.unknownFields = new UnknownFieldMap(builder.unknownFieldMap);
        }
    }

    /* Access modifiers changed, original: protected */
    public Collection<List<FieldValue>> unknownFields() {
        return this.unknownFields == null ? Collections.emptySet() : this.unknownFields.fieldMap.values();
    }

    protected static <T> List<T> copyOf(List<T> list) {
        return list == null ? null : new ArrayList(list);
    }

    protected static <T> List<T> immutableCopyOf(List<T> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <E extends Enum & ProtoEnum> int intFromEnum(E e) {
        return WIRE.enumAdapter(e.getClass()).toInt((ProtoEnum) e);
    }

    public static <E extends Enum & ProtoEnum> E enumFromInt(Class<E> cls, int i) {
        return (Enum) WIRE.enumAdapter(cls).fromInt(i);
    }

    public byte[] toByteArray() {
        return WIRE.messageAdapter(getClass()).toByteArray(this);
    }

    public void writeTo(byte[] bArr) {
        writeTo(bArr, 0, bArr.length);
    }

    public void writeTo(byte[] bArr, int i, int i2) {
        write(WireOutput.newInstance(bArr, i, i2));
    }

    private void write(WireOutput wireOutput) {
        try {
            WIRE.messageAdapter(getClass()).write(this, wireOutput);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public void writeUnknownFieldMap(WireOutput wireOutput) {
        if (this.unknownFields != null) {
            this.unknownFields.write(wireOutput);
        }
    }

    public int getSerializedSize() {
        if (!this.haveCachedSerializedSize) {
            this.cachedSerializedSize = WIRE.messageAdapter(getClass()).getSerializedSize(this);
            this.haveCachedSerializedSize = true;
        }
        return this.cachedSerializedSize;
    }

    public int getUnknownFieldsSerializedSize() {
        return this.unknownFields == null ? 0 : this.unknownFields.getSerializedSize();
    }

    /* Access modifiers changed, original: protected */
    public boolean equals(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* Access modifiers changed, original: protected */
    public boolean equals(List<?> list, List<?> list2) {
        List list3;
        List list22;
        if (list3 != null && list3.isEmpty()) {
            list3 = null;
        }
        if (list22 != null && list22.isEmpty()) {
            list22 = null;
        }
        return list3 == list22 || (list3 != null && list3.equals(list22));
    }

    protected static <T> List<T> asList(T... tArr) {
        return Arrays.asList(tArr);
    }

    public String toString() {
        return WIRE.messageAdapter(getClass()).toString(this);
    }
}
