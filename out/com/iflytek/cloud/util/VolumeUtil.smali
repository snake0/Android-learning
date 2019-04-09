.class public Lcom/iflytek/cloud/util/VolumeUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeVolume([BI)I
    .registers 14

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-gt p1, v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    div-int/lit8 v7, p1, 0x2

    move v4, v0

    move-wide v5, v2

    :goto_d
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_21

    aget-byte v8, p0, v4

    add-int/lit8 v9, v4, 0x1

    aget-byte v9, p0, v9

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v5, v8

    add-int/lit8 v4, v4, 0x2

    goto :goto_d

    :cond_21
    int-to-long v8, v7

    div-long/2addr v5, v8

    move-wide v10, v2

    move-wide v3, v10

    move v2, v0

    :goto_26
    mul-int/lit8 v8, v7, 0x2

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_40

    aget-byte v8, p0, v2

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, p0, v9

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v8, v9

    int-to-long v8, v8

    sub-long/2addr v8, v5

    long-to-int v8, v8

    mul-int/2addr v8, v8

    shr-int/lit8 v8, v8, 0x9

    int-to-long v8, v8

    add-long/2addr v3, v8

    add-int/lit8 v2, v2, 0x2

    goto :goto_26

    :cond_40
    int-to-long v5, v7

    div-long v2, v3, v5

    const-wide/16 v4, 0x149

    cmp-long v4, v2, v4

    if-ltz v4, :cond_8

    const-wide/16 v4, 0x1a5

    cmp-long v0, v2, v4

    if-gez v0, :cond_51

    const/4 v0, 0x1

    goto :goto_8

    :cond_51
    const-wide/16 v4, 0x21f

    cmp-long v0, v2, v4

    if-gez v0, :cond_59

    move v0, v1

    goto :goto_8

    :cond_59
    const-wide/16 v0, 0x2b6

    cmp-long v0, v2, v0

    if-gez v0, :cond_61

    const/4 v0, 0x3

    goto :goto_8

    :cond_61
    const-wide/16 v0, 0x37f

    cmp-long v0, v2, v0

    if-gez v0, :cond_69

    const/4 v0, 0x4

    goto :goto_8

    :cond_69
    const-wide/16 v0, 0x47a

    cmp-long v0, v2, v0

    if-gez v0, :cond_71

    const/4 v0, 0x5

    goto :goto_8

    :cond_71
    const-wide/16 v0, 0x5c4

    cmp-long v0, v2, v0

    if-gez v0, :cond_79

    const/4 v0, 0x6

    goto :goto_8

    :cond_79
    const-wide/16 v0, 0x762

    cmp-long v0, v2, v0

    if-gez v0, :cond_81

    const/4 v0, 0x7

    goto :goto_8

    :cond_81
    const-wide/16 v0, 0x981

    cmp-long v0, v2, v0

    if-gez v0, :cond_8b

    const/16 v0, 0x8

    goto/16 :goto_8

    :cond_8b
    const-wide/16 v0, 0xc2e

    cmp-long v0, v2, v0

    if-gez v0, :cond_95

    const/16 v0, 0x9

    goto/16 :goto_8

    :cond_95
    const-wide/16 v0, 0xfab

    cmp-long v0, v2, v0

    if-gez v0, :cond_9f

    const/16 v0, 0xa

    goto/16 :goto_8

    :cond_9f
    const-wide/16 v0, 0x1416

    cmp-long v0, v2, v0

    if-gez v0, :cond_a9

    const/16 v0, 0xb

    goto/16 :goto_8

    :cond_a9
    const-wide/16 v0, 0x19d4

    cmp-long v0, v2, v0

    if-gez v0, :cond_b3

    const/16 v0, 0xc

    goto/16 :goto_8

    :cond_b3
    const-wide/16 v0, 0x211e

    cmp-long v0, v2, v0

    if-gez v0, :cond_bd

    const/16 v0, 0xd

    goto/16 :goto_8

    :cond_bd
    const-wide/16 v0, 0x2a94

    cmp-long v0, v2, v0

    if-gez v0, :cond_c7

    const/16 v0, 0xe

    goto/16 :goto_8

    :cond_c7
    const-wide/16 v0, 0x369e

    cmp-long v0, v2, v0

    if-gez v0, :cond_d1

    const/16 v0, 0xf

    goto/16 :goto_8

    :cond_d1
    const-wide/16 v0, 0x4630

    cmp-long v0, v2, v0

    if-gez v0, :cond_db

    const/16 v0, 0x10

    goto/16 :goto_8

    :cond_db
    const-wide/16 v0, 0x5a0e

    cmp-long v0, v2, v0

    if-gez v0, :cond_e5

    const/16 v0, 0x11

    goto/16 :goto_8

    :cond_e5
    const-wide/16 v0, 0x73b4

    cmp-long v0, v2, v0

    if-gez v0, :cond_ef

    const/16 v0, 0x12

    goto/16 :goto_8

    :cond_ef
    const-wide/32 v0, 0x947e

    cmp-long v0, v2, v0

    if-gez v0, :cond_fa

    const/16 v0, 0x13

    goto/16 :goto_8

    :cond_fa
    const-wide/32 v0, 0xbebc

    cmp-long v0, v2, v0

    if-gez v0, :cond_105

    const/16 v0, 0x14

    goto/16 :goto_8

    :cond_105
    const-wide/32 v0, 0xf4be

    cmp-long v0, v2, v0

    if-gez v0, :cond_110

    const/16 v0, 0x15

    goto/16 :goto_8

    :cond_110
    const-wide/32 v0, 0x13a6b

    cmp-long v0, v2, v0

    if-gez v0, :cond_11b

    const/16 v0, 0x16

    goto/16 :goto_8

    :cond_11b
    const-wide/32 v0, 0x1937e

    cmp-long v0, v2, v0

    if-gez v0, :cond_126

    const/16 v0, 0x17

    goto/16 :goto_8

    :cond_126
    const-wide/32 v0, 0x2064e

    cmp-long v0, v2, v0

    if-gez v0, :cond_131

    const/16 v0, 0x18

    goto/16 :goto_8

    :cond_131
    const-wide/32 v0, 0x2997e

    cmp-long v0, v2, v0

    if-gez v0, :cond_13c

    const/16 v0, 0x19

    goto/16 :goto_8

    :cond_13c
    const-wide/32 v0, 0x35668

    cmp-long v0, v2, v0

    if-gez v0, :cond_147

    const/16 v0, 0x1a

    goto/16 :goto_8

    :cond_147
    const-wide/32 v0, 0x448fe

    cmp-long v0, v2, v0

    if-gez v0, :cond_152

    const/16 v0, 0x1b

    goto/16 :goto_8

    :cond_152
    const/16 v0, 0x1e

    goto/16 :goto_8
.end method
