.class Lqunar/lego/utils/Hallua$Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    .line 222
    const/16 v1, 0x80

    new-array v1, v1, [B

    sput-object v1, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    .line 223
    const/16 v1, 0x40

    new-array v1, v1, [C

    sput-object v1, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    move v1, v0

    .line 226
    :goto_16
    const/16 v2, 0x80

    if-ge v1, v2, :cond_22

    .line 227
    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 229
    :cond_22
    const/16 v1, 0x5a

    :goto_24
    const/16 v2, 0x41

    if-lt v1, v2, :cond_32

    .line 230
    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 229
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    .line 232
    :cond_32
    const/16 v1, 0x7a

    :goto_34
    const/16 v2, 0x61

    if-lt v1, v2, :cond_44

    .line 233
    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 232
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    .line 236
    :cond_44
    const/16 v1, 0x39

    :goto_46
    const/16 v2, 0x30

    if-lt v1, v2, :cond_56

    .line 237
    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 236
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 240
    :cond_56
    sget-object v1, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aput-byte v7, v1, v5

    .line 241
    sget-object v1, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aput-byte v8, v1, v6

    move v1, v0

    .line 243
    :goto_5f
    const/16 v2, 0x19

    if-gt v1, v2, :cond_6d

    .line 244
    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 247
    :cond_6d
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_71
    const/16 v3, 0x33

    if-gt v2, v3, :cond_81

    .line 248
    sget-object v3, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v4, v1, 0x61

    int-to-char v4, v4

    aput-char v4, v3, v2

    .line 247
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 251
    :cond_81
    const/16 v1, 0x34

    :goto_83
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_93

    .line 252
    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    .line 254
    :cond_93
    sget-object v0, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    .line 255
    sget-object v0, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    aput-char v6, v0, v8

    .line 257
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 362
    if-nez p0, :cond_5

    .line 447
    :cond_4
    :goto_4
    return-object v0

    .line 366
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 368
    invoke-static {v6}, Lqunar/lego/utils/Hallua$Base64;->removeWhiteSpace([C)I

    move-result v1

    .line 370
    rem-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    .line 374
    div-int/lit8 v7, v1, 0x4

    .line 376
    if-nez v7, :cond_18

    .line 377
    new-array v0, v3, [B

    goto :goto_4

    .line 387
    :cond_18
    mul-int/lit8 v1, v7, 0x3

    new-array v1, v1, [B

    move v2, v3

    move v4, v3

    move v5, v3

    .line 389
    :goto_1f
    add-int/lit8 v8, v7, -0x1

    if-ge v5, v8, :cond_7e

    .line 391
    add-int/lit8 v8, v2, 0x1

    aget-char v9, v6, v2

    invoke-static {v9}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v8, 0x1

    aget-char v8, v6, v8

    invoke-static {v8}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v10, v2, 0x1

    aget-char v11, v6, v2

    invoke-static {v11}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v10, 0x1

    aget-char v10, v6, v10

    invoke-static {v10}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 396
    sget-object v12, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v9, v12, v9

    .line 397
    sget-object v12, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v8, v12, v8

    .line 398
    sget-object v12, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v11, v12, v11

    .line 399
    sget-object v12, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v10, v12, v10

    .line 401
    add-int/lit8 v12, v4, 0x1

    shl-int/lit8 v9, v9, 0x2

    shr-int/lit8 v13, v8, 0x4

    or-int/2addr v9, v13

    int-to-byte v9, v9

    aput-byte v9, v1, v4

    .line 402
    add-int/lit8 v9, v12, 0x1

    and-int/lit8 v4, v8, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v11, 0x2

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v1, v12

    .line 403
    add-int/lit8 v4, v9, 0x1

    shl-int/lit8 v8, v11, 0x6

    or-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    .line 389
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 406
    :cond_7e
    add-int/lit8 v7, v2, 0x1

    aget-char v2, v6, v2

    invoke-static {v2}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v6, v7

    invoke-static {v7}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 410
    sget-object v9, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v2, v9, v2

    .line 411
    sget-object v9, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v7, v9, v7

    .line 413
    add-int/lit8 v9, v8, 0x1

    aget-char v8, v6, v8

    .line 414
    add-int/lit8 v10, v9, 0x1

    aget-char v6, v6, v9

    .line 415
    invoke-static {v8}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_ae

    invoke-static {v6}, Lqunar/lego/utils/Hallua$Base64;->isData(C)Z

    move-result v9

    if-nez v9, :cond_10a

    .line 416
    :cond_ae
    invoke-static {v8}, Lqunar/lego/utils/Hallua$Base64;->isPad(C)Z

    move-result v9

    if-eqz v9, :cond_d3

    invoke-static {v6}, Lqunar/lego/utils/Hallua$Base64;->isPad(C)Z

    move-result v9

    if-eqz v9, :cond_d3

    .line 417
    and-int/lit8 v6, v7, 0xf

    if-nez v6, :cond_4

    .line 420
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 421
    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    shl-int/lit8 v1, v2, 0x2

    shr-int/lit8 v2, v7, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_4

    .line 424
    :cond_d3
    invoke-static {v8}, Lqunar/lego/utils/Hallua$Base64;->isPad(C)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v6}, Lqunar/lego/utils/Hallua$Base64;->isPad(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 425
    sget-object v6, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v6, v6, v8

    .line 426
    and-int/lit8 v8, v6, 0x3

    if-nez v8, :cond_4

    .line 430
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 431
    mul-int/lit8 v5, v5, 0x3

    invoke-static {v1, v3, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, v7, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v4

    .line 433
    and-int/lit8 v2, v7, 0xf

    shl-int/lit8 v2, v2, 0x4

    shr-int/lit8 v3, v6, 0x2

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_4

    .line 439
    :cond_10a
    sget-object v0, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v0, v0, v8

    .line 440
    sget-object v3, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v3, v3, v6

    .line 441
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v6, v7, 0x4

    or-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 442
    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v4, v7, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    .line 443
    add-int/lit8 v4, v2, 0x1

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    move-object v0, v1

    .line 447
    goto/16 :goto_4
.end method

.method public static encode([B)Ljava/lang/String;
    .registers 16

    .prologue
    const/16 v14, 0x3d

    const/4 v2, 0x0

    .line 279
    if-nez p0, :cond_7

    .line 280
    const/4 v0, 0x0

    .line 351
    :goto_6
    return-object v0

    .line 283
    :cond_7
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    .line 284
    if-nez v0, :cond_f

    .line 285
    const-string v0, ""

    goto :goto_6

    .line 288
    :cond_f
    rem-int/lit8 v7, v0, 0x18

    .line 289
    div-int/lit8 v1, v0, 0x18

    .line 290
    if-eqz v7, :cond_76

    add-int/lit8 v0, v1, 0x1

    .line 293
    :goto_17
    mul-int/lit8 v0, v0, 0x4

    new-array v8, v0, [C

    move v4, v2

    move v6, v2

    .line 301
    :goto_1d
    if-ge v4, v1, :cond_8c

    .line 302
    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p0, v2

    .line 303
    add-int/lit8 v3, v0, 0x1

    aget-byte v9, p0, v0

    .line 304
    add-int/lit8 v5, v3, 0x1

    aget-byte v10, p0, v3

    .line 308
    and-int/lit8 v0, v9, 0xf

    int-to-byte v11, v0

    .line 309
    and-int/lit8 v0, v2, 0x3

    int-to-byte v12, v0

    .line 311
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_78

    shr-int/lit8 v0, v2, 0x2

    int-to-byte v0, v0

    move v3, v0

    .line 312
    :goto_39
    and-int/lit8 v0, v9, -0x80

    if-nez v0, :cond_7f

    shr-int/lit8 v0, v9, 0x4

    int-to-byte v0, v0

    move v2, v0

    .line 313
    :goto_41
    and-int/lit8 v0, v10, -0x80

    if-nez v0, :cond_86

    shr-int/lit8 v0, v10, 0x6

    int-to-byte v0, v0

    .line 319
    :goto_48
    add-int/lit8 v9, v6, 0x1

    sget-object v13, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    aget-char v3, v13, v3

    aput-char v3, v8, v6

    .line 320
    add-int/lit8 v3, v9, 0x1

    sget-object v6, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v12, v12, 0x4

    or-int/2addr v2, v12

    aget-char v2, v6, v2

    aput-char v2, v8, v9

    .line 321
    add-int/lit8 v6, v3, 0x1

    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v11, 0x2

    or-int/2addr v0, v9

    aget-char v0, v2, v0

    aput-char v0, v8, v3

    .line 322
    add-int/lit8 v2, v6, 0x1

    sget-object v0, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v3, v10, 0x3f

    aget-char v0, v0, v3

    aput-char v0, v8, v6

    .line 301
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v6, v2

    move v2, v5

    goto :goto_1d

    :cond_76
    move v0, v1

    .line 290
    goto :goto_17

    .line 311
    :cond_78
    shr-int/lit8 v0, v2, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v3, v0

    goto :goto_39

    .line 312
    :cond_7f
    shr-int/lit8 v0, v9, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    move v2, v0

    goto :goto_41

    .line 313
    :cond_86
    shr-int/lit8 v0, v10, 0x6

    xor-int/lit16 v0, v0, 0xfc

    int-to-byte v0, v0

    goto :goto_48

    .line 326
    :cond_8c
    const/16 v0, 0x8

    if-ne v7, v0, :cond_c3

    .line 327
    aget-byte v0, p0, v2

    .line 328
    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    .line 331
    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_bd

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    .line 332
    :goto_9c
    add-int/lit8 v2, v6, 0x1

    sget-object v3, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v3, v0

    aput-char v0, v8, v6

    .line 333
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v3, v1

    aput-char v1, v8, v2

    .line 334
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    .line 335
    add-int/lit8 v0, v1, 0x1

    aput-char v14, v8, v1

    .line 351
    :cond_b6
    :goto_b6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_6

    .line 331
    :cond_bd
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_9c

    .line 336
    :cond_c3
    const/16 v0, 0x10

    if-ne v7, v0, :cond_b6

    .line 337
    aget-byte v0, p0, v2

    .line 338
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p0, v1

    .line 339
    and-int/lit8 v1, v2, 0xf

    int-to-byte v3, v1

    .line 340
    and-int/lit8 v1, v0, 0x3

    int-to-byte v4, v1

    .line 342
    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_104

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    move v1, v0

    .line 343
    :goto_db
    and-int/lit8 v0, v2, -0x80

    if-nez v0, :cond_10b

    shr-int/lit8 v0, v2, 0x4

    int-to-byte v0, v0

    .line 345
    :goto_e2
    add-int/lit8 v2, v6, 0x1

    sget-object v5, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    aget-char v1, v5, v1

    aput-char v1, v8, v6

    .line 346
    add-int/lit8 v1, v2, 0x1

    sget-object v5, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    aget-char v0, v5, v0

    aput-char v0, v8, v2

    .line 347
    add-int/lit8 v0, v1, 0x1

    sget-object v2, Lqunar/lego/utils/Hallua$Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v2, v2, v3

    aput-char v2, v8, v1

    .line 348
    add-int/lit8 v1, v0, 0x1

    aput-char v14, v8, v0

    goto :goto_b6

    .line 342
    :cond_104
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    move v1, v0

    goto :goto_db

    .line 343
    :cond_10b
    shr-int/lit8 v0, v2, 0x4

    xor-int/lit16 v0, v0, 0xf0

    int-to-byte v0, v0

    goto :goto_e2
.end method

.method private static isData(C)Z
    .registers 3

    .prologue
    .line 268
    const/16 v0, 0x80

    if-ge p0, v0, :cond_d

    sget-object v0, Lqunar/lego/utils/Hallua$Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private static isPad(C)Z
    .registers 2

    .prologue
    .line 264
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isWhiteSpace(C)Z
    .registers 2

    .prologue
    .line 260
    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static removeWhiteSpace([C)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 457
    if-nez p0, :cond_4

    .line 469
    :cond_3
    return v1

    .line 463
    :cond_4
    array-length v3, p0

    move v2, v1

    .line 464
    :goto_6
    if-ge v2, v3, :cond_3

    .line 465
    aget-char v0, p0, v2

    invoke-static {v0}, Lqunar/lego/utils/Hallua$Base64;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 466
    add-int/lit8 v0, v1, 0x1

    aget-char v4, p0, v2

    aput-char v4, p0, v1

    .line 464
    :goto_16
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :cond_1b
    move v0, v1

    goto :goto_16
.end method
