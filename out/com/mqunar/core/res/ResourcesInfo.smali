.class public Lcom/mqunar/core/res/ResourcesInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/res/AssetManager;

.field public static qResources:Landroid/content/res/Resources;

.field public static sysResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static genNewResources()Landroid/content/res/Resources;
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 459
    const-string v0, "fuck"

    const-string v1, "AssetManager.class.getDeclaredMethod"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    const-string v0, "fuck"

    const-string v1, "QApplication.getContext().getResources()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    if-nez v0, :cond_21

    .line 465
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 467
    :cond_21
    const-string v0, "fuck"

    const-string v1, "AssetManager.class.newInstance()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    :try_start_2a
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 470
    const-string v1, "fuck"

    const-string v2, "addModulesAssetsPath"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    sget-object v1, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Lcom/mqunar/core/QunarApkLoader;->addModulesAssetsPath(Landroid/content/res/Resources;Landroid/content/res/AssetManager;)V

    .line 472
    const-string v1, "fuck"

    const-string v2, "new Resources"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    new-instance v1, Lcom/mqunar/core/res/ResourcesInfo$QResources;

    sget-object v2, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 474
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-object v3, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 475
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/mqunar/core/res/ResourcesInfo$QResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v1, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5e} :catch_86

    .line 479
    const-string v0, "fuck"

    const-string v1, "qResources.newTheme()"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 481
    const-string v1, "fuck"

    const-string v2, " mTheme.setTo(QApplication.getContext().getTheme());"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 483
    if-eqz v1, :cond_83

    .line 484
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 491
    :cond_83
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    return-object v0

    .line 476
    :catch_86
    move-exception v0

    .line 477
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static genNewResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 6

    .prologue
    .line 432
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    if-nez v0, :cond_e

    .line 433
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 435
    :cond_e
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->a:Landroid/content/res/AssetManager;

    if-nez v0, :cond_1a

    .line 436
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/res/ResourcesInfo;->a:Landroid/content/res/AssetManager;

    .line 439
    :cond_1a
    :try_start_1a
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 442
    sget-object v1, Lcom/mqunar/core/res/ResourcesInfo;->a:Landroid/content/res/AssetManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_39} :catch_64

    .line 445
    :goto_39
    new-instance v0, Lcom/mqunar/core/res/ResourcesInfo$QResources;

    sget-object v1, Lcom/mqunar/core/res/ResourcesInfo;->a:Landroid/content/res/AssetManager;

    sget-object v2, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 446
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-object v3, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 447
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mqunar/core/res/ResourcesInfo$QResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    sput-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    .line 448
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 449
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_61

    .line 451
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 453
    :cond_61
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    return-object v0

    .line 443
    :catch_64
    move-exception v0

    goto :goto_39
.end method

.method public static getCurrentResources()Landroid/content/res/Resources;
    .registers 1

    .prologue
    .line 500
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_7

    .line 501
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->qResources:Landroid/content/res/Resources;

    .line 506
    :goto_6
    return-object v0

    .line 503
    :cond_7
    sget-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    if-nez v0, :cond_17

    .line 504
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/mqunar/spider/QunarApp;

    invoke-virtual {v0}, Lcom/mqunar/spider/QunarApp;->getSuperResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/res/ResourcesInfo;->sysResources:Landroid/content/res/Resources;

    .line 506
    :cond_17
    invoke-static {}, Lcom/mqunar/core/res/ResourcesInfo;->genNewResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_6
.end method
