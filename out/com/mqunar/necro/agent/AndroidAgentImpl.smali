.class Lcom/mqunar/necro/agent/AndroidAgentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/AgentImpl;


# static fields
.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field private static mWorkHandler:Landroid/os/Handler;

.field private static mWorkThread:Landroid/os/HandlerThread;


# instance fields
.field private isStarted:Z

.field private mBackgroundTrace:Lcom/mqunar/necro/agent/tracing/BackgroundTrace;

.field private final mContext:Landroid/content/Context;

.field private traceMachineThread:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/necro/agent/task/IHttpSender;)V
    .registers 5

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->appContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 45
    new-instance v0, Lcom/mqunar/necro/agent/AgentInitializationException;

    const-string v1, "This version of the agent has been disabled"

    invoke-direct {v0, v1}, Lcom/mqunar/necro/agent/AgentInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_17
    new-instance v0, Lcom/mqunar/necro/agent/tracing/BaseTraceMachineThread;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/BaseTraceMachineThread;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->traceMachineThread:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    .line 48
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->traceMachineThread:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    invoke-static {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->setTraceMachineInterface(Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;)V

    .line 51
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/mqunar/necro/agent/NecroUtils;->init(Landroid/content/Context;Lcom/mqunar/necro/agent/task/IHttpSender;)V

    .line 52
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AndroidAgentImpl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkThread:Landroid/os/HandlerThread;

    .line 53
    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method private static appContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 67
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_4
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_16

    .line 61
    new-instance v0, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/tracing/BackgroundTrace;-><init>(Lcom/mqunar/necro/agent/AgentImpl;)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mBackgroundTrace:Lcom/mqunar/necro/agent/tracing/BackgroundTrace;

    .line 62
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mBackgroundTrace:Lcom/mqunar/necro/agent/tracing/BackgroundTrace;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 64
    :cond_16
    return-void
.end method

.method private stop(Z)V
    .registers 4

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isStarted:Z

    .line 86
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->haltTracing()V

    .line 87
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mBackgroundTrace:Lcom/mqunar/necro/agent/tracing/BackgroundTrace;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_19

    .line 88
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mBackgroundTrace:Lcom/mqunar/necro/agent/tracing/BackgroundTrace;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 90
    :cond_19
    return-void
.end method


# virtual methods
.method public dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 4

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isStarted:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_12

    .line 134
    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/necro/agent/AndroidAgentImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/necro/agent/AndroidAgentImpl$1;-><init>(Lcom/mqunar/necro/agent/AndroidAgentImpl;Lcom/mqunar/necro/agent/bean/BaseData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    :cond_12
    return-void
.end method

.method public disable()V
    .registers 4

    .prologue
    .line 93
    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERMANENTLY DISABLING AGENT V"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->stop(Z)V

    .line 95
    return-void
.end method

.method public getCparam()Ljava/lang/String;
    .registers 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 112
    const-string v0, ""

    .line 128
    :goto_6
    return-object v0

    .line 114
    :cond_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 116
    :try_start_c
    iget-object v1, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 119
    const-string v2, "ma"

    invoke-static {}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v2, "osVersion"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v2, "pid"

    sget-object v3, Lcom/mqunar/necro/agent/util/Config;->pid:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v2, "uid"

    iget-object v3, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mqunar/necro/agent/util/AndroidUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v2, "vid"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v1, "ke"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6c} :catch_71

    .line 128
    :goto_6c
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 126
    :catch_71
    move-exception v1

    goto :goto_6c
.end method

.method public getNetworkCarrier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->carrierNameFromContext(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWanType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->wanType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public sendDataNow()V
    .registers 3

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isStarted:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mContext:Landroid/content/Context;

    .line 146
    invoke-static {v0}, Lcom/mqunar/necro/agent/util/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 147
    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->mWorkHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/necro/agent/AndroidAgentImpl$2;

    invoke-direct {v1, p0}, Lcom/mqunar/necro/agent/AndroidAgentImpl$2;-><init>(Lcom/mqunar/necro/agent/AndroidAgentImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_1a
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 71
    sget-object v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "AndroidAgentImpl start start start start start"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isStarted:Z

    if-nez v0, :cond_18

    .line 73
    invoke-direct {p0}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->initialize()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/AndroidAgentImpl;->isStarted:Z

    .line 78
    :goto_17
    return-void

    .line 76
    :cond_18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->stop(Z)V

    goto :goto_17
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/AndroidAgentImpl;->stop(Z)V

    .line 82
    return-void
.end method
