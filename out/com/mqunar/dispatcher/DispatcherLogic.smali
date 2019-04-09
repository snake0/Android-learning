.class public Lcom/mqunar/dispatcher/DispatcherLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 54
    const-string v0, "DispatcherLogic init WASTE"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 48
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static a()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 68
    sget-object v0, Lcom/mqunar/dispatcher/DispatcherLogic;->a:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/dispatcher/DispatcherLogic;->a:Landroid/os/Handler;

    .line 71
    :cond_f
    sget-object v0, Lcom/mqunar/dispatcher/DispatcherLogic;->a:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Ljava/lang/Object;I)V
    .registers 4

    .prologue
    .line 653
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mqunar/dispatcher/DispatcherActivity;

    if-ne v0, v1, :cond_f

    .line 654
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 656
    :cond_f
    return-void
.end method

.method private static a(Ljava/lang/Object;ILandroid/content/Intent;)V
    .registers 5

    .prologue
    .line 647
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mqunar/dispatcher/DispatcherActivity;

    if-ne v0, v1, :cond_f

    .line 648
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 650
    :cond_f
    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 659
    if-eqz p0, :cond_b

    .line 660
    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_c

    .line 661
    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 670
    :cond_b
    :goto_b
    return-void

    .line 662
    :cond_c
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_16

    .line 663
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 666
    :cond_16
    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_b
.end method

.method private static a(Ljava/lang/Object;Landroid/content/Intent;I)V
    .registers 5

    .prologue
    const/high16 v1, 0x2000000

    .line 673
    if-eqz p0, :cond_14

    .line 674
    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1b

    .line 676
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_15

    .line 677
    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 690
    :cond_14
    :goto_14
    return-void

    .line 679
    :cond_15
    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14

    .line 681
    :cond_1b
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_14

    .line 683
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2c

    .line 684
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_14

    .line 686
    :cond_2c
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_14
.end method

