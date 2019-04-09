.class public Lcom/mqunar/atomenv/GlobalEnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/atomenv/IEnvironment;


# static fields
.field private static a:Lcom/mqunar/atomenv/GlobalEnv;


# instance fields
.field private b:Lcom/mqunar/atomenv/IEnvironment;

.field private c:Lcom/mqunar/storage/Storage;

.field private d:Lcom/mqunar/storage/Storage;

.field private e:Z

.field private f:Lcom/mqunar/atomenv/DeployType;

.field private g:Lcom/mqunar/atomenv/BuildType;

.field private h:Lcom/mqunar/atomenv/Runtime;

.field protected storage_global:Lcom/mqunar/storage/Storage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/atomenv/GlobalEnv;->a:Lcom/mqunar/atomenv/GlobalEnv;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    .line 25
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_global"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    .line 26
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->c:Lcom/mqunar/storage/Storage;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->e:Z

    .line 30
    invoke-static {}, Lcom/mqunar/atomenv/EnvInit;->newEnv()Lcom/mqunar/atomenv/IEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    .line 31
    return-void
.end method

.method private a()V
    .registers 3

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->e:Z

    if-eqz v0, :cond_c

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "can not set ENV when locked!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_c
    return-void
.end method

.method public static getInstance()Lcom/mqunar/atomenv/GlobalEnv;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/mqunar/atomenv/GlobalEnv;->a:Lcom/mqunar/atomenv/GlobalEnv;

    if-nez v0, :cond_13

    .line 39
    const-class v1, Lcom/mqunar/atomenv/GlobalEnv;

    monitor-enter v1

    .line 40
    :try_start_7
    sget-object v0, Lcom/mqunar/atomenv/GlobalEnv;->a:Lcom/mqunar/atomenv/GlobalEnv;

    if-nez v0, :cond_12

    .line 41
    new-instance v0, Lcom/mqunar/atomenv/GlobalEnv;

    invoke-direct {v0}, Lcom/mqunar/atomenv/GlobalEnv;-><init>()V

    sput-object v0, Lcom/mqunar/atomenv/GlobalEnv;->a:Lcom/mqunar/atomenv/GlobalEnv;

    .line 43
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 45
    :cond_13
    sget-object v0, Lcom/mqunar/atomenv/GlobalEnv;->a:Lcom/mqunar/atomenv/GlobalEnv;

    return-object v0

    .line 43
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public envLock()V
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->e:Z

    .line 52
    return-void
.end method

.method public getBaiduVoiceUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBaiduVoiceUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBetaLatitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBetaLongitude()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getBetaString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBetaSwitch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    :cond_6
    :goto_6
    return-object p2

    .line 456
    :cond_7
    :try_start_7
    const-string v0, "com.mqunar.atomenv.env.debug.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 457
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 458
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 459
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 460
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inter_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 461
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_4e} :catch_53

    move-result v1

    if-nez v1, :cond_6

    move-object p2, v0

    .line 464
    goto :goto_6

    .line 466
    :catch_53
    move-exception v0

    goto :goto_6
.end method

.method public declared-synchronized getBuildType()Lcom/mqunar/atomenv/BuildType;
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 78
    sget-object v0, Lcom/mqunar/atomenv/BuildType;->RELEASE:Lcom/mqunar/atomenv/BuildType;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 83
    :goto_9
    monitor-exit p0

    return-object v0

    .line 80
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->g:Lcom/mqunar/atomenv/BuildType;

    if-nez v0, :cond_15

    .line 81
    invoke-static {}, Lcom/mqunar/atomenv/BuildType;->parseByBuildConfig()Lcom/mqunar/atomenv/BuildType;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->g:Lcom/mqunar/atomenv/BuildType;

    .line 83
    :cond_15
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->g:Lcom/mqunar/atomenv/BuildType;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_9

    .line 76
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCarAboutTouchUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getCarAboutTouchUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCarPullUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getCarPullUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getCid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/mqunar/atomenv/model/Config;
    .registers 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getConfig()Lcom/mqunar/atomenv/model/Config;

    move-result-object v0

    return-object v0
