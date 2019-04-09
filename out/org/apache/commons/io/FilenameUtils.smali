.class public Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTENSION_SEPARATOR:C = '.'

.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C

.field private static final UNIX_SEPARATOR:C = '/'

.field private static final WINDOWS_SEPARATOR:C = '\\'


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 110
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 117
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 118
    const/16 v0, 0x2f

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 122
    :goto_16
    return-void

    .line 120
    :cond_17
    const/16 v0, 0x5c

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_16
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method

.method public static concat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 482
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 483
    if-gez v1, :cond_8

    .line 500
    :cond_7
    :goto_7
    return-object v0

    .line 486
    :cond_8
    if-lez v1, :cond_f

    .line 487
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 489
    :cond_f
    if-eqz p0, :cond_7

    .line 492
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 493
    if-nez v0, :cond_1c

    .line 494
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 496
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 497
    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 500
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static directoryContains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 531
    if-nez p0, :cond_b

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Directory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_b
    if-nez p1, :cond_e

    .line 543
    :cond_d
    :goto_d
    return v0

    .line 539
    :cond_e
    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 543
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-virtual {v0, p1, p0}, Lorg/apache/commons/io/IOCase;->checkStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_d
.end method

.method private static doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 906
    if-nez p0, :cond_6

    move-object p0, v0

    .line 928
    :cond_5
    :goto_5
    return-object p0

    .line 909
    :cond_6
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v2

    .line 910
    if-gez v2, :cond_e

    move-object p0, v0

    .line 911
    goto :goto_5

    .line 913
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_1b

    .line 914
    if-eqz p1, :cond_5

    .line 915
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 920
    :cond_1b
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v3

    .line 921
    if-gez v3, :cond_26

    .line 922
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 924
    :cond_26
    if-eqz p1, :cond_33

    const/4 v0, 0x1

    :goto_29
    add-int/2addr v0, v3

    .line 925
    if-nez v0, :cond_2e

    .line 926
    add-int/lit8 v0, v0, 0x1

    .line 928
    :cond_2e
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_33
    move v0, v1

    .line 924
    goto :goto_29
.end method

