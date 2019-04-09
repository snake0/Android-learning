.class public Lorg/apache/commons/codecc/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/BinaryDecoder;
.implements Lorg/apache/commons/codecc/BinaryEncoder;


# static fields
.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 39
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 42
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    sget-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 208
    :goto_9
    return-object v0

    .line 196
    :cond_a
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 201
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_13
    array-length v3, v4

    if-lt v1, v3, :cond_18

    move-object v0, v4

    .line 208
    goto :goto_9

    :cond_18
    move v3, v2

    .line 202
    :goto_19
    sget-object v5, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-lt v3, v5, :cond_23

    .line 201
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_13

    .line 203
    :cond_23
    sub-int v5, v0, v3

    aget-byte v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_35

    .line 204
    aget-byte v5, v4, v1

    sget-object v6, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 202
    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_19
.end method

.method public static fromAscii([C)[B
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 165
    if-eqz p0, :cond_6

    array-length v0, p0

    if-nez v0, :cond_9

    .line 166
    :cond_6
    sget-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 181
    :goto_8
    return-object v0

    .line 169
    :cond_9
    array-length v0, p0

    shr-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 174
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_12
    array-length v3, v4

    if-lt v1, v3, :cond_17

    move-object v0, v4

    .line 181
    goto :goto_8

    :cond_17
    move v3, v2

    .line 175
    :goto_18
    sget-object v5, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-lt v3, v5, :cond_22

    .line 174
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_12

    .line 176
    :cond_22
    sub-int v5, v0, v3

    aget-char v5, p0, v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_34

    .line 177
    aget-byte v5, v4, v1

    sget-object v6, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 175
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method private static isEmpty([B)Z
    .registers 2

    .prologue
    .line 219
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public static toAsciiBytes([B)[B
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 233
    sget-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 250
    :goto_9
    return-object v0

    .line 236
    :cond_a
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v4, v0, [B

    .line 241
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_13
    array-length v3, p0

    if-lt v1, v3, :cond_18

    move-object v0, v4

    .line 250
    goto :goto_9

    :cond_18
    move v3, v2

    .line 242
    :goto_19
    sget-object v5, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-lt v3, v5, :cond_23

    .line 241
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_13

    .line 243
    :cond_23
    aget-byte v5, p0, v1

    sget-object v6, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    if-nez v5, :cond_35

    .line 244
    sub-int v5, v0, v3

    const/16 v6, 0x30

    aput-byte v6, v4, v5

    .line 242
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 246
    :cond_35
    sub-int v5, v0, v3

    const/16 v6, 0x31

    aput-byte v6, v4, v5

    goto :goto_32
.end method

.method public static toAsciiChars([B)[C
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 262
    invoke-static {p0}, Lorg/apache/commons/codecc/binary/BinaryCodec;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 263
    sget-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 280
    :goto_9
    return-object v0

    .line 266
    :cond_a
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x3

    new-array v4, v0, [C

    .line 271
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    :goto_13
    array-length v3, p0

    if-lt v1, v3, :cond_18

    move-object v0, v4

    .line 280
    goto :goto_9

    :cond_18
    move v3, v2

    .line 272
    :goto_19
    sget-object v5, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    array-length v5, v5

    if-lt v3, v5, :cond_23

    .line 271
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x8

    goto :goto_13

    .line 273
    :cond_23
    aget-byte v5, p0, v1

    sget-object v6, Lorg/apache/commons/codecc/binary/BinaryCodec;->BITS:[I

    aget v6, v6, v3

    and-int/2addr v5, v6

    if-nez v5, :cond_35

    .line 274
    sub-int v5, v0, v3

    const/16 v6, 0x30

    aput-char v6, v4, v5

    .line 272
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 276
    :cond_35
    sub-int v5, v0, v3

    const/16 v6, 0x31

    aput-char v6, v4, v5

    goto :goto_32
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 292
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codecc/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 110
    if-nez p1, :cond_5

    .line 111
    sget-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 120
    :goto_4
    return-object v0

    .line 113
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_10

    .line 114
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codecc/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    goto :goto_4

    .line 116
    :cond_10
    instance-of v0, p1, [C

    if-eqz v0, :cond_1b

    .line 117
    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/commons/codecc/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_4

    .line 119
    :cond_1b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 120
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_4

    .line 122
    :cond_2a
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .registers 3

    .prologue
    .line 134
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 93
    instance-of v0, p1, [B

    if-nez v0, :cond_c

    .line 94
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_c
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codecc/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .registers 3

    .prologue
    .line 79
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 146
    if-nez p1, :cond_5

    .line 147
    sget-object v0, Lorg/apache/commons/codecc/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 149
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_4
.end method
