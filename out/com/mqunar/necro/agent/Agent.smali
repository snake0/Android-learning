.class public Lcom/mqunar/necro/agent/Agent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NULL_AGENT_IMPL:Lcom/mqunar/necro/agent/AgentImpl;

.field public static final VERSION:Ljava/lang/String; = "0.0.1"

.field private static agentImpl:Lcom/mqunar/necro/agent/AgentImpl;

.field public static applicationStart:J

.field private static implLock:Ljava/lang/Object;

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 14
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/Agent;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 17
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mqunar/necro/agent/Agent;->applicationStart:J

    .line 18
    new-instance v0, Lcom/mqunar/necro/agent/NullAgentImpl;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/NullAgentImpl;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/Agent;->NULL_AGENT_IMPL:Lcom/mqunar/necro/agent/AgentImpl;

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/Agent;->implLock:Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/mqunar/necro/agent/Agent;->NULL_AGENT_IMPL:Lcom/mqunar/necro/agent/AgentImpl;

    sput-object v0, Lcom/mqunar/necro/agent/Agent;->agentImpl:Lcom/mqunar/necro/agent/AgentImpl;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V
    .registers 2

    .prologue
    .line 103
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/mqunar/necro/agent/AgentImpl;->dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V

    .line 104
    return-void
.end method

.method static disable()V
    .registers 1

    .prologue
    .line 70
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->disable()V

    .line 71
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->resetNullAgent()V

    .line 72
    return-void
.end method

.method public static getActiveNetworkCarrier()Ljava/lang/String;
    .registers 1

    .prologue
    .line 87
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->getNetworkCarrier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActiveNetworkWanType()Ljava/lang/String;
    .registers 1

    .prologue
    .line 91
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->getNetworkWanType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCparam()Ljava/lang/String;
    .registers 1

    .prologue
    .line 95
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->getCparam()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImpl()Lcom/mqunar/necro/agent/AgentImpl;
    .registers 2

    .prologue
    .line 40
    sget-object v1, Lcom/mqunar/necro/agent/Agent;->implLock:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_3
    sget-object v0, Lcom/mqunar/necro/agent/Agent;->agentImpl:Lcom/mqunar/necro/agent/AgentImpl;

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 66
    const-string v0, "0.0.1"

    return-object v0
.end method

.method static initAndroidAgent(Landroid/content/Context;Lcom/mqunar/necro/agent/task/IHttpSender;)V
    .registers 6

    .prologue
    .line 51
    :try_start_0
    new-instance v0, Lcom/mqunar/necro/agent/AndroidAgentImpl;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/necro/agent/AndroidAgentImpl;-><init>(Landroid/content/Context;Lcom/mqunar/necro/agent/task/IHttpSender;)V

    invoke-static {v0}, Lcom/mqunar/necro/agent/Agent;->setImpl(Lcom/mqunar/necro/agent/AgentImpl;)V
    :try_end_8
    .catch Lcom/mqunar/necro/agent/AgentInitializationException; {:try_start_0 .. :try_end_8} :catch_9

    .line 55
    :goto_8
    return-void

    .line 52
    :catch_9
    move-exception v0

    .line 53
    sget-object v1, Lcom/mqunar/necro/agent/Agent;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize the agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/AgentInitializationException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_8
.end method

.method static isDisabled()Z
    .registers 1

    .prologue
    .line 75
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->isDisabled()Z

    move-result v0

    return v0
.end method

.method static resetNullAgent()V
    .registers 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mqunar/necro/agent/Agent;->setImpl(Lcom/mqunar/necro/agent/AgentImpl;)V

    .line 63
    return-void
.end method

.method public static sendDataNow()V
    .registers 1

    .prologue
    .line 111
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->sendDataNow()V

    .line 112
    return-void
.end method

.method private static setImpl(Lcom/mqunar/necro/agent/AgentImpl;)V
    .registers 3

    .prologue
    .line 30
    sget-object v1, Lcom/mqunar/necro/agent/Agent;->implLock:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    if-nez p0, :cond_b

    .line 32
    :try_start_5
    sget-object v0, Lcom/mqunar/necro/agent/Agent;->NULL_AGENT_IMPL:Lcom/mqunar/necro/agent/AgentImpl;

    sput-object v0, Lcom/mqunar/necro/agent/Agent;->agentImpl:Lcom/mqunar/necro/agent/AgentImpl;

    .line 36
    :goto_9
    monitor-exit v1

    .line 37
    return-void

    .line 34
    :cond_b
    sput-object p0, Lcom/mqunar/necro/agent/Agent;->agentImpl:Lcom/mqunar/necro/agent/AgentImpl;

    goto :goto_9

    .line 36
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method static start()V
    .registers 1

    .prologue
    .line 79
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->start()V

    .line 80
    return-void
.end method

.method public static startApp()V
    .registers 2

    .prologue
    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/necro/agent/Agent;->applicationStart:J

    .line 120
    return-void
.end method

.method static stop()V
    .registers 1

    .prologue
    .line 83
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getImpl()Lcom/mqunar/necro/agent/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/necro/agent/AgentImpl;->stop()V

    .line 84
    return-void
.end method
