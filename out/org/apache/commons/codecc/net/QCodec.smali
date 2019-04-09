.class public Lorg/apache/commons/codecc/net/QCodec;
.super Lorg/apache/commons/codecc/net/RFC1522Codec;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringDecoder;
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field private static final BLANK:B = 0x20t

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static final UNDERSCORE:B = 0x5ft


# instance fields
.field private final charset:Ljava/lang/String;

.field private encodeBlanks:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 58
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 62
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 63
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 64
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 65
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 66
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 67
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 68
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 69
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 70
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 71
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 72
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 73
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 74
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 75
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 76
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 77
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 78
    const/16 v0, 0x30

    :goto_7b
    const/16 v1, 0x39

    if-le v0, v1, :cond_ee

    .line 81
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 82
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 83
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 84
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 85
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 86
    const/16 v0, 0x41

    :goto_a4
    const/16 v1, 0x5a

    if-le v0, v1, :cond_f6

    .line 89
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 90
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 91
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 92
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 93
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    const/16 v0, 0x61

    :goto_cd
    const/16 v1, 0x7a

    if-le v0, v1, :cond_fe

    .line 97
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 98
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 105
    return-void

    .line 79
    :cond_ee
    sget-object v1, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_7b

    .line 87
    :cond_f6
    sget-object v1, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_a4

    .line 95
    :cond_fe
    sget-object v1, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 113
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lorg/apache/commons/codecc/net/QCodec;-><init>(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/apache/commons/codecc/net/RFC1522Codec;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/codecc/net/QCodec;->encodeBlanks:Z

    .line 126
    iput-object p1, p0, Lorg/apache/commons/codecc/net/QCodec;->charset:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 273
    if-nez p1, :cond_4

    .line 274
    const/4 v0, 0x0

    .line 276
    :goto_3
    return-object v0

    .line 275
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 276
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 278
    :cond_f
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string v2, " cannot be decoded using Q codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 227
    if-nez p1, :cond_4

    .line 228
    const/4 v0, 0x0

    .line 231
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QCodec;->decodeText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 232
    :catch_9
    move-exception v0

    .line 233
    new-instance v1, Lorg/apache/commons/codecc/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doDecoding([B)[B
    .registers 6

    .prologue
    const/16 v3, 0x5f

    const/4 v1, 0x0

    .line 149
    if-nez p1, :cond_7

    .line 150
    const/4 v0, 0x0

    .line 171
    :goto_6
    return-object v0

    :cond_7
    move v0, v1

    .line 153
    :goto_8
    array-length v2, p1

    if-lt v0, v2, :cond_19

    move v0, v1

    .line 159
    :goto_c
    if-eqz v0, :cond_30

    .line 160
    array-length v0, p1

    new-array v0, v0, [B

    .line 161
    :goto_11
    array-length v2, p1

    if-lt v1, v2, :cond_22

    .line 169
    invoke-static {v0}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    goto :goto_6

    .line 154
    :cond_19
    aget-byte v2, p1, v0

    if-ne v2, v3, :cond_1f

    .line 155
    const/4 v0, 0x1

    .line 156
    goto :goto_c

    .line 153
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 162
    :cond_22
    aget-byte v2, p1, v1

    .line 163
    if-eq v2, v3, :cond_2b

    .line 164
    aput-byte v2, v0, v1

    .line 161
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 166
    :cond_2b
    const/16 v2, 0x20

    aput-byte v2, v0, v1

    goto :goto_28

    .line 171
    :cond_30
    invoke-static {p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    goto :goto_6
.end method

.method protected doEncoding([B)[B
    .registers 6

    .prologue
    .line 134
    if-nez p1, :cond_4

    .line 135
    const/4 v0, 0x0

    .line 145
    :goto_3
    return-object v0

    .line 137
    :cond_4
    sget-object v0, Lorg/apache/commons/codecc/net/QCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lorg/apache/commons/codecc/net/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v1

    .line 138
    iget-boolean v0, p0, Lorg/apache/commons/codecc/net/QCodec;->encodeBlanks:Z

    if-eqz v0, :cond_12

    .line 139
    const/4 v0, 0x0

    :goto_f
    array-length v2, v1

    if-lt v0, v2, :cond_14

    :cond_12
    move-object v0, v1

    .line 145
    goto :goto_3

    .line 140
    :cond_14
    aget-byte v2, v1, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1e

    .line 141
    const/16 v2, 0x5f

    aput-byte v2, v1, v0

    .line 139
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 248
    if-nez p1, :cond_4

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_3
    return-object v0

    .line 250
    :cond_4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 251
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/net/QCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 253
    :cond_f
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Objects of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string v2, " cannot be encoded using Q codec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 208
    if-nez p1, :cond_4

    .line 209
    const/4 v0, 0x0

    .line 211
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/codecc/net/QCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codecc/net/QCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 187
    if-nez p1, :cond_4

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/codecc/net/QCodec;->encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    goto :goto_3

    .line 192
    :catch_9
    move-exception v0

    .line 193
    new-instance v1, Lorg/apache/commons/codecc/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/apache/commons/codecc/net/QCodec;->charset:Ljava/lang/String;

    return-object v0
.end method

.method protected getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    const-string v0, "Q"

    return-object v0
.end method

.method public isEncodeBlanks()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/apache/commons/codecc/net/QCodec;->encodeBlanks:Z

    return v0
.end method

.method public setEncodeBlanks(Z)V
    .registers 2

    .prologue
    .line 309
    iput-boolean p1, p0, Lorg/apache/commons/codecc/net/QCodec;->encodeBlanks:Z

    .line 310
    return-void
.end method