.end method

.method public getConfigJson()Ljava/lang/String;
    .registers 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getConfigJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDBPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getDBPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDawn()Lcom/mqunar/atomenv/model/Dawn;
    .registers 3

    .prologue
    .line 392
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_dawn"

    invoke-virtual {v0, v1}, Lcom/mqunar/storage/Storage;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/model/Dawn;

    return-object v0
.end method

.method public declared-synchronized getDeployType()Lcom/mqunar/atomenv/DeployType;
    .registers 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    sget-object v0, Lcom/mqunar/atomenv/DeployType;->OPS:Lcom/mqunar/atomenv/DeployType;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 96
    :goto_9
    monitor-exit p0

    return-object v0

    .line 92
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->f:Lcom/mqunar/atomenv/DeployType;

    if-nez v0, :cond_15

    .line 93
    invoke-static {}, Lcom/mqunar/atomenv/DeployType;->parseByBuildConfig()Lcom/mqunar/atomenv/DeployType;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->f:Lcom/mqunar/atomenv/DeployType;

    .line 96
    :cond_15
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->f:Lcom/mqunar/atomenv/DeployType;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_9

    .line 88
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEnv()Lcom/mqunar/atomenv/IEnvironment;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getGid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalUCUserResult()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;
    .registers 3

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->getUserResultJson()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 136
    const-class v1, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;

    invoke-static {v0, v1}, Lcom/mqunar/json/JsonUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 141
    :goto_12
    return-object v0

    .line 138
    :catch_13
    move-exception v0

    .line 139
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 141
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getHotDogUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getHotDogUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHotelUploadPicUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getHotelUploadPicUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalLifeUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getLocalLifeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOuterCarUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getOuterCarUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getPayUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getPid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRCid()Ljava/lang/String;
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->c:Lcom/mqunar/storage/Storage;

    const-string v1, "sys_rcid"

    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getRuntime()Lcom/mqunar/atomenv/Runtime;
    .registers 2

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    sget-object v0, Lcom/mqunar/atomenv/Runtime;->ILLEGAL:Lcom/mqunar/atomenv/Runtime;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 106
    :goto_9
    monitor-exit p0

    return-object v0

    .line 103
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->h:Lcom/mqunar/atomenv/Runtime;

    if-nez v0, :cond_15

    .line 104
    invoke-static {}, Lcom/mqunar/atomenv/Runtime;->parseByBuildConfig()Lcom/mqunar/atomenv/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->h:Lcom/mqunar/atomenv/Runtime;

    .line 106
    :cond_15
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->h:Lcom/mqunar/atomenv/Runtime;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_18

    goto :goto_9

    .line 100
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getScheme()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getScheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeWap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSchemeWap()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerTime()Lcom/mqunar/atomenv/model/ServerTime;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getServerTime()Lcom/mqunar/atomenv/model/ServerTime;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplashAdUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSplashAdUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSplashWebUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getSplashWebUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUCLoginT()I
    .registers 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_ucloginT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUCparamJsonStr()Ljava/lang/String;
    .registers 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_ucparamJsonStr"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->getGlobalUCUserResult()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 165
    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->getUuid()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_22
    return-object v0

    :cond_23
    const-string v0, ""

    goto :goto_22
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->getGlobalUCUserResult()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 126
    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->getUserid()Ljava/lang/String;

    move-result-object v0

    .line 128
    :goto_22
    return-object v0

    :cond_23
    const-string v0, ""

    goto :goto_22
.end method

.method public getUserName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->getGlobalUCUserResult()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 152
    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult;->getData()Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserResult$GlobalUserData;->getUinfo()Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/uc/model/GlobalUCUserInfo;->getUname()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_22
    return-object v0

    :cond_23
    const-string v0, ""

    goto :goto_22
.end method

