.class public Lcom/mqunar/necro/agent/util/NecroFileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static file2Str(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 47
    .line 50
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1f
    .catchall {:try_start_1 .. :try_end_b} :catchall_26

    .line 53
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    .line 54
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 55
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_2e
    .catchall {:try_start_b .. :try_end_1b} :catchall_2c

    .line 59
    invoke-static {v2}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 61
    :goto_1e
    return-object v0

    .line 56
    :catch_1f
    move-exception v0

    move-object v0, v1

    .line 59
    :goto_21
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->safeClose(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_1e

    :catchall_26
    move-exception v0

    move-object v2, v1

    :goto_28
    invoke-static {v2}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_2c
    move-exception v0

    goto :goto_28

    .line 56
    :catch_2e
    move-exception v0

    move-object v0, v2

    goto :goto_21
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 69
    if-nez p0, :cond_3

    .line 75
    :goto_2
    return-void

    .line 72
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 73
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static str2File(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    .line 30
    :try_start_b
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_23
    .catchall {:try_start_b .. :try_end_e} :catchall_1e

    .line 34
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->safeClose(Ljava/io/Closeable;)V

    .line 36
    const/4 v0, 0x1

    :goto_12
    return v0

    .line 31
    :catch_13
    move-exception v0

    .line 32
    :goto_14
    const/4 v0, 0x0

    .line 34
    invoke-static {v1}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_12

    :catchall_19
    move-exception v0

    :goto_1a
    invoke-static {v1}, Lcom/mqunar/necro/agent/util/NecroFileUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1a

    .line 31
    :catch_23
    move-exception v1

    move-object v1, v0

    goto :goto_14
.end method
