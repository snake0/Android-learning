.class public final Lcom/baidu/techain/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 427
    invoke-static {}, Lcom/baidu/techain/b/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 431
    :try_start_a
    invoke-static {}, Lcom/baidu/techain/b/g;->c()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_18} :catch_1a

    move-result-object v0

    .line 438
    :cond_19
    :goto_19
    return-object v0

    .line 434
    :catch_1a
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 37
    :try_start_0
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1284
    iget-object v0, v1, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v2, "xyus"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 54
    :goto_15
    return-object v0

    .line 42
    :cond_16
    invoke-static {p0}, Lcom/baidu/techain/b/g;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 45
    const-string v0, "0"

    .line 47
    :cond_26
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    iget-object v2, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v3, "xyus"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1289
    iget-object v1, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_15

    .line 53
    :catch_57
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 54
    const-string v0, ""

    goto :goto_15
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 504
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 505
    const/16 v0, 0x1000

    new-array v2, v0, [C

    .line 506
    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 507
    :goto_d
    if-ltz v0, :cond_18

    .line 508
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    goto :goto_d

    .line 511
    :cond_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 515
    :goto_1c
    return-object v0

    .line 513
    :catch_1d
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 515
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 261
    const-string v0, ""

    .line 286
    :cond_8
    :goto_8
    return-object v0

    .line 263
    :cond_9
    const-string v0, ""

    .line 264
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "baidu/.cuid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    :try_start_16
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 267
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    :goto_25
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 271
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_33} :catch_34

    goto :goto_25

    .line 284
    :catch_34
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_8

    .line 274
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 275
    new-instance v1, Ljava/lang/String;

    const-string v3, "30212102dicudiab"

    const-string v4, "30212102dicudiab"

    .line 277
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    .line 276
    invoke-static {v3, v4, v2}, Lcom/baidu/techain/b/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 278
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_8

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 280
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 281
    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6e} :catch_34

    goto :goto_8
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    .line 204
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 206
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 207
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const-string v2, ""

    .line 2215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2216
    array-length v4, v1

    const/4 v0, 0x0

    :goto_19
    if-ge v0, v4, :cond_3d

    aget-byte v5, v1, v0

    .line 2217
    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2219
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 2221
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 2222
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2224
    :cond_33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2216
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 2226
    :cond_3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_40
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_40} :catch_42

    move-result-object v0

    .line 211
    :goto_41
    return-object v0

    .line 209
    :catch_42
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 211
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private static b()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 442
    const-string v4, ""

    .line 443
    const-string v0, ""

    .line 447
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "cat /sys/class/net/wlan0/address"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 448
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_18} :catch_3b
    .catchall {:try_start_5 .. :try_end_18} :catchall_55

    .line 449
    :try_start_18
    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1d} :catch_75
    .catchall {:try_start_18 .. :try_end_1d} :catchall_6c

    move-object v2, v4

    .line 451
    :cond_1e
    if-eqz v2, :cond_2a

    .line 452
    :try_start_20
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 453
    if-eqz v2, :cond_1e

    .line 454
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_29} :catch_79
    .catchall {:try_start_20 .. :try_end_29} :catchall_6e

    move-result-object v0

    .line 463
    :cond_2a
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2d} :catch_31

    .line 470
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_36

    .line 476
    :cond_30
    :goto_30
    return-object v0

    .line 465
    :catch_31
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2d

    .line 472
    :catch_36
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_30

    .line 459
    :catch_3b
    move-exception v1

    move-object v1, v2

    :goto_3d
    :try_start_3d
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_71

    .line 461
    if-eqz v2, :cond_45

    .line 463
    :try_start_42
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_45} :catch_50

    .line 468
    :cond_45
    :goto_45
    if-eqz v1, :cond_30

    .line 470
    :try_start_47
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_30

    .line 472
    :catch_4b
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_30

    .line 465
    :catch_50
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_45

    .line 461
    :catchall_55
    move-exception v0

    move-object v3, v2

    :goto_57
    if-eqz v3, :cond_5c

    .line 463
    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_5c} :catch_62

    .line 468
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_61

    .line 470
    :try_start_5e
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_67

    .line 473
    :cond_61
    :goto_61
    throw v0

    .line 465
    :catch_62
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_5c

    .line 472
    :catch_67
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_61

    .line 461
    :catchall_6c
    move-exception v0

    goto :goto_57

    :catchall_6e
    move-exception v0

    move-object v2, v1

    goto :goto_57

    :catchall_71
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_57

    .line 459
    :catch_75
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_3d

    :catch_79
    move-exception v2

    move-object v2, v3

    goto :goto_3d
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Lcom/baidu/techain/e;

    invoke-direct {v1, p0}, Lcom/baidu/techain/e;-><init>(Landroid/content/Context;)V

    .line 1600
    iget-object v0, v1, Lcom/baidu/techain/e;->b:Landroid/content/SharedPreferences;

    const-string v2, "sgud"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 91
    :goto_15
    return-object v0

    .line 67
    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-le v0, v2, :cond_1f

    .line 68
    const-string v0, ""

    goto :goto_15

    .line 71
    :cond_1f
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {p0}, Lcom/baidu/techain/b/g;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 74
    const-string v0, ""

    goto :goto_15

    .line 76
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 78
    const/4 v0, 0x0

    :goto_52
    array-length v3, v2

    if-ge v0, v3, :cond_5f

    .line 79
    aget-byte v3, v2, v0

    xor-int/lit16 v3, v3, 0xf6

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 81
    :cond_5f
    invoke-static {v2}, Lcom/baidu/techain/b/o;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 83
    const-string v0, ""

    goto :goto_15

    .line 1604
    :cond_6c
    iget-object v2, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    const-string v3, "sgud"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1605
    iget-object v1, v1, Lcom/baidu/techain/e;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_78} :catch_79

    goto :goto_15

    .line 89
    :catch_79
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 91
    const-string v0, ""

    goto :goto_15
