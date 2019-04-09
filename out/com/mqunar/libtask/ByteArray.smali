.class public Lcom/mqunar/libtask/ByteArray;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    .line 52
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/mqunar/libtask/ByteArray;-><init>([BII)V

    .line 53
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4

    .prologue
    .line 43
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mqunar/libtask/ByteArray;-><init>([BII)V

    .line 44
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 6

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_d

    .line 28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes must not bu null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_d
    iput p2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 31
    if-nez p2, :cond_17

    array-length v0, p1

    if-ne p3, v0, :cond_17

    .line 32
    iput-object p1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    .line 37
    :goto_16
    return-void

    .line 34
    :cond_17
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    .line 35
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_16
.end method


# virtual methods
.method public add(Lcom/mqunar/libtask/ByteArray;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 136
    if-nez p1, :cond_4

    .line 143
    :goto_3
    return-void

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v0, v0

    invoke-virtual {p1}, Lcom/mqunar/libtask/ByteArray;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 140
    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget-object v2, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    invoke-virtual {p1}, Lcom/mqunar/libtask/ByteArray;->rawBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/libtask/ByteArray;->getCursor()I

    move-result v2

    iget-object v3, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v3, v3

    invoke-virtual {p1}, Lcom/mqunar/libtask/ByteArray;->getSize()I

    move-result v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iput-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    goto :goto_3
.end method

.method public varargs add([B)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 126
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_7

    .line 133
    :cond_6
    :goto_6
    return-void

    .line 129
    :cond_7
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v0, v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 130
    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget-object v2, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v1, v1

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iput-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    goto :goto_6
.end method

.method public copyBytes()[B
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/ByteArray;->copyBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public copyBytes(I)[B
    .registers 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v0, v0

    if-le p1, v0, :cond_d

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length too long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_d
    new-array v0, p1, [B

    .line 72
    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 73
    return-object v0
.end method

.method public get(I)B
    .registers 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 194
    return-object v0
.end method

.method protected getByte()B
    .registers 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public getByteArray(I)[B
    .registers 5

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    .line 187
    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 188
    return-object v0
.end method

.method public getCursor()I
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    return v0
.end method

.method public getInt()I
    .registers 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/lit8 v1, v1, 0x3

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/lit8 v2, v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    .line 170
    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 171
    return v0
.end method

.method public getIntOfByte()I
    .registers 2

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/mqunar/libtask/ByteArray;->getByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v0, v0

    return v0
.end method

.method public getSize()I
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v0, v0

    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 175
    const/4 v1, 0x0

    .line 177
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v3, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    const-string v4, "utf-8"

    invoke-direct {v0, v2, v3, p1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_12

    .line 181
    :goto_c
    iget v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 182
    return-object v0

    .line 178
    :catch_12
    move-exception v0

    move-object v0, v1

    goto :goto_c
.end method

.method public inc()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/ByteArray;->inc(I)V

    .line 96
    return-void
.end method

.method public inc(I)V
    .registers 3

    .prologue
    .line 91
    iget v0, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 92
    return-void
.end method

.method public rawBytes()[B
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    return-object v0
.end method

.method public set(IB)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    aput-byte p2, v0, p1

    .line 151
    return-void
.end method

.method public setCursor(I)V
    .registers 2

    .prologue
    .line 82
    iput p1, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    .line 83
    return-void
.end method

.method public toByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .registers 6

    .prologue
    .line 122
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    iget-object v3, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v3, v3

    iget v4, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public toByteArrayInputStream(I)Ljava/io/ByteArrayInputStream;
    .registers 5

    .prologue
    .line 117
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    iget v2, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    invoke-direct {v0, v1, v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public valid()Z
    .registers 3

    .prologue
    .line 154
    iget v0, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    iget-object v1, p0, Lcom/mqunar/libtask/ByteArray;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    iget v0, p0, Lcom/mqunar/libtask/ByteArray;->b:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
