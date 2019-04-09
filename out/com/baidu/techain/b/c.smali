.class public final Lcom/baidu/techain/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/baidu/techain/b/c;->a:[B

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

.method public static a([B)[B
    .registers 16

    .prologue
    const/16 v13, 0x20

    const/16 v12, 0xd

    const/16 v11, 0xa

    const/16 v10, 0x9

    const/4 v1, 0x0

    .line 9
    array-length v0, p0

    .line 1013
    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    .line 1014
    if-nez v2, :cond_13

    .line 1015
    new-array v0, v1, [B

    .line 1048
    :goto_12
    return-object v0

    .line 1017
    :cond_13
    new-array v8, v2, [B

    move v2, v0

    move v0, v1

    .line 1021
    :goto_17
    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    .line 1022
    if-eq v3, v11, :cond_29

    if-eq v3, v12, :cond_29

    if-eq v3, v13, :cond_29

    if-eq v3, v10, :cond_29

    .line 1023
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_2c

    .line 1026
    add-int/lit8 v0, v0, 0x1

    .line 1028
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_2c
    move v7, v1

    move v5, v1

    move v6, v1

    move v4, v1

    .line 1034
    :goto_30
    if-ge v7, v2, :cond_9e

    .line 1035
    aget-byte v3, p0, v7

    .line 1036
    if-eq v3, v11, :cond_c7

    if-eq v3, v12, :cond_c7

    if-eq v3, v13, :cond_c7

    if-eq v3, v10, :cond_c7

    .line 1037
    const/16 v9, 0x41

    if-lt v3, v9, :cond_77

    const/16 v9, 0x5a

    if-gt v3, v9, :cond_77

    .line 1038
    add-int/lit8 v3, v3, -0x41

    .line 1050
    :goto_46
    shl-int/lit8 v5, v5, 0x6

    int-to-byte v3, v3

    or-int/2addr v5, v3

    .line 1051
    rem-int/lit8 v3, v6, 0x4

    const/4 v9, 0x3

    if-ne v3, v9, :cond_c5

    .line 1052
    add-int/lit8 v3, v4, 0x1

    const/high16 v9, 0xff0000

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 1053
    add-int/lit8 v4, v3, 0x1

    const v9, 0xff00

    and-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    .line 1054
    add-int/lit8 v3, v4, 0x1

    and-int/lit16 v9, v5, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 1056
    :goto_6b
    add-int/lit8 v4, v6, 0x1

    move v14, v5

    move v5, v3

    move v3, v14

    .line 1034
    :goto_70
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    move v4, v5

    move v5, v3

    goto :goto_30

    .line 1039
    :cond_77
    const/16 v9, 0x61

    if-lt v3, v9, :cond_82

    const/16 v9, 0x7a

    if-gt v3, v9, :cond_82

    .line 1040
    add-int/lit8 v3, v3, -0x47

    goto :goto_46

    .line 1041
    :cond_82
    const/16 v9, 0x30

    if-lt v3, v9, :cond_8d

    const/16 v9, 0x39

    if-gt v3, v9, :cond_8d

    .line 1042
    add-int/lit8 v3, v3, 0x4

    goto :goto_46

    .line 1043
    :cond_8d
    const/16 v9, 0x2b

    if-ne v3, v9, :cond_94

    .line 1044
    const/16 v3, 0x3e

    goto :goto_46

    .line 1045
    :cond_94
    const/16 v9, 0x2f

    if-ne v3, v9, :cond_9b

    .line 1046
    const/16 v3, 0x3f

    goto :goto_46

    .line 1048
    :cond_9b
    const/4 v0, 0x0

    goto/16 :goto_12

    .line 1059
    :cond_9e
    if-lez v0, :cond_bc

    .line 1060
    mul-int/lit8 v2, v0, 0x6

    shl-int v3, v5, v2

    .line 1061
    add-int/lit8 v2, v4, 0x1

    const/high16 v5, 0xff0000

    and-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v8, v4

    .line 1062
    const/4 v4, 0x1

    if-ne v0, v4, :cond_c3

    .line 1063
    add-int/lit8 v4, v2, 0x1

    const v0, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, v8, v2

    .line 1066
    :cond_bc
    :goto_bc
    new-array v0, v4, [B

    .line 1067
    invoke-static {v8, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_12

    :cond_c3
    move v4, v2

    goto :goto_bc

    :cond_c5
    move v3, v4

    goto :goto_6b

    :cond_c7
    move v3, v5

    move v5, v4

    move v4, v6

    goto :goto_70
.end method
