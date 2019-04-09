.class public Lcom/baidu/tts/tools/CommonUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)[I
    .registers 6

    .prologue
    .line 87
    array-length v0, p0

    new-array v2, v0, [I

    .line 89
    const/4 v1, 0x0

    .line 90
    const/4 v0, 0x1

    :goto_5
    array-length v3, p0

    if-ge v0, v3, :cond_22

    .line 91
    :goto_8
    if-lez v1, :cond_15

    aget-byte v3, p0, v1

    aget-byte v4, p0, v0

    if-eq v3, v4, :cond_15

    .line 92
    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    goto :goto_8

    .line 94
    :cond_15
    aget-byte v3, p0, v1

    aget-byte v4, p0, v0

    if-ne v3, v4, :cond_1d

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 97
    :cond_1d
    aput v1, v2, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 100
    :cond_22
    return-object v2
.end method

.method public static addCAFHeaderForPCMData([B)[B
    .registers 16

    .prologue
    .line 156
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 157
    :cond_5
    const/4 v0, 0x0

    .line 215
    :goto_6
    return-object v0

    .line 159
    :cond_7
    array-length v0, p0

    int-to-long v0, v0

    .line 160
    const-wide/16 v2, 0x2c

    add-long/2addr v2, v0

    .line 161
    const-wide/16 v4, 0x3e80

    .line 162
    const/4 v6, 0x1

    .line 163
    const-wide/16 v7, 0x10

    mul-long/2addr v7, v2

    int-to-long v9, v6

    mul-long/2addr v7, v9

    const-wide/16 v9, 0x8

    div-long/2addr v7, v9

    .line 165
    const/16 v9, 0x2c

    new-array v9, v9, [B

    .line 166
    const/4 v10, 0x0

    const/16 v11, 0x52

    aput-byte v11, v9, v10

    .line 167
    const/4 v10, 0x1

    const/16 v11, 0x49

    aput-byte v11, v9, v10

    .line 168
    const/4 v10, 0x2

    const/16 v11, 0x46

    aput-byte v11, v9, v10

    .line 169
    const/4 v10, 0x3

    const/16 v11, 0x46

    aput-byte v11, v9, v10

    .line 170
    const/4 v10, 0x4

    const-wide/16 v11, 0xff

    and-long/2addr v11, v2

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 171
    const/4 v10, 0x5

    const/16 v11, 0x8

    shr-long v11, v2, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 172
    const/4 v10, 0x6

    const/16 v11, 0x10

    shr-long v11, v2, v11

    const-wide/16 v13, 0xff

    and-long/2addr v11, v13

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 173
    const/4 v10, 0x7

    const/16 v11, 0x18

    shr-long/2addr v2, v11

    const-wide/16 v11, 0xff

    and-long/2addr v2, v11

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v9, v10

    .line 174
    const/16 v2, 0x8

    const/16 v3, 0x57

    aput-byte v3, v9, v2

    .line 175
    const/16 v2, 0x9

    const/16 v3, 0x41

    aput-byte v3, v9, v2

    .line 176
    const/16 v2, 0xa

    const/16 v3, 0x56

    aput-byte v3, v9, v2

    .line 177
    const/16 v2, 0xb

    const/16 v3, 0x45

    aput-byte v3, v9, v2

    .line 178
    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-byte v3, v9, v2

    .line 179
    const/16 v2, 0xd

    const/16 v3, 0x6d

    aput-byte v3, v9, v2

    .line 180
    const/16 v2, 0xe

    const/16 v3, 0x74

    aput-byte v3, v9, v2

    .line 181
    const/16 v2, 0xf

    const/16 v3, 0x20

    aput-byte v3, v9, v2

    .line 182
    const/16 v2, 0x10

    const/16 v3, 0x10

    aput-byte v3, v9, v2

    .line 183
    const/16 v2, 0x11

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 184
    const/16 v2, 0x12

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 185
    const/16 v2, 0x13

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 186
    const/16 v2, 0x14

    const/4 v3, 0x1

    aput-byte v3, v9, v2

    .line 187
    const/16 v2, 0x15

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 188
    const/16 v2, 0x16

    int-to-byte v3, v6

    aput-byte v3, v9, v2

    .line 189
    const/16 v2, 0x17

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 190
    const/16 v2, 0x18

    const-wide/16 v10, 0xff

    and-long/2addr v10, v4

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 191
    const/16 v2, 0x19

    const/16 v3, 0x8

    shr-long v10, v4, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 192
    const/16 v2, 0x1a

    const/16 v3, 0x10

    shr-long v10, v4, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    long-to-int v3, v10

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 193
    const/16 v2, 0x1b

    const/16 v3, 0x18

    shr-long v3, v4, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 194
    const/16 v2, 0x1c

    const-wide/16 v3, 0xff

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 195
    const/16 v2, 0x1d

    const/16 v3, 0x8

    shr-long v3, v7, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 196
    const/16 v2, 0x1e

    const/16 v3, 0x10

    shr-long v3, v7, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 197
    const/16 v2, 0x1f

    const/16 v3, 0x18

    shr-long v3, v7, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 198
    const/16 v2, 0x20

    const/4 v3, 0x2

    aput-byte v3, v9, v2

    .line 199
    const/16 v2, 0x21

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 200
    const/16 v2, 0x22

    const/16 v3, 0x10

    aput-byte v3, v9, v2

    .line 201
    const/16 v2, 0x23

    const/4 v3, 0x0

    aput-byte v3, v9, v2

    .line 202
    const/16 v2, 0x24

    const/16 v3, 0x64

    aput-byte v3, v9, v2

    .line 203
    const/16 v2, 0x25

    const/16 v3, 0x61

    aput-byte v3, v9, v2

    .line 204
    const/16 v2, 0x26

    const/16 v3, 0x74

    aput-byte v3, v9, v2

    .line 205
    const/16 v2, 0x27

    const/16 v3, 0x61

    aput-byte v3, v9, v2

    .line 206
    const/16 v2, 0x28

    const-wide/16 v3, 0xff

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 207
    const/16 v2, 0x29

    const/16 v3, 0x8

    shr-long v3, v0, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 208
    const/16 v2, 0x2a

    const/16 v3, 0x10

    shr-long v3, v0, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v9, v2

    .line 209
    const/16 v2, 0x2b

    const/16 v3, 0x18

    shr-long/2addr v0, v3

    const-wide/16 v3, 0xff

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v9, v2

    .line 211
    array-length v0, v9

    array-length v1, p0

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 212
    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v9

    invoke-static {v9, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    const/4 v1, 0x0

    array-length v2, v9

    array-length v3, p0

    invoke-static {p0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_6
.end method

.method public static copyBytesOfRange([BII)[B
    .registers 7

    .prologue
    .line 145
    if-gt p1, p2, :cond_9

    if-ltz p1, :cond_9

    if-ltz p2, :cond_9

    array-length v0, p0

    if-le p2, v0, :cond_b

    .line 146
    :cond_9
    const/4 v0, 0x0

    .line 152
    :cond_a
    return-object v0

    .line 148
    :cond_b
    sub-int v0, p2, p1

    new-array v0, v0, [B

    move v1, p1

    .line 149
    :goto_10
    if-ge v1, p2, :cond_a

    .line 150
    sub-int v2, v1, p1

    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method public static generateSerialNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 110
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static indexOf([B[BI)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 58
    :try_start_1
    invoke-static {p1}, Lcom/baidu/tts/tools/CommonUtility;->a([B)[I

    move-result-object v2

    .line 60
    const/4 v1, 0x0

    .line 61
    array-length v3, p0

    if-nez v3, :cond_a

    .line 79
    :cond_9
    :goto_9
    return v0

    .line 63
    :cond_a
    array-length v3, p0

    if-ge p2, v3, :cond_9

    .line 66
    :goto_d
    array-length v3, p0

    if-ge p2, v3, :cond_9

    .line 67
    :goto_10
    if-lez v1, :cond_1d

    aget-byte v3, p1, v1

    aget-byte v4, p0, p2

    if-eq v3, v4, :cond_1d

    .line 68
    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    goto :goto_10

    .line 70
    :cond_1d
    aget-byte v3, p1, v1

    aget-byte v4, p0, p2

    if-ne v3, v4, :cond_25

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    :cond_25
    array-length v3, p1

    if-ne v1, v3, :cond_2e

    .line 74
    array-length v0, p1
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_29} :catch_31

    sub-int v0, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 66
    :cond_2e
    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 78
    :catch_31
    move-exception v1

    goto :goto_9
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 121
    invoke-static {p0}, Lcom/baidu/tts/tools/CommonUtility;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-static {p0}, Lcom/baidu/tts/tools/CommonUtility;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_14

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static shortArrayToByteArray([S)[B
    .registers 6

    .prologue
    .line 41
    array-length v1, p0

    .line 42
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 44
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v1, :cond_1f

    .line 46
    mul-int/lit8 v3, v0, 0x2

    aget-short v4, p0, v0

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 48
    :cond_1f
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
