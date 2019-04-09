.class public Lcom/mqunar/atomenv/env/ReleaseEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/atomenv/IEnvironment;


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = ".unique"

.field public static final FILE_NAME_SID:Ljava/lang/String; = ".sunique"


# instance fields
.field private a:Lcom/mqunar/storage/Storage;

.field private b:Lcom/mqunar/storage/Storage;

.field private c:Lcom/mqunar/storage/Storage;

.field protected gid:Ljava/lang/String;

.field protected sid:Ljava/lang/String;

.field protected storage_sys:Lcom/mqunar/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 534
    :try_start_0
    const-string v0, "cid-info"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 536
    :goto_5
    return-void

    .line 535
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    .line 50
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sw"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->a:Lcom/mqunar/storage/Storage;

    .line 51
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_ad"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->b:Lcom/mqunar/storage/Storage;

    .line 52
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_global"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v1, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v2, "sys_gid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    :try_start_b
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    new-instance v4, Ljava/io/File;

    const-string v1, "10010"

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, ".unique"

    :goto_42
    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_9e

    move-result v1

    if-eqz v1, :cond_63

    .line 247
    :try_start_4b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_96

    .line 248
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_c4

    move-result-object v0

    .line 250
    if-eqz v2, :cond_63

    .line 252
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_88
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_8d

    .line 263
    :cond_63
    :goto_63
    if-eqz v0, :cond_a8

    if-eqz v3, :cond_a8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 264
    iput-object v3, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    .line 272
    :cond_6f
    :goto_6f
    return-void

    .line 243
    :cond_70
    :try_start_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".unique"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_86} :catch_9e

    move-result-object v1

    goto :goto_42

    .line 253
    :catch_88
    move-exception v1

    .line 254
    :try_start_89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_63

    .line 260
    :catch_8d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 261
    :goto_91
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_63

    .line 250
    :catchall_96
    move-exception v1

    move-object v2, v0

    :goto_98
    if-eqz v2, :cond_9d

    .line 252
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 255
    :cond_9d
    :goto_9d
    :try_start_9d
    throw v1

    .line 260
    :catch_9e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_91

    .line 253
    :catch_a3
    move-exception v2

    .line 254
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_9e

    goto :goto_9d

    .line 265
    :cond_a8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 266
    iput-object v3, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->a(Ljava/lang/String;)V

    goto :goto_6f

    .line 268
    :cond_b6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 269
    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->a(Ljava/lang/String;)V

    goto :goto_6f

    .line 250
    :catchall_c4
    move-exception v1

    goto :goto_98
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 275
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_gid"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    const/4 v1, 0x0

    .line 279
    :try_start_e
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    new-instance v3, Ljava/io/File;

    const-string v0, "10010"

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, ".unique"

    :goto_45
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_58} :catch_7c
    .catchall {:try_start_e .. :try_end_58} :catchall_88

    .line 283
    :try_start_58
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_96
    .catchall {:try_start_58 .. :try_end_5e} :catchall_93

    .line 289
    :goto_5e
    if-eqz v2, :cond_63

    .line 291
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_8f

    .line 296
    :cond_63
    :goto_63
    return-void

    .line 281
    :cond_64
    :try_start_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".unique"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7a} :catch_7c
    .catchall {:try_start_64 .. :try_end_7a} :catchall_88

    move-result-object v0

    goto :goto_45

    .line 286
    :catch_7c
    move-exception v0

    .line 287
    :goto_7d
    :try_start_7d
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_88

    .line 289
    if-eqz v1, :cond_63

    .line 291
    :try_start_82
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_63

    .line 292
    :catch_86
    move-exception v0

    goto :goto_63

    .line 289
    :catchall_88
    move-exception v0

    :goto_89
    if-eqz v1, :cond_8e

    .line 291
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_91

    .line 293
    :cond_8e
    :goto_8e
    throw v0

    .line 292
    :catch_8f
    move-exception v0

    goto :goto_63

    :catch_91
    move-exception v1

    goto :goto_8e

    .line 289
    :catchall_93
    move-exception v0

    move-object v1, v2

    goto :goto_89

    .line 286
    :catch_96
    move-exception v0

    move-object v1, v2

    goto :goto_7d

    :cond_99
    move-object v2, v1

    goto :goto_5e
.end method

