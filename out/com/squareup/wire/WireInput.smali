.class final Lcom/squareup/wire/WireInput;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final ENCOUNTERED_A_MALFORMED_VARINT:Ljava/lang/String; = "WireInput encountered a malformed varint."

.field private static final ENCOUNTERED_A_NEGATIVE_SIZE:Ljava/lang/String; = "Encountered a negative size"

.field private static final INPUT_ENDED_UNEXPECTEDLY:Ljava/lang/String; = "The input ended unexpectedly in the middle of a field"

.field private static final PROTOCOL_MESSAGE_CONTAINED_AN_INVALID_TAG_ZERO:Ljava/lang/String; = "Protocol message contained an invalid tag (zero)."

.field private static final PROTOCOL_MESSAGE_END_GROUP_TAG_DID_NOT_MATCH_EXPECTED_TAG:Ljava/lang/String; = "Protocol message end-group tag did not match expected tag."

.field public static final RECURSION_LIMIT:I = 0x40

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final buffer:[B

.field private bufferOffset:J

.field private currentLimit:I

.field private final input:Ljava/io/InputStream;

.field private inputStreamAtEof:Z

.field private lastTag:I

.field private limit:I

.field private pos:I

.field public recursionDepth:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 299
    const v0, 0x7fffffff

    iput v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 306
    iput-object p1, p0, Lcom/squareup/wire/WireInput;->input:Ljava/io/InputStream;

    .line 307
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    .line 308
    return-void
.end method

.method private constructor <init>([BII)V
    .registers 6

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 299
    const v0, 0x7fffffff

    iput v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/wire/WireInput;->input:Ljava/io/InputStream;

    .line 314
    iput-object p1, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    .line 315
    neg-int v0, p2

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    .line 316
    iput p2, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 317
    add-int v0, p2, p3

    iput v0, p0, Lcom/squareup/wire/WireInput;->limit:I

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/wire/WireInput;->inputStreamAtEof:Z

    .line 319
    return-void
.end method

.method private bytesRemaining()I
    .registers 3

    .prologue
    .line 126
    iget v0, p0, Lcom/squareup/wire/WireInput;->limit:I

    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag32(I)I
    .registers 3

    .prologue
    .line 245
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .registers 6

    .prologue
    .line 259
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/squareup/wire/WireInput;
    .registers 2

    .prologue
    .line 75
    new-instance v0, Lcom/squareup/wire/WireInput;

    invoke-direct {v0, p0}, Lcom/squareup/wire/WireInput;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/squareup/wire/WireInput;
    .registers 4

    .prologue
    .line 64
    new-instance v0, Lcom/squareup/wire/WireInput;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/WireInput;-><init>([BII)V

    return-object v0
.end method

.method public static newInstance([BII)Lcom/squareup/wire/WireInput;
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lcom/squareup/wire/WireInput;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/wire/WireInput;-><init>([BII)V

    return-object v0
.end method

.method private refillBuffer(I)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 339
    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget v2, p0, Lcom/squareup/wire/WireInput;->limit:I

    if-lt v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/squareup/wire/WireInput;->inputStreamAtEof:Z

    if-eqz v0, :cond_c

    .line 363
    :cond_b
    :goto_b
    return-void

    .line 343
    :cond_c
    iget-wide v2, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    .line 344
    iput v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 348
    const/16 v0, 0x400

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    .line 349
    :goto_1d
    if-ge v0, v2, :cond_34

    .line 350
    iget-object v3, p0, Lcom/squareup/wire/WireInput;->input:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    rsub-int v5, v0, 0x400

    invoke-virtual {v3, v4, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 351
    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    .line 353
    iput v0, p0, Lcom/squareup/wire/WireInput;->limit:I

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/wire/WireInput;->inputStreamAtEof:Z

    goto :goto_b

    .line 357
    :cond_32
    add-int/2addr v0, v3

    .line 358
    goto :goto_1d

    .line 361
    :cond_34
    iput v0, p0, Lcom/squareup/wire/WireInput;->limit:I

    .line 362
    iput-boolean v1, p0, Lcom/squareup/wire/WireInput;->inputStreamAtEof:Z

    goto :goto_b
.end method

.method private skipField(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 464
    sget-object v1, Lcom/squareup/wire/WireInput$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-static {p1}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 476
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 465
    :pswitch_16
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint64()J

    .line 474
    :goto_19
    return v0

    .line 466
    :pswitch_1a
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readFixed32()I

    goto :goto_19

    .line 467
    :pswitch_1e
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readFixed64()J

    goto :goto_19

    .line 468
    :pswitch_22
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/squareup/wire/WireInput;->readRawBytes(I)[B

    goto :goto_19

    .line 470
    :pswitch_2a
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->skipGroup()V

    .line 471
    and-int/lit8 v1, p1, -0x8

    sget-object v2, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->value()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    goto :goto_19

    .line 474
    :pswitch_3a
    const/4 v0, 0x1

    goto :goto_19

    .line 464
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1a
        :pswitch_1e
        :pswitch_22
        :pswitch_2a
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 4

    .prologue
    .line 107
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    if-eq v0, p1, :cond_c

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_c
    return-void
.end method

.method public getPosition()J
    .registers 5

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    iget v2, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isAtEnd()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v1

    iget v3, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_d

    .line 405
    :cond_c
    :goto_c
    return v0

    .line 404
    :cond_d
    invoke-direct {p0, v0}, Lcom/squareup/wire/WireInput;->refillBuffer(I)V

    .line 405
    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->bytesRemaining()I

    move-result v1

    if-nez v1, :cond_1a

    iget-boolean v1, p0, Lcom/squareup/wire/WireInput;->inputStreamAtEof:Z

    if-nez v1, :cond_c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public popLimit(I)V
    .registers 2

    .prologue
    .line 390
    iput p1, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 391
    return-void
.end method

.method public pushLimit(I)I
    .registers 8

    .prologue
    .line 372
    if-gez p1, :cond_a

    .line 373
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered a negative size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_a
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/squareup/wire/WireInput;->bufferOffset:J

    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 376
    iget v1, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 377
    if-le v0, v1, :cond_1f

    .line 378
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1f
    iput v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    .line 381
    return v1
.end method

.method public readBytes()Lcom/squareup/wire/ByteString;
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lcom/squareup/wire/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(I)Lcom/squareup/wire/ByteString;
    .registers 4

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->bytesRemaining()I

    move-result v0

    if-lt v0, p1, :cond_14

    .line 142
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    invoke-static {v0, v1, p1}, Lcom/squareup/wire/ByteString;->of([BII)Lcom/squareup/wire/ByteString;

    move-result-object v0

    .line 143
    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 146
    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0, p1}, Lcom/squareup/wire/WireInput;->readRawBytes(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/ByteString;->of([B)Lcom/squareup/wire/ByteString;

    move-result-object v0

    goto :goto_13
.end method

.method public readFixed32()I
    .registers 5

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v0

    .line 205
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v1

    .line 206
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v2

    .line 207
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v3

    .line 208
    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public readFixed64()J
    .registers 14

    .prologue
    const-wide/16 v11, 0xff

    .line 216
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v0

    .line 217
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v1

    .line 218
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v2

    .line 219
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v3

    .line 220
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v4

    .line 221
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v5

    .line 222
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v6

    .line 223
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v7

    .line 224
    int-to-long v8, v0

    and-long/2addr v8, v11

    int-to-long v0, v1

    and-long/2addr v0, v11

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v11

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v11

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v11

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v11

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v11

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v11

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readRawByte()B
    .registers 4

    .prologue
    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/wire/WireInput;->refillBuffer(I)V

    .line 422
    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->bytesRemaining()I

    move-result v0

    if-nez v0, :cond_12

    .line 423
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_12
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/WireInput;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .registers 7

    .prologue
    .line 434
    if-gez p1, :cond_a

    .line 435
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Encountered a negative size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_a
    new-array v1, p1, [B

    .line 439
    const/4 v0, 0x0

    .line 440
    :goto_d
    if-ge v0, p1, :cond_3a

    .line 441
    sub-int v2, p1, v0

    invoke-direct {p0, v2}, Lcom/squareup/wire/WireInput;->refillBuffer(I)V

    .line 442
    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->bytesRemaining()I

    move-result v2

    if-nez v2, :cond_22

    .line 443
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_22
    sub-int v2, p1, v0

    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->bytesRemaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 446
    iget-object v3, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 448
    add-int/2addr v0, v2

    .line 449
    goto :goto_d

    .line 450
    :cond_3a
    return-object v1
.end method

.method public readString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    .line 116
    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->bytesRemaining()I

    move-result v0

    if-lt v0, v1, :cond_1b

    .line 117
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/wire/WireInput;->buffer:[B

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 118
    iget v2, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    .line 121
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/squareup/wire/WireInput;->readRawBytes(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1a
.end method

.method public readTag()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 87
    iput v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    .line 96
    :goto_9
    return v0

    .line 91
    :cond_a
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    .line 92
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    if-nez v0, :cond_1c

    .line 94
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1c
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    goto :goto_9
.end method

.method public readVarint32()I
    .registers 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v0

    .line 155
    if-ltz v0, :cond_7

    .line 184
    :cond_6
    :goto_6
    return v0

    .line 158
    :cond_7
    and-int/lit8 v0, v0, 0x7f

    .line 159
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_13

    .line 160
    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_6

    .line 162
    :cond_13
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 163
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_22

    .line 164
    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_6

    .line 166
    :cond_22
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    .line 167
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_31

    .line 168
    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_6

    .line 170
    :cond_31
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    .line 171
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    .line 172
    if-gez v1, :cond_6

    .line 174
    const/4 v1, 0x0

    :goto_40
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4c

    .line 175
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v2

    if-gez v2, :cond_6

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 179
    :cond_4c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WireInput encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readVarint64()J
    .registers 7

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 190
    const-wide/16 v0, 0x0

    .line 191
    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 192
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readRawByte()B

    move-result v3

    .line 193
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 194
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    .line 195
    return-wide v0

    .line 197
    :cond_15
    add-int/lit8 v2, v2, 0x7

    .line 198
    goto :goto_3

    .line 199
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "WireInput encountered a malformed varint."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skipGroup()V
    .registers 2

    .prologue
    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v0

    .line 456
    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/squareup/wire/WireInput;->skipField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    :cond_c
    return-void
.end method
