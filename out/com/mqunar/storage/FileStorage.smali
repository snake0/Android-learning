.class public Lcom/mqunar/storage/FileStorage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/storage/IStorage;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p2, :cond_c

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "file is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    :cond_c
    iput-object p2, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    .line 39
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 40
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    .line 48
    :goto_26
    return-void

    .line 43
    :cond_27
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u65e0\u6cd5\u521b\u5efa\u6587\u4ef6!\u5df2\u5b58\u5728\u540c\u540d\u7684\u6587\u4ef6\u5939!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3b
    invoke-direct {p0}, Lcom/mqunar/storage/FileStorage;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    goto :goto_26
.end method

.method private static a([B)J
    .registers 9

    .prologue
    .line 158
    const-wide/16 v1, 0x0

    .line 160
    const/4 v0, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v0, v3, :cond_17

    .line 161
    rsub-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x8

    .line 162
    aget-byte v4, p0, v0

    int-to-long v4, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    add-long/2addr v1, v3

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 164
    :cond_17
    return-wide v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 108
    iget-object v1, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v1

    .line 109
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private a()Lorg/json/JSONObject;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 57
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    const/16 v0, 0x1000

    :try_start_10
    new-array v2, v0, [B

    .line 62
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_19} :catch_5f
    .catchall {:try_start_10 .. :try_end_19} :catchall_51

    .line 63
    :goto_19
    :try_start_19
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_34

    .line 64
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_25
    .catchall {:try_start_19 .. :try_end_24} :catchall_5a

    goto :goto_19

    .line 67
    :catch_25
    move-exception v2

    .line 69
    :goto_26
    if-eqz v0, :cond_62

    .line 71
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4e

    move-object v0, v1

    .line 77
    :goto_2c
    if-nez v0, :cond_33

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 80
    :cond_33
    return-object v0

    .line 66
    :cond_34
    :try_start_34
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_25
    .catchall {:try_start_34 .. :try_end_44} :catchall_5a

    .line 69
    if-eqz v0, :cond_64

    .line 71
    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4b

    move-object v0, v2

    .line 73
    goto :goto_2c

    .line 72
    :catch_4b
    move-exception v0

    move-object v0, v2

    .line 73
    goto :goto_2c

    .line 72
    :catch_4e
    move-exception v0

    move-object v0, v1

    .line 73
    goto :goto_2c

    .line 69
    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v1, :cond_57

    .line 71
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 73
    :cond_57
    :goto_57
    throw v0

    .line 72
    :catch_58
    move-exception v1

    goto :goto_57

    .line 69
    :catchall_5a
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_52

    .line 67
    :catch_5f
    move-exception v0

    move-object v0, v1

    goto :goto_26

    :cond_62
    move-object v0, v1

    goto :goto_2c

    :cond_64
    move-object v0, v2

    goto :goto_2c
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 101
    iget-object v1, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v1

    .line 102
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/mqunar/storage/FileStorage;->a(Lorg/json/JSONObject;)V

    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 104
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 84
    const/4 v1, 0x0

    .line 86
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_1b
    .catchall {:try_start_1 .. :try_end_8} :catchall_25

    .line 87
    :try_start_8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_35
    .catchall {:try_start_8 .. :try_end_15} :catchall_30

    .line 91
    if-eqz v0, :cond_1a

    .line 93
    :try_start_17
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_2c

    .line 98
    :cond_1a
    :goto_1a
    return-void

    .line 89
    :catch_1b
    move-exception v0

    move-object v0, v1

    .line 91
    :goto_1d
    if-eqz v0, :cond_1a

    .line 93
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_1a

    .line 94
    :catch_23
    move-exception v0

    goto :goto_1a

    .line 91
    :catchall_25
    move-exception v0

    :goto_26
    if-eqz v1, :cond_2b

    .line 93
    :try_start_28
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2e

    .line 95
    :cond_2b
    :goto_2b
    throw v0

    .line 94
    :catch_2c
    move-exception v0

    goto :goto_1a

    :catch_2e
    move-exception v1

    goto :goto_2b

    .line 91
    :catchall_30
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_26

    .line 89
    :catch_35
    move-exception v1

    goto :goto_1d
.end method

.method private a(ILjava/lang/String;[B)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 184
    if-eqz p3, :cond_7

    array-length v2, p3

    if-nez v2, :cond_10

    .line 186
    :cond_7
    :try_start_7
    const-string v2, ""

    invoke-direct {p0, p2, v2}, Lcom/mqunar/storage/FileStorage;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_c} :catch_d

    .line 204
    :goto_c
    return v0

    .line 188
    :catch_d
    move-exception v0

    move v0, v1

    .line 190
    goto :goto_c

    .line 194
    :cond_10
    :try_start_10
    array-length v2, p3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 195
    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    .line 196
    const/4 v3, 0x0

    const/4 v4, 0x1

    array-length v5, p3

    invoke-static {p3, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    invoke-static {v2}, Lcom/mqunar/storage/EggRoll;->ea([B)[B

    move-result-object v2

    .line 199
    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-direct {p0, p2, v2}, Lcom/mqunar/storage/FileStorage;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2b} :catch_2c

    goto :goto_c

    .line 202
    :catch_2c
    move-exception v0

    move v0, v1

    .line 204
    goto :goto_c
.end method

.method private a(ILjava/lang/String;)[B
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-direct {p0, p2}, Lcom/mqunar/storage/FileStorage;->c(Ljava/lang/String;)[B

    move-result-object v1

    .line 223
    if-eqz v1, :cond_22

    array-length v0, v1

    if-lez v0, :cond_22

    .line 225
    aget-byte v0, v1, v4

    int-to-byte v2, p1

    if-eq v0, v2, :cond_17

    .line 226
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u7c7b\u578b\u4e0d\u5339\u914d"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_17
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [B

    .line 229
    const/4 v2, 0x1

    array-length v3, v0

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    :goto_21
    return-object v0

    :cond_22
    move-object v0, v1

    goto :goto_21
.end method

.method private static a(J)[B
    .registers 9

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 129
    new-array v0, v6, [B

    .line 131
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 132
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 133
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 134
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 135
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/4 v1, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/4 v1, 0x7

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 139
    return-object v0
.end method

.method private b(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 208
    if-eqz p1, :cond_c

    .line 209
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/mqunar/storage/EggRoll;->da([B)[B

    move-result-object v0

    .line 213
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static b2i([B)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 148
    move v1, v0

    .line 150
    :goto_2
    const/4 v2, 0x4

    if-ge v0, v2, :cond_13

    .line 151
    rsub-int/lit8 v2, v0, 0x3

    mul-int/lit8 v2, v2, 0x8

    .line 152
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 154
    :cond_13
    return v1
.end method

.method private c(Ljava/lang/String;)[B
    .registers 3

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/mqunar/storage/FileStorage;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-direct {p0, v0}, Lcom/mqunar/storage/FileStorage;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static i2b(I)[B
    .registers 4

    .prologue
    .line 119
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 121
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 123
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 125
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/io/File;)Lcom/mqunar/storage/IStorage;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Lcom/mqunar/storage/FileStorage;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/storage/FileStorage;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public cleanAllStorage()Z
    .registers 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v1

    .line 640
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/mqunar/storage/FileStorage;->a(Lorg/json/JSONObject;)V

    .line 641
    monitor-exit v1

    .line 642
    const/4 v0, 0x1

    return v0

    .line 641
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 528
    iget-object v1, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v1

    .line 530
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_f

    move-result v0

    :try_start_9
    monitor-exit v1

    .line 534
    :goto_a
    return v0

    .line 531
    :catch_b
    move-exception v0

    .line 533
    monitor-exit v1

    .line 534
    const/4 v0, 0x0

    goto :goto_a

    .line 533
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 552
    iget-object v7, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v7

    .line 553
    :try_start_6
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_eb

    .line 555
    :try_start_b
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 556
    :goto_11
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 557
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 559
    invoke-direct {p0, v1}, Lcom/mqunar/storage/FileStorage;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 561
    if-eqz v1, :cond_41

    array-length v3, v1

    if-lez v3, :cond_41

    .line 562
    const/4 v3, 0x0

    aget-byte v6, v1, v3

    .line 563
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v3, v3, [B

    .line 564
    const/4 v10, 0x1

    const/4 v11, 0x0

    array-length v12, v3

    invoke-static {v1, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    packed-switch v6, :pswitch_data_fe

    :cond_41
    move-object v1, v2

    .line 627
    :goto_42
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_45} :catch_46
    .catchall {:try_start_b .. :try_end_45} :catchall_eb

    goto :goto_11

    .line 629
    :catch_46
    move-exception v0

    .line 630
    :try_start_47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 633
    :cond_4a
    monitor-exit v7
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_eb

    return-object v8

    :pswitch_4c
    move-object v1, v3

    .line 570
    goto :goto_42

    :pswitch_4e
    move v1, v5

    move v6, v5

    .line 574
    :goto_50
    const/4 v10, 0x2

    if-ge v1, v10, :cond_62

    .line 575
    rsub-int/lit8 v10, v1, 0x1

    mul-int/lit8 v10, v10, 0x8

    .line 576
    :try_start_57
    aget-byte v11, v3, v1

    and-int/lit16 v11, v11, 0xff

    shl-int v10, v11, v10

    add-int/2addr v6, v10

    int-to-short v6, v6

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 578
    :cond_62
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_42

    .line 581
    :pswitch_67
    invoke-static {v3}, Lcom/mqunar/storage/FileStorage;->b2i([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_42

    .line 584
    :pswitch_70
    invoke-static {v3}, Lcom/mqunar/storage/FileStorage;->a([B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_42

    .line 587
    :pswitch_79
    invoke-static {v3}, Lcom/mqunar/storage/FileStorage;->b2i([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_42

    .line 590
    :pswitch_86
    invoke-static {v3}, Lcom/mqunar/storage/FileStorage;->a([B)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_42

    .line 593
    :pswitch_93
    const/4 v1, 0x0

    aget-byte v1, v3, v1

    if-ne v1, v4, :cond_9e

    move v1, v4

    :goto_99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_9c} :catch_46
    .catchall {:try_start_57 .. :try_end_9c} :catchall_eb

    move-result-object v1

    goto :goto_42

    :cond_9e
    move v1, v5

    goto :goto_99

    .line 597
    :pswitch_a0
    :try_start_a0
    new-instance v1, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v1, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_a7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a0 .. :try_end_a7} :catch_a8
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a7} :catch_46
    .catchall {:try_start_a0 .. :try_end_a7} :catchall_eb

    goto :goto_42

    .line 598
    :catch_a8
    move-exception v1

    move-object v1, v2

    .line 600
    goto :goto_42

    .line 602
    :pswitch_ab
    const/4 v6, 0x0

    .line 606
    :try_start_ac
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_b6} :catch_cb
    .catchall {:try_start_ac .. :try_end_b6} :catchall_de

    .line 607
    :try_start_b6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b9} :catch_f8
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_f6

    move-result-object v3

    .line 610
    if-eqz v1, :cond_bf

    .line 612
    :try_start_bc
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_ee
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_bf} :catch_46
    .catchall {:try_start_bc .. :try_end_bf} :catchall_eb

    .line 616
    :cond_bf
    :goto_bf
    if-eqz v2, :cond_fa

    .line 618
    :try_start_c1
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c7
    .catch Ljava/lang/Throwable; {:try_start_c1 .. :try_end_c4} :catch_46
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_eb

    move-object v1, v3

    .line 620
    goto/16 :goto_42

    .line 619
    :catch_c7
    move-exception v1

    move-object v1, v3

    .line 620
    goto/16 :goto_42

    .line 608
    :catch_cb
    move-exception v1

    move-object v1, v2

    .line 610
    :goto_cd
    if-eqz v1, :cond_d2

    .line 612
    :try_start_cf
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_f0
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_d2} :catch_46
    .catchall {:try_start_cf .. :try_end_d2} :catchall_eb

    .line 616
    :cond_d2
    :goto_d2
    if-eqz v2, :cond_41

    .line 618
    :try_start_d4
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_da
    .catch Ljava/lang/Throwable; {:try_start_d4 .. :try_end_d7} :catch_46
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_eb

    move-object v1, v2

    .line 620
    goto/16 :goto_42

    .line 619
    :catch_da
    move-exception v1

    move-object v1, v2

    .line 620
    goto/16 :goto_42

    .line 610
    :catchall_de
    move-exception v0

    move-object v1, v2

    :goto_e0
    if-eqz v1, :cond_e5

    .line 612
    :try_start_e2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_e2 .. :try_end_e5} :catch_46
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_eb

    .line 616
    :cond_e5
    :goto_e5
    if-eqz v2, :cond_ea

    .line 618
    :try_start_e7
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_f4
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_ea} :catch_46
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_eb

    .line 620
    :cond_ea
    :goto_ea
    :try_start_ea
    throw v0
    :try_end_eb
    .catch Ljava/lang/Throwable; {:try_start_ea .. :try_end_eb} :catch_46
    .catchall {:try_start_ea .. :try_end_eb} :catchall_eb

    .line 634
    :catchall_eb
    move-exception v0

    :try_start_ec
    monitor-exit v7
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    throw v0

    .line 613
    :catch_ee
    move-exception v1

    goto :goto_bf

    :catch_f0
    move-exception v1

    goto :goto_d2

    :catch_f2
    move-exception v1

    goto :goto_e5

    .line 619
    :catch_f4
    move-exception v1

    goto :goto_ea

    .line 610
    :catchall_f6
    move-exception v0

    goto :goto_e0

    .line 608
    :catch_f8
    move-exception v3

    goto :goto_cd

    :cond_fa
    move-object v1, v3

    goto/16 :goto_42

    .line 567
    nop

    :pswitch_data_fe
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4e
        :pswitch_67
        :pswitch_70
        :pswitch_79
        :pswitch_86
        :pswitch_93
        :pswitch_a0
        :pswitch_ab
    .end packed-switch
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 470
    .line 472
    const/4 v2, 0x6

    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v2

    .line 473
    if-eqz v2, :cond_14

    .line 474
    const/4 v3, 0x0

    aget-byte v2, v2, v3
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_11

    if-ne v2, v0, :cond_f

    .line 478
    :goto_e
    return v0

    :cond_f
    move v0, v1

    .line 474
    goto :goto_e

    .line 476
    :catch_11
    move-exception v0

    move v0, p2

    goto :goto_e

    :cond_14
    move v0, p2

    goto :goto_e
.end method

.method public getBytes(Ljava/lang/String;[B)[B
    .registers 5

    .prologue
    .line 252
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 253
    if-eqz v0, :cond_a

    array-length v1, v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_b

    if-nez v1, :cond_d

    .line 259
    :cond_a
    :goto_a
    return-object p2

    .line 257
    :catch_b
    move-exception v0

    goto :goto_a

    :cond_d
    move-object p2, v0

    goto :goto_a
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6

    .prologue
    .line 444
    .line 446
    const/4 v0, 0x5

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 447
    if-eqz v0, :cond_f

    .line 448
    invoke-static {v0}, Lcom/mqunar/storage/FileStorage;->a([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result-wide p2

    .line 452
    :cond_f
    :goto_f
    return-wide p2

    .line 450
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 4

    .prologue
    .line 431
    .line 433
    const/4 v0, 0x4

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 434
    if-eqz v0, :cond_f

    .line 435
    invoke-static {v0}, Lcom/mqunar/storage/FileStorage;->b2i([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-result p2

    .line 439
    :cond_f
    :goto_f
    return p2

    .line 437
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 405
    .line 407
    const/4 v0, 0x2

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 408
    if-eqz v0, :cond_b

    .line 409
    invoke-static {v0}, Lcom/mqunar/storage/FileStorage;->b2i([B)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result p2

    .line 413
    :cond_b
    :goto_b
    return p2

    .line 411
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public getKeys()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    iget-object v2, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v2

    .line 541
    :try_start_8
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 542
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 543
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 544
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 546
    :catchall_1e
    move-exception v0

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_1e

    .line 547
    return-object v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    .prologue
    .line 418
    .line 420
    const/4 v0, 0x3

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 421
    if-eqz v0, :cond_b

    .line 422
    invoke-static {v0}, Lcom/mqunar/storage/FileStorage;->a([B)J
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result-wide p2

    .line 426
    :cond_b
    :goto_b
    return-wide p2

    .line 424
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/Class;Ljava/io/Serializable;)Ljava/io/Serializable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Serializable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 483
    const/4 v3, 0x0

    .line 488
    const/16 v0, 0x8

    :try_start_4
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v0

    .line 489
    if-eqz v0, :cond_51

    .line 490
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_14} :catch_26
    .catchall {:try_start_4 .. :try_end_14} :catchall_35

    .line 491
    :try_start_14
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_1a} :catch_4e
    .catchall {:try_start_14 .. :try_end_1a} :catchall_4c

    move-object p3, v0

    .line 495
    :goto_1b
    if-eqz v1, :cond_20

    .line 497
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_42

    .line 501
    :cond_20
    :goto_20
    if-eqz v2, :cond_25

    .line 503
    :try_start_22
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_44

    .line 508
    :cond_25
    :goto_25
    return-object p3

    .line 493
    :catch_26
    move-exception v0

    move-object v0, v2

    .line 495
    :goto_28
    if-eqz v0, :cond_2d

    .line 497
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_46

    .line 501
    :cond_2d
    :goto_2d
    if-eqz v2, :cond_25

    .line 503
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_25

    .line 504
    :catch_33
    move-exception v0

    goto :goto_25

    .line 495
    :catchall_35
    move-exception v0

    move-object v1, v2

    :goto_37
    if-eqz v1, :cond_3c

    .line 497
    :try_start_39
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_48

    .line 501
    :cond_3c
    :goto_3c
    if-eqz v2, :cond_41

    .line 503
    :try_start_3e
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_4a

    .line 505
    :cond_41
    :goto_41
    throw v0

    .line 498
    :catch_42
    move-exception v0

    goto :goto_20

    .line 504
    :catch_44
    move-exception v0

    goto :goto_25

    .line 498
    :catch_46
    move-exception v0

    goto :goto_2d

    :catch_48
    move-exception v1

    goto :goto_3c

    .line 504
    :catch_4a
    move-exception v1

    goto :goto_41

    .line 495
    :catchall_4c
    move-exception v0

    goto :goto_37

    .line 493
    :catch_4e
    move-exception v0

    move-object v0, v1

    goto :goto_28

    :cond_51
    move-object v1, v2

    goto :goto_1b
.end method

.method public getShort(Ljava/lang/String;S)S
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 387
    .line 389
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v1

    .line 390
    if-eqz v1, :cond_1c

    move p2, v0

    .line 393
    :goto_9
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1c

    .line 394
    rsub-int/lit8 v2, v0, 0x1

    mul-int/lit8 v2, v2, 0x8

    .line 395
    aget-byte v3, v1, v0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_12} :catch_1b

    and-int/lit16 v3, v3, 0xff

    shl-int v2, v3, v2

    add-int/2addr v2, p2

    int-to-short p2, v2

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 398
    :catch_1b
    move-exception v0

    .line 400
    :cond_1c
    return p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 457
    .line 459
    const/4 v0, 0x7

    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;)[B

    move-result-object v1

    .line 460
    if-eqz v1, :cond_f

    .line 461
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_10

    move-object p2, v0

    .line 465
    :cond_f
    :goto_f
    return-object p2

    .line 463
    :catch_10
    move-exception v0

    goto :goto_f
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 339
    if-eqz p2, :cond_10

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    .line 340
    new-array v1, v1, [B

    aput-byte v0, v1, v2

    .line 341
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, v1}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0

    :cond_10
    move v0, v2

    .line 339
    goto :goto_5
.end method

.method public putBytes(Ljava/lang/String;[B)Z
    .registers 4

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putDouble(Ljava/lang/String;D)Z
    .registers 6

    .prologue
    .line 313
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/mqunar/storage/FileStorage;->a(J)[B

    move-result-object v0

    .line 314
    const/4 v1, 0x5

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .registers 5

    .prologue
    .line 302
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/storage/FileStorage;->i2b(I)[B

    move-result-object v0

    .line 303
    const/4 v1, 0x4

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .registers 5

    .prologue
    .line 266
    invoke-static {p2}, Lcom/mqunar/storage/FileStorage;->i2b(I)[B

    move-result-object v0

    .line 267
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .registers 6

    .prologue
    .line 291
    invoke-static {p2, p3}, Lcom/mqunar/storage/FileStorage;->a(J)[B

    move-result-object v0

    .line 292
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 350
    .line 351
    if-eqz p2, :cond_21

    .line 355
    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_28
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    .line 356
    :try_start_8
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_5a
    .catchall {:try_start_8 .. :try_end_d} :catchall_53

    .line 357
    :try_start_d
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 358
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 359
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_5d
    .catchall {:try_start_d .. :try_end_16} :catchall_58

    move-result-object v0

    .line 363
    if-eqz v1, :cond_1c

    .line 365
    :try_start_19
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_49

    .line 369
    :cond_1c
    :goto_1c
    if-eqz v2, :cond_21

    .line 371
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_4b

    .line 377
    :cond_21
    :goto_21
    const/16 v1, 0x8

    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    :cond_27
    :goto_27
    return v0

    .line 360
    :catch_28
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    .line 361
    :goto_2b
    const/4 v0, 0x0

    .line 363
    if-eqz v1, :cond_31

    .line 365
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_4d

    .line 369
    :cond_31
    :goto_31
    if-eqz v2, :cond_27

    .line 371
    :try_start_33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_27

    .line 372
    :catch_37
    move-exception v1

    goto :goto_27

    .line 363
    :catchall_39
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_3e
    if-eqz v1, :cond_43

    .line 365
    :try_start_40
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4f

    .line 369
    :cond_43
    :goto_43
    if-eqz v2, :cond_48

    .line 371
    :try_start_45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_51

    .line 373
    :cond_48
    :goto_48
    throw v0

    .line 366
    :catch_49
    move-exception v1

    goto :goto_1c

    .line 372
    :catch_4b
    move-exception v1

    goto :goto_21

    .line 366
    :catch_4d
    move-exception v1

    goto :goto_31

    :catch_4f
    move-exception v1

    goto :goto_43

    .line 372
    :catch_51
    move-exception v1

    goto :goto_48

    .line 363
    :catchall_53
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3e

    :catchall_58
    move-exception v0

    goto :goto_3e

    .line 360
    :catch_5a
    move-exception v1

    move-object v1, v0

    goto :goto_2b

    :catch_5d
    move-exception v0

    goto :goto_2b
.end method

.method public putShort(Ljava/lang/String;S)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 277
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 279
    const/4 v1, 0x0

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 280
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 281
    invoke-direct {p0, v3, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putSmoothBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putSmoothBytes(Ljava/lang/String;[B)Z
    .registers 4

    .prologue
    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public putSmoothDouble(Ljava/lang/String;D)Z
    .registers 5

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/storage/FileStorage;->putDouble(Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public putSmoothFloat(Ljava/lang/String;F)Z
    .registers 4

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putFloat(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putSmoothInt(Ljava/lang/String;I)Z
    .registers 4

    .prologue
    .line 272
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putInt(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putSmoothLong(Ljava/lang/String;J)Z
    .registers 5

    .prologue
    .line 297
    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/storage/FileStorage;->putLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putSmoothSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 4

    .prologue
    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v0

    return v0
.end method

.method public putSmoothShort(Ljava/lang/String;S)Z
    .registers 4

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putShort(Ljava/lang/String;S)Z

    move-result v0

    return v0
.end method

.method public putSmoothString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 334
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/storage/FileStorage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 325
    if-nez p2, :cond_9

    const/4 v0, 0x0

    .line 326
    :goto_3
    const/4 v1, 0x7

    :try_start_4
    invoke-direct {p0, v1, p1, v0}, Lcom/mqunar/storage/FileStorage;->a(ILjava/lang/String;[B)Z

    move-result v0

    return v0

    .line 325
    :cond_9
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_3

    .line 327
    :catch_10
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 514
    :try_start_1
    iget-object v2, p0, Lcom/mqunar/storage/FileStorage;->a:Ljava/io/File;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_1b

    .line 515
    :try_start_4
    iget-object v0, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 516
    if-eqz v0, :cond_11

    .line 517
    iget-object v3, p0, Lcom/mqunar/storage/FileStorage;->b:Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/mqunar/storage/FileStorage;->a(Lorg/json/JSONObject;)V

    .line 519
    :cond_11
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v2

    .line 522
    :goto_15
    return v0

    :cond_16
    move v0, v1

    .line 519
    goto :goto_14

    .line 520
    :catchall_18
    move-exception v0

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 521
    :catch_1b
    move-exception v0

    move v0, v1

    .line 522
    goto :goto_15
.end method