.method private b()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 299
    iget-object v1, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v2, "sys_sid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    :try_start_b
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 304
    new-instance v4, Ljava/io/File;

    const-string v1, "10010"

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, ".sunique"

    :goto_42
    invoke-direct {v4, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_9e

    move-result v1

    if-eqz v1, :cond_63

    .line 308
    :try_start_4b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_96

    .line 309
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_c4

    move-result-object v0

    .line 311
    if-eqz v2, :cond_63

    .line 313
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_88
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_8d

    .line 324
    :cond_63
    :goto_63
    if-eqz v0, :cond_a8

    if-eqz v3, :cond_a8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 325
    iput-object v3, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    .line 333
    :cond_6f
    :goto_6f
    return-void

    .line 304
    :cond_70
    :try_start_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".sunique"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_86} :catch_9e

    move-result-object v1

    goto :goto_42

    .line 314
    :catch_88
    move-exception v1

    .line 315
    :try_start_89
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_63

    .line 321
    :catch_8d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 322
    :goto_91
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_63

    .line 311
    :catchall_96
    move-exception v1

    move-object v2, v0

    :goto_98
    if-eqz v2, :cond_9d

    .line 313
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 316
    :cond_9d
    :goto_9d
    :try_start_9d
    throw v1

    .line 321
    :catch_9e
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_91

    .line 314
    :catch_a3
    move-exception v2

    .line 315
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a7} :catch_9e

    goto :goto_9d

    .line 326
    :cond_a8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b6

    .line 327
    iput-object v3, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->b(Ljava/lang/String;)V

    goto :goto_6f

    .line 329
    :cond_b6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 330
    iput-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    .line 331
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->b(Ljava/lang/String;)V

    goto :goto_6f

    .line 311
    :catchall_c4
    move-exception v1

    goto :goto_98
.end method

.method private b(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 336
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_sid"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    const/4 v1, 0x0

    .line 340
    :try_start_e
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 342
    new-instance v3, Ljava/io/File;

    const-string v0, "10010"

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, ".sunique"

    :goto_45
    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_58} :catch_7c
    .catchall {:try_start_e .. :try_end_58} :catchall_88

    .line 344
    :try_start_58
    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5e} :catch_96
    .catchall {:try_start_58 .. :try_end_5e} :catchall_93

    .line 350
    :goto_5e
    if-eqz v2, :cond_63

    .line 352
    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_8f

    .line 357
    :cond_63
    :goto_63
    return-void

    .line 342
    :cond_64
    :try_start_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".sunique"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getPid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7a} :catch_7c
    .catchall {:try_start_64 .. :try_end_7a} :catchall_88

    move-result-object v0

    goto :goto_45

    .line 347
    :catch_7c
    move-exception v0

    .line 348
    :goto_7d
    :try_start_7d
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_88

    .line 350
    if-eqz v1, :cond_63

    .line 352
    :try_start_82
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_63

    .line 353
    :catch_86
    move-exception v0

    goto :goto_63

    .line 350
    :catchall_88
    move-exception v0

    :goto_89
    if-eqz v1, :cond_8e

    .line 352
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_91

    .line 354
    :cond_8e
    :goto_8e
    throw v0

    .line 353
    :catch_8f
    move-exception v0

    goto :goto_63

    :catch_91
    move-exception v1

    goto :goto_8e

    .line 350
    :catchall_93
    move-exception v0

    move-object v1, v2

    goto :goto_89

    .line 347
    :catch_96
    move-exception v0

    move-object v1, v2

    goto :goto_7d

    :cond_99
    move-object v2, v1

    goto :goto_5e
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 467
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_mac"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 468
    return-void
.end method


# virtual methods
.method public getBaiduVoiceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 414
    const-string v0, "http://vse.baidu.com/echo.fcgi"

    return-object v0
.end method

.method public getBetaLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 519
    const-string v0, ""

    return-object v0
.end method

.method public getBetaLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 514
    const-string v0, ""

    return-object v0
.end method

.method public getBetaString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    const-string v0, ""

    return-object v0
.end method

.method public getCarAboutTouchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 429
    const-string v0, "http://car.qunar.com/CharteredCar/about.jsp"

    return-object v0
.end method

