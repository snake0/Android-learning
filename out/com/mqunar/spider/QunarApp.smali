.class public Lcom/mqunar/spider/QunarApp;
.super Lcom/mqunar/core/basectx/application/QApplication;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    endingPrimerClass = Lcom/mqunar/spider/QCrashEndingPrimer;
    monitorANR = true
    monitorNativeCrash = true
    monitorProcess = {
        "com.Qunar:qutui"
    }
    reportPrimerClass = Lcom/mqunar/spider/AcraReportPrimer;
    reportSenderFactoryClasses = {
        Lcom/mqunar/spider/QReportSenderFactory;
    }
.end annotation


# static fields
.field private static isLoadGPush:Z


# instance fields
.field private activityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/spider/QunarApp;->isLoadGPush:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/QApplication;-><init>()V

    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    .line 140
    new-instance v0, Lcom/mqunar/spider/GPushReceiver;

    invoke-direct {v0}, Lcom/mqunar/spider/GPushReceiver;-><init>()V

    .line 141
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    const-string v2, "com.mqunar.atom.qutui.ACTION_MESSAGE_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "com.mqunar.atom.push.notify"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/mqunar/spider/QunarApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 145
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 146
    invoke-virtual {p0, v0, v1}, Lcom/mqunar/spider/QunarApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/mqunar/core/QSpider;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initGPushReceiver~~~~~~"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    return-void
.end method


# virtual methods
.method public clearStack()V
    .registers 4

    .prologue
    .line 184
    const-string v0, "fuck"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearStack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 208
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_32
    if-ltz v1, :cond_43

    .line 209
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 211
    :try_start_3c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3f} :catch_49

    .line 208
    :goto_3f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_32

    .line 215
    :cond_43
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 218
    :cond_48
    return-void

    .line 212
    :catch_49
    move-exception v0

    goto :goto_3f
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .prologue
    .line 180
    invoke-super {p0}, Lcom/mqunar/core/basectx/application/QApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/mqunar/core/basectx/application/QApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSuperResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/mqunar/core/basectx/application/QApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const-string v0, "com.mqunar.atom.alexhome.ui.activity.MainActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 247
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 247
    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/spider/ModuleMonitor;->writeShowTime(Ljava/lang/String;J)V

    .line 250
    :cond_28
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 280
    return-void
.end method

.method public onActivityFinished(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 265
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 260
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 275
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 255
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 270
    return-void
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-super {p0}, Lcom/mqunar/core/basectx/application/QApplication;->onCreate()V

    .line 55
    const-string v0, "SPIDER-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "StartTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lorg/acra/ACRA;->isACRASenderServiceProcess()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lcom/qunar/avra/AVRA;->isInAnalyzerProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 137
    :cond_2f
    :goto_2f
    return-void

    .line 61
    :cond_30
    invoke-static {}, Lcom/mqunar/core/QSpider;->initSpider()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/spider/QunarApp;->activityList:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/mqunar/spider/QunarApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/mqunar/core/QSpider;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 65
    invoke-virtual {p0, p0}, Lcom/mqunar/spider/QunarApp;->qRegisterActivityLifecycleCallbacks(Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher$QActivityLifecycleCallbacks;)V

    .line 67
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Lcom/mqunar/spider/g;

    invoke-direct {v1, p0}, Lcom/mqunar/spider/g;-><init>(Lcom/mqunar/spider/QunarApp;)V

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 76
    new-instance v0, Lcom/mqunar/spider/h;

    invoke-direct {v0, p0}, Lcom/mqunar/spider/h;-><init>(Lcom/mqunar/spider/QunarApp;)V

    invoke-static {v0}, Lcom/mqunar/splash/SplashUtils;->setSplashMonitor(Lcom/mqunar/splash/SplashMonitor;)V

    .line 118
    :try_start_61
    invoke-static {p0}, Lqunar/sdk/location/LocationFacade;->initGPSCache(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_b0

    .line 120
    :goto_64
    const-string v0, "600000033"

    const-string v1, "86c232a29ca480d3343531dec76ee872"

    new-array v2, v5, [I

    const v3, 0x186bc

    aput v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Lcom/baidu/techain/ac/TH;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 124
    :cond_72
    invoke-static {p0}, Lcom/mqunar/network/NetCookieUtils;->clearSessionCookie(Landroid/content/Context;)V

    .line 127
    const-string v0, "com.Qunar:qutui"

    invoke-static {p0}, Lcom/mqunar/core/QSpider;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 128
    invoke-static {}, Lcom/mqunar/qutui/PushManager;->getInstance()Lcom/mqunar/qutui/PushManager;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->getGid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v2

    .line 128
    invoke-virtual {v0, p0, v1, v2}, Lcom/mqunar/qutui/PushManager;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 132
    :cond_98
    sget-boolean v0, Lcom/mqunar/spider/QunarApp;->isLoadGPush:Z

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lcom/mqunar/spider/QunarApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/mqunar/core/QSpider;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 133
    invoke-direct {p0}, Lcom/mqunar/spider/QunarApp;->initReceiver()V

    .line 134
    sput-boolean v5, Lcom/mqunar/spider/QunarApp;->isLoadGPush:Z

    goto :goto_2f

    .line 119
    :catch_b0
    move-exception v0

    goto :goto_64
.end method

.method public onTrimMemory(I)V
    .registers 4

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/application/QApplication;->onTrimMemory(I)V

    .line 236
    invoke-virtual {p0}, Lcom/mqunar/spider/QunarApp;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/mqunar/core/QSpider;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 237
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_18

    .line 238
    invoke-virtual {p0}, Lcom/mqunar/spider/QunarApp;->clearStack()V

    .line 241
    :cond_18
    return-void
.end method
