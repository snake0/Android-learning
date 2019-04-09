.class public Lcom/mqunar/core/ErrorMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;Ljava/util/Map;Lcom/mqunar/module/ModuleInfo;Lcom/mqunar/core/BaseApkLoader;)Ljava/lang/ClassNotFoundException;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mqunar/core/BaseApkLoader;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;",
            "Lcom/mqunar/module/ModuleInfo;",
            "Lcom/mqunar/core/BaseApkLoader;",
            ")",
            "Ljava/lang/ClassNotFoundException;"
        }
    .end annotation

    .prologue
    .line 36
    const-class v2, Lcom/mqunar/core/ErrorMsg;

    monitor-enter v2

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "v3_"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {v1, p2, p1}, Lcom/mqunar/core/ErrorMsg;->appendClassMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/mqunar/core/BaseApkLoader;)V

    .line 40
    invoke-static {p0, v1, p4}, Lcom/mqunar/core/ErrorMsg;->appendMI(Landroid/content/Context;Ljava/lang/StringBuilder;Lcom/mqunar/module/ModuleInfo;)Z

    move-result v0

    .line 42
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->getDexCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p4, p2}, Lcom/mqunar/core/ErrorMsg;->appendDexMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/mqunar/module/ModuleInfo;Ljava/lang/String;)V

    .line 44
    invoke-static {v1, p3, v0}, Lcom/mqunar/core/ErrorMsg;->appendMaps(Ljava/lang/StringBuilder;Ljava/util/Map;Z)V

    .line 46
    invoke-static {v1, p1, p5, p2}, Lcom/mqunar/core/ErrorMsg;->appendAtomLoader(Ljava/lang/StringBuilder;Lcom/mqunar/core/BaseApkLoader;Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)V

    .line 49
    const-string v0, "|ld="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v3, Lcom/mqunar/core/QSpider;->loadDone:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|crach_url:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3e} :catch_40
    .catchall {:try_start_3 .. :try_end_3e} :catchall_5b

    .line 55
    :goto_3e
    monitor-exit v2

    return-object v0

    .line 53
    :catch_40
    move-exception v0

    move-object v1, v0

    .line 55
    :try_start_42
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not found class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5a
    .catchall {:try_start_42 .. :try_end_5a} :catchall_5b

    goto :goto_3e

    .line 36
    :catchall_5b
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static appendAtomLoader(Ljava/lang/StringBuilder;Lcom/mqunar/core/BaseApkLoader;Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 176
    const-string v0, "a="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    if-ne p1, p2, :cond_52

    .line 179
    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :goto_c
    const-string v0, "#b="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    if-ne p1, p2, :cond_74

    if-eqz p1, :cond_74

    .line 195
    :try_start_15
    invoke-virtual {p1, p3}, Lcom/mqunar/core/BaseApkLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;

    .line 196
    const-string v0, "SAME-SUCCESS!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1d} :catch_66

    .line 234
    :cond_1d
    :goto_1d
    const-string v0, "#c="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p2, :cond_121

    .line 237
    invoke-virtual {p2}, Lcom/mqunar/core/BaseApkLoader;->getDebugOutputPath()Ljava/io/File;

    move-result-object v0

    .line 238
    if-nez v0, :cond_c9

    .line 239
    const-string v1, "n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :goto_2f
    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/mqunar/core/BaseApkLoader;->getModuleInfo()Lcom/mqunar/module/ModuleInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    :try_start_3a
    invoke-static {v1, v0}, Lcom/mqunar/core/DexPathList;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 262
    const-string v0, "_n_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_51} :catch_112

    .line 281
    :goto_51
    return-void

    .line 182
    :cond_52
    if-eqz p2, :cond_60

    .line 183
    invoke-virtual {p2}, Lcom/mqunar/core/BaseApkLoader;->getModuleInfo()Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 185
    :cond_60
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 197
    :catch_66
    move-exception v0

    .line 198
    const-string v1, "s-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 203
    :cond_74
    if-eqz p1, :cond_7e

    .line 206
    :try_start_76
    invoke-virtual {p1, p3}, Lcom/mqunar/core/BaseApkLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;

    .line 207
    const-string v0, "C-SUCCESS!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_7e} :catch_a0

    .line 213
    :cond_7e
    :goto_7e
    if-eqz p2, :cond_1d

    .line 216
    :try_start_80
    invoke-virtual {p2, p3}, Lcom/mqunar/core/BaseApkLoader;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;

    .line 217
    const-string v0, "A-SUCCESS!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_88} :catch_ae

    .line 225
    :goto_88
    :try_start_88
    invoke-virtual {p2, p3}, Lcom/mqunar/core/BaseApkLoader;->loadClassFromSuper(Ljava/lang/String;)Ljava/lang/Class;

    .line 226
    const-string v0, "-SUPER-SUCCESS!"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_90} :catch_91

    goto :goto_1d

    .line 227
    :catch_91
    move-exception v0

    .line 228
    const-string v1, "-super-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    .line 208
    :catch_a0
    move-exception v0

    .line 209
    const-string v1, "c-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7e

    .line 218
    :catch_ae
    move-exception v0

    .line 219
    const-string v1, "a-"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_c0

    const-string v0, "noCause"

    :goto_bc
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_c0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_bc

    .line 241
    :cond_c9
    const-string v1, "y"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_db

    .line 244
    const-string v1, "_n_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2f

    .line 245
    :cond_db
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_ee

    .line 247
    :cond_e7
    const-string v1, "_x_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2f

    .line 250
    :cond_ee
    const-string v1, "_y_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2f

    .line 265
    :cond_f5
    :try_start_f5
    invoke-static {v1}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_f5 .. :try_end_fc} :catch_fe

    goto/16 :goto_51

    .line 266
    :catch_fe
    move-exception v0

    .line 267
    :try_start_ff
    const-string v1, "_t:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_110} :catch_112

    goto/16 :goto_51

    .line 273
    :catch_112
    move-exception v0

    .line 274
    const-string v1, "t:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_51

    .line 278
    :cond_121
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_51
.end method

