.class public Lorg/acra/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/File;
    .registers 11
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 74
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    :try_start_16
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_90
    .catchall {:try_start_16 .. :try_end_1b} :catchall_81

    .line 81
    :try_start_1b
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_94
    .catchall {:try_start_1b .. :try_end_25} :catchall_8b

    .line 83
    const/16 v0, 0x400

    :try_start_27
    new-array v0, v0, [B

    .line 85
    :goto_29
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_5b

    .line 86
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_33} :catch_34
    .catchall {:try_start_27 .. :try_end_33} :catchall_8e

    goto :goto_29

    .line 98
    :catch_34
    move-exception v0

    .line 99
    :goto_35
    :try_start_35
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileInputStream error when gzip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_35 .. :try_end_53} :catchall_8e

    .line 102
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 106
    :goto_5a
    return-object v0

    .line 89
    :cond_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 91
    if-eqz p2, :cond_75

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 92
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 93
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "delete gzip origin file"

    invoke-interface {v0, v5, v6}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7a} :catch_34
    .catchall {:try_start_5b .. :try_end_7a} :catchall_8e

    .line 102
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_5a

    .line 102
    :catchall_81
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_84
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 103
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 102
    :catchall_8b
    move-exception v0

    move-object v3, v1

    goto :goto_84

    :catchall_8e
    move-exception v0

    goto :goto_84

    .line 98
    :catch_90
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_35

    :catch_94
    move-exception v0

    move-object v3, v1

    goto :goto_35
.end method

.method public static a(Ljava/io/File;Z)Ljava/io/File;
    .registers 10
    .param p0    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 29
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".gz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    :try_start_18
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_92
    .catchall {:try_start_18 .. :try_end_1d} :catchall_83

    .line 36
    :try_start_1d
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_96
    .catchall {:try_start_1d .. :try_end_27} :catchall_8d

    .line 38
    const/16 v0, 0x400

    :try_start_29
    new-array v0, v0, [B

    .line 40
    :goto_2b
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_5d

    .line 41
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_36
    .catchall {:try_start_29 .. :try_end_35} :catchall_90

    goto :goto_2b

    .line 53
    :catch_36
    move-exception v0

    .line 54
    :goto_37
    :try_start_37
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileInputStream error when gzip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_90

    .line 57
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 58
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 61
    :goto_5c
    return-object v0

    .line 44
    :cond_5d
    :try_start_5d
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 46
    if-eqz p1, :cond_77

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 47
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 48
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v6, "delete gzip origin file"

    invoke-interface {v0, v5, v6}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_7c} :catch_36
    .catchall {:try_start_5d .. :try_end_7c} :catchall_90

    .line 57
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 58
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_5c

    .line 57
    :catchall_83
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_86
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 58
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 57
    :catchall_8d
    move-exception v0

    move-object v3, v1

    goto :goto_86

    :catchall_90
    move-exception v0

    goto :goto_86

    .line 53
    :catch_92
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_37

    :catch_96
    move-exception v0

    move-object v3, v1

    goto :goto_37
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 10
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 118
    .line 123
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_68
    .catchall {:try_start_1 .. :try_end_a} :catchall_59

    .line 124
    :try_start_a
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_6c
    .catchall {:try_start_a .. :try_end_14} :catchall_63

    .line 126
    const/16 v0, 0x400

    :try_start_16
    new-array v0, v0, [B

    .line 128
    :goto_18
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_4a

    .line 129
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23
    .catchall {:try_start_16 .. :try_end_22} :catchall_66

    goto :goto_18

    .line 134
    :catch_23
    move-exception v0

    .line 135
    :goto_24
    :try_start_24
    sget-object v4, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v5, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileInputStream error when gzip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_66

    .line 138
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 139
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 142
    :goto_49
    return-object v0

    .line 132
    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_23
    .catchall {:try_start_4a .. :try_end_52} :catchall_66

    .line 138
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 139
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_49

    .line 138
    :catchall_59
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_5c
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 139
    invoke-static {v3}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 138
    :catchall_63
    move-exception v0

    move-object v3, v1

    goto :goto_5c

    :catchall_66
    move-exception v0

    goto :goto_5c

    .line 134
    :catch_68
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_24

    :catch_6c
    move-exception v0

    move-object v3, v1

    goto :goto_24
.end method
