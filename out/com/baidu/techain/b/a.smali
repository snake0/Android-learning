.class public final Lcom/baidu/techain/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/io/File;[B)I
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x2000

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 107
    .line 109
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_c

    .line 158
    :goto_b
    return v1

    .line 115
    :cond_c
    :try_start_c
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_8a
    .catchall {:try_start_c .. :try_end_11} :catchall_6a

    .line 116
    :try_start_11
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_8d
    .catchall {:try_start_11 .. :try_end_16} :catchall_80

    .line 118
    const/16 v3, 0x2000

    :try_start_18
    new-array v5, v3, [B

    .line 120
    :goto_1a
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-eq v6, v1, :cond_5e

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 123
    if-ge v6, v9, :cond_5c

    .line 124
    new-array v3, v6, [B

    .line 125
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :goto_34
    const/4 v6, 0x0

    invoke-static {p2, v3, v6}, Lcom/baidu/techain/b/a;->a([B[BZ)[B

    move-result-object v3

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 133
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_48} :catch_49
    .catchall {:try_start_18 .. :try_end_48} :catchall_83

    goto :goto_1a

    .line 139
    :catch_49
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    :goto_4c
    :try_start_4c
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_85

    .line 142
    if-eqz v3, :cond_54

    .line 143
    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_7a

    .line 149
    :cond_54
    :goto_54
    if-eqz v0, :cond_59

    .line 150
    :try_start_56
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_59} :catch_67

    :cond_59
    move v0, v1

    :goto_5a
    move v1, v0

    .line 158
    goto :goto_b

    :cond_5c
    move-object v3, v5

    .line 127
    goto :goto_34

    .line 143
    :cond_5e
    :try_start_5e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_78

    .line 150
    :goto_61
    :try_start_61
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_5a

    .line 156
    :catch_65
    move-exception v1

    goto :goto_5a

    :catch_67
    move-exception v0

    move v0, v1

    goto :goto_5a

    .line 141
    :catchall_6a
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 142
    :goto_6d
    if-eqz v4, :cond_72

    .line 143
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_72} :catch_7c

    .line 149
    :cond_72
    :goto_72
    if-eqz v2, :cond_77

    .line 150
    :try_start_74
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_77} :catch_7e

    .line 154
    :cond_77
    :goto_77
    throw v0

    :catch_78
    move-exception v1

    goto :goto_61

    :catch_7a
    move-exception v2

    goto :goto_54

    :catch_7c
    move-exception v1

    goto :goto_72

    :catch_7e
    move-exception v1

    goto :goto_77

    .line 141
    :catchall_80
    move-exception v0

    move-object v2, v3

    goto :goto_6d

    :catchall_83
    move-exception v0

    goto :goto_6d

    :catchall_85
    move-exception v1

    move-object v2, v0

    move-object v4, v3

    move-object v0, v1

    goto :goto_6d

    .line 139
    :catch_8a
    move-exception v0

    move-object v0, v3

    goto :goto_4c

    :catch_8d
    move-exception v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_4c
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[B)[B
    .registers 7

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 63
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 64
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 65
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_23

    move-result-object v0

    .line 69
    :goto_22
    return-object v0

    .line 68
    :catch_23
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 69
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public static a([B[B)[B
    .registers 8

    .prologue
    const/16 v5, 0x10

    const/4 v0, 0x0

    .line 21
    :try_start_3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 22
    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 23
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 24
    :goto_14
    if-ge v0, v5, :cond_1c

    .line 25
    const/4 v4, 0x0

    aput-byte v4, v3, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 27
    :cond_1c
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 28
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 29
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 30
    invoke-static {p1}, Lcom/baidu/techain/b/o;->c([B)[B

    move-result-object v2

    .line 31
    array-length v0, v1

    array-length v3, v2

    add-int/2addr v0, v3

    new-array v0, v0, [B

    .line 32
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/4 v3, 0x0

    array-length v1, v1

    array-length v4, v2

    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3e} :catch_3f

    .line 37
    :goto_3e
    return-object v0

    .line 36
    :catch_3f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 37
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public static a([B[BZ)[B
    .registers 9

    .prologue
    const/16 v5, 0x10

    const/4 v0, 0x0

    .line 76
    :try_start_3
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, p0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    const-string v2, "AES/CBC/PKCS7Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 78
    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 79
    :goto_14
    if-ge v0, v5, :cond_1c

    .line 80
    const/4 v4, 0x0

    aput-byte v4, v3, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 82
    :cond_1c
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 83
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 86
    if-eqz p2, :cond_35

    .line 87
    array-length v0, p1

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    .line 88
    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, p1

    add-int/lit8 v4, v4, -0x10

    invoke-static {p1, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 92
    :cond_35
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_38} :catch_3a

    move-result-object v0

    .line 96
    :goto_39
    return-object v0

    .line 95
    :catch_3a
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 96
    const/4 v0, 0x0

    goto :goto_39
.end method
