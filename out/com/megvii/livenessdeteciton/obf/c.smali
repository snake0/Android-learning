.class public Lcom/megvii/livenessdeteciton/obf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Lcom/megvii/livenessdeteciton/obf/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sput-object p1, Lcom/megvii/livenessdeteciton/obf/c;->a:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/megvii/livenessdeteciton/obf/c;
    .registers 3

    .prologue
    .line 32
    const-class v1, Lcom/megvii/livenessdeteciton/obf/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/c;->b:Lcom/megvii/livenessdeteciton/obf/c;

    if-nez v0, :cond_e

    .line 33
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/c;

    invoke-direct {v0, p0}, Lcom/megvii/livenessdeteciton/obf/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/megvii/livenessdeteciton/obf/c;->b:Lcom/megvii/livenessdeteciton/obf/c;

    .line 35
    :cond_e
    sget-object v0, Lcom/megvii/livenessdeteciton/obf/c;->b:Lcom/megvii/livenessdeteciton/obf/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 109
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 121
    :cond_f
    :goto_f
    return-void

    .line 110
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 112
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_26

    aget-object v3, v1, v0

    .line 113
    invoke-direct {p0, v3}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/io/File;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 115
    :cond_26
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_f

    .line 119
    :cond_2a
    const-string v0, "SoProtect"

    const-string v1, "\u6240\u5220\u9664\u7684\u6587\u4ef6\u4e0d\u5b58\u5728\uff01\n"

    invoke-static {v0, v1}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/c$a;

    invoke-direct {v0, p0, p2}, Lcom/megvii/livenessdeteciton/obf/c$a;-><init>(Lcom/megvii/livenessdeteciton/obf/c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 98
    array-length v2, v1

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1f

    aget-object v3, v1, v0

    .line 99
    invoke-direct {p0, v3}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_15

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 101
    :catch_15
    move-exception v0

    .line 102
    const-string v1, "SoProtect"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1f
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    .line 205
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 208
    :cond_b
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 210
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_13} :catch_d1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_74
    .catchall {:try_start_2 .. :try_end_13} :catchall_9d

    .line 211
    :try_start_13
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_18} :catch_d6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_c9
    .catchall {:try_start_13 .. :try_end_18} :catchall_bb

    .line 212
    :try_start_18
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_dd
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_cc
    .catchall {:try_start_18 .. :try_end_1d} :catchall_be

    .line 214
    const/16 v0, 0x400

    :try_start_1f
    new-array v0, v0, [B

    .line 216
    :goto_21
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_4b

    .line 217
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2c} :catch_ce
    .catchall {:try_start_1f .. :try_end_2c} :catchall_c0

    goto :goto_21

    .line 222
    :catch_2d
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    .line 223
    :goto_31
    :try_start_31
    const-string v5, "SoProtect"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_c3

    .line 228
    if-eqz v4, :cond_3f

    .line 229
    :try_start_3c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 232
    :cond_3f
    if-eqz v2, :cond_44

    .line 233
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    :cond_44
    if-eqz v3, :cond_49

    .line 237
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_49} :catch_68

    :cond_49
    move v0, v1

    .line 245
    :goto_4a
    return v0

    .line 219
    :cond_4b
    :try_start_4b
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 220
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_4b .. :try_end_51} :catch_2d
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_51} :catch_ce
    .catchall {:try_start_4b .. :try_end_51} :catchall_c0

    .line 221
    const/4 v0, 0x1

    .line 229
    :try_start_52
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 237
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5b} :catch_5c

    goto :goto_4a

    .line 240
    :catch_5c
    move-exception v0

    .line 242
    const-string v2, "SoProtect"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 244
    goto :goto_4a

    .line 240
    :catch_68
    move-exception v0

    .line 242
    const-string v2, "SoProtect"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 244
    goto :goto_4a

    .line 224
    :catch_74
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    .line 225
    :goto_77
    :try_start_77
    const-string v4, "SoProtect"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_be

    .line 228
    if-eqz v5, :cond_85

    .line 229
    :try_start_82
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 232
    :cond_85
    if-eqz v3, :cond_8a

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    :cond_8a
    if-eqz v2, :cond_8f

    .line 237
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8f} :catch_91

    :cond_8f
    move v0, v1

    .line 243
    goto :goto_4a

    .line 240
    :catch_91
    move-exception v0

    .line 242
    const-string v2, "SoProtect"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 244
    goto :goto_4a

    .line 227
    :catchall_9d
    move-exception v0

    move-object v3, v2

    move-object v5, v2

    .line 228
    :goto_a0
    if-eqz v5, :cond_a5

    .line 229
    :try_start_a2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 232
    :cond_a5
    if-eqz v3, :cond_aa

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    :cond_aa
    if-eqz v2, :cond_af

    .line 237
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_af} :catch_b0

    .line 243
    :cond_af
    :goto_af
    throw v0

    .line 240
    :catch_b0
    move-exception v1

    .line 242
    const-string v2, "SoProtect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_af

    .line 227
    :catchall_bb
    move-exception v0

    move-object v5, v2

    goto :goto_a0

    :catchall_be
    move-exception v0

    goto :goto_a0

    :catchall_c0
    move-exception v0

    move-object v2, v4

    goto :goto_a0

    :catchall_c3
    move-exception v0

    move-object v5, v4

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_a0

    .line 224
    :catch_c9
    move-exception v0

    move-object v5, v2

    goto :goto_77

    :catch_cc
    move-exception v0

    goto :goto_77

    :catch_ce
    move-exception v0

    move-object v2, v4

    goto :goto_77

    .line 222
    :catch_d1
    move-exception v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_31

    :catch_d6
    move-exception v0

    move-object v4, v2

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_31

    :catch_dd
    move-exception v0

    move-object v4, v5

    move-object v7, v2

    move-object v2, v3

    move-object v3, v7

    goto/16 :goto_31
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .registers 9

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    const-class v1, Lcom/megvii/livenessdeteciton/obf/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 178
    if-eqz v1, :cond_29

    .line 179
    if-nez p1, :cond_16

    .line 180
    const-string v0, "SoProtect"

    const-string v2, "apse file cann\'t be null..."

    invoke-static {v0, v2}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_16
    invoke-static {v1, p4}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    .line 184
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_1e

    .line 193
    :goto_1d
    return v0

    .line 185
    :catch_1e
    move-exception v1

    .line 186
    const-string v2, "SoProtect"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    .line 190
    :cond_29
    const-string v1, "SoProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error: can\'t find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 125
    .line 126
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "lib"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".so"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string v1, "x86"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "lib/x86/"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    :goto_3a
    :try_start_3a
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_76} :catch_bc

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 153
    const-string v1, "SoProtect"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_9a
    return v0

    .line 132
    :cond_9b
    const-string v1, "armeabi-v7a"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "lib/armeabi-v7a/"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    .line 135
    :cond_b3
    const-string v0, "SoProtect"

    const-string v1, "apse is not support for this mode"

    invoke-static {v0, v1}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 136
    goto :goto_9a

    .line 146
    :catch_bc
    move-exception v0

    .line 147
    const-string v1, "SoProtect"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 148
    goto :goto_9a

    .line 157
    :cond_c8
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lib"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 159
    invoke-direct {p0, p1, v1, v4, v6}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    .line 160
    if-nez v1, :cond_115

    const-string v5, "armeabi-v7a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_115

    .line 161
    const-string v1, "SoProtect"

    const-string v3, "%s arch copy failed, try to copy %s arch"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v7, "armeabi-v7a"

    aput-object v7, v5, v2

    const-string v2, "armeabi"

    aput-object v2, v5, v0

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lib/armeabi/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0, p1, v0, v4, v6}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    goto :goto_9a

    :cond_115
    move v0, v1

    goto :goto_9a
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 47
    :try_start_2
    const-string v1, "livenessdetection_v2.4.2"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_b

    move v1, v0

    .line 53
    :goto_8
    if-eqz v1, :cond_e

    .line 92
    :goto_a
    return v0

    .line 50
    :catch_b
    move-exception v1

    move v1, v2

    goto :goto_8

    .line 57
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_bak"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    sget-object v4, Lcom/megvii/livenessdeteciton/obf/c;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v3, p1, p2}, Lcom/megvii/livenessdeteciton/obf/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 64
    if-eqz v5, :cond_cd

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 70
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copy lib to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 74
    :try_start_a3
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a3 .. :try_end_aa} :catch_ac

    goto/16 :goto_a

    .line 76
    :catch_ac
    move-exception v0

    .line 77
    const-string v2, "SoProtect"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 78
    goto/16 :goto_a

    .line 82
    :cond_b9
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "error can\'t find %1$s lib in plugins_lib"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v2, "SoProtect"

    invoke-static {v2, v0}, Lcom/megvii/livenessdeteciton/obf/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 87
    goto/16 :goto_a

    .line 88
    :cond_cd
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "error copy %1$s lib fail"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 89
    const-string v2, "SoProtect"

    invoke-static {v2, v0}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_a
.end method
