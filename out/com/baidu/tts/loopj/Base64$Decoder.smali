.class Lcom/baidu/tts/loopj/Base64$Decoder;
.super Lcom/baidu/tts/loopj/Base64$Coder;
.source "SourceFile"


# static fields
.field private static final DECODE:[I

.field private static final DECODE_WEBSAFE:[I

.field private static final EQUALS:I = -0x2

.field private static final SKIP:I = -0x1


# instance fields
.field private final alphabet:[I

.field private state:I

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x100

    .line 162
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/baidu/tts/loopj/Base64$Decoder;->DECODE:[I

    .line 185
    new-array v0, v1, [I

    fill-array-data v0, :array_216

    sput-object v0, Lcom/baidu/tts/loopj/Base64$Decoder;->DECODE_WEBSAFE:[I

    return-void

    .line 162
    nop

    :array_12
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        -0x1
        0x3f
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 185
    :array_216
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3e
        -0x1
        -0x1
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        -0x1
        -0x1
        -0x1
        -0x1
        0x3f
        -0x1
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 221
    invoke-direct {p0}, Lcom/baidu/tts/loopj/Base64$Coder;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->output:[B

    .line 224
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_13

    sget-object v0, Lcom/baidu/tts/loopj/Base64$Decoder;->DECODE:[I

    :goto_c
    iput-object v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->alphabet:[I

    .line 225
    iput v1, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 226
    iput v1, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->value:I

    .line 227
    return-void

    .line 224
    :cond_13
    sget-object v0, Lcom/baidu/tts/loopj/Base64$Decoder;->DECODE_WEBSAFE:[I

    goto :goto_c
.end method


# virtual methods
.method public maxOutputSize(I)I
    .registers 3

    .prologue
    .line 233
    mul-int/lit8 v0, p1, 0x3

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .registers 15

    .prologue
    .line 243
    iget v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    .line 416
    :goto_6
    return v0

    .line 246
    :cond_7
    add-int v4, p3, p2

    .line 253
    iget v3, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 254
    iget v1, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->value:I

    .line 255
    const/4 v0, 0x0

    .line 256
    iget-object v5, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->output:[B

    .line 257
    iget-object v6, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->alphabet:[I

    move v2, p2

    .line 259
    :goto_13
    if-ge v2, v4, :cond_133

    .line 274
    if-nez v3, :cond_67

    .line 275
    :goto_17
    add-int/lit8 v7, v2, 0x4

    if-gt v7, v4, :cond_5a

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    aget v1, v6, v1

    shl-int/lit8 v1, v1, 0x12

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v1, v7

    add-int/lit8 v7, v2, 0x3

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget v7, v6, v7

    or-int/2addr v1, v7

    if-ltz v1, :cond_5a

    .line 280
    add-int/lit8 v7, v0, 0x2

    int-to-byte v8, v1

    aput-byte v8, v5, v7

    .line 281
    add-int/lit8 v7, v0, 0x1

    shr-int/lit8 v8, v1, 0x8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    .line 282
    shr-int/lit8 v7, v1, 0x10

    int-to-byte v7, v7

    aput-byte v7, v5, v0

    .line 283
    add-int/lit8 v0, v0, 0x3

    .line 284
    add-int/lit8 v2, v2, 0x4

    goto :goto_17

    .line 286
    :cond_5a
    if-lt v2, v4, :cond_67

    move v2, v1

    .line 372
    :goto_5d
    if-nez p4, :cond_105

    .line 375
    iput v3, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 376
    iput v2, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->value:I

    .line 377
    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->op:I

    .line 378
    const/4 v0, 0x1

    goto :goto_6

    .line 294
    :cond_67
    add-int/lit8 p2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget v2, v6, v2

    .line 296
    packed-switch v3, :pswitch_data_136

    :cond_72
    move v2, v3

    :goto_73
    move v3, v2

    move v2, p2

    .line 370
    goto :goto_13

    .line 298
    :pswitch_76
    if-ltz v2, :cond_7e

    .line 300
    add-int/lit8 v1, v3, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_73

    .line 301
    :cond_7e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 302
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 303
    const/4 v0, 0x0

    goto :goto_6

    .line 308
    :pswitch_86
    if-ltz v2, :cond_8e

    .line 309
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 310
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 311
    :cond_8e
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 312
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 313
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 318
    :pswitch_97
    if-ltz v2, :cond_9f

    .line 319
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 320
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 321
    :cond_9f
    const/4 v7, -0x2

    if-ne v2, v7, :cond_ae

    .line 324
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x4

    int-to-byte v3, v3

    aput-byte v3, v5, v0

    .line 325
    const/4 v0, 0x4

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_73

    .line 326
    :cond_ae
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 327
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 328
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 333
    :pswitch_b7
    if-ltz v2, :cond_d1

    .line 335
    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v1, v2

    .line 336
    add-int/lit8 v2, v0, 0x2

    int-to-byte v3, v1

    aput-byte v3, v5, v2

    .line 337
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 338
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 339
    add-int/lit8 v0, v0, 0x3

    .line 340
    const/4 v2, 0x0

    goto :goto_73

    .line 341
    :cond_d1
    const/4 v7, -0x2

    if-ne v2, v7, :cond_e4

    .line 344
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, v1, 0x2

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    .line 345
    shr-int/lit8 v2, v1, 0xa

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    .line 346
    add-int/lit8 v0, v0, 0x2

    .line 347
    const/4 v2, 0x5

    goto :goto_73

    .line 348
    :cond_e4
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 349
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 350
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 355
    :pswitch_ed
    const/4 v7, -0x2

    if-ne v2, v7, :cond_f3

    .line 356
    add-int/lit8 v2, v3, 0x1

    goto :goto_73

    .line 357
    :cond_f3
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 358
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 359
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 364
    :pswitch_fc
    const/4 v7, -0x1

    if-eq v2, v7, :cond_72

    .line 365
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 366
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 384
    :cond_105
    packed-switch v3, :pswitch_data_146

    .line 414
    :goto_108
    :pswitch_108
    iput v3, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 415
    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->op:I

    .line 416
    const/4 v0, 0x1

    goto/16 :goto_6

    .line 391
    :pswitch_10f
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 392
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 396
    :pswitch_115
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v5, v0

    move v0, v1

    .line 397
    goto :goto_108

    .line 401
    :pswitch_11e
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v4, v2, 0xa

    int-to-byte v4, v4

    aput-byte v4, v5, v0

    .line 402
    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v5, v1

    goto :goto_108

    .line 406
    :pswitch_12d
    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/tts/loopj/Base64$Decoder;->state:I

    .line 407
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_133
    move v2, v1

    goto/16 :goto_5d

    .line 296
    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_76
        :pswitch_86
        :pswitch_97
        :pswitch_b7
        :pswitch_ed
        :pswitch_fc
    .end packed-switch

    .line 384
    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_108
        :pswitch_10f
        :pswitch_115
        :pswitch_11e
        :pswitch_12d
    .end packed-switch
.end method
