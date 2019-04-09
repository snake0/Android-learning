.class public Lcom/mqunar/hy/res/utils/AssetUtils;
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

.method public static getAssetFileToStr(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 17
    const/4 v3, 0x0

    .line 18
    const-string v1, ""

    .line 20
    :try_start_3
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_13} :catch_35
    .catchall {:try_start_3 .. :try_end_13} :catchall_4a

    .line 22
    :goto_13
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 25
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2e} :catch_58
    .catchall {:try_start_13 .. :try_end_2e} :catchall_56

    move-result-object v0

    .line 29
    if-eqz v2, :cond_34

    .line 31
    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_52

    .line 36
    :cond_34
    :goto_34
    return-object v0

    .line 26
    :catch_35
    move-exception v0

    move-object v2, v3

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 27
    :goto_3a
    :try_start_3a
    const-string v3, "\u6253\u5f00asset\u51fa\u9519"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_56

    .line 29
    if-eqz v2, :cond_34

    .line 31
    :try_start_44
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_34

    .line 32
    :catch_48
    move-exception v1

    goto :goto_34

    .line 29
    :catchall_4a
    move-exception v0

    move-object v2, v3

    :goto_4c
    if-eqz v2, :cond_51

    .line 31
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_54

    .line 33
    :cond_51
    :goto_51
    throw v0

    .line 32
    :catch_52
    move-exception v1

    goto :goto_34

    :catch_54
    move-exception v1

    goto :goto_51

    .line 29
    :catchall_56
    move-exception v0

    goto :goto_4c

    .line 26
    :catch_58
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_3a
.end method