.method public getCarPullUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 409
    const-string v0, "http://capi.qunar.com/crypt/orderdetail"

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 119
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "com.Qunar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 129
    :try_start_10
    new-instance v0, Lcom/mqunar/atomenv/jni/CidInfo;

    invoke-direct {v0}, Lcom/mqunar/atomenv/jni/CidInfo;-><init>()V

    .line 130
    invoke-virtual {v0}, Lcom/mqunar/atomenv/jni/CidInfo;->stringFromJNI()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 132
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lqunar/lego/utils/Goblin;->da([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2c} :catch_2d

    .line 146
    :goto_2c
    return-object v0

    .line 135
    :catch_2d
    move-exception v0

    .line 138
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->getCidFromFile()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 140
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lqunar/lego/utils/Goblin;->da([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_45} :catch_46

    goto :goto_2c

    .line 143
    :catch_46
    move-exception v0

    .line 146
    :cond_47
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_cid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2c
.end method

.method public getCidForXiaomi()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 102
    .line 105
    :try_start_1
    const-string v0, "miui.os.MiuiInit"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    const-string v2, "isPreinstalledPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 108
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "com.Qunar"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_27} :catch_2d

    move-result v0

    .line 111
    :goto_28
    if-eqz v0, :cond_30

    .line 112
    const-string v0, "C3065"

    .line 114
    :goto_2c
    return-object v0

    .line 109
    :catch_2d
    move-exception v0

    move v0, v1

    goto :goto_28

    .line 114
    :cond_30
    const-string v0, ""

    goto :goto_2c
.end method

.method protected getCidFromFile()Ljava/lang/String;
    .registers 7

    .prologue
    .line 150
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ro.cid.path.qunar"

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/SystemPropertyProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 152
    const-string v0, "/system/etc/"

    .line 155
    :cond_12
    new-instance v1, Ljava/io/File;

    const-string v2, "QunarCid.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_e9

    .line 157
    :cond_25
    new-instance v1, Ljava/io/File;

    const-string v2, "Cinfo.conf"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_e6

    .line 159
    :cond_38
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/etc/appchannel/"

    const-string v2, "Cinfo.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_56

    .line 162
    :cond_4d
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/appchannel/"

    const-string v2, "Cinfo.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_99

    .line 165
    :cond_62
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ro.preinstall.path"

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/SystemPropertyProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v0, Ljava/io/File;

    const-string v2, "QunarCid.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_86

    .line 168
    :cond_7f
    new-instance v0, Ljava/io/File;

    const-string v2, "Cinfo.conf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_99

    .line 171
    :cond_92
    new-instance v0, Ljava/io/File;

    const-string v2, "QunarCid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_99
    :goto_99
    const-string v1, ""

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 179
    const/4 v3, 0x0

    .line 181
    :try_start_a8
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b2} :catch_bf
    .catchall {:try_start_a8 .. :try_end_b2} :catchall_cf

    .line 182
    :try_start_b2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_dd
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_da

    move-result-object v0

    .line 183
    :try_start_b6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_e2
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_da

    .line 187
    if-eqz v2, :cond_be

    .line 189
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_be} :catch_d6

    .line 195
    :cond_be
    :goto_be
    return-object v0

    .line 184
    :catch_bf
    move-exception v0

    move-object v2, v3

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 185
    :goto_c4
    :try_start_c4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_da

    .line 187
    if-eqz v2, :cond_be

    .line 189
    :try_start_c9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cc} :catch_cd

    goto :goto_be

    .line 190
    :catch_cd
    move-exception v1

    goto :goto_be

    .line 187
    :catchall_cf
    move-exception v0

    :goto_d0
    if-eqz v3, :cond_d5

    .line 189
    :try_start_d2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d8

    .line 191
    :cond_d5
    :goto_d5
    throw v0

    .line 190
    :catch_d6
    move-exception v1

    goto :goto_be

    :catch_d8
    move-exception v1

    goto :goto_d5

    .line 187
    :catchall_da
    move-exception v0

    move-object v3, v2

    goto :goto_d0

    .line 184
    :catch_dd
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_c4

    :catch_e2
    move-exception v1

    goto :goto_c4

    :cond_e4
    move-object v0, v1

    goto :goto_be

    :cond_e6
    move-object v0, v1

    goto/16 :goto_41

    :cond_e9
    move-object v0, v1

    goto :goto_99
.end method

.method public getConfig()Lcom/mqunar/atomenv/model/Config;
    .registers 5

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    iget-object v1, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v2, "sys_config"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 507
    const-class v0, Lcom/mqunar/atomenv/model/Config;

    invoke-static {v1, v0}, Lcom/mqunar/json/JsonUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/model/Config;

    .line 509
    :cond_19
    return-object v0
.end method

