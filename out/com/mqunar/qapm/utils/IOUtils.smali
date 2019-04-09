.class public Lcom/mqunar/qapm/utils/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static file2Str(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 64
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_1f
    .catchall {:try_start_1 .. :try_end_b} :catchall_26

    .line 67
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v3, v0, [B

    .line 68
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 69
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1b} :catch_2e
    .catchall {:try_start_b .. :try_end_1b} :catchall_2c

    .line 73
    invoke-static {v2}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 75
    :goto_1e
    return-object v0

    .line 70
    :catch_1f
    move-exception v0

    move-object v0, v1

    .line 73
    :goto_21
    invoke-static {v0}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_1e

    :catchall_26
    move-exception v0

    move-object v2, v1

    :goto_28
    invoke-static {v2}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_2c
    move-exception v0

    goto :goto_28

    .line 70
    :catch_2e
    move-exception v0

    move-object v0, v2

    goto :goto_21
.end method

.method public static getUploadDir(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 16
    sget-object v0, Lcom/mqunar/qapm/utils/IOUtils;->a:Ljava/lang/String;

    if-nez v0, :cond_42

    .line 17
    if-nez p0, :cond_8

    .line 18
    const/4 v0, 0x0

    .line 29
    :goto_7
    return-object v0

    .line 21
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "qapm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/utils/IOUtils;->a:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2b} :catch_45

    .line 25
    :goto_2b
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/qapm/utils/IOUtils;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_42

    .line 26
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mqunar/qapm/utils/IOUtils;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 29
    :cond_42
    sget-object v0, Lcom/mqunar/qapm/utils/IOUtils;->a:Ljava/lang/String;

    goto :goto_7

    .line 22
    :catch_45
    move-exception v0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/qapm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/utils/IOUtils;->a:Ljava/lang/String;

    goto :goto_2b
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 82
    if-nez p0, :cond_3

    .line 86
    :goto_2
    return-void

    .line 84
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    .line 85
    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method public static str2File(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 42
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_19

    .line 45
    :try_start_b
    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_23
    .catchall {:try_start_b .. :try_end_e} :catchall_1e

    .line 49
    invoke-static {v0}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    .line 51
    const/4 v0, 0x1

    :goto_12
    return v0

    .line 46
    :catch_13
    move-exception v0

    .line 47
    :goto_14
    const/4 v0, 0x0

    .line 49
    invoke-static {v1}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    goto :goto_12

    :catchall_19
    move-exception v0

    :goto_1a
    invoke-static {v1}, Lcom/mqunar/qapm/utils/IOUtils;->safeClose(Ljava/io/Closeable;)V

    throw v0

    :catchall_1e
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1a

    .line 46
    :catch_23
    move-exception v1

    move-object v1, v0

    goto :goto_14
.end method
