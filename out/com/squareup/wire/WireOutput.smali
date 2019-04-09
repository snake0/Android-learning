.class public final Lcom/squareup/wire/WireOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private position:I


# direct methods
.method private constructor <init>([BII)V
    .registers 5

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lcom/squareup/wire/WireOutput;->buffer:[B

    .line 161
    iput p2, p0, Lcom/squareup/wire/WireOutput;->position:I

    .line 162
    add-int v0, p2, p3

    iput v0, p0, Lcom/squareup/wire/WireOutput;->limit:I

    .line 163
    return-void
.end method

.method public static int32Size(I)I
    .registers 2

    .prologue
    .line 66
    if-ltz p0, :cond_7

    .line 67
    invoke-static {p0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    .line 70
    :goto_6
    return v0

    :cond_7
    const/16 v0, 0xa

    goto :goto_6
.end method

.method public static int64Size(J)I
    .registers 4

    .prologue
    .line 79
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    .line 80
    invoke-static {p0, p1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    .line 83
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0xa

    goto :goto_a
.end method

.method public static makeTag(ILcom/squareup/wire/WireType;)I
    .registers 4

    .prologue
    .line 152
    shl-int/lit8 v0, p0, 0x3

    invoke-virtual {p1}, Lcom/squareup/wire/WireType;->value()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static messageHeaderSize(II)I
    .registers 4

    .prologue
    .line 131
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/WireOutput;->tagSize(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static messageSize(II)I
    .registers 4

    .prologue
    .line 97
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/WireOutput;->tagSize(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {p1}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method

.method static newInstance([B)Lcom/squareup/wire/WireOutput;
    .registers 3

    .prologue
    .line 172
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/squareup/wire/WireOutput;->newInstance([BII)Lcom/squareup/wire/WireOutput;

    move-result-object v0

    return-object v0
.end method

.method static newInstance([BII)Lcom/squareup/wire/WireOutput;
    .registers 4

    .prologue
    .line 182
    new-instance v0, Lcom/squareup/wire/WireOutput;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/wire/WireOutput;-><init>([BII)V

    return-object v0
.end method

.method public static tagSize(ILcom/squareup/wire/WireType;)I
    .registers 3

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->int32Size(I)I

    move-result v0

    return v0
.end method

.method static varint32Size(I)I
    .registers 2

    .prologue
    .line 196
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 v0, 0x1

    .line 200
    :goto_5
    return v0

    .line 197
    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 v0, 0x2

    goto :goto_5

    .line 198
    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    goto :goto_5

    .line 199
    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_5

    .line 200
    :cond_1a
    const/4 v0, 0x5

    goto :goto_5
.end method

.method static varint64Size(J)I
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 205
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    .line 214
    :goto_a
    return v0

    .line 206
    :cond_b
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    const/4 v0, 0x2

    goto :goto_a

    .line 207
    :cond_14
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    goto :goto_a

    .line 208
    :cond_1e
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_28

    const/4 v0, 0x4

    goto :goto_a

    .line 209
    :cond_28
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_34

    const/4 v0, 0x5

    goto :goto_a

    .line 210
    :cond_34
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_40

    const/4 v0, 0x6

    goto :goto_a

    .line 211
    :cond_40
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    const/4 v0, 0x7

    goto :goto_a

    .line 212
    :cond_49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_53

    const/16 v0, 0x8

    goto :goto_a

    .line 213
    :cond_53
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5d

    const/16 v0, 0x9

    goto :goto_a

    .line 214
    :cond_5d
    const/16 v0, 0xa

    goto :goto_a
.end method

.method static varintTagSize(I)I
    .registers 2

    .prologue
    .line 187
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    return v0
.end method

.method public static writeMessageHeader(I[BII)I
    .registers 7

    .prologue
    .line 144
    .line 145
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-static {p0, v0, p1, p2}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;[BI)I

    move-result v0

    add-int/2addr v0, p2

    .line 146
    int-to-long v1, p3

    invoke-static {v1, v2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeVarint(J[BI)I

    move-result v1

    add-int/2addr v0, v1

    .line 147
    sub-int/2addr v0, p2

    return v0
.end method

.method public static writeTag(ILcom/squareup/wire/WireType;[BI)I
    .registers 6

    .prologue
    .line 106
    invoke-static {p0, p1}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p2, p3}, Lcom/squareup/wire/WireOutput;->writeVarint(J[BI)I

    move-result v0

    return v0
.end method

.method public static writeVarint(J[BI)I
    .registers 10

    .prologue
    .line 114
    move v0, p3

    .line 116
    :goto_1
    const-wide/16 v1, -0x80

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_13

    .line 117
    add-int/lit8 v1, v0, 0x1

    long-to-int v2, p0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 118
    sub-int v0, v1, p3

    return v0

    .line 120
    :cond_13
    add-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x7f

    and-long/2addr v2, p0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 121
    const/4 v0, 0x7

    ushr-long/2addr p0, v0

    move v0, v1

    goto :goto_1
.end method

.method static zigZag32(I)I
    .registers 3

    .prologue
    .line 328
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method static zigZag64(J)J
    .registers 6

    .prologue
    .line 343
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method writeFixed32(I)V
    .registers 3

    .prologue
    .line 295
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 296
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 297
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 298
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 300
    return-void
.end method

.method writeFixed64(J)V
    .registers 5

    .prologue
    .line 305
    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 306
    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 307
    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 308
    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 309
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 310
    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 311
    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 312
    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 314
    return-void
.end method

.method writeRawByte(B)V
    .registers 5

    .prologue
    .line 219
    iget v0, p0, Lcom/squareup/wire/WireOutput;->position:I

    iget v1, p0, Lcom/squareup/wire/WireOutput;->limit:I

    if-ne v0, v1, :cond_2d

    .line 221
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of space: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/WireOutput;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/WireOutput;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_2d
    iget-object v0, p0, Lcom/squareup/wire/WireOutput;->buffer:[B

    iget v1, p0, Lcom/squareup/wire/WireOutput;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/WireOutput;->position:I

    aput-byte p1, v0, v1

    .line 224
    return-void
.end method

.method writeRawByte(I)V
    .registers 3

    .prologue
    .line 228
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(B)V

    .line 229
    return-void
.end method

.method writeRawBytes([B)V
    .registers 4

    .prologue
    .line 233
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/wire/WireOutput;->writeRawBytes([BII)V

    .line 234
    return-void
.end method

.method writeRawBytes([BII)V
    .registers 7

    .prologue
    .line 238
    iget v0, p0, Lcom/squareup/wire/WireOutput;->limit:I

    iget v1, p0, Lcom/squareup/wire/WireOutput;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_14

    .line 240
    iget-object v0, p0, Lcom/squareup/wire/WireOutput;->buffer:[B

    iget v1, p0, Lcom/squareup/wire/WireOutput;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget v0, p0, Lcom/squareup/wire/WireOutput;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/squareup/wire/WireOutput;->position:I

    .line 246
    return-void

    .line 244
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of space: position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/WireOutput;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", limit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/WireOutput;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method writeSignedVarint32(I)V
    .registers 4

    .prologue
    .line 255
    if-ltz p1, :cond_6

    .line 256
    invoke-virtual {p0, p1}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 261
    :goto_5
    return-void

    .line 259
    :cond_6
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    goto :goto_5
.end method

.method writeTag(ILcom/squareup/wire/WireType;)V
    .registers 4

    .prologue
    .line 250
    invoke-static {p1, p2}, Lcom/squareup/wire/WireOutput;->makeTag(ILcom/squareup/wire/WireType;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 251
    return-void
.end method

.method writeVarint32(I)V
    .registers 3

    .prologue
    .line 269
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 270
    invoke-virtual {p0, p1}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 271
    return-void

    .line 273
    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 274
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method writeVarint64(J)V
    .registers 7

    .prologue
    .line 282
    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 283
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 284
    return-void

    .line 286
    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireOutput;->writeRawByte(I)V

    .line 287
    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method