.method public getConfigJson()Ljava/lang/String;
    .registers 4

    .prologue
    .line 529
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_config"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDBPath()Ljava/lang/String;
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    const-string v1, "global_dbpath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 218
    invoke-direct {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->a()V

    .line 220
    :cond_b
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->gid:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 224
    :goto_d
    return-object v0

    .line 221
    :catch_e
    move-exception v0

    .line 222
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 224
    const-string v0, ""

    goto :goto_d
.end method

.method public getHotDogUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    const-string v0, "http://pitcher.corp.qunar.com/fca"

    return-object v0
.end method

.method public getHotelUploadPicUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 419
    const-string v0, "http://ud.client.qunar.com/ud"

    return-object v0
.end method

.method public getLocalLifeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 424
    const-string v0, "http://live.qunar.com"

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_mac"

    invoke-virtual {v0, v1}, Lcom/mqunar/storage/Storage;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 455
    invoke-virtual {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->initMac()V

    .line 457
    :cond_d
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_mac"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOuterCarUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 439
    const-string v0, "http://intercar.qunar.com"

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 434
    const-string v0, "https://mpkq.qunar.com"

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_pid"

    const-string v2, "_10010"

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_scheme"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeWap()Ljava/lang/String;
    .registers 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_schemewap"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()Lcom/mqunar/atomenv/model/ServerTime;
    .registers 7

    .prologue
    .line 361
    const/4 v1, 0x0

    .line 363
    :try_start_1
    new-instance v0, Lcom/mqunar/atomenv/model/ServerTime;

    invoke-direct {v0}, Lcom/mqunar/atomenv/model/ServerTime;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_1f

    .line 364
    :try_start_6
    iget-object v1, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    const-string v2, "global_tint"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mqunar/storage/Storage;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/atomenv/model/ServerTime;->tint:J

    .line 365
    iget-object v1, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    const-string v2, "global_tstr"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/atomenv/model/ServerTime;->tstr:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1e} :catch_27

    .line 369
    :goto_1e
    return-object v0

    .line 366
    :catch_1f
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 367
    :goto_23
    invoke-static {v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 366
    :catch_27
    move-exception v1

    goto :goto_23
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    invoke-direct {p0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->b()V

    .line 205
    :cond_b
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->sid:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_e

    .line 209
    :goto_d
    return-object v0

    .line 206
    :catch_e
    move-exception v0

    .line 207
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 209
    const-string v0, ""

    goto :goto_d
.end method

.method public getSplashAdUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 384
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->b:Lcom/mqunar/storage/Storage;

    const-string v1, "ad_splash"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplashWebUrl()Ljava/lang/String;
    .registers 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_welcomeUrl"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_uid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "000000000000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "1111"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "baidu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "00000000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 76
    :cond_38
    invoke-static {}, Lcom/mqunar/atomenv/AndroidUtils;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 78
    const-string v0, ""

    .line 80
    :cond_44
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_60

    .line 81
    const-string v1, "has READ_PHONE_STATE permission, cache uid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v1, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v2, "sys_uid"

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    :cond_60
    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_vid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWXAppId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->storage_sys:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_wxappid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initMac()V
    .registers 2

    .prologue
    .line 462
    :try_start_0
    invoke-static {}, Lcom/mqunar/atomenv/AndroidUtils;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7} :catch_8

    .line 464
    :goto_7
    return-void

    .line 463
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public isAutoSwapImage()Z
    .registers 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->a:Lcom/mqunar/storage/Storage;

    const-string v1, "sw_autoSwapImage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBeta()Z
    .registers 2

    .prologue
    .line 477
    const/4 v0, 0x0

    return v0
.end method

.method public isDev()Z
    .registers 2

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method public isRelease()Z
    .registers 2

    .prologue
    .line 472
    const/4 v0, 0x1

    return v0
.end method

.method public putAutoSwapImage(Z)V
    .registers 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->a:Lcom/mqunar/storage/Storage;

    const-string v1, "sw_autoSwapImage"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    .line 235
    return-void
.end method

.method public putDBPath(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    const-string v1, "global_dbpath"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    return-void
.end method

.method public putSplashAdUrl(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->b:Lcom/mqunar/storage/Storage;

    const-string v1, "ad_splash"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    return-void
.end method

.method public putTint(J)V
    .registers 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    const-string v1, "global_tint"

    invoke-virtual {v0, v1, p1, p2}, Lcom/mqunar/storage/Storage;->putLong(Ljava/lang/String;J)Z

    .line 375
    return-void
.end method

.method public putTstr(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mqunar/atomenv/env/ReleaseEnvironment;->c:Lcom/mqunar/storage/Storage;

    const-string v1, "global_tstr"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 380
    return-void
.end method