.end method

.method private static c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 480
    const/4 v2, 0x0

    .line 481
    const-string v0, ""

    .line 482
    const-string v3, "/sys/class/net/eth0/address"

    .line 484
    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_a} :catch_17
    .catchall {:try_start_5 .. :try_end_a} :catchall_27

    .line 486
    :try_start_a
    invoke-static {v1}, Lcom/baidu/techain/b/g;->a(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_36
    .catchall {:try_start_a .. :try_end_d} :catchall_34

    move-result-object v0

    .line 493
    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_12

    .line 499
    :cond_11
    :goto_11
    return-object v0

    .line 495
    :catch_12
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_11

    .line 489
    :catch_17
    move-exception v1

    move-object v1, v2

    :goto_19
    :try_start_19
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_34

    .line 491
    if-eqz v1, :cond_11

    .line 493
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_11

    .line 495
    :catch_22
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_11

    .line 491
    :catchall_27
    move-exception v0

    move-object v1, v2

    :goto_29
    if-eqz v1, :cond_2e

    .line 493
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 496
    :cond_2e
    :goto_2e
    throw v0

    .line 495
    :catch_2f
    move-exception v1

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_2e

    .line 491
    :catchall_34
    move-exception v0

    goto :goto_29

    .line 489
    :catch_36
    move-exception v2

    goto :goto_19
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "5|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/baidu/techain/b/p;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    .line 100
    :goto_13
    return-object v0

    .line 99
    :catch_14
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 100
    const-string v0, ""

    goto :goto_13
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 130
    :try_start_0
    const-string v0, ""

    .line 131
    invoke-static {p0}, Lcom/baidu/techain/b/g;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_5a

    move-result-object v2

    .line 133
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "bd_setting_i"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 135
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_19} :catch_54

    move-result-object v0

    :cond_1a
    move-object v1, v0

    .line 142
    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "com.baidu.deviceid"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "com.baidu"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/g;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 148
    :goto_4f
    if-nez v1, :cond_5e

    .line 149
    const-string v0, ""

    .line 159
    :goto_53
    return-object v0

    .line 138
    :catch_54
    move-exception v1

    move-object v1, v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_59} :catch_5a

    goto :goto_1b

    .line 159
    :catch_5a
    move-exception v0

    const-string v0, ""

    goto :goto_53

    .line 151
    :cond_5e
    :try_start_5e
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 153
    const-string v0, "0"

    .line 155
    :cond_6a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_8d} :catch_5a

    move-result-object v0

    goto :goto_53

    :cond_8f
    move-object v1, v0

    goto :goto_4f
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    invoke-static {p0}, Lcom/baidu/techain/b/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 180
    const-string v0, ""

    .line 190
    :cond_8
    :goto_8
    return-object v0

    .line 182
    :cond_9
    const-string v1, ""

    .line 183
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 184
    if-eqz v0, :cond_22

    .line 185
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 187
    const-string v0, ""

    goto :goto_8

    :cond_22
    move-object v0, v1

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 197
    const-string v0, ""

    .line 199
    :cond_12
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bd_setting_i"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 235
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_4f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_56

    move-result-object v0

    .line 240
    :cond_14
    :try_start_14
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 242
    const-string v1, "0"

    .line 244
    :cond_20
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v0}, Lcom/baidu/techain/b/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_4e
    return-object v0

    .line 238
    :catch_4f
    move-exception v0

    const-string v0, ""
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_52} :catch_56

    goto :goto_4e

    .line 250
    :cond_53
    const-string v0, ""

    goto :goto_4e

    .line 254
    :catch_56
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 256
    const-string v0, ""

    goto :goto_4e
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 315
    :try_start_0
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 316
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 320
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_36

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_35
    return-object v0

    .line 323
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_52

    move-result-object v0

    goto :goto_35

    .line 327
    :catch_52
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 329
    const-string v0, ""

    goto :goto_35
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 351
    if-eqz v0, :cond_13

    .line 352
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 357
    :goto_e
    return-object v0

    .line 355
    :catch_f
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    .line 357
    :cond_13
    const-string v0, ""

    goto :goto_e
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 361
    const-string v1, ""

    .line 364
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 365
    if-eqz v0, :cond_21

    .line 366
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_19

    move-result-object v0

    .line 367
    :try_start_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 368
    const-string v0, ""
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_1f

    .line 376
    :cond_18
    :goto_18
    return-object v0

    .line 373
    :catch_19
    move-exception v0

    move-object v0, v1

    :goto_1b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_18

    :catch_1f
    move-exception v1

    goto :goto_1b

    :cond_21
    move-object v0, v1

    goto :goto_18
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 380
    const-string v1, ""

    .line 382
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 383
    if-eqz v0, :cond_21

    .line 384
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_19

    move-result-object v0

    .line 385
    :try_start_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 386
    const-string v0, ""
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_1f

    .line 392
    :cond_18
    :goto_18
    return-object v0

    .line 390
    :catch_19
    move-exception v0

    move-object v0, v1

    :goto_1b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_18

    :catch_1f
    move-exception v1

    goto :goto_1b

    :cond_21
    move-object v0, v1

    goto :goto_18
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 396
    const-string v1, ""

    .line 398
    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 399
    if-eqz v0, :cond_21

    .line 400
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_f} :catch_19

    move-result-object v0

    .line 401
    :try_start_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 402
    const-string v0, ""
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_1f

    .line 408
    :cond_18
    :goto_18
    return-object v0

    .line 406
    :catch_19
    move-exception v0

    move-object v0, v1

    :goto_1b
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_18

    :catch_1f
    move-exception v1

    goto :goto_1b

    :cond_21
    move-object v0, v1

    goto :goto_18
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 412
    const-string v1, ""

    .line 414
    :try_start_2
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 415
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_1b

    move-result-object v0

    .line 416
    :try_start_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 417
    const-string v0, ""
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_1a} :catch_21

    .line 422
    :cond_1a
    :goto_1a
    return-object v0

    .line 420
    :catch_1b
    move-exception v0

    move-object v0, v1

    :goto_1d
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_1a

    :catch_21
    move-exception v1

    goto :goto_1d
.end method

.method private static n(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 164
    const-string v1, ""

    .line 165
    const-string v0, ""

    .line 167
    :try_start_4
    invoke-static {p0}, Lcom/baidu/techain/b/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-static {p0}, Lcom/baidu/techain/b/g;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_32

    move-result-object v0

    .line 173
    :goto_c
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/techain/b/g;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 175
    return-object v0

    .line 170
    :catch_32
    move-exception v2

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    goto :goto_c
.end method
