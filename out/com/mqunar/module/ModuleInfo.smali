.class public Lcom/mqunar/module/ModuleInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_CLASS_DIR:Ljava/lang/String; = "multi_classes"


# instance fields
.field public application:Landroid/app/Application;

.field public dependency:Lcom/mqunar/core/dependency/Dependency;

.field public description:Ljava/lang/String;

.field public dexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo$DexInfo;",
            ">;"
        }
    .end annotation
.end field

.field public fileName:Ljava/lang/String;

.field public isDataFile:Z

.field public isLoad:Z

.field public launcherClassName:Ljava/lang/String;

.field public loader:Lcom/mqunar/core/BaseApkLoader;

.field public onlineType:B

.field public type:B

.field public updateType:B

.field public zipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-byte v1, p0, Lcom/mqunar/module/ModuleInfo;->updateType:B

    .line 59
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/mqunar/module/ModuleInfo;->onlineType:B

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/mqunar/module/ModuleInfo;->description:Ljava/lang/String;

    .line 62
    iput-byte v1, p0, Lcom/mqunar/module/ModuleInfo;->type:B

    .line 63
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 220
    const-string v0, "Dependency"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method private a(Ljava/util/List;Lcom/mqunar/core/dependency/Dependency;Lcom/mqunar/core/dependency/Dependency;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Circular;",
            ">;",
            "Lcom/mqunar/core/dependency/Dependency;",
            "Lcom/mqunar/core/dependency/Dependency;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Circular;

    .line 404
    iget-object v3, v0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, v0, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 405
    :cond_26
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 409
    :cond_2a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3f

    .line 410
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Circular;

    .line 425
    :goto_38
    invoke-virtual {v0, p2}, Lcom/mqunar/core/dependency/Circular;->addNode(Lcom/mqunar/core/dependency/Dependency;)V

    .line 426
    invoke-virtual {v0, p3}, Lcom/mqunar/core/dependency/Circular;->addNode(Lcom/mqunar/core/dependency/Dependency;)V

    .line 427
    return-void

    .line 413
    :cond_3f
    new-instance v1, Lcom/mqunar/core/dependency/Circular;

    invoke-direct {v1}, Lcom/mqunar/core/dependency/Circular;-><init>()V

    .line 414
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 415
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_38

    .line 417
    :cond_4f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Circular;

    .line 418
    invoke-virtual {v1, v0}, Lcom/mqunar/core/dependency/Circular;->mergeCircular(Lcom/mqunar/core/dependency/Circular;)V

    .line 419
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_53

    .line 421
    :cond_66
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_38
.end method

.method private static a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .registers 14

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 139
    .line 140
    const/4 v0, 0x1

    .line 144
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_77
    .catchall {:try_start_3 .. :try_end_6} :catchall_92

    move-result-object v1

    .line 145
    :try_start_7
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 147
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v5}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1d} :catch_b6
    .catchall {:try_start_7 .. :try_end_1d} :catchall_b1

    .line 148
    :try_start_1d
    new-instance v5, Ljava/util/zip/ZipEntry;

    const-string v6, "classes.dex"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 150
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 152
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    .line 153
    const/16 v5, 0x1000

    new-array v8, v5, [B

    move v5, v4

    .line 156
    :goto_37
    invoke-virtual {v1, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_44

    .line 157
    const/4 v10, 0x0

    invoke-virtual {v3, v8, v10, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 158
    add-int/2addr v5, v9

    goto :goto_37

    .line 160
    :cond_44
    int-to-long v8, v5

    cmp-long v5, v8, v6

    if-eqz v5, :cond_51

    .line 162
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v0, "\u6587\u4ef6\u672a\u8bfb\u5b8c!"

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move v0, v4

    .line 164
    :cond_51
    if-eqz v0, :cond_56

    .line 165
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_56} :catch_b8
    .catchall {:try_start_1d .. :try_end_56} :catchall_b4

    .line 171
    :cond_56
    if-eqz v3, :cond_5e

    .line 173
    :try_start_58
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_6f

    .line 178
    :goto_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_a8

    .line 182
    :cond_5e
    :goto_5e
    if-eqz v1, :cond_be

    .line 184
    :try_start_60
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_74

    move-object v1, v2

    .line 189
    :goto_64
    if-nez v0, :cond_b0

    .line 190
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 174
    :catch_6f
    move-exception v4

    .line 175
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    .line 185
    :catch_74
    move-exception v1

    move-object v1, v2

    .line 186
    goto :goto_64

    .line 167
    :catch_77
    move-exception v0

    move-object v1, v2

    .line 171
    :goto_79
    if-eqz v2, :cond_81

    .line 173
    :try_start_7b
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_89

    .line 178
    :goto_7e
    :try_start_7e
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_aa

    .line 182
    :cond_81
    :goto_81
    if-eqz v1, :cond_bb

    .line 184
    :try_start_83
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_8e

    move-object v1, v0

    move v0, v4

    .line 186
    goto :goto_64

    .line 174
    :catch_89
    move-exception v3

    .line 175
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7e

    .line 185
    :catch_8e
    move-exception v1

    move-object v1, v0

    move v0, v4

    .line 186
    goto :goto_64

    .line 171
    :catchall_92
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_95
    if-eqz v3, :cond_9d

    .line 173
    :try_start_97
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_a3

    .line 178
    :goto_9a
    :try_start_9a
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_ac

    .line 182
    :cond_9d
    :goto_9d
    if-eqz v1, :cond_a2

    .line 184
    :try_start_9f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_ae

    .line 186
    :cond_a2
    :goto_a2
    throw v0

    .line 174
    :catch_a3
    move-exception v2

    .line 175
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9a

    .line 179
    :catch_a8
    move-exception v3

    goto :goto_5e

    :catch_aa
    move-exception v2

    goto :goto_81

    :catch_ac
    move-exception v2

    goto :goto_9d

    .line 185
    :catch_ae
    move-exception v1

    goto :goto_a2

    .line 193
    :cond_b0
    return-void

    .line 171
    :catchall_b1
    move-exception v0

    move-object v3, v2

    goto :goto_95

    :catchall_b4
    move-exception v0

    goto :goto_95

    .line 167
    :catch_b6
    move-exception v0

    goto :goto_79

    :catch_b8
    move-exception v0

    move-object v2, v3

    goto :goto_79

    :cond_bb
    move-object v1, v0

    move v0, v4

    goto :goto_64

    :cond_be
    move-object v1, v2

    goto :goto_64
.end method

.method private a(Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/AtomNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 375
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    monitor-enter v2

    .line 376
    :try_start_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 377
    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v4, v4, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v5, v5, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 378
    iget-boolean v0, v0, Lcom/mqunar/module/ModuleInfo;->isLoad:Z

    if-eqz v0, :cond_2d

    .line 379
    monitor-exit v2

    move v0, v1

    .line 396
    :goto_2c
    return v0

    .line 385
    :cond_2d
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    invoke-virtual {v0, p2}, Lcom/mqunar/core/dependency/Dependency;->getAtomNode(Ljava/util/List;)Lcom/mqunar/core/dependency/AtomNode;

    move-result-object v0

    .line 387
    iget-object v0, v0, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 388
    iget-boolean v4, v0, Lcom/mqunar/module/ModuleInfo;->isLoad:Z

    if-eqz v4, :cond_39

    .line 389
    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v0, v0, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget-object v3, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v3, v3, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    if-ge v0, v3, :cond_56

    .line 390
    monitor-exit v2

    move v0, v1

    goto :goto_2c

    .line 395
    :cond_56
    monitor-exit v2

    .line 396
    const/4 v0, 0x0

    goto :goto_2c

    .line 395
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public static checkCanOnSpider(Lcom/mqunar/module/ModuleInfo;[Ljava/lang/String;)I
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 230
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->libDependenciesList:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->libDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v3

    .line 257
    :goto_13
    return v0

    .line 234
    :cond_14
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->libDependenciesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/core/dependency/Lib;

    move v1, v2

    .line 236
    :goto_29
    array-length v5, p1

    if-ge v1, v5, :cond_b1

    .line 237
    aget-object v5, p1, v1

    .line 238
    add-int/lit8 v6, v1, 0x1

    aget-object v6, p1, v6

    .line 240
    iget-object v7, v0, Lcom/mqunar/core/dependency/Lib;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 241
    iget-object v1, v0, Lcom/mqunar/core/dependency/Lib;->versionCode:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/mqunar/core/dependency/Dependency;->checkVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7f

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u80fd\u52a0\u8f7d\uff0c\u539f\u56e0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mqunar/core/dependency/Lib;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u6ee1\u8db3\u7248\u672c\u8981\u6c42,\u9700\u8981\u7684\u7248\u672c\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mqunar/core/dependency/Lib;->versionCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u5e73\u53f0\u80fd\u591f\u63d0\u4f9b\u7684\u7248\u672c\u53f7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u9519\u8bef\u7801:-11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/lang/String;)V

    .line 245
    const/16 v0, -0xb

    goto :goto_13

    :cond_7f
    move v1, v3

    .line 251
    :goto_80
    if-nez v1, :cond_1c

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u80fd\u52a0\u8f7d\uff0c\u539f\u56e0\uff1a\u9700\u8981"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mqunar/core/dependency/Lib;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u4f46\u662f\u5e73\u53f0\u6ca1\u6709,\u9519\u8bef\u7801:-10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/lang/String;)V

    .line 253
    const/16 v0, -0xa

    goto/16 :goto_13

    .line 236
    :cond_aa
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_29

    :cond_ae
    move v0, v3

    .line 257
    goto/16 :goto_13

    :cond_b1
    move v1, v2

    goto :goto_80
.end method


# virtual methods
.method public check([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/AtomNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Dependency;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/core/dependency/Circular;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0xa

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0xb

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0x14

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0x15

    if-eq v1, v2, :cond_2f

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/16 v2, -0x16

    if-ne v1, v2, :cond_30

    .line 371
    :cond_2f
    :goto_2f
    return-void

    .line 275
    :cond_30
    invoke-static {p0, p1}, Lcom/mqunar/module/ModuleInfo;->checkCanOnSpider(Lcom/mqunar/module/ModuleInfo;[Ljava/lang/String;)I

    move-result v1

    .line 277
    const/4 v2, 0x1

    if-eq v1, v2, :cond_3c

    .line 278
    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iput v1, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    goto :goto_2f

    .line 288
    :cond_3c
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 289
    :cond_4c
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    const/4 v2, 0x1

    iput v2, v1, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    goto :goto_2f

    .line 293
    :cond_52
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    const/4 v1, 0x0

    .line 296
    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->atomDependenciesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v8, v1

    :goto_63
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_128

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/mqunar/core/dependency/Atom;

    .line 297
    const/4 v9, 0x0

    .line 299
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lcom/mqunar/core/dependency/Atom;->getAtomNode(Ljava/util/List;)Lcom/mqunar/core/dependency/AtomNode;

    move-result-object v11

    .line 300
    if-eqz v11, :cond_125

    .line 302
    iget-object v1, v11, Lcom/mqunar/core/dependency/AtomNode;->versionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_7f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_125

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 303
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget v3, v7, Lcom/mqunar/core/dependency/Atom;->versionCode:I

    if-lt v2, v3, :cond_7f

    .line 305
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_112

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 307
    invoke-virtual/range {v1 .. v6}, Lcom/mqunar/module/ModuleInfo;->check([Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 309
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_fe

    .line 310
    const/4 v1, 0x1

    move v2, v1

    move v1, v8

    .line 330
    :goto_b2
    if-nez v2, :cond_122

    .line 337
    invoke-virtual {p0, p2, v7}, Lcom/mqunar/module/ModuleInfo;->checkLibOnSpider(Ljava/util/List;Lcom/mqunar/core/dependency/Atom;)I

    move-result v2

    .line 338
    const/4 v3, 0x1

    if-eq v2, v3, :cond_122

    .line 339
    if-nez v11, :cond_11f

    .line 340
    const/16 v1, -0x14

    .line 350
    :goto_bf
    if-nez v1, :cond_c2

    .line 351
    const/4 v1, 0x1

    .line 354
    :cond_c2
    const/4 v2, 0x1

    if-eq v1, v2, :cond_c8

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d2

    .line 355
    :cond_c8
    move-object/from16 v0, p3

    invoke-direct {p0, p2, v0}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    .line 356
    if-eqz v2, :cond_d2

    .line 357
    const/16 v1, -0x16

    .line 361
    :cond_d2
    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iput v1, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    .line 363
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_da
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/core/dependency/Circular;

    .line 364
    iget-object v3, v1, Lcom/mqunar/core/dependency/Circular;->nodeList:Ljava/util/Set;

    iget-object v4, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_da

    .line 365
    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    invoke-virtual {v1, v2}, Lcom/mqunar/core/dependency/Circular;->update(Lcom/mqunar/core/dependency/Dependency;)Z

    .line 370
    :cond_f5
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 312
    :cond_fe
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7f

    .line 313
    const/4 v8, 0x2

    .line 314
    const/4 v2, 0x1

    .line 315
    iget-object v3, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3, v1}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/util/List;Lcom/mqunar/core/dependency/Dependency;Lcom/mqunar/core/dependency/Dependency;)V

    move v1, v8

    .line 316
    goto :goto_b2

    .line 319
    :cond_112
    const/4 v8, 0x2

    .line 320
    const/4 v2, 0x1

    .line 321
    iget-object v3, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v3, v1}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/util/List;Lcom/mqunar/core/dependency/Dependency;Lcom/mqunar/core/dependency/Dependency;)V

    move v1, v8

    .line 323
    goto :goto_b2

    .line 342
    :cond_11f
    const/16 v1, -0x15

    .line 344
    goto :goto_bf

    :cond_122
    move v8, v1

    .line 348
    goto/16 :goto_63

    :cond_125
    move v2, v9

    move v1, v8

    goto :goto_b2

    :cond_128
    move v1, v8

    goto :goto_bf
.end method

.method public checkLibOnSpider(Ljava/util/List;Lcom/mqunar/core/dependency/Atom;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Lcom/mqunar/core/dependency/Atom;",
            ")I"
        }
    .end annotation

    .prologue
    .line 203
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 204
    iget-object v2, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v2, v2, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 205
    iget-object v1, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v1, v1, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    iget v2, p2, Lcom/mqunar/core/dependency/Atom;->versionCode:I

    if-lt v1, v2, :cond_26

    .line 206
    const/4 v0, 0x1

    .line 215
    :goto_25
    return v0

    .line 208
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u80fd\u52a0\u8f7d\uff0c\u539f\u56e0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u4e0d\u6ee1\u8db3\u7248\u672c\u8981\u6c42,\u9700\u8981\u7684\u7248\u672c\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/mqunar/core/dependency/Atom;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\u5e73\u53f0\u80fd\u591f\u63d0\u4f9b\u7684\u7248\u672c\u53f7:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v0, v0, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u9519\u8bef\u7801:-21"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/lang/String;)V

    .line 211
    const/16 v0, -0x15

    goto :goto_25

    .line 214
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e0d\u80fd\u52a0\u8f7d\uff0c\u539f\u56e0\uff1a\u9700\u8981"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/mqunar/core/dependency/Atom;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\u4f46\u662f\u5e73\u53f0\u6ca1\u6709,\u9519\u8bef\u7801:-20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/lang/String;)V

    .line 215
    const/16 v0, -0x14

    goto :goto_25
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/mqunar/module/ModuleInfo;->freeZipFile()V

    .line 453
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 454
    return-void
.end method

.method public freeZipFile()V
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_c

    .line 443
    :try_start_4
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_d

    .line 446
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    .line 448
    :cond_c
    return-void

    .line 444
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method public hasUnloadMultiDex()Z
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 88
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    monitor-enter v1

    .line 89
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo$DexInfo;

    .line 90
    iget-boolean v0, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->isLoad:Z

    if-nez v0, :cond_d

    .line 91
    const/4 v0, 0x1

    monitor-exit v1

    .line 96
    :goto_1f
    return v0

    .line 94
    :cond_20
    monitor-exit v1

    .line 96
    :cond_21
    const/4 v0, 0x0

    goto :goto_1f

    .line 94
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public initDexList()V
    .registers 8

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 68
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "multi_classes"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x2

    .line 72
    :goto_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "classes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".dex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    iget-object v3, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 74
    if-nez v3, :cond_40

    .line 84
    :cond_3f
    return-void

    .line 77
    :cond_40
    new-instance v3, Lcom/mqunar/module/ModuleInfo$DexInfo;

    invoke-direct {v3}, Lcom/mqunar/module/ModuleInfo$DexInfo;-><init>()V

    .line 78
    iput-object v0, v3, Lcom/mqunar/module/ModuleInfo$DexInfo;->entryName:Ljava/lang/String;

    .line 79
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v6, v6, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".zip"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/mqunar/module/ModuleInfo$DexInfo;->isLoad:Z

    .line 81
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 82
    goto :goto_1c
.end method

.method public loadFromMultiDex(Ljava/lang/String;)Ljava/lang/Class;
    .registers 11

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    if-eqz v0, :cond_85

    .line 101
    iget-object v2, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    monitor-enter v2

    .line 102
    :try_start_7
    iget-object v0, p0, Lcom/mqunar/module/ModuleInfo;->dexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo$DexInfo;

    .line 103
    iget-boolean v1, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->isLoad:Z

    if-nez v1, :cond_6e

    .line 104
    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_81

    .line 105
    :try_start_1e
    iget-boolean v1, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->isLoad:Z

    if-nez v1, :cond_6d

    .line 107
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->entryName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .line 109
    const/4 v1, 0x0

    .line 110
    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_55

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_55

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_55

    .line 111
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-static {v1, v4, v5}, Lcom/mqunar/core/ModuleParser;->checkEquals(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)Z

    move-result v1

    .line 115
    :cond_55
    if-nez v1, :cond_63

    .line 116
    iget-object v1, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 117
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->dexOutPath:Ljava/io/File;

    invoke-static {v1, v4, v5}, Lcom/mqunar/module/ModuleInfo;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V

    .line 120
    :cond_63
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->loader:Lcom/mqunar/core/BaseApkLoader;

    iget v4, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->indexInElement:I

    invoke-virtual {v1, v4}, Lcom/mqunar/core/BaseApkLoader;->loadMultiDex(I)V

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->isLoad:Z

    .line 123
    :cond_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_1e .. :try_end_6e} :catchall_7e

    .line 127
    :cond_6e
    :try_start_6e
    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->loader:Lcom/mqunar/core/BaseApkLoader;

    iget v0, v0, Lcom/mqunar/module/ModuleInfo$DexInfo;->indexInElement:I

    invoke-virtual {v1, v0}, Lcom/mqunar/core/BaseApkLoader;->getMultiDexElement(I)Lcom/mqunar/core/DexPathList$Element;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p1}, Lcom/mqunar/core/DexPathList$Element;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_d

    .line 130
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_81

    .line 135
    :goto_7d
    return-object v0

    .line 123
    :catchall_7e
    move-exception v1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    :try_start_80
    throw v1

    .line 133
    :catchall_81
    move-exception v0

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_81

    throw v0

    :cond_84
    :try_start_84
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_81

    .line 135
    :cond_85
    const/4 v0, 0x0

    goto :goto_7d
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleInfo{fileName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationClassName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->applicationClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
