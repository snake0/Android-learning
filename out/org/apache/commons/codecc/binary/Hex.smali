.class public Lorg/apache/commons/codecc/binary/Hex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/BinaryDecoder;
.implements Lorg/apache/commons/codecc/BinaryEncoder;


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# instance fields
.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 47
    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/codecc/binary/Hex;->DIGITS_LOWER:[C

    .line 52
    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lorg/apache/commons/codecc/binary/Hex;->DIGITS_UPPER:[C

    return-void

    .line 47
    nop

    :array_12
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 52
    :array_26
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    const-string v0, "UTF-8"

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/Hex;->charsetName:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lorg/apache/commons/codecc/binary/Hex;->charsetName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public static decodeHex([C)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 67
    array-length v2, p0

    .line 69
    and-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_e

    .line 70
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "Odd number of characters."

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_e
    shr-int/lit8 v1, v2, 0x1

    new-array v3, v1, [B

    move v1, v0

    .line 76
    :goto_13
    if-lt v0, v2, :cond_16

    .line 84
    return-object v3

    .line 77
    :cond_16
    aget-char v4, p0, v0

    invoke-static {v4, v0}, Lorg/apache/commons/codecc/binary/Hex;->toDigit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 79
    aget-char v5, p0, v0

    invoke-static {v5, v0}, Lorg/apache/commons/codecc/binary/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v4, v5

    .line 80
    add-int/lit8 v0, v0, 0x1

    .line 81
    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public static encodeHex([B)[C
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .registers 3

    .prologue
    .line 113
    if-eqz p1, :cond_9

    sget-object v0, Lorg/apache/commons/codecc/binary/Hex;->DIGITS_LOWER:[C

    :goto_4
    invoke-static {p0, v0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lorg/apache/commons/codecc/binary/Hex;->DIGITS_UPPER:[C

    goto :goto_4
.end method

.method protected static encodeHex([B[C)[C
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 129
    array-length v2, p0

    .line 130
    shl-int/lit8 v1, v2, 0x1

    new-array v3, v1, [C

    move v1, v0

    .line 132
    :goto_7
    if-lt v1, v2, :cond_a

    .line 136
    return-object v3

    .line 133
    :cond_a
    add-int/lit8 v4, v0, 0x1

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v3, v0

    .line 134
    add-int/lit8 v0, v4, 0x1

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v3, v4

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codecc/binary/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method protected static toDigit(CI)I
    .registers 5

    .prologue
    .line 164
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 165
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 166
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal hexadecimal character "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_28
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 227
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 228
    :goto_a
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/Hex;->decodeHex([C)[B

    move-result-object v0

    return-object v0

    .line 227
    :cond_f
    check-cast p1, [C
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_a

    .line 229
    :catch_12
    move-exception v0

    .line 230
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode([B)[B
    .registers 5

    .prologue
    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/codecc/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/Hex;->decodeHex([C)[B
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    return-object v0

    .line 207
    :catch_12
    move-exception v0

    .line 208
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 273
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_13

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/commons/codecc/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 274
    :goto_e
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/Hex;->encodeHex([B)[C

    move-result-object v0

    return-object v0

    .line 273
    :cond_13
    check-cast p1, [B
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_21

    goto :goto_e

    .line 275
    :catch_16
    move-exception v0

    .line 276
    new-instance v1, Lorg/apache/commons/codecc/EncoderException;

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 277
    :catch_21
    move-exception v0

    .line 278
    new-instance v1, Lorg/apache/commons/codecc/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode([B)[B
    .registers 4

    .prologue
    .line 252
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/codecc/binary/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/Hex;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/codecc/binary/Hex;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
