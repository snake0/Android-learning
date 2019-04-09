.class public Lcom/iflytek/cloud/thirdparty/bu;
.super Ljava/lang/Object;


# direct methods
.method public static declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-class v2, Lcom/iflytek/cloud/thirdparty/bu;

    monitor-enter v2

    :try_start_4
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v1, v4

    new-array v5, v1, [B

    move v1, v0

    :goto_12
    array-length v6, v4

    if-ge v1, v6, :cond_1d

    aget-char v6, v4, v1

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1d
    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    :goto_26
    array-length v4, v1

    if-ge v0, v4, :cond_40

    aget-byte v4, v1, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    if-ge v4, v5, :cond_36

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_36
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_40
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_43} :catch_46
    .catchall {:try_start_4 .. :try_end_43} :catchall_4d

    move-result-object v0

    :goto_44
    monitor-exit v2

    return-object v0

    :catch_46
    move-exception v0

    :try_start_47
    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    const-string v0, ""
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_4d

    goto :goto_44

    :catchall_4d
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a([B)[B
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    return-object p0

    :cond_4
    const/4 v0, 0x0

    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-class v2, Lcom/iflytek/cloud/thirdparty/bu;

    monitor-enter v2

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cut16MD5 start:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bu;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cut16MD5 start:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v3, :cond_41

    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_bf

    move-result v1

    if-nez v1, :cond_43

    :cond_41
    :goto_41
    monitor-exit v2

    return-object v0

    :cond_43
    :try_start_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cut16MD5 md5 size is:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_5e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_a2

    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_89

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cut16MD5 result i:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_89
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cut16MD5 result i = :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_a2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cut16MD5 result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_bd
    .catchall {:try_start_43 .. :try_end_bd} :catchall_bf

    move-result-object v0

    goto :goto_41

    :catchall_bf
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static b([B)[B
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_9
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_3f
    .catchall {:try_start_9 .. :try_end_e} :catchall_54

    :try_start_e
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v1, v4, :cond_1d

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    :cond_1d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_22
    array-length v4, v0

    if-ge v1, v4, :cond_2f

    aget-byte v4, v0, v1

    xor-int/lit8 v4, v4, 0x5

    int-to-byte v4, v4

    aput-byte v4, v0, v1
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2c} :catch_69
    .catchall {:try_start_e .. :try_end_2c} :catchall_67

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_34
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3a

    goto :goto_3

    :catch_3a
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3f
    move-exception v1

    move-object v2, v0

    :goto_41
    :try_start_41
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_67

    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_49
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4e} :catch_4f

    goto :goto_3

    :catch_4f
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_54
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_57
    if-eqz v2, :cond_5c

    :try_start_59
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_5c
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    throw v0

    :catch_62
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_61

    :catchall_67
    move-exception v0

    goto :goto_57

    :catch_69
    move-exception v1

    goto :goto_41
.end method

.method public static c([B)[B
    .registers 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_6

    move-object v0, v1

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_13

    aget-byte v2, p0, v0

    xor-int/lit8 v2, v2, 0x5

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_1d
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_85
    .catchall {:try_start_1d .. :try_end_22} :catchall_6c

    const/16 v0, 0x400

    :try_start_24
    new-array v0, v0, [B

    :goto_26
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_50

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_33} :catch_34
    .catchall {:try_start_24 .. :try_end_33} :catchall_83

    goto :goto_26

    :catch_34
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    :goto_38
    :try_start_38
    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_83

    if-eqz v2, :cond_40

    :try_start_3d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_40
    if-eqz v3, :cond_45

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_45
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_4a} :catch_4b

    goto :goto_5

    :catch_4b
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_50
    :try_start_50
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_34
    .catchall {:try_start_50 .. :try_end_53} :catchall_83

    move-result-object v0

    :try_start_54
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_8b
    .catchall {:try_start_54 .. :try_end_57} :catchall_83

    if-eqz v2, :cond_5c

    :try_start_59
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_5c
    if-eqz v3, :cond_61

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_61
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_66} :catch_67

    goto :goto_5

    :catch_67
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_6c
    move-exception v0

    move-object v2, v1

    :goto_6e
    if-eqz v2, :cond_73

    :try_start_70
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_73
    if-eqz v3, :cond_78

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    :cond_78
    if-eqz v4, :cond_7d

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    throw v0

    :catch_7e
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_7d

    :catchall_83
    move-exception v0

    goto :goto_6e

    :catch_85
    move-exception v0

    move-object v2, v1

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_38

    :catch_8b
    move-exception v1

    goto :goto_38
.end method