.method public static appendClassMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/mqunar/core/BaseApkLoader;)V
    .registers 5

    .prologue
    .line 60
    const-string v0, "a="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "#b="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    if-nez p2, :cond_2e

    .line 65
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :goto_14
    const-string v0, "#c="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3a

    const-string v0, "y"

    :goto_25
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    return-void

    .line 67
    :cond_2e
    invoke-virtual {p2}, Lcom/mqunar/core/BaseApkLoader;->getModuleInfo()Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v0, v0, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 72
    :cond_3a
    const-string v0, "n"

    goto :goto_25
.end method

.method public static appendDexMessage(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/mqunar/module/ModuleInfo;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 122
    const-string v0, "a="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v0, "#b="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v0, "#c="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :try_start_19
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 130
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_2d

    array-length v1, v0

    if-nez v1, :cond_38

    .line 132
    :cond_2d
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_32} :catch_3d

    .line 142
    :goto_32
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    return-void

    .line 134
    :cond_38
    :try_start_38
    array-length v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3c} :catch_3d

    goto :goto_32

    .line 139
    :catch_3d
    move-exception v0

    .line 140
    const-string v0, "e"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 137
    :cond_44
    :try_start_44
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_49} :catch_3d

    goto :goto_32
.end method

.method public static appendMI(Landroid/content/Context;Ljava/lang/StringBuilder;Lcom/mqunar/module/ModuleInfo;)Z
    .registers 5

    .prologue
    .line 80
    const-string v0, "a="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    if-nez p2, :cond_18

    .line 82
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const/4 v0, 0x0

    .line 86
    const-string v1, "_mi_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :goto_12
    const-string v1, "|"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    return v0

    .line 89
    :cond_18
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v0, v0, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    if-nez v0, :cond_52

    .line 94
    const-string v0, "n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :goto_37
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v1, p2, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 106
    :try_start_49
    invoke-static {v0}, Lqunar/lego/utils/diffpatch/MD5;->getMD5(Ljava/io/File;)Ljava/lang/String;
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_4c} :catch_6b

    move-result-object v0

    .line 110
    :goto_4d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :goto_50
    const/4 v0, 0x1

    goto :goto_12

    .line 96
    :cond_52
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v0, v0, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-boolean v0, p2, Lcom/mqunar/module/ModuleInfo;->isLoad:Z

    if-eqz v0, :cond_68

    const-string v0, "1"

    :goto_64
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_68
    const-string v0, "-1"

    goto :goto_64

    .line 107
    :catch_6b
    move-exception v0

    .line 108
    const-string v0, "e"

    goto :goto_4d

    .line 112
    :cond_6f
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_50
.end method

.method public static appendMaps(Ljava/lang/StringBuilder;Ljava/util/Map;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 146
    const-string v0, "a="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    if-eqz p2, :cond_22

    .line 149
    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 150
    :cond_f
    const-string v0, "f"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    :cond_14
    :goto_14
    const/16 v0, 0x7c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    return-void

    .line 153
    :cond_1a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 157
    :cond_22
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 158
    :cond_2a
    const-string v0, "n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 160
    :cond_30
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 161
    iget-object v2, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v2, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v2, v2, Lcom/mqunar/core/dependency/Dependency;->checkFlag:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-boolean v0, v0, Lcom/mqunar/module/ModuleInfo;->isLoad:Z

    if-eqz v0, :cond_70

    const-string v0, "1"

    :goto_6c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    :cond_70
    const-string v0, "-1"

    goto :goto_6c
.end method
