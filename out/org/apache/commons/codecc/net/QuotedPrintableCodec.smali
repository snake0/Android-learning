.class public Lorg/apache/commons/codecc/net/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/BinaryDecoder;
.implements Lorg/apache/commons/codecc/BinaryEncoder;
.implements Lorg/apache/commons/codecc/StringDecoder;
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field private static final ESCAPE_CHAR:B = 0x3dt

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static final SPACE:B = 0x20t

.field private static final TAB:B = 0x9t


# instance fields
.field private final charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 77
    const/16 v0, 0x21

    :goto_b
    const/16 v1, 0x3c

    if-le v0, v1, :cond_24

    .line 80
    const/16 v0, 0x3e

    :goto_11
    const/16 v1, 0x7e

    if-le v0, v1, :cond_2c

    .line 83
    sget-object v0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    return-void

    .line 78
    :cond_24
    sget-object v1, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 81
    :cond_2c
    sget-object v1, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 91
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .registers 5

    .prologue
    .line 173
    if-nez p0, :cond_4

    .line 174
    const/4 v0, 0x0

    .line 191
    :goto_3
    return-object v0

    .line 176
    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    const/4 v0, 0x0

    :goto_a
    array-length v2, p0

    if-lt v0, v2, :cond_12

    .line 191
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3

    .line 178
    :cond_12
    aget-byte v2, p0, v0

    .line 179
    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3b

    .line 181
    add-int/lit8 v0, v0, 0x1

    :try_start_1a
    aget-byte v2, p0, v0

    invoke-static {v2}, Lorg/apache/commons/codecc/net/Utils;->digit16(B)I

    move-result v2

    .line 182
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v0

    invoke-static {v3}, Lorg/apache/commons/codecc/net/Utils;->digit16(B)I

    move-result v3

    .line 183
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_2f
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_2f} :catch_32

    .line 177
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 184
    :catch_32
    move-exception v0

    .line 185
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    const-string v2, "Invalid quoted-printable encoding"

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 188
    :cond_3b
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2f
.end method

.method private static final encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V
    .registers 5

    .prologue
    const/16 v2, 0x10

    .line 114
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 115
    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 116
    and-int/lit8 v1, p0, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    return-void
.end method

.method public static final encodeQuotedPrintable(Ljava/util/BitSet;[B)[B
    .registers 6

    .prologue
    .line 136
    if-nez p1, :cond_4

    .line 137
    const/4 v0, 0x0

    .line 154
    :goto_3
    return-object v0

    .line 139
    :cond_4
    if-nez p0, :cond_8

    .line 140
    sget-object p0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 142
    :cond_8
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 143
    const/4 v0, 0x0

    :goto_e
    array-length v1, p1

    if-lt v0, v1, :cond_16

    .line 154
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3

    .line 144
    :cond_16
    aget-byte v1, p1, v0

    .line 145
    if-gez v1, :cond_1c

    .line 146
    add-int/lit16 v1, v1, 0x100

    .line 148
    :cond_1c
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 149
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 143
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 151
    :cond_28
    invoke-static {v1, v2}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V

    goto :goto_25
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 337
    if-nez p1, :cond_4

    .line 338
    const/4 v0, 0x0

    .line 342
    :goto_3
    return-object v0

    .line 339
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 340
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v0

    goto :goto_3

    .line 341
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 342
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 344
    :cond_1a
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    const-string v2, " cannot be quoted-printable decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 291
    if-nez p1, :cond_4

    .line 292
    const/4 v0, 0x0

    .line 295
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    .line 296
    :catch_d
    move-exception v0

    .line 297
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 272
    if-nez p1, :cond_4

    .line 273
    const/4 v0, 0x0

    .line 275
    :goto_3
    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_3
.end method

.method public decode([B)[B
    .registers 3

    .prologue
    .line 226
    invoke-static {p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 312
    if-nez p1, :cond_4

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_3
    return-object v0

    .line 314
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 315
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    goto :goto_3

    .line 316
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 317
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 319
    :cond_1a
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    const-string v2, " cannot be quoted-printable encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 247
    if-nez p1, :cond_4

    .line 248
    const/4 v0, 0x0

    .line 251
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v0

    goto :goto_3

    .line 252
    :catch_d
    move-exception v0

    .line 253
    new-instance v1, Lorg/apache/commons/codecc/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 377
    if-nez p1, :cond_4

    .line 378
    const/4 v0, 0x0

    .line 380
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public encode([B)[B
    .registers 3

    .prologue
    .line 207
    sget-object v0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->charset:Ljava/lang/String;

    return-object v0
.end method
