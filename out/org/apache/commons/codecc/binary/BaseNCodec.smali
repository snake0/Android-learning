.class public abstract Lorg/apache/commons/codecc/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/BinaryDecoder;
.implements Lorg/apache/commons/codecc/BinaryEncoder;


# static fields
.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


# instance fields
.field protected final PAD:B

.field protected buffer:[B

.field private final chunkSeparatorLength:I

.field protected currentLinePos:I

.field private final encodedBlockSize:I

.field protected eof:Z

.field protected final lineLength:I

.field protected modulus:I

.field protected pos:I

.field private readPos:I

.field private final unencodedBlockSize:I


# direct methods
.method protected constructor <init>(IIII)V
    .registers 6

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->PAD:B

    .line 135
    iput p1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->unencodedBlockSize:I

    .line 136
    iput p2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->encodedBlockSize:I

    .line 137
    if-lez p3, :cond_17

    if-lez p4, :cond_17

    div-int v0, p3, p2

    mul-int/2addr v0, p2

    :goto_12
    iput v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->lineLength:I

    .line 138
    iput p4, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 139
    return-void

    .line 137
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method protected static isWhiteSpace(B)Z
    .registers 2

    .prologue
    .line 225
    sparse-switch p0, :sswitch_data_8

    .line 232
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 230
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 225
    nop

    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    .line 241
    iput v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    .line 242
    iput v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    .line 243
    iput v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->currentLinePos:I

    .line 244
    iput v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->modulus:I

    .line 245
    iput-boolean v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->eof:Z

    .line 246
    return-void
.end method

.method private resizeBuffer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 170
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    if-nez v0, :cond_12

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    .line 172
    iput v3, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    .line 173
    iput v3, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    .line 179
    :goto_11
    return-void

    .line 175
    :cond_12
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 176
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    iget-object v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iput-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    goto :goto_11
.end method


# virtual methods
.method available()I
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    sub-int/2addr v0, v1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected containsAlphabetOrPad([B)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 413
    if-nez p1, :cond_4

    .line 421
    :cond_3
    :goto_3
    return v1

    :cond_4
    move v0, v1

    .line 416
    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 417
    const/16 v2, 0x3d

    aget-byte v3, p1, v0

    if-eq v2, v3, :cond_16

    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 418
    :cond_16
    const/4 v1, 0x1

    goto :goto_3

    .line 416
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 287
    instance-of v0, p1, [B

    if-eqz v0, :cond_b

    .line 288
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 290
    :goto_a
    return-object v0

    .line 289
    :cond_b
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 290
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_a

    .line 292
    :cond_16
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BII)V
.end method

.method public decode(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 304
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-direct {p0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->reset()V

    .line 316
    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_a

    .line 323
    :cond_9
    :goto_9
    return-object p1

    .line 319
    :cond_a
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([BII)V

    .line 320
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->decode([BII)V

    .line 321
    iget v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    new-array p1, v0, [B

    .line 322
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->readResults([BII)I

    goto :goto_9
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 259
    instance-of v0, p1, [B

    if-nez v0, :cond_c

    .line 260
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_c
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BII)V
.end method

.method public encode([B)[B
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-direct {p0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->reset()V

    .line 335
    if-eqz p1, :cond_9

    array-length v0, p1

    if-nez v0, :cond_a

    .line 342
    :cond_9
    :goto_9
    return-object p1

    .line 338
    :cond_a
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([BII)V

    .line 339
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([BII)V

    .line 340
    iget v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    sub-int/2addr v0, v1

    new-array p1, v0, [B

    .line 341
    array-length v0, p1

    invoke-virtual {p0, p1, v2, v0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->readResults([BII)I

    goto :goto_9
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .registers 3

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codecc/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(I)V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_f

    .line 188
    :cond_c
    invoke-direct {p0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->resizeBuffer()V

    .line 190
    :cond_f
    return-void
.end method

.method protected getDefaultBufferSize()I
    .registers 2

    .prologue
    .line 165
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .registers 8

    .prologue
    .line 435
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 436
    iget v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_22

    .line 438
    iget v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 440
    :cond_22
    return-wide v0
.end method

.method hasData()Z
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 400
    invoke-static {p1}, Lorg/apache/commons/codecc/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/codecc/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 381
    move v0, v1

    :goto_2
    array-length v2, p1

    if-lt v0, v2, :cond_7

    .line 387
    const/4 v1, 0x1

    :cond_6
    return v1

    .line 382
    :cond_7
    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 383
    if-eqz p2, :cond_6

    aget-byte v2, p1, v0

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1f

    aget-byte v2, p1, v0

    invoke-static {v2}, Lorg/apache/commons/codecc/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 381
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method readResults([BII)I
    .registers 7

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    if-eqz v0, :cond_22

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/codecc/binary/BaseNCodec;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 207
    iget-object v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    iget v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    .line 209
    iget v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->readPos:I

    iget v2, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->pos:I

    if-lt v1, v2, :cond_21

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->buffer:[B

    .line 214
    :cond_21
    :goto_21
    return v0

    :cond_22
    iget-boolean v0, p0, Lorg/apache/commons/codecc/binary/BaseNCodec;->eof:Z

    if-eqz v0, :cond_28

    const/4 v0, -0x1

    goto :goto_21

    :cond_28
    const/4 v0, 0x0

    goto :goto_21
.end method
