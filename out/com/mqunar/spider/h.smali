.class Lcom/mqunar/spider/h;
.super Lcom/mqunar/splash/SplashMonitor;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/spider/QunarApp;


# direct methods
.method constructor <init>(Lcom/mqunar/spider/QunarApp;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mqunar/spider/h;->a:Lcom/mqunar/spider/QunarApp;

    invoke-direct {p0}, Lcom/mqunar/splash/SplashMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public initMonitor()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    :try_start_2
    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 81
    iget-object v0, p0, Lcom/mqunar/spider/h;->a:Lcom/mqunar/spider/QunarApp;

    invoke-virtual {v0}, Lcom/mqunar/spider/QunarApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {}, Lcom/mqunar/core/QSpider;->getEnv()I

    move-result v3

    iget-object v4, p0, Lcom/mqunar/spider/h;->a:Lcom/mqunar/spider/QunarApp;

    .line 82
    invoke-virtual {v4}, Lcom/mqunar/spider/QunarApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mqunar/core/QSpider;->getCParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 81
    invoke-static {v0, v3, v4}, Lorg/acra/ACRA;->init(Landroid/app/Application;ILjava/lang/String;)Z

    .line 84
    const-string v0, "token"

    invoke-static {v0}, Lcom/mqunar/necro/agent/NewNecro;->withAppToken(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mqunar/atomenv/GlobalEnv;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mqunar/necro/agent/NewNecro;->withPid(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_68

    move v0, v1

    :goto_42
    invoke-virtual {v3, v0}, Lcom/mqunar/necro/agent/NewNecro;->withLogEnabled(Z)Lcom/mqunar/necro/agent/NewNecro;

    move-result-object v0

    .line 87
    const-string v1, "withSender"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/mqunar/necro/agent/task/IHttpSender;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lcom/mqunar/spider/QNecroSender;

    invoke-direct {v6}, Lcom/mqunar/spider/QNecroSender;-><init>()V

    aput-object v6, v4, v5

    invoke-static {v1, v0, v3, v4}, Lcom/mqunar/core/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, p0, Lcom/mqunar/spider/h;->a:Lcom/mqunar/spider/QunarApp;

    invoke-virtual {v1}, Lcom/mqunar/spider/QunarApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/necro/agent/NewNecro;->start(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_67} :catch_6a

    .line 94
    :cond_67
    :goto_67
    return-void

    :cond_68
    move v0, v2

    .line 86
    goto :goto_42

    .line 91
    :catch_6a
    move-exception v0

    .line 92
    const-string v1, "acra"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init acra fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_67
.end method

.method public monitorAppStartCostTime(ZJJJ)V
    .registers 12

    .prologue
    .line 104
    if-eqz p1, :cond_19

    .line 105
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    const-string v1, "appStartCostAppHot"

    sub-long v2, p6, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/spider/ModuleMonitor;->writeAppStartCostTime(Ljava/lang/String;J)V

    .line 107
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    const-string v1, "AppStartCostAdHot"

    sub-long v2, p4, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/spider/ModuleMonitor;->writeAppAdTime(Ljava/lang/String;J)V

    .line 115
    :goto_18
    return-void

    .line 110
    :cond_19
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    const-string v1, "appStartCostAppCold"

    sget-wide v2, Lcom/mqunar/core/QSpider;->startTime:J

    sub-long v2, p6, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/spider/ModuleMonitor;->writeAppStartCostTime(Ljava/lang/String;J)V

    .line 112
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    const-string v1, "AppStartCostAdCold"

    sget-wide v2, Lcom/mqunar/core/QSpider;->startTime:J

    sub-long v2, p4, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/spider/ModuleMonitor;->writeAppAdTime(Ljava/lang/String;J)V

    goto :goto_18
.end method

.method public monitorShowTime()V
    .registers 5

    .prologue
    .line 98
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    const-class v1, Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/spider/ModuleMonitor;->writeShowTime(Ljava/lang/String;J)V

    .line 100
    return-void
.end method