.method public getUserResultJson()Ljava/lang/String;
    .registers 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_userResult"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getVid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWXAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->getWXAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoSwapImage()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isAutoSwapImage()Z

    move-result v0

    return v0
.end method

.method public isBeta()Z
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isBeta()Z

    move-result v0

    return v0
.end method

.method public isDev()Z
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isDev()Z

    move-result v0

    return v0
.end method

.method public isRelease()Z
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0}, Lcom/mqunar/atomenv/IEnvironment;->isRelease()Z

    move-result v0

    return v0
.end method

.method public putAutoSwapImage(Z)V
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putAutoSwapImage(Z)V

    .line 205
    return-void
.end method

.method public putDBPath(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putDBPath(Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public putDawn(Lcom/mqunar/atomenv/model/Dawn;)V
    .registers 4

    .prologue
    .line 385
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_dawn"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 386
    return-void
.end method

.method public putSplashAdUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putSplashAdUrl(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public putTint(J)V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/atomenv/IEnvironment;->putTint(J)V

    .line 216
    return-void
.end method

.method public putTstr(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    invoke-interface {v0, p1}, Lcom/mqunar/atomenv/IEnvironment;->putTstr(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public putUCLoginT(I)V
    .registers 4

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_ucloginT"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putInt(Ljava/lang/String;I)Z

    .line 425
    return-void
.end method

.method public putUCparamJsonStr(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_ucparamJsonStr"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 418
    return-void
.end method

.method public putUserResultJson(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 357
    const-string v1, "UN"

    if-nez p1, :cond_36

    const-string v0, "null"

    :goto_6
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 359
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_userResult"

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 361
    const-string v1, "com.mqunar.usercenter.MESSAGE_LOGIN_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v1, "state"

    const-string v2, "login"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 365
    :cond_35
    return-void

    :cond_36
    move-object v0, p1

    .line 357
    goto :goto_6
.end method

.method public removeLoginT()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_ucloginT"

    invoke-virtual {v0, v1}, Lcom/mqunar/storage/Storage;->remove(Ljava/lang/String;)Z

    .line 432
    return-void
.end method

.method public removeUserResultJson()V
    .registers 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->storage_global:Lcom/mqunar/storage/Storage;

    const-string v1, "global_userResult"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    const-string v1, "com.mqunar.usercenter.MESSAGE_LOGIN_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v1, "state"

    const-string v2, "logout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 377
    return-void
.end method

.method public setDelegate(Lcom/mqunar/atomenv/env/DelegateEnvironment;)V
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    iput-object v0, p1, Lcom/mqunar/atomenv/env/DelegateEnvironment;->environment:Lcom/mqunar/atomenv/IEnvironment;

    .line 68
    invoke-virtual {p0, p1}, Lcom/mqunar/atomenv/GlobalEnv;->setEnv(Lcom/mqunar/atomenv/IEnvironment;)V

    .line 69
    return-void
.end method

.method public setEnv(Lcom/mqunar/atomenv/IEnvironment;)V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mqunar/atomenv/GlobalEnv;->a()V

    .line 62
    iput-object p1, p0, Lcom/mqunar/atomenv/GlobalEnv;->b:Lcom/mqunar/atomenv/IEnvironment;

    .line 63
    return-void
.end method

.method public declared-synchronized transferDebug()Lcom/mqunar/storage/Storage;
    .registers 3

    .prologue
    .line 441
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1d

    move-result v0

    if-eqz v0, :cond_a

    .line 442
    const/4 v0, 0x0

    .line 447
    :goto_8
    monitor-exit p0

    return-object v0

    .line 444
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->d:Lcom/mqunar/storage/Storage;

    if-nez v0, :cond_1a

    .line 445
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_debug"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->d:Lcom/mqunar/storage/Storage;

    .line 447
    :cond_1a
    iget-object v0, p0, Lcom/mqunar/atomenv/GlobalEnv;->d:Lcom/mqunar/storage/Storage;
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1d

    goto :goto_8

    .line 441
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
