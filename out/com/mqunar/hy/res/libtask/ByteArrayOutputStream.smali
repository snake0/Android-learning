.class Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 54
    if-ltz p1, :cond_a

    .line 55
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    .line 59
    return-void

    .line 57
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkOffsetAndCount(III)V
    .registers 6

    .prologue
    .line 175
    or-int v0, p1, p2

    if-ltz v0, :cond_a

    if-gt p1, p0, :cond_a

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_37

    .line 176
    :cond_a
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; regionLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_37
    return-void
.end method

.method private expand(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 78
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_a

    .line 85
    :goto_9
    return-void

    .line 82
    :cond_a
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 83
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    iget v2, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    goto :goto_9
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 73
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 74
    return-void
.end method

.method public declared-synchronized rawByteArray()[B
    .registers 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 120
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_11

    .line 122
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->toByteArray()[B
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_11

    move-result-object v0

    goto :goto_a

    .line 119
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 6

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    new-array v0, v0, [B

    .line 114
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 115
    monitor-exit p0

    return-object v0

    .line 113
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 136
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->size()I

    move-result v0

    new-array v1, v0, [C

    .line 155
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_1b

    .line 156
    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 158
    :cond_1b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 171
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .registers 5

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_c

    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->expand(I)V

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 216
    monitor-exit p0

    return-void

    .line 212
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 6

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->checkOffsetAndCount(III)V
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    .line 196
    if-nez p3, :cond_9

    .line 202
    :goto_7
    monitor-exit p0

    return-void

    .line 199
    :cond_9
    :try_start_9
    invoke-direct {p0, p3}, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->expand(I)V

    .line 200
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    iget v1, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    iget v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_19

    goto :goto_7

    .line 195
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 5

    .prologue
    .line 226
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/mqunar/hy/res/libtask/ByteArrayOutputStream;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 227
    monitor-exit p0

    return-void

    .line 226
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
