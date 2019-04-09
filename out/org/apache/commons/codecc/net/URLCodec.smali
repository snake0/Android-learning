.class public Lorg/apache/commons/codecc/net/URLCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/BinaryDecoder;
.implements Lorg/apache/commons/codecc/BinaryEncoder;
.implements Lorg/apache/commons/codecc/StringDecoder;
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field protected static final ESCAPE_CHAR:B = 0x25t

.field static final RADIX:I = 0x10

.field protected static final WWW_FORM_URL:Ljava/util/BitSet;


# instance fields
.field protected charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 72
    const/16 v0, 0x61

    :goto_b
    const/16 v1, 0x7a

    if-le v0, v1, :cond_3f

    .line 75
    const/16 v0, 0x41

    :goto_11
    const/16 v1, 0x5a

    if-le v0, v1, :cond_47

    .line 79
    const/16 v0, 0x30

    :goto_17
    const/16 v1, 0x39

    if-le v0, v1, :cond_4f

    .line 83
    sget-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 86
    sget-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 88
    sget-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 89
    return-void

    .line 73
    :cond_3f
    sget-object v1, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 76
    :cond_47
    sget-object v1, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 80
    :cond_4f
    sget-object v1, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/net/URLCodec;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lorg/apache/commons/codecc/net/URLCodec;->charset:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public static final decodeUrl([B)[B
    .registers 5

    .prologue
    .line 158
    if-nez p0, :cond_4

    .line 159
    const/4 v0, 0x0

    .line 178
    :goto_3
    return-object v0

    .line 161
    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 162
    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-lt v0, v2, :cond_12

    .line 178
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3

    .line 163
    :cond_12
    aget-byte v2, p0, v0

    .line 164
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_20

    .line 165
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    :goto_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 166
    :cond_20
    const/16 v3, 0x25

    if-ne v2, v3, :cond_45

    .line 168
    add-int/lit8 v0, v0, 0x1

    :try_start_26
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/codecc/net/Utils;->digit16(B)I

    move-result v2

    .line 169
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v0

    invoke-static {v3}, Lorg/apache/commons/codecc/net/Utils;->digit16(B)I

    move-result v3

    .line 170
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_3b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_26 .. :try_end_3b} :catch_3c

    goto :goto_1d

    .line 171
    :catch_3c
    move-exception v0

    .line 172
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    const-string v2, "Invalid URL encoding: "

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 175
    :cond_45
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1d
.end method

.method public static final encodeUrl(Ljava/util/BitSet;[B)[B
    .registers 7

    .prologue
    const/16 v4, 0x10

    .line 119
    if-nez p1, :cond_6

    .line 120
    const/4 v0, 0x0

    .line 145
    :goto_5
    return-object v0

    .line 122
    :cond_6
    if-nez p0, :cond_a

    .line 123
    sget-object p0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 126
    :cond_a
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 127
    const/4 v0, 0x0

    :goto_10
    array-length v1, p1

    if-lt v0, v1, :cond_18

    .line 145
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_5

    .line 128
    :cond_18
    aget-byte v1, p1, v0

    .line 129
    if-gez v1, :cond_1e

    .line 130
    add-int/lit16 v1, v1, 0x100

    .line 132
    :cond_1e
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 133
    const/16 v3, 0x20

    if-ne v1, v3, :cond_2a

    .line 134
    const/16 v1, 0x2b

    .line 136
    :cond_2a
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 127
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 138
    :cond_30
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 139
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 140
    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 141
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 142
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2d
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 323
    if-nez p1, :cond_4

    .line 324
    const/4 v0, 0x0

    .line 328
    :goto_3
    return-object v0

    .line 325
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 326
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/URLCodec;->decode([B)[B

    move-result-object v0

    goto :goto_3

    .line 327
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 328
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/URLCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 330
    :cond_1a
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be URL decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 277
    if-nez p1, :cond_4

    .line 278
    const/4 v0, 0x0

    .line 281
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/net/URLCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    .line 282
    :catch_d
    move-exception v0

    .line 283
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 259
    if-nez p1, :cond_4

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codecc/net/URLCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_3
.end method

.method public decode([B)[B
    .registers 3

    .prologue
    .line 203
    invoke-static {p1}, Lorg/apache/commons/codecc/net/URLCodec;->decodeUrl([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 298
    if-nez p1, :cond_4

    .line 299
    const/4 v0, 0x0

    .line 303
    :goto_3
    return-object v0

    .line 300
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 301
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/URLCodec;->encode([B)[B

    move-result-object v0

    goto :goto_3

    .line 302
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 303
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/URLCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 305
    :cond_1a
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be URL encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 235
    if-nez p1, :cond_4

    .line 236
    const/4 v0, 0x0

    .line 239
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/URLCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    .line 240
    :catch_d
    move-exception v0

    .line 241
    new-instance v1, Lorg/apache/commons/codecc/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 218
    if-nez p1, :cond_4

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/net/URLCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public encode([B)[B
    .registers 3

    .prologue
    .line 189
    sget-object v0, Lorg/apache/commons/codecc/net/URLCodec;->WWW_FORM_URL:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lorg/apache/commons/codecc/net/URLCodec;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/commons/codecc/net/URLCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/commons/codecc/net/URLCodec;->charset:Ljava/lang/String;

    return-object v0
.end method