.method private static doGetPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 824
    if-nez p0, :cond_4

    .line 836
    :cond_3
    :goto_3
    return-object v0

    .line 827
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 828
    if-ltz v1, :cond_3

    .line 831
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 832
    add-int v2, v0, p1

    .line 833
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1a

    if-ltz v0, :cond_1a

    if-lt v1, v2, :cond_1d

    .line 834
    :cond_1a
    const-string v0, ""

    goto :goto_3

    .line 836
    :cond_1d
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;
    .registers 13

    .prologue
    .line 348
    if-nez p0, :cond_4

    .line 349
    const/4 p0, 0x0

    .line 437
    :cond_3
    :goto_3
    return-object p0

    .line 351
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 352
    if-eqz v2, :cond_3

    .line 355
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v4

    .line 356
    if-gez v4, :cond_12

    .line 357
    const/4 p0, 0x0

    goto :goto_3

    .line 360
    :cond_12
    add-int/lit8 v0, v2, 0x2

    new-array v5, v0, [C

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 364
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    if-ne p1, v0, :cond_32

    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    .line 365
    :goto_25
    const/4 v1, 0x0

    :goto_26
    array-length v3, v5

    if-ge v1, v3, :cond_35

    .line 366
    aget-char v3, v5, v1

    if-ne v3, v0, :cond_2f

    .line 367
    aput-char p1, v5, v1

    .line 365
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 364
    :cond_32
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    goto :goto_25

    .line 372
    :cond_35
    const/4 v0, 0x1

    .line 373
    add-int/lit8 v1, v2, -0x1

    aget-char v1, v5, v1

    if-eq v1, p1, :cond_124

    .line 374
    add-int/lit8 v1, v2, 0x1

    aput-char p1, v5, v2

    .line 375
    const/4 v0, 0x0

    .line 379
    :goto_41
    add-int/lit8 v2, v4, 0x1

    move v9, v2

    move v2, v1

    move v1, v9

    :goto_46
    if-ge v1, v2, :cond_60

    .line 380
    aget-char v3, v5, v1

    if-ne v3, p1, :cond_5d

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    if-ne v3, p1, :cond_5d

    .line 381
    add-int/lit8 v3, v1, -0x1

    sub-int v6, v2, v1

    invoke-static {v5, v1, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    add-int/lit8 v2, v2, -0x1

    .line 383
    add-int/lit8 v1, v1, -0x1

    .line 379
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 388
    :cond_60
    add-int/lit8 v1, v4, 0x1

    :goto_62
    if-ge v1, v2, :cond_95

    .line 389
    aget-char v3, v5, v1

    if-ne v3, p1, :cond_11f

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_11f

    add-int/lit8 v3, v4, 0x1

    if-eq v1, v3, :cond_7a

    add-int/lit8 v3, v1, -0x2

    aget-char v3, v5, v3

    if-ne v3, p1, :cond_11f

    .line 391
    :cond_7a
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_7f

    .line 392
    const/4 v0, 0x1

    .line 394
    :cond_7f
    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v6, v1, -0x1

    sub-int v7, v2, v1

    invoke-static {v5, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    add-int/lit8 v2, v2, -0x2

    .line 396
    add-int/lit8 v1, v1, -0x1

    move v9, v1

    move v1, v0

    move v0, v9

    .line 388
    :goto_8f
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_62

    .line 402
    :cond_95
    add-int/lit8 v1, v4, 0x2

    :goto_97
    if-ge v1, v2, :cond_f5

    .line 403
    aget-char v3, v5, v1

    if-ne v3, p1, :cond_11b

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v5, v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_11b

    add-int/lit8 v3, v1, -0x2

    aget-char v3, v5, v3

    const/16 v6, 0x2e

    if-ne v3, v6, :cond_11b

    add-int/lit8 v3, v4, 0x2

    if-eq v1, v3, :cond_b7

    add-int/lit8 v3, v1, -0x3

    aget-char v3, v5, v3

    if-ne v3, p1, :cond_11b

    .line 405
    :cond_b7
    add-int/lit8 v3, v4, 0x2

    if-ne v1, v3, :cond_be

    .line 406
    const/4 p0, 0x0

    goto/16 :goto_3

    .line 408
    :cond_be
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_c3

    .line 409
    const/4 v0, 0x1

    .line 412
    :cond_c3
    add-int/lit8 v3, v1, -0x4

    :goto_c5
    if-lt v3, v4, :cond_e4

    .line 413
    aget-char v6, v5, v3

    if-ne v6, p1, :cond_e1

    .line 415
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v3, 0x1

    sub-int v8, v2, v1

    invoke-static {v5, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    sub-int/2addr v1, v3

    sub-int/2addr v2, v1

    .line 417
    add-int/lit8 v1, v3, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    .line 402
    :goto_db
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v0, v1

    move v1, v9

    goto :goto_97

    .line 412
    :cond_e1
    add-int/lit8 v3, v3, -0x1

    goto :goto_c5

    .line 422
    :cond_e4
    add-int/lit8 v3, v1, 0x1

    sub-int v6, v2, v1

    invoke-static {v5, v3, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v4

    sub-int/2addr v2, v1

    .line 424
    add-int/lit8 v1, v4, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_db

    .line 428
    :cond_f5
    if-gtz v2, :cond_fb

    .line 429
    const-string p0, ""

    goto/16 :goto_3

    .line 431
    :cond_fb
    if-gt v2, v4, :cond_105

    .line 432
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_3

    .line 434
    :cond_105
    if-eqz v0, :cond_111

    if-eqz p2, :cond_111

    .line 435
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_3

    .line 437
    :cond_111
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, v5, v0, v1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_3

    :cond_11b
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_db

    :cond_11f
    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_8f

    :cond_124
    move v1, v2

    goto/16 :goto_41
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1050
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z
    .registers 6

    .prologue
    .line 1116
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 1117
    :cond_4
    if-nez p0, :cond_a

    if-nez p1, :cond_a

    const/4 v0, 0x1

    .line 1130
    :goto_9
    return v0

    .line 1117
    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    .line 1119
    :cond_c
    if-eqz p2, :cond_22

    .line 1120
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1121
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1122
    if-eqz p0, :cond_1a

    if-nez p1, :cond_22

    .line 1123
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error normalizing one or both of the file names"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1127
    :cond_22
    if-nez p3, :cond_26

    .line 1128
    sget-object p3, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1130
    :cond_26
    invoke-virtual {p3, p0, p1}, Lorg/apache/commons/io/IOCase;->checkEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9
.end method

.method public static equalsNormalized(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1081
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsNormalizedOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1098
    const/4 v0, 0x1

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static equalsOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 1065
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->equals(Ljava/lang/String;Ljava/lang/String;ZLorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 974
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 996
    if-nez p0, :cond_4

    .line 997
    const/4 v0, 0x0

    .line 1003
    :goto_3
    return-object v0

    .line 999
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 1000
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1001
    const-string v0, ""

    goto :goto_3

    .line 1003
    :cond_e
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getFullPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 865
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFullPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 895
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetFullPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 949
    if-nez p0, :cond_4

    .line 950
    const/4 v0, 0x0

    .line 953
    :goto_3
    return-object v0

    .line 952
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v0

    .line 953
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 786
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPathNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 813
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/io/FilenameUtils;->doGetPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 750
    if-nez p0, :cond_4

    .line 760
    :cond_3
    :goto_3
    return-object v0

    .line 753
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getPrefixLength(Ljava/lang/String;)I

    move-result v1

    .line 754
    if-ltz v1, :cond_3

    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v0, :cond_24

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 760
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static getPrefixLength(Ljava/lang/String;)I
    .registers 10

    .prologue
    const/16 v8, 0x2f

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 623
    if-nez p0, :cond_a

    move v0, v2

    .line 671
    :cond_9
    :goto_9
    return v0

    .line 626
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 627
    if-nez v4, :cond_12

    move v0, v1

    .line 628
    goto :goto_9

    .line 630
    :cond_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 631
    const/16 v6, 0x3a

    if-ne v5, v6, :cond_1c

    move v0, v2

    .line 632
    goto :goto_9

    .line 634
    :cond_1c
    if-ne v4, v0, :cond_2c

    .line 635
    const/16 v2, 0x7e

    if-ne v5, v2, :cond_24

    move v0, v3

    .line 636
    goto :goto_9

    .line 638
    :cond_24
    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9

    .line 640
    :cond_2c
    const/16 v6, 0x7e

    if-ne v5, v6, :cond_4e

    .line 641
    invoke-virtual {p0, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 642
    const/16 v3, 0x5c

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 643
    if-ne v1, v2, :cond_41

    if-ne v0, v2, :cond_41

    .line 644
    add-int/lit8 v0, v4, 0x1

    goto :goto_9

    .line 646
    :cond_41
    if-ne v1, v2, :cond_44

    move v1, v0

    .line 647
    :cond_44
    if-ne v0, v2, :cond_47

    move v0, v1

    .line 648
    :cond_47
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 650
    :cond_4e
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 651
    const/16 v7, 0x3a

    if-ne v6, v7, :cond_74

    .line 652
    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 653
    const/16 v1, 0x41

    if-lt v0, v1, :cond_72

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_72

    .line 654
    if-eq v4, v3, :cond_6e

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v0

    if-nez v0, :cond_70

    :cond_6e
    move v0, v3

    .line 655
    goto :goto_9

    .line 657
    :cond_70
    const/4 v0, 0x3

    goto :goto_9

    :cond_72
    move v0, v2

    .line 659
    goto :goto_9

    .line 661
    :cond_74
    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_a3

    invoke-static {v6}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 662
    invoke-virtual {p0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 663
    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 664
    if-ne v1, v2, :cond_8e

    if-eq v0, v2, :cond_92

    :cond_8e
    if-eq v1, v3, :cond_92

    if-ne v0, v3, :cond_95

    :cond_92
    move v0, v2

    .line 665
    goto/16 :goto_9

    .line 667
    :cond_95
    if-ne v1, v2, :cond_98

    move v1, v0

    .line 668
    :cond_98
    if-ne v0, v2, :cond_9b

    move v0, v1

    .line 669
    :cond_9b
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    .line 671
    :cond_a3
    invoke-static {v5}, Lorg/apache/commons/io/FilenameUtils;->isSeparator(C)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto/16 :goto_9
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .registers 4

    .prologue
    const/4 v0, -0x1

    .line 711
    if-nez p0, :cond_4

    .line 716
    :cond_3
    :goto_3
    return v0

    .line 714
    :cond_4
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 715
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v2

    .line 716
    if-gt v2, v1, :cond_3

    move v0, v1

    goto :goto_3
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 689
    if-nez p0, :cond_4

    .line 690
    const/4 v0, -0x1

    .line 694
    :goto_3
    return v0

    .line 692
    :cond_4
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 693
    const/16 v1, 0x5c

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 694
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3
.end method

.method public static isExtension(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1146
    if-nez p0, :cond_4

    .line 1153
    :cond_3
    :goto_3
    return v0

    .line 1149
    :cond_4
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 1150
    :cond_c
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    .line 1152
    :cond_15
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public static isExtension(Ljava/lang/String;Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1195
    if-nez p0, :cond_5

    .line 1207
    :cond_4
    :goto_4
    return v2

    .line 1198
    :cond_5
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1199
    :cond_d
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_15
    move v2, v0

    goto :goto_4

    :cond_17
    move v0, v2

    goto :goto_15

    .line 1201
    :cond_19
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1202
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1203
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    move v2, v1

    .line 1204
    goto :goto_4
.end method

.method public static isExtension(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1168
    if-nez p0, :cond_5

    .line 1180
    :cond_4
    :goto_4
    return v1

    .line 1171
    :cond_5
    if-eqz p1, :cond_a

    array-length v2, p1

    if-nez v2, :cond_15

    .line 1172
    :cond_a
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_13

    :goto_11
    move v1, v0

    goto :goto_4

    :cond_13
    move v0, v1

    goto :goto_11

    .line 1174
    :cond_15
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1175
    array-length v4, p1

    move v2, v1

    :goto_1b
    if-ge v2, v4, :cond_4

    aget-object v5, p1, v2

    .line 1176
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v1, v0

    .line 1177
    goto :goto_4

    .line 1175
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b
.end method

.method private static isSeparator(C)Z
    .registers 2

    .prologue
    .line 149
    const/16 v0, 0x2f

    if-eq p0, v0, :cond_8

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isSystemWindows()Z
    .registers 2

    .prologue
    .line 138
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 194
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalize(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 241
    if-eqz p1, :cond_a

    const/16 v0, 0x2f

    .line 242
    :goto_4
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 241
    :cond_a
    const/16 v0, 0x5c

    goto :goto_4
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 288
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNoEndSeparator(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    .prologue
    .line 335
    if-eqz p1, :cond_a

    const/16 v0, 0x2f

    .line 336
    :goto_4
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/io/FilenameUtils;->doNormalize(Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 335
    :cond_a
    const/16 v0, 0x5c

    goto :goto_4
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 1026
    if-nez p0, :cond_4

    .line 1027
    const/4 p0, 0x0

    .line 1033
    :cond_3
    :goto_3
    return-object p0

    .line 1029
    :cond_4
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    .line 1030
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1033
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static separatorsToSystem(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 580
    if-nez p0, :cond_4

    .line 581
    const/4 v0, 0x0

    .line 586
    :goto_3
    return-object v0

    .line 583
    :cond_4
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 584
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 586
    :cond_f
    invoke-static {p0}, Lorg/apache/commons/io/FilenameUtils;->separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static separatorsToUnix(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x5c

    .line 554
    if-eqz p0, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 557
    :cond_b
    :goto_b
    return-object p0

    :cond_c
    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method public static separatorsToWindows(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x2f

    .line 567
    if-eqz p0, :cond_b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 570
    :cond_b
    :goto_b
    return-object p0

    :cond_c
    const/16 v0, 0x5c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    goto :goto_b
.end method

.method static splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x2a

    const/4 v1, -0x1

    const/16 v7, 0x3f

    const/4 v2, 0x0

    .line 1371
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_18

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_18

    .line 1372
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v2

    .line 1398
    :goto_17
    return-object v0

    .line 1375
    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 1376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    .line 1378
    :goto_27
    array-length v0, v3

    if-ge v1, v0, :cond_77

    .line 1379
    aget-char v0, v3, v1

    if-eq v0, v7, :cond_32

    aget-char v0, v3, v1

    if-ne v0, v8, :cond_71

    .line 1380
    :cond_32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_42

    .line 1381
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1382
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1384
    :cond_42
    aget-char v0, v3, v1

    if-ne v0, v7, :cond_4f

    .line 1385
    const-string v0, "?"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    :cond_4b
    :goto_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    .line 1386
    :cond_4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6b

    if-lez v1, :cond_4b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1388
    :cond_6b
    const-string v0, "*"

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 1391
    :cond_71
    aget-char v0, v3, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4b

    .line 1394
    :cond_77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_84

    .line 1395
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    :cond_84
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_17
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1234
    sget-object v0, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method

.method public static wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z
    .registers 13

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1278
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 1356
    :cond_6
    :goto_6
    return v4

    .line 1281
    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v4, v1

    .line 1282
    goto :goto_6

    .line 1284
    :cond_d
    if-nez p2, :cond_11

    .line 1285
    sget-object p2, Lorg/apache/commons/io/IOCase;->SENSITIVE:Lorg/apache/commons/io/IOCase;

    .line 1287
    :cond_11
    invoke-static {p1}, Lorg/apache/commons/io/FilenameUtils;->splitOnTokens(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1291
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    move v0, v1

    move v2, v1

    move v3, v1

    .line 1295
    :cond_1d
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v7

    if-lez v7, :cond_31

    .line 1296
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1297
    aget v2, v0, v1

    .line 1298
    aget v0, v0, v4

    move v3, v4

    move v9, v0

    move v0, v2

    move v2, v9

    .line 1303
    :cond_31
    :goto_31
    array-length v7, v5

    if-ge v0, v7, :cond_46

    .line 1305
    aget-object v7, v5, v0

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 1307
    add-int/lit8 v2, v2, 0x1

    .line 1308
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v2, v7, :cond_57

    .line 1350
    :cond_46
    :goto_46
    array-length v7, v5

    if-ne v0, v7, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v2, v7, :cond_6

    .line 1354
    :cond_4f
    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v7

    if-gtz v7, :cond_1d

    move v4, v1

    .line 1356
    goto :goto_6

    :cond_57
    move v3, v1

    .line 1346
    :goto_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 1313
    :cond_5b
    aget-object v7, v5, v0

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1316
    array-length v3, v5

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_a1

    .line 1317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v4

    goto :goto_58

    .line 1322
    :cond_70
    if-eqz v3, :cond_98

    .line 1324
    aget-object v7, v5, v0

    invoke-virtual {p2, p0, v2, v7}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    .line 1325
    const/4 v7, -0x1

    if-eq v2, v7, :cond_46

    .line 1329
    add-int/lit8 v3, v2, 0x1

    aget-object v7, v5, v0

    invoke-virtual {p2, p0, v3, v7}, Lorg/apache/commons/io/IOCase;->checkIndexOf(Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    .line 1330
    if-ltz v3, :cond_8f

    .line 1331
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v0, v7, v1

    aput v3, v7, v4

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    :cond_8f
    aget-object v3, v5, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    move v3, v1

    .line 1343
    goto :goto_58

    .line 1335
    :cond_98
    aget-object v7, v5, v0

    invoke-virtual {p2, p0, v2, v7}, Lorg/apache/commons/io/IOCase;->checkRegionMatches(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8f

    goto :goto_46

    :cond_a1
    move v3, v4

    goto :goto_58
.end method

.method public static wildcardMatchOnSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 1260
    sget-object v0, Lorg/apache/commons/io/IOCase;->SYSTEM:Lorg/apache/commons/io/IOCase;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/IOCase;)Z

    move-result v0

    return v0
.end method
