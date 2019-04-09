.class public Lcom/alibaba/fastjson/util/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CA:[C

.field public static final IA:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 13
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    .line 14
    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    .line 16
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 17
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    array-length v2, v0

    move v0, v1

    :goto_19
    if-ge v0, v2, :cond_26

    .line 18
    sget-object v3, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->CA:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 19
    :cond_26
    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeFast(Ljava/lang/String;)[B
    .registers 14

    .prologue
    const/16 v8, 0x4c

    const/16 v6, 0x3d

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 157
    if-nez v2, :cond_e

    .line 158
    new-array v0, v1, [B

    .line 208
    :goto_d
    return-object v0

    .line 161
    :cond_e
    add-int/lit8 v0, v2, -0x1

    move v3, v1

    .line 164
    :goto_11
    if-ge v3, v0, :cond_f2

    sget-object v4, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_f2

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 168
    :goto_22
    if-lez v7, :cond_34

    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/lit16 v4, v4, 0xff

    aget v0, v0, v4

    if-gez v0, :cond_34

    .line 169
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_22

    .line 172
    :cond_34
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_bc

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_b9

    const/4 v0, 0x2

    move v6, v0

    .line 173
    :goto_44
    sub-int v0, v7, v3

    add-int/lit8 v4, v0, 0x1

    .line 174
    if-le v2, v8, :cond_c0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_be

    div-int/lit8 v0, v4, 0x4e

    :goto_54
    shl-int/lit8 v0, v0, 0x1

    .line 176
    :goto_56
    sub-int v2, v4, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    .line 177
    new-array v4, v8, [B

    .line 181
    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_66
    :goto_66
    if-ge v5, v9, :cond_c2

    .line 183
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 187
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    .line 188
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 189
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    .line 192
    if-lez v0, :cond_66

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_66

    .line 193
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    .line 194
    goto :goto_66

    .line 172
    :cond_b9
    const/4 v0, 0x1

    move v6, v0

    goto :goto_44

    :cond_bc
    move v6, v1

    goto :goto_44

    :cond_be
    move v0, v1

    .line 174
    goto :goto_54

    :cond_c0
    move v0, v1

    goto :goto_56

    .line 198
    :cond_c2
    if-ge v5, v8, :cond_ef

    move v0, v3

    move v3, v1

    .line 201
    :goto_c6
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_df

    .line 202
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 201
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_c6

    .line 204
    :cond_df
    const/16 v0, 0x10

    move v1, v5

    :goto_e2
    if-ge v1, v8, :cond_ef

    .line 205
    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 204
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_e2

    :cond_ef
    move-object v0, v4

    .line 208
    goto/16 :goto_d

    :cond_f2
    move v7, v0

    goto/16 :goto_22
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .registers 16

    .prologue
    const/16 v8, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 90
    if-nez p2, :cond_a

    .line 91
    new-array v0, v1, [B

    .line 140
    :goto_9
    return-object v0

    .line 94
    :cond_a
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    .line 97
    :goto_f
    if-ge v3, v0, :cond_eb

    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v2, v2, v4

    if-gez v2, :cond_eb

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 101
    :goto_1e
    if-lez v7, :cond_2e

    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v0, v0, v2

    if-gez v0, :cond_2e

    .line 102
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1e

    .line 105
    :cond_2e
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_b5

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_b2

    const/4 v0, 0x2

    move v6, v0

    .line 106
    :goto_3e
    sub-int v0, v7, v3

    add-int/lit8 v2, v0, 0x1

    .line 107
    if-le p2, v8, :cond_b9

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0xd

    if-ne v0, v4, :cond_b7

    div-int/lit8 v0, v2, 0x4e

    :goto_4e
    shl-int/lit8 v0, v0, 0x1

    .line 109
    :goto_50
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    .line 110
    new-array v4, v8, [B

    .line 114
    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_5f
    :goto_5f
    if-ge v5, v9, :cond_bb

    .line 116
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 119
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    .line 120
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 121
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    .line 124
    if-lez v0, :cond_5f

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_5f

    .line 125
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    .line 126
    goto :goto_5f

    .line 105
    :cond_b2
    const/4 v0, 0x1

    move v6, v0

    goto :goto_3e

    :cond_b5
    move v6, v1

    goto :goto_3e

    :cond_b7
    move v0, v1

    .line 107
    goto :goto_4e

    :cond_b9
    move v0, v1

    goto :goto_50

    .line 130
    :cond_bb
    if-ge v5, v8, :cond_e8

    move v0, v3

    move v3, v1

    .line 133
    :goto_bf
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_d8

    .line 134
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 133
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_bf

    .line 136
    :cond_d8
    const/16 v0, 0x10

    move v1, v5

    :goto_db
    if-ge v1, v8, :cond_e8

    .line 137
    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 136
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_db

    :cond_e8
    move-object v0, v4

    .line 140
    goto/16 :goto_9

    :cond_eb
    move v7, v0

    goto/16 :goto_1e
.end method

.method public static final decodeFast([CII)[B
    .registers 16

    .prologue
    const/16 v8, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 35
    if-nez p2, :cond_a

    .line 36
    new-array v0, v1, [B

    .line 85
    :goto_9
    return-object v0

    .line 39
    :cond_a
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    .line 42
    :goto_f
    if-ge v3, v0, :cond_d7

    sget-object v2, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v4, p0, v3

    aget v2, v2, v4

    if-gez v2, :cond_d7

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 46
    :goto_1c
    if-lez v7, :cond_2a

    sget-object v0, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    aget-char v2, p0, v7

    aget v0, v0, v2

    if-gez v0, :cond_2a

    .line 47
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_1c

    .line 50
    :cond_2a
    aget-char v0, p0, v7

    if-ne v0, v5, :cond_a3

    add-int/lit8 v0, v7, -0x1

    aget-char v0, p0, v0

    if-ne v0, v5, :cond_a0

    const/4 v0, 0x2

    move v6, v0

    .line 51
    :goto_36
    sub-int v0, v7, v3

    add-int/lit8 v2, v0, 0x1

    .line 52
    if-le p2, v8, :cond_a7

    aget-char v0, p0, v8

    const/16 v4, 0xd

    if-ne v0, v4, :cond_a5

    div-int/lit8 v0, v2, 0x4e

    :goto_44
    shl-int/lit8 v0, v0, 0x1

    .line 54
    :goto_46
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x6

    shr-int/lit8 v2, v2, 0x3

    sub-int v8, v2, v6

    .line 55
    new-array v4, v8, [B

    .line 59
    div-int/lit8 v2, v8, 0x3

    mul-int/lit8 v9, v2, 0x3

    move v2, v1

    move v5, v1

    :cond_55
    :goto_55
    if-ge v5, v9, :cond_a9

    .line 61
    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v3, 0x1

    aget-char v3, p0, v3

    aget v3, v10, v3

    shl-int/lit8 v3, v3, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v3, v10

    sget-object v10, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v3

    sget-object v12, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v3, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 64
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v4, v5

    .line 65
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    aput-byte v5, v4, v11

    .line 66
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    aput-byte v10, v4, v12

    .line 69
    if-lez v0, :cond_55

    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x13

    if-ne v2, v10, :cond_55

    .line 70
    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move v2, v1

    .line 71
    goto :goto_55

    .line 50
    :cond_a0
    const/4 v0, 0x1

    move v6, v0

    goto :goto_36

    :cond_a3
    move v6, v1

    goto :goto_36

    :cond_a5
    move v0, v1

    .line 52
    goto :goto_44

    :cond_a7
    move v0, v1

    goto :goto_46

    .line 75
    :cond_a9
    if-ge v5, v8, :cond_d4

    move v0, v3

    move v3, v1

    .line 78
    :goto_ad
    sub-int v2, v7, v6

    if-gt v0, v2, :cond_c4

    .line 79
    sget-object v9, Lcom/alibaba/fastjson/util/Base64;->IA:[I

    add-int/lit8 v2, v0, 0x1

    aget-char v0, p0, v0

    aget v0, v9, v0

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v0, v9

    or-int/2addr v0, v3

    .line 78
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    move v0, v2

    goto :goto_ad

    .line 81
    :cond_c4
    const/16 v0, 0x10

    move v1, v5

    :goto_c7
    if-ge v1, v8, :cond_d4

    .line 82
    add-int/lit8 v2, v1, 0x1

    shr-int v5, v3, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 81
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_c7

    :cond_d4
    move-object v0, v4

    .line 85
    goto/16 :goto_9

    :cond_d7
    move v7, v0

    goto/16 :goto_1c
.end method
