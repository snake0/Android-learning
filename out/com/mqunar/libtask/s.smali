.class final Lcom/mqunar/libtask/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected static a(Lcom/mqunar/libtask/ByteArray;Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v2

    .line 124
    if-eqz v2, :cond_c7

    .line 125
    invoke-virtual {p0}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v3

    move v2, v0

    .line 126
    :goto_e
    if-ge v2, v3, :cond_c7

    .line 128
    invoke-virtual {p0}, Lcom/mqunar/libtask/ByteArray;->getIntOfByte()I

    move-result v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/ByteArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    invoke-virtual {p0}, Lcom/mqunar/libtask/ByteArray;->getIntOfByte()I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v5

    .line 132
    if-gt v0, v11, :cond_cc

    if-lez v5, :cond_cc

    .line 133
    invoke-virtual {p0, v5}, Lcom/mqunar/libtask/ByteArray;->getByteArray(I)[B

    move-result-object v0

    .line 136
    :goto_28
    if-eqz v0, :cond_c2

    if-eqz v4, :cond_c2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c2

    .line 138
    :try_start_32
    const-string v5, "com.mqunar.imagecache.ImageLoader"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 139
    const-string v6, "getInstance"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 140
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 141
    const-string v7, "putDataByKey"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, [B

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 142
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_70} :catch_ca

    .line 146
    :goto_70
    :try_start_70
    const-string v5, "com.squareup.picasso.Picasso"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 147
    const-string v6, "with"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 148
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 149
    const-string v7, "loadByKey"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 150
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "putDataToKey"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, [B

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 152
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_c2} :catch_c8

    .line 126
    :cond_c2
    :goto_c2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_e

    .line 158
    :cond_c7
    return-void

    .line 153
    :catch_c8
    move-exception v0

    goto :goto_c2

    .line 143
    :catch_ca
    move-exception v5

    goto :goto_70

    :cond_cc
    move-object v0, v1

    goto/16 :goto_28
.end method

.method public static a(Landroid/content/Context;[BLjava/lang/String;Z)[Ljava/io/Serializable;
    .registers 12

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 54
    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_c

    .line 119
    :cond_b
    :goto_b
    return-object v0

    .line 57
    :cond_c
    new-instance v1, Lcom/mqunar/libtask/ByteArray;

    invoke-direct {v1, p1}, Lcom/mqunar/libtask/ByteArray;-><init>([B)V

    .line 58
    invoke-virtual {v1, v3}, Lcom/mqunar/libtask/ByteArray;->setCursor(I)V

    .line 60
    invoke-virtual {v1, v3}, Lcom/mqunar/libtask/ByteArray;->get(I)B

    move-result v2

    .line 61
    if-nez v2, :cond_b

    .line 64
    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->inc()V

    .line 65
    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->valid()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 68
    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->getByte()B

    move-result v2

    .line 69
    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v3, v3, 0x4

    .line 70
    and-int/lit8 v4, v2, 0xf

    .line 73
    if-eqz v4, :cond_66

    .line 74
    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    .line 75
    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v2

    .line 81
    :goto_36
    if-nez v3, :cond_6b

    .line 82
    if-eqz v4, :cond_b8

    .line 83
    new-instance v0, Lcom/mqunar/libtask/ByteArray;

    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->rawBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->getCursor()I

    move-result v1

    invoke-static {v3, v1, v2}, Lcom/mqunar/libtask/t;->a([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/libtask/ByteArray;-><init>([B)V

    .line 85
    :goto_4b
    invoke-virtual {v0}, Lcom/mqunar/libtask/ByteArray;->getIntOfByte()I

    move-result v1

    .line 86
    if-ne v1, v5, :cond_54

    .line 87
    invoke-static {v0, p0}, Lcom/mqunar/libtask/s;->a(Lcom/mqunar/libtask/ByteArray;Landroid/content/Context;)V

    .line 89
    :cond_54
    invoke-virtual {v0}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v2

    .line 91
    new-array v1, v7, [Ljava/io/Serializable;

    const-string v3, "json"

    aput-object v3, v1, v6

    invoke-virtual {v0, v2}, Lcom/mqunar/libtask/ByteArray;->copyBytes(I)[B

    move-result-object v0

    aput-object v0, v1, v5

    move-object v0, v1

    goto :goto_b

    .line 77
    :cond_66
    invoke-virtual {v1}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v2

    goto :goto_36

    .line 92
    :cond_6b
    if-ne v3, v5, :cond_b

    .line 94
    if-eqz p3, :cond_99

    .line 95
    invoke-virtual {v1, v2}, Lcom/mqunar/libtask/ByteArray;->copyBytes(I)[B

    move-result-object v0

    move-object v1, v0

    .line 99
    :goto_74
    if-nez v4, :cond_a3

    .line 100
    new-instance v0, Lcom/mqunar/libtask/ByteArray;

    invoke-direct {v0, v1}, Lcom/mqunar/libtask/ByteArray;-><init>([B)V

    .line 104
    :goto_7b
    invoke-virtual {v0}, Lcom/mqunar/libtask/ByteArray;->getIntOfByte()I

    move-result v1

    .line 105
    if-ne v1, v5, :cond_84

    .line 106
    invoke-static {v0, p0}, Lcom/mqunar/libtask/s;->a(Lcom/mqunar/libtask/ByteArray;Landroid/content/Context;)V

    .line 108
    :cond_84
    invoke-virtual {v0}, Lcom/mqunar/libtask/ByteArray;->getInt()I

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/ByteArray;->copyBytes(I)[B

    move-result-object v1

    .line 110
    const/4 v0, 0x3

    if-ne v4, v0, :cond_ae

    .line 112
    new-array v0, v7, [Ljava/io/Serializable;

    const-string v2, "proto"

    aput-object v2, v0, v6

    aput-object v1, v0, v5

    goto/16 :goto_b

    .line 97
    :cond_99
    invoke-virtual {v1, v2}, Lcom/mqunar/libtask/ByteArray;->copyBytes(I)[B

    move-result-object v0

    invoke-static {v0, p2}, Lqunar/lego/utils/Goblin;->dn1([BLjava/lang/String;)[B

    move-result-object v0

    move-object v1, v0

    goto :goto_74

    .line 102
    :cond_a3
    new-instance v0, Lcom/mqunar/libtask/ByteArray;

    array-length v2, v1

    invoke-static {v1, v6, v2}, Lcom/mqunar/libtask/t;->a([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/libtask/ByteArray;-><init>([B)V

    goto :goto_7b

    .line 115
    :cond_ae
    new-array v0, v7, [Ljava/io/Serializable;

    const-string v2, "json"

    aput-object v2, v0, v6

    aput-object v1, v0, v5

    goto/16 :goto_b

    :cond_b8
    move-object v0, v1

    goto :goto_4b
.end method
