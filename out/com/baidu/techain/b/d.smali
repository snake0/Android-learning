.class public final Lcom/baidu/techain/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    .registers 4

    .prologue
    .line 39
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 40
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 41
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 43
    :try_start_13
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_1b

    .line 47
    :goto_16
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0

    :catch_1b
    move-exception v1

    goto :goto_16
.end method

.method public static a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    :try_start_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 108
    :goto_9
    return-object v0

    .line 57
    :cond_a
    const/16 v0, 0x2000

    new-array v6, v0, [B

    .line 59
    new-instance v7, Ljava/util/jar/JarFile;

    invoke-direct {v7, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    move-object v4, v1

    .line 62
    :cond_18
    :goto_18
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 63
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 64
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_18

    .line 67
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 68
    const-string v5, "META-INF/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 72
    invoke-static {v7, v0, v6}, Lcom/baidu/techain/b/d;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 75
    if-nez v5, :cond_41

    .line 76
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    move-object v0, v1

    .line 77
    goto :goto_9

    .line 78
    :cond_41
    if-nez v4, :cond_45

    move-object v4, v5

    .line 79
    goto :goto_18

    :cond_45
    move v3, v2

    .line 81
    :goto_46
    array-length v0, v4

    if-ge v3, v0, :cond_18

    move v0, v2

    .line 83
    :goto_4a
    array-length v9, v5

    if-ge v0, v9, :cond_83

    .line 84
    aget-object v9, v4, v3

    if-eqz v9, :cond_67

    aget-object v9, v4, v3

    aget-object v10, v5, v0

    .line 85
    invoke-virtual {v9, v10}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    .line 86
    const/4 v0, 0x1

    .line 90
    :goto_5c
    if-eqz v0, :cond_62

    array-length v0, v4

    array-length v9, v5

    if-eq v0, v9, :cond_6a

    .line 91
    :cond_62
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    move-object v0, v1

    .line 92
    goto :goto_9

    .line 83
    :cond_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 81
    :cond_6a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_46

    .line 98
    :cond_6e
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 100
    if-eqz v4, :cond_7e

    array-length v0, v4

    if-lez v0, :cond_7e

    .line 101
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7c} :catch_80

    move-result-object v0

    goto :goto_9

    :cond_7e
    move-object v0, v1

    .line 104
    goto :goto_9

    .line 108
    :catch_80
    move-exception v0

    move-object v0, v1

    goto :goto_9

    :cond_83
    move v0, v2

    goto :goto_5c
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 23
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    :cond_a
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 26
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 27
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1c} :catch_23
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1c} :catch_28

    move-result-object v0

    .line 35
    :cond_1d
    :goto_1d
    return-object v0

    .line 29
    :catch_1e
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1d

    .line 31
    :catch_23
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1d

    .line 33
    :catch_28
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1d
.end method