.method private static a(Ljava/lang/Object;Landroid/content/Intent;Lcom/mqunar/module/ModuleInfo;)V
    .registers 8

    .prologue
    const/high16 v4, 0x24000000

    const/4 v3, -0x1

    .line 366
    const-string v0, "com.mqunar.imsdk"

    iget-object v1, p2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "com.mqunar.atom.im"

    iget-object v1, p2, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v1, v1, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 367
    :cond_1b
    invoke-static {p2}, Lcom/mqunar/module/ModuleInfoController;->checkAndInstallModuleDependency(Lcom/mqunar/module/ModuleInfo;)V

    .line 370
    :cond_1e
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/core/QunarApkLoader;->loadFromDexs(Lcom/mqunar/core/BaseApkLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 372
    const-class v1, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 373
    const-string v1, "_SPIDER_FLAG_CLEAR_TOP_"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 374
    if-eqz v1, :cond_3f

    .line 375
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 378
    :cond_3f
    const-string v1, "QUNAR_SPIDER_TARGET_SCHEME_URL"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 382
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 383
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 384
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 386
    invoke-static {p0, v2}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 388
    const-string v0, "QUNAR_SPIDER_TARGET_SCHEME_URL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 390
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_7f

    .line 391
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 394
    :cond_7f
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 396
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    invoke-static {}, Lcom/mqunar/dispatcher/DispatcherLogic;->a()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mqunar/dispatcher/h;

    invoke-direct {v2, p0, v0}, Lcom/mqunar/dispatcher/h;-><init>(Ljava/lang/Object;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :goto_9d
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    .line 437
    :cond_a0
    :goto_a0
    return-void

    .line 406
    :cond_a1
    const-string v0, "_SPIDER_REQUESTCODE_"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 407
    if-eq v0, v3, :cond_ad

    .line 408
    invoke-static {p0, p1, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Landroid/content/Intent;I)V

    goto :goto_9d

    .line 410
    :cond_ad
    invoke-static {p0, p1}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Landroid/content/Intent;)V

    goto :goto_9d

    .line 415
    :cond_b1
    const-class v1, Landroid/app/Service;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 417
    :try_start_b9
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_c0
    .catch Ljava/lang/IllegalStateException; {:try_start_b9 .. :try_end_c0} :catch_c4

    .line 421
    :goto_c0
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    goto :goto_a0

    .line 418
    :catch_c4
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_c0

    .line 422
    :cond_c9
    const-class v1, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 423
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 424
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    goto :goto_a0

    .line 425
    :cond_dc
    const-class v1, Lcom/mqunar/core/basectx/QLogic;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 426
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    if-eqz v0, :cond_fb

    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    instance-of v0, v0, Lcom/mqunar/core/basectx/QLogic;

    if-eqz v0, :cond_fb

    .line 427
    iget-object v0, p2, Lcom/mqunar/module/ModuleInfo;->application:Landroid/app/Application;

    check-cast v0, Lcom/mqunar/core/basectx/QLogic;

    invoke-interface {v0, p1}, Lcom/mqunar/core/basectx/QLogic;->processScheme(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 428
    if-eqz v0, :cond_ff

    .line 429
    invoke-static {p0, v3, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;ILandroid/content/Intent;)V

    .line 434
    :cond_fb
    :goto_fb
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    goto :goto_a0

    .line 431
    :cond_ff
    invoke-static {p0, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;I)V

    goto :goto_fb
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 4

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/mqunar/dispatcher/DispatcherLogic;->b(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    return-void
.end method

.method static a(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mqunar/module/ModuleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 618
    if-eqz p0, :cond_4a

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 619
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 620
    const-string v3, "spider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " launcher "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->launcherClassName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 623
    :cond_4a
    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 448
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 449
    if-nez v5, :cond_b

    .line 614
    :cond_a
    :goto_a
    return v3

    .line 452
    :cond_b
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_a

    .line 458
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 459
    if-eq v1, v8, :cond_a

    .line 460
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v1, "scrimmage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 462
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 463
    invoke-static {v5}, Lcom/mqunar/dispatcher/DispatcherLogic;->splitParams(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 465
    const-string v6, "gv"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 466
    invoke-static {}, Lcom/mqunar/dispatcher/DispatcherLogic;->gv()Ljava/lang/String;

    move-result-object v0

    .line 467
    if-eqz p2, :cond_42

    if-eqz v0, :cond_42

    .line 468
    const-string v1, "command"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    move v3, v4

    .line 470
    goto :goto_a

    .line 471
    :cond_44
    const-string v6, "uv"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 473
    if-nez p2, :cond_50

    move v3, v4

    .line 474
    goto :goto_a

    .line 478
    :cond_50
    if-eqz p1, :cond_21b

    .line 479
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 482
    :goto_58
    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->updateModuleInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 485
    const-string v1, "command"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_67
    move v3, v4

    .line 490
    goto :goto_a

    .line 487
    :cond_69
    const-string v0, "command"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67

    .line 491
    :cond_71
    const-string v6, "us"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    move v3, v4

    .line 495
    goto :goto_a

    .line 496
    :cond_7b
    const-string v6, "rm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 499
    const-string v0, "ap"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v3, v4

    .line 508
    goto/16 :goto_a

    .line 509
    :cond_8e
    const-string v6, "lm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c7

    .line 510
    const-string v0, "pn"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    const-string v1, "spider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packagename is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    sget-object v1, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v1}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v6

    .line 515
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/ModuleInfo;

    .line 517
    invoke-static {v6}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/util/Map;)V

    .line 519
    if-nez v1, :cond_17e

    .line 521
    const-string v1, "spider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not found package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v6, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getMInfoList()Ljava/util/List;

    move-result-object v1

    .line 523
    const-string v3, "com.mqunar.spider.MESSAGE_INSTRUCTION_MINFO_SERVER"

    .line 524
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    if-eqz v1, :cond_f6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_125

    .line 526
    :cond_f6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 527
    const-string v2, "scheme"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "packageName"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_114

    .line 531
    const-string v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 533
    :cond_114
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 535
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_122
    move v3, v4

    .line 587
    goto/16 :goto_a

    .line 538
    :cond_125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 539
    :cond_129
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_218

    .line 540
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/module/MInfo;

    .line 541
    iget-object v7, v1, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_129

    .line 547
    :goto_13d
    if-eqz v1, :cond_17a

    .line 549
    iput-byte v8, v1, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-static {v0}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 555
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 556
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "scheme"

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_16b

    .line 560
    const-string v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 562
    :cond_16b
    invoke-virtual {v6, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 564
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_122

    .line 566
    :cond_17a
    invoke-static {p0, p1, v5, v4}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto :goto_122

    .line 571
    :cond_17e
    iget-object v2, v1, Lcom/mqunar/module/ModuleInfo;->launcherClassName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a9

    .line 572
    iget-object v0, v1, Lcom/mqunar/module/ModuleInfo;->launcherClassName:Ljava/lang/String;

    invoke-static {p0, v0, p1, v5}, Lcom/mqunar/dispatcher/DispatcherLogic;->b(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 573
    const-string v0, "spider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found launcher "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mqunar/module/ModuleInfo;->launcherClassName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_122

    .line 575
    :cond_1a9
    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->getMInfo(Ljava/lang/String;)Lcom/mqunar/module/MInfo;

    move-result-object v0

    .line 577
    if-eqz v0, :cond_1c2

    iget-object v1, v0, Lcom/mqunar/module/MInfo;->touch:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c2

    .line 578
    iget-object v0, v0, Lcom/mqunar/module/MInfo;->touch:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 579
    invoke-static {p0, p1, v0, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_122

    .line 582
    :cond_1c2
    invoke-static {p0, p1, v5, v4}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_122

    .line 588
    :cond_1c7
    const-string v2, "bs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 589
    const-string v0, "url"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 590
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 591
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 592
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 594
    invoke-virtual {v5, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 596
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-static {v0, v5, v1}, Lcom/mqunar/dispatcher/SchemeManager;->a(Landroid/content/Context;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    move v1, v3

    .line 597
    :goto_1f9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_215

    .line 598
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 599
    invoke-static {}, Lcom/mqunar/dispatcher/DispatcherLogic;->a()Landroid/os/Handler;

    move-result-object v3

    new-instance v7, Lcom/mqunar/dispatcher/i;

    invoke-direct {v7, p0, v0, v5, v2}, Lcom/mqunar/dispatcher/i;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 597
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f9

    :cond_215
    move v3, v4

    .line 610
    goto/16 :goto_a

    :cond_218
    move-object v1, v2

    goto/16 :goto_13d

    :cond_21b
    move-object v0, v2

    goto/16 :goto_58
.end method

.method static synthetic b(Ljava/lang/Object;)V
    .registers 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 321
    invoke-static {p1}, Lcom/mqunar/module/ModuleInfoController;->matchModule(Ljava/lang/String;)Lcom/mqunar/module/ModuleInfo;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->getMInfo(Lcom/mqunar/module/ModuleInfo;)Lcom/mqunar/module/MInfo;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_11

    .line 326
    iget-byte v2, v1, Lcom/mqunar/module/MInfo;->type:B

    packed-switch v2, :pswitch_data_74

    .line 344
    :cond_11
    if-eqz v0, :cond_5b

    iget-object v2, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 345
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 346
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 350
    invoke-static {p0, v1, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Landroid/content/Intent;Lcom/mqunar/module/ModuleInfo;)V

    .line 362
    :goto_37
    return-void

    .line 328
    :pswitch_38
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6a21\u5757\u5df2\u4e0b\u7ebf"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 329
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    goto :goto_37

    .line 333
    :pswitch_49
    iget-object v0, v1, Lcom/mqunar/module/MInfo;->touch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 334
    iget-object v0, v1, Lcom/mqunar/module/MInfo;->touch:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 338
    :cond_57
    invoke-static {p0, p2, p3, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto :goto_37

    .line 354
    :cond_5b
    if-eqz v1, :cond_6f

    iget-object v0, v1, Lcom/mqunar/module/MInfo;->touch:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 355
    iget-object v0, v1, Lcom/mqunar/module/MInfo;->touch:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 356
    invoke-static {p0, p2, v0, v3}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto :goto_37

    .line 359
    :cond_6f
    invoke-static {p0, p2, p3, v4}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto :goto_37

    .line 326
    nop

    :pswitch_data_74
    .packed-switch 0x2
        :pswitch_49
        :pswitch_38
    .end packed-switch
.end method

.method private static c(Ljava/lang/Object;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 626
    if-eqz p0, :cond_17

    .line 627
    instance-of v0, p0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_14

    .line 628
    check-cast p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    .line 629
    if-eqz p0, :cond_f

    .line 637
    :goto_e
    return-object p0

    .line 632
    :cond_f
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_e

    .line 635
    :cond_14
    check-cast p0, Landroid/content/Context;

    goto :goto_e

    .line 637
    :cond_17
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_e
.end method

.method private static d(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 641
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mqunar/dispatcher/DispatcherActivity;

    if-ne v0, v1, :cond_f

    .line 642
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 644
    :cond_f
    return-void
.end method

.method public static getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 105
    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This isn\'t a hierarchical URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_f
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    .line 110
    if-nez v3, :cond_1a

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 132
    :goto_19
    return-object v0

    .line 114
    :cond_1a
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    .line 115
    const/4 v0, 0x0

    .line 117
    :cond_20
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 118
    if-ne v1, v5, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    :cond_2c
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 121
    if-gt v2, v1, :cond_36

    if-ne v2, v5, :cond_37

    :cond_36
    move v2, v1

    .line 125
    :cond_37
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v0, v1, 0x1

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_20

    .line 132
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_19
.end method

.method public static gv()Ljava/lang/String;
    .registers 6

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 141
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 143
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 144
    const-string v4, "version"

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget v5, v5, Lcom/mqunar/core/dependency/Dependency;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v4, "laucherClassName"

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo;->launcherClassName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v4, "packageName"

    iget-object v5, v0, Lcom/mqunar/module/ModuleInfo;->dependency:Lcom/mqunar/core/dependency/Dependency;

    iget-object v5, v5, Lcom/mqunar/core/dependency/Dependency;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v4, "fileName"

    iget-object v0, v0, Lcom/mqunar/module/ModuleInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 151
    :cond_52
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V
    .registers 8

    .prologue
    .line 295
    if-eqz p3, :cond_74

    .line 297
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://touch.qunar.com/appredirect?url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_22
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_22} :catch_71

    move-result-object v0

    .line 304
    :goto_23
    const-string v1, "spider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openWebView url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 307
    const-string v2, "url"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/mqunar/dispatcher/WebActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 309
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 310
    invoke-static {p0, v1}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 311
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mqunar/dispatcher/g;

    invoke-direct {v1, p2}, Lcom/mqunar/dispatcher/g;-><init>(Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 316
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 317
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    .line 318
    return-void

    .line 298
    :catch_71
    move-exception v0

    move-object v0, p2

    .line 300
    goto :goto_23

    :cond_74
    move-object v0, p2

    .line 302
    goto :goto_23
.end method

.method public static processIntent(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 155
    new-instance v0, Lcom/mqunar/tools/log/UELog;

    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/tools/log/UELog;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/tools/log/UELog;->logIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/mqunar/qav/uelog/QAVLog;

    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/qav/uelog/QAVLog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qav/uelog/QAVLog;->logIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {p0, p1}, Lcom/mqunar/dispatcher/DispatcherLogic;->processIntentNotLog(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method public static processIntentInner(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 183
    if-nez p1, :cond_6

    .line 184
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    .line 291
    :goto_5
    return-void

    .line 188
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 189
    if-nez v0, :cond_10

    .line 190
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V

    goto :goto_5

    .line 195
    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mqunar/dispatcher/SchemeManager;->getMappingComponent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15b

    .line 200
    :cond_26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_162

    .line 201
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    .line 203
    :goto_31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    invoke-static {p0, p1, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    .line 205
    if-eqz v1, :cond_78

    .line 206
    const-string v1, "_RESULT_BROADCAST_MESSAGE_ACTION_"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 207
    const-string v1, "_RESULT_BROADCAST_MESSAGE_ACTION_"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 216
    :goto_5d
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->d(Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_60} :catch_61

    goto :goto_5

    .line 286
    :catch_61
    move-exception v0

    .line 287
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 212
    :cond_6b
    :try_start_6b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 214
    const/4 v0, -0x1

    invoke-static {p0, v0, v1}, Lcom/mqunar/dispatcher/DispatcherLogic;->a(Ljava/lang/Object;ILandroid/content/Intent;)V

    goto :goto_5d

    .line 218
    :cond_78
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/mqunar/dispatcher/SchemeManager;->mapping(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_155

    .line 220
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    invoke-virtual {v0}, Lcom/mqunar/module/Modules;->mapCopy()Ljava/util/Map;

    move-result-object v0

    .line 222
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    .line 224
    if-nez v0, :cond_14f

    .line 226
    const-string v0, "spider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not found package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-static {}, Lcom/mqunar/module/ModuleInfoController;->getMInfoList()Ljava/util/List;

    move-result-object v0

    .line 229
    const-string v1, "com.mqunar.spider.MESSAGE_INSTRUCTION_MINFO_SERVER"

    .line 230
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    if-eqz v0, :cond_c2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 232
    :cond_c2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    const-string v1, "scheme"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v1, "packageName"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_e0

    .line 237
    const-string v2, "bundle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 239
    :cond_e0
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 241
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_5

    .line 243
    :cond_f0
    const/4 v1, 0x0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 245
    :cond_f5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_160

    .line 246
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/MInfo;

    .line 247
    iget-object v6, v0, Lcom/mqunar/module/MInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f5

    .line 252
    :goto_109
    if-eqz v0, :cond_149

    .line 254
    const/4 v1, -0x1

    iput-byte v1, v0, Lcom/mqunar/module/MInfo;->downloadFlag:B

    .line 255
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 256
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    invoke-static {v1}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 260
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 261
    const-string v3, "command"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "scheme"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 264
    if-eqz v0, :cond_139

    .line 265
    const-string v2, "bundle"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 267
    :cond_139
    invoke-virtual {v4, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 269
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->c(Ljava/lang/Object;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_5

    .line 271
    :cond_149
    const/4 v0, 0x1

    invoke-static {p0, p1, v2, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_5

    .line 276
    :cond_14f
    const/4 v0, 0x1

    invoke-static {p0, p1, v2, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_5

    .line 279
    :cond_155
    const/4 v0, 0x1

    invoke-static {p0, p1, v2, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->openWebView(Ljava/lang/Object;Landroid/content/Intent;Landroid/net/Uri;Z)V

    goto/16 :goto_5

    .line 284
    :cond_15b
    invoke-static {p0, v1, p1, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->b(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Intent;Landroid/net/Uri;)V
    :try_end_15e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_15e} :catch_61

    goto/16 :goto_5

    :cond_160
    move-object v0, v1

    goto :goto_109

    :cond_162
    move-object v2, v0

    goto/16 :goto_31
.end method

.method public static processIntentNotLog(Ljava/lang/Object;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 162
    invoke-static {}, Lcom/mqunar/dispatcher/DispatcherLogic;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/dispatcher/f;

    invoke-direct {v1, p1, p0}, Lcom/mqunar/dispatcher/f;-><init>(Landroid/content/Intent;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    return-void
.end method

.method public static splitParams(Landroid/net/Uri;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    if-nez p0, :cond_8

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 101
    :goto_7
    return-object v0

    .line 95
    :cond_8
    invoke-static {p0}, Lcom/mqunar/dispatcher/DispatcherLogic;->getQueryParameterNames(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_2d
    move-object v0, v1

    .line 101
    goto :goto_7
.end method

.method public static updateMapping([B)V
    .registers 1

    .prologue
    .line 80
    return-void
.end method
