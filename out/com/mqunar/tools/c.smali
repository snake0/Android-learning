.class Lcom/mqunar/tools/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method public static a()Z
    .registers 1

    .prologue
    .line 135
    const-string v0, "MIUI"

    invoke-static {v0}, Lcom/mqunar/tools/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 146
    sget-object v0, Lcom/mqunar/tools/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 147
    sget-object v0, Lcom/mqunar/tools/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    :goto_a
    return v0

    .line 149
    :cond_b
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/mqunar/tools/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/tools/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 150
    const-string v0, "MIUI"

    sput-object v0, Lcom/mqunar/tools/c;->a:Ljava/lang/String;

    .line 160
    :goto_1d
    sget-object v0, Lcom/mqunar/tools/c;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_a

    .line 152
    :cond_24
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/mqunar/tools/c;->b:Ljava/lang/String;

    .line 153
    sget-object v0, Lcom/mqunar/tools/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 154
    const-string v0, "FLYME"

    sput-object v0, Lcom/mqunar/tools/c;->a:Ljava/lang/String;

    goto :goto_1d

    .line 156
    :cond_3b
    const-string v0, "unknown"

    sput-object v0, Lcom/mqunar/tools/c;->b:Ljava/lang/String;

    .line 157
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/tools/c;->a:Ljava/lang/String;

    goto :goto_1d
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 164
    .line 167
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 168
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x400

    invoke-direct {v2, v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_3e
    .catchall {:try_start_1 .. :try_end_2c} :catchall_64

    .line 169
    :try_start_2c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_73
    .catchall {:try_start_2c .. :try_end_33} :catchall_70

    .line 175
    if-eqz v2, :cond_38

    .line 177
    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    .line 183
    :cond_38
    :goto_38
    return-object v0

    .line 178
    :catch_39
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 171
    :catch_3e
    move-exception v0

    move-object v2, v1

    .line 172
    :goto_40
    :try_start_40
    const-string v3, "ContentValues"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read prop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_70

    .line 175
    if-eqz v2, :cond_5d

    .line 177
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5f

    :cond_5d
    :goto_5d
    move-object v0, v1

    .line 180
    goto :goto_38

    .line 178
    :catch_5f
    move-exception v0

    .line 179
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 175
    :catchall_64
    move-exception v0

    :goto_65
    if-eqz v1, :cond_6a

    .line 177
    :try_start_67
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 180
    :cond_6a
    :goto_6a
    throw v0

    .line 178
    :catch_6b
    move-exception v1

    .line 179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6a

    .line 175
    :catchall_70
    move-exception v0

    move-object v1, v2

    goto :goto_65

    .line 171
    :catch_73
    move-exception v0

    goto :goto_40
.end method

.method public static b()Z
    .registers 1

    .prologue
    .line 142
    const-string v0, "FLYME"

    invoke-static {v0}, Lcom/mqunar/tools/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
