.class Lcom/squareup/wire/Stringer$Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ENCODE:[B


# instance fields
.field private final output:[B

.field private final tail:[B

.field private tailLen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 232
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/squareup/wire/Stringer$Encoder;->ENCODE:[B

    return-void

    :array_a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/squareup/wire/Stringer$Encoder;->output:[B

    .line 245
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    .line 247
    return-void
.end method

.method static synthetic access$200(Lcom/squareup/wire/Stringer$Encoder;)[B
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->output:[B

    return-object v0
.end method


# virtual methods
.method public process([BIIZ)V
    .registers 14

    .prologue
    .line 250
    sget-object v5, Lcom/squareup/wire/Stringer$Encoder;->ENCODE:[B

    .line 251
    iget-object v6, p0, Lcom/squareup/wire/Stringer$Encoder;->output:[B

    .line 252
    const/4 v0, 0x0

    .line 255
    add-int v2, p3, p2

    .line 256
    const/4 v1, -0x1

    .line 258
    iget v3, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    packed-switch v3, :pswitch_data_1a6

    .line 281
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tailLen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_28
    move v3, p2

    .line 284
    :goto_29
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4e

    .line 285
    const/4 v4, 0x1

    shr-int/lit8 v7, v1, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v6, v0

    .line 286
    const/4 v0, 0x2

    shr-int/lit8 v7, v1, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v6, v4

    .line 287
    const/4 v4, 0x3

    shr-int/lit8 v7, v1, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v6, v0

    .line 288
    const/4 v0, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v5, v1

    aput-byte v1, v6, v4

    :cond_4e
    move v4, v0

    .line 291
    :goto_4f
    add-int/lit8 v0, v3, 0x3

    if-gt v0, v2, :cond_d9

    .line 292
    aget-byte v0, p1, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 295
    shr-int/lit8 v1, v0, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v5, v1

    aput-byte v1, v6, v4

    .line 296
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v7, v0, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v6, v1

    .line 297
    add-int/lit8 v1, v4, 0x2

    shr-int/lit8 v7, v0, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, v5, v7

    aput-byte v7, v6, v1

    .line 298
    add-int/lit8 v1, v4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v5, v0

    aput-byte v0, v6, v1

    .line 299
    add-int/lit8 v3, v3, 0x3

    .line 300
    add-int/lit8 v0, v4, 0x4

    move v4, v0

    goto :goto_4f

    .line 263
    :pswitch_93
    add-int/lit8 v3, p2, 0x2

    if-gt v3, v2, :cond_1a3

    .line 264
    iget-object v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v1, v4

    add-int/lit8 p2, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 267
    const/4 v3, 0x0

    iput v3, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    move v3, p2

    goto/16 :goto_29

    .line 272
    :pswitch_b6
    add-int/lit8 v3, p2, 0x1

    if-gt v3, v2, :cond_1a3

    .line 273
    iget-object v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    const/4 v3, 0x0

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    iget-object v3, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, p2, 0x1

    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 276
    const/4 v4, 0x0

    iput v4, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    goto/16 :goto_29

    .line 303
    :cond_d9
    if-eqz p4, :cond_172

    .line 304
    iget v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v2, -0x1

    if-ne v0, v1, :cond_118

    .line 305
    const/4 v2, 0x0

    .line 306
    iget v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    if-lez v0, :cond_114

    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    :goto_ed
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    .line 307
    iget v2, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    .line 308
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v5, v2

    aput-byte v2, v6, v4

    .line 309
    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v5, v0

    aput-byte v0, v6, v1

    .line 310
    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x3d

    aput-byte v1, v6, v2

    .line 311
    const/16 v1, 0x3d

    aput-byte v1, v6, v0

    .line 330
    :cond_113
    :goto_113
    return-void

    .line 306
    :cond_114
    aget-byte v0, p1, v3

    move v1, v2

    goto :goto_ed

    .line 312
    :cond_118
    iget v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    sub-int v0, v3, v0

    add-int/lit8 v1, v2, -0x2

    if-ne v0, v1, :cond_113

    .line 313
    const/4 v2, 0x0

    .line 314
    iget v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_167

    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v2

    move v2, v3

    :goto_12c
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v3, v0, 0xa

    iget v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    if-lez v0, :cond_16f

    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    add-int/lit8 v2, v1, 0x1

    aget-byte v0, v0, v1

    move v1, v2

    :goto_13b
    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v3

    .line 316
    iget v2, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    .line 317
    add-int/lit8 v1, v4, 0x1

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v5, v2

    aput-byte v2, v6, v4

    .line 318
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v5, v3

    aput-byte v3, v6, v1

    .line 319
    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v5, v0

    aput-byte v0, v6, v2

    .line 320
    const/16 v0, 0x3d

    aput-byte v0, v6, v1

    goto :goto_113

    .line 314
    :cond_167
    add-int/lit8 v1, v3, 0x1

    aget-byte v0, p1, v3

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_12c

    :cond_16f
    aget-byte v0, p1, v2

    goto :goto_13b

    .line 323
    :cond_172
    add-int/lit8 v0, v2, -0x1

    if-ne v3, v0, :cond_183

    .line 324
    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    iget v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    goto :goto_113

    .line 325
    :cond_183
    add-int/lit8 v0, v2, -0x2

    if-ne v3, v0, :cond_113

    .line 326
    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    iget v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    aget-byte v2, p1, v3

    aput-byte v2, v0, v1

    .line 327
    iget-object v0, p0, Lcom/squareup/wire/Stringer$Encoder;->tail:[B

    iget v1, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/Stringer$Encoder;->tailLen:I

    add-int/lit8 v2, v3, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    goto/16 :goto_113

    :cond_1a3
    move v3, p2

    goto/16 :goto_29

    .line 258
    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_28
        :pswitch_93
        :pswitch_b6
    .end packed-switch
.end method
