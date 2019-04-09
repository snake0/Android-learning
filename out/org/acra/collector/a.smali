.class final Lorg/acra/collector/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)Z
    .registers 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    new-instance v4, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/qunar/cloudTest.txt"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 30
    :try_start_30
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3a} :catch_9f
    .catchall {:try_start_30 .. :try_end_3a} :catchall_c3

    .line 31
    :try_start_3a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 32
    array-length v4, v3

    if-ne v4, v7, :cond_9a

    .line 33
    const/4 v4, 0x1

    aget-object v4, v3, v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 34
    const/4 v5, 0x0

    aget-object v3, v3, v5

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    array-length v5, v3

    if-ne v5, v7, :cond_9a

    const/4 v5, 0x0

    aget-object v5, v3, v5

    if-eqz v5, :cond_9a

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "isCloudTest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9a

    array-length v5, v4

    if-ne v5, v7, :cond_9a

    const-string v5, "testPackage"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 37
    const/4 v5, 0x1

    aget-object v4, v4, v5

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 40
    const/4 v5, 0x1

    aget-object v3, v3, v5

    .line 42
    if-eqz v4, :cond_9a

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_93} :catch_d5
    .catchall {:try_start_3a .. :try_end_93} :catchall_d3

    move-result v3

    if-eqz v3, :cond_9a

    .line 50
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    .line 56
    :goto_99
    return v0

    .line 50
    :cond_9a
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    :goto_9d
    move v0, v1

    .line 56
    goto :goto_99

    .line 47
    :catch_9f
    move-exception v0

    move-object v2, v3

    .line 48
    :goto_a1
    :try_start_a1
    sget-object v3, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v4, Lorg/acra/ACRA;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get cloudTestFile data error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lorg/acra/c/a;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a1 .. :try_end_bf} :catchall_d3

    .line 50
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    goto :goto_9d

    :catchall_c3
    move-exception v0

    move-object v2, v3

    :goto_c5
    invoke-static {v2}, Lorg/acra/util/g;->a(Ljava/io/Closeable;)V

    throw v0

    .line 53
    :cond_c9
    sget-object v0, Lorg/acra/ACRA;->f:Lorg/acra/c/a;

    sget-object v2, Lorg/acra/ACRA;->e:Ljava/lang/String;

    const-string v3, "can not find cloudTestFile"

    invoke-interface {v0, v2, v3}, Lorg/acra/c/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 50
    :catchall_d3
    move-exception v0

    goto :goto_c5

    .line 47
    :catch_d5
    move-exception v0

    goto :goto_a1
.end method
