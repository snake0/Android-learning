.class public Lorg/apache/commons/codecc/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# static fields
.field private static final PREPROCESS_MAP:[[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 259
    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 260
    new-array v2, v3, [C

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    .line 261
    new-array v1, v3, [C

    fill-array-data v1, :array_32

    aput-object v1, v0, v3

    const/4 v1, 0x3

    .line 262
    new-array v2, v3, [C

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    .line 259
    sput-object v0, Lorg/apache/commons/codecc/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    .line 263
    return-void

    .line 259
    :array_26
    .array-data 2
        0xc4s
        0x41s
    .end array-data

    .line 260
    :array_2c
    .array-data 2
        0xdcs
        0x55s
    .end array-data

    .line 261
    :array_32
    .array-data 2
        0xd6s
        0x4fs
    .end array-data

    .line 262
    :array_38
    .array-data 2
        0xdfs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayContains([CC)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 269
    move v0, v1

    :goto_2
    array-length v2, p0

    if-lt v0, v2, :cond_6

    .line 274
    :goto_5
    return v1

    .line 270
    :cond_6
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_c

    .line 271
    const/4 v1, 0x1

    goto :goto_5

    .line 269
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private preprocess(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 397
    sget-object v0, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    .line 401
    :goto_c
    array-length v2, v3

    if-lt v0, v2, :cond_15

    .line 411
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 402
    :cond_15
    aget-char v2, v3, v0

    const/16 v4, 0x5a

    if-le v2, v4, :cond_21

    move v2, v1

    .line 403
    :goto_1c
    sget-object v4, Lorg/apache/commons/codecc/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    array-length v4, v4

    if-lt v2, v4, :cond_24

    .line 401
    :cond_21
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 404
    :cond_24
    aget-char v4, v3, v0

    sget-object v5, Lorg/apache/commons/codecc/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    aget-object v5, v5, v2

    aget-char v5, v5, v1

    if-ne v4, v5, :cond_38

    .line 405
    sget-object v4, Lorg/apache/commons/codecc/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    aget-object v2, v4, v2

    const/4 v4, 0x1

    aget-char v2, v2, v4

    aput-char v2, v3, v0

    goto :goto_21

    .line 403
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    .prologue
    const/16 v2, 0x34

    const/16 v7, 0x2f

    const/16 v1, 0x2d

    const/4 v12, 0x3

    const/16 v3, 0x38

    .line 289
    if-nez p1, :cond_d

    .line 290
    const/4 v0, 0x0

    .line 371
    :goto_c
    return-object v0

    .line 293
    :cond_d
    invoke-direct {p0, p1}, Lorg/apache/commons/codecc/language/ColognePhonetic;->preprocess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    new-instance v9, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v9, p0, v4}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lorg/apache/commons/codecc/language/ColognePhonetic;I)V

    .line 296
    new-instance v10, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-direct {v10, p0, v0}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;-><init>(Lorg/apache/commons/codecc/language/ColognePhonetic;[C)V

    .line 305
    invoke-virtual {v10}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v5

    move v6, v7

    move v8, v1

    .line 307
    :cond_2b
    :goto_2b
    if-gtz v5, :cond_32

    .line 371
    invoke-virtual {v9}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 308
    :cond_32
    invoke-virtual {v10}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v4

    .line 310
    invoke-virtual {v10}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v5

    if-lez v5, :cond_64

    .line 311
    invoke-virtual {v10}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v0

    .line 316
    :goto_40
    const/4 v11, 0x7

    new-array v11, v11, [C

    fill-array-data v11, :array_140

    invoke-static {v11, v4}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_66

    .line 317
    const/16 v0, 0x30

    .line 364
    :goto_4e
    if-eq v0, v1, :cond_61

    if-eq v6, v0, :cond_58

    const/16 v8, 0x30

    if-ne v0, v8, :cond_5e

    if-eq v6, v7, :cond_5e

    :cond_58
    const/16 v6, 0x30

    if-lt v0, v6, :cond_5e

    if-le v0, v3, :cond_61

    .line 365
    :cond_5e
    invoke-virtual {v9, v0}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->addRight(C)V

    :cond_61
    move v6, v0

    move v8, v4

    .line 369
    goto :goto_2b

    :cond_64
    move v0, v1

    .line 313
    goto :goto_40

    .line 318
    :cond_66
    const/16 v11, 0x48

    if-eq v4, v11, :cond_72

    const/16 v11, 0x41

    if-lt v4, v11, :cond_72

    const/16 v11, 0x5a

    if-le v4, v11, :cond_76

    .line 319
    :cond_72
    if-eq v6, v7, :cond_2b

    move v0, v1

    .line 323
    goto :goto_4e

    :cond_76
    const/16 v11, 0x42

    if-eq v4, v11, :cond_82

    const/16 v11, 0x50

    if-ne v4, v11, :cond_85

    const/16 v11, 0x48

    if-eq v0, v11, :cond_85

    .line 324
    :cond_82
    const/16 v0, 0x31

    .line 325
    goto :goto_4e

    :cond_85
    const/16 v11, 0x44

    if-eq v4, v11, :cond_8d

    const/16 v11, 0x54

    if-ne v4, v11, :cond_9b

    :cond_8d
    new-array v11, v12, [C

    fill-array-data v11, :array_14c

    invoke-static {v11, v0}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v11

    if-nez v11, :cond_9b

    .line 326
    const/16 v0, 0x32

    .line 327
    goto :goto_4e

    :cond_9b
    const/4 v11, 0x4

    new-array v11, v11, [C

    fill-array-data v11, :array_154

    invoke-static {v11, v4}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_aa

    .line 328
    const/16 v0, 0x33

    .line 329
    goto :goto_4e

    :cond_aa
    new-array v11, v12, [C

    fill-array-data v11, :array_15c

    invoke-static {v11, v4}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v11

    if-eqz v11, :cond_b7

    move v0, v2

    .line 331
    goto :goto_4e

    :cond_b7
    const/16 v11, 0x58

    if-ne v4, v11, :cond_d1

    new-array v11, v12, [C

    fill-array-data v11, :array_164

    invoke-static {v11, v8}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v11

    if-nez v11, :cond_d1

    .line 333
    const/16 v0, 0x53

    invoke-virtual {v10, v0}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneInputBuffer;->addLeft(C)V

    .line 334
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    .line 335
    goto/16 :goto_4e

    :cond_d1
    const/16 v11, 0x53

    if-eq v4, v11, :cond_d9

    const/16 v11, 0x5a

    if-ne v4, v11, :cond_dc

    :cond_d9
    move v0, v3

    .line 337
    goto/16 :goto_4e

    :cond_dc
    const/16 v11, 0x43

    if-ne v4, v11, :cond_113

    .line 338
    if-ne v6, v7, :cond_f5

    .line 339
    const/16 v8, 0x9

    new-array v8, v8, [C

    fill-array-data v8, :array_16c

    invoke-static {v8, v0}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_f2

    move v0, v2

    .line 341
    goto/16 :goto_4e

    :cond_f2
    move v0, v3

    .line 344
    goto/16 :goto_4e

    .line 345
    :cond_f5
    const/4 v11, 0x2

    new-array v11, v11, [C

    fill-array-data v11, :array_17a

    invoke-static {v11, v8}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_10d

    .line 346
    const/4 v8, 0x7

    new-array v8, v8, [C

    fill-array-data v8, :array_180

    invoke-static {v8, v0}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v0

    if-nez v0, :cond_110

    :cond_10d
    move v0, v3

    .line 348
    goto/16 :goto_4e

    :cond_110
    move v0, v2

    .line 352
    goto/16 :goto_4e

    :cond_113
    new-array v0, v12, [C

    fill-array-data v0, :array_18c

    invoke-static {v0, v4}, Lorg/apache/commons/codecc/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v0

    if-eqz v0, :cond_121

    move v0, v3

    .line 354
    goto/16 :goto_4e

    :cond_121
    const/16 v0, 0x52

    if-ne v4, v0, :cond_129

    .line 355
    const/16 v0, 0x37

    .line 356
    goto/16 :goto_4e

    :cond_129
    const/16 v0, 0x4c

    if-ne v4, v0, :cond_131

    .line 357
    const/16 v0, 0x35

    .line 358
    goto/16 :goto_4e

    :cond_131
    const/16 v0, 0x4d

    if-eq v4, v0, :cond_139

    const/16 v0, 0x4e

    if-ne v4, v0, :cond_13d

    .line 359
    :cond_139
    const/16 v0, 0x36

    .line 360
    goto/16 :goto_4e

    :cond_13d
    move v0, v4

    .line 361
    goto/16 :goto_4e

    .line 316
    :array_140
    .array-data 2
        0x41s
        0x45s
        0x49s
        0x4as
        0x4fs
        0x55s
        0x59s
    .end array-data

    .line 325
    nop

    :array_14c
    .array-data 2
        0x53s
        0x43s
        0x5as
    .end array-data

    .line 327
    nop

    :array_154
    .array-data 2
        0x57s
        0x46s
        0x50s
        0x56s
    .end array-data

    .line 329
    :array_15c
    .array-data 2
        0x47s
        0x4bs
        0x51s
    .end array-data

    .line 331
    nop

    :array_164
    .array-data 2
        0x43s
        0x4bs
        0x51s
    .end array-data

    .line 339
    nop

    :array_16c
    .array-data 2
        0x41s
        0x48s
        0x4bs
        0x4cs
        0x4fs
        0x51s
        0x52s
        0x55s
        0x58s
    .end array-data

    .line 345
    nop

    :array_17a
    .array-data 2
        0x53s
        0x5as
    .end array-data

    .line 346
    :array_180
    .array-data 2
        0x41s
        0x48s
        0x4fs
        0x55s
        0x4bs
        0x51s
        0x58s
    .end array-data

    .line 352
    nop

    :array_18c
    .array-data 2
        0x54s
        0x44s
        0x58s
    .end array-data
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 375
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_37

    .line 376
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This method\u2019s parameter was expected to be of the type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 380
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_37
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codecc/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
