.class public Lcom/mqunar/necro/agent/NewNecro;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static isRelease:Z

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# instance fields
.field private sender:Lcom/mqunar/necro/agent/task/IHttpSender;

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/NewNecro;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/mqunar/necro/agent/task/DefaultSender;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/task/DefaultSender;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/NewNecro;->sender:Lcom/mqunar/necro/agent/task/IHttpSender;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/NewNecro;->started:Z

    .line 26
    return-void
.end method

.method private isInstrumented()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static startApp()V
    .registers 0

    .prologue
    .line 106
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->startApp()V

    .line 107
    return-void
.end method

.method public static withAppToken(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/mqunar/necro/agent/NewNecro;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/NewNecro;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 85
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/NewNecro;->started:Z

    if-eqz v0, :cond_a

    .line 87
    :try_start_5
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->stop()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    .line 89
    iput-boolean v1, p0, Lcom/mqunar/necro/agent/NewNecro;->started:Z

    .line 92
    :cond_a
    return-void

    .line 89
    :catchall_b
    move-exception v0

    iput-boolean v1, p0, Lcom/mqunar/necro/agent/NewNecro;->started:Z

    throw v0
.end method

.method public start(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 64
    sget-object v0, Lcom/mqunar/necro/agent/util/Config;->pid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "qnecro agent pid must be not null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_11
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/NewNecro;->started:Z

    if-eqz v0, :cond_1d

    .line 68
    sget-object v0, Lcom/mqunar/necro/agent/NewNecro;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "NewNecro is already running."

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 80
    :goto_1c
    return-void

    .line 70
    :cond_1d
    invoke-direct {p0}, Lcom/mqunar/necro/agent/NewNecro;->isInstrumented()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 71
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mqunar/qapm/QAPM;->make(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/qapm/QAPM;

    move-result-object v2

    sget-boolean v0, Lcom/mqunar/necro/agent/NewNecro;->isRelease:Z

    if-nez v0, :cond_3b

    move v0, v1

    :goto_2d
    invoke-virtual {v2, v0}, Lcom/mqunar/qapm/QAPM;->withLogEnabled(Z)Lcom/mqunar/qapm/QAPM;

    .line 72
    iget-object v0, p0, Lcom/mqunar/necro/agent/NewNecro;->sender:Lcom/mqunar/necro/agent/task/IHttpSender;

    invoke-static {p1, v0}, Lcom/mqunar/necro/agent/Agent;->initAndroidAgent(Landroid/content/Context;Lcom/mqunar/necro/agent/task/IHttpSender;)V

    .line 73
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->start()V

    .line 74
    iput-boolean v1, p0, Lcom/mqunar/necro/agent/NewNecro;->started:Z

    goto :goto_1c

    .line 71
    :cond_3b
    const/4 v0, 0x0

    goto :goto_2d

    .line 77
    :cond_3d
    sget-object v0, Lcom/mqunar/necro/agent/NewNecro;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Failed to detect New Necro instrumentation."

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public withCid(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;
    .registers 2

    .prologue
    .line 44
    sput-object p1, Lcom/mqunar/necro/agent/util/Config;->cid:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public withLogEnabled(Z)Lcom/mqunar/necro/agent/NewNecro;
    .registers 3

    .prologue
    .line 33
    if-nez p1, :cond_10

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/mqunar/necro/agent/NewNecro;->isRelease:Z

    .line 34
    if-eqz p1, :cond_12

    new-instance v0, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/logging/AndroidAgentLog;-><init>()V

    :goto_c
    invoke-static {v0}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->setAgentLog(Lcom/mqunar/necro/agent/logging/AgentLog;)V

    .line 35
    return-object p0

    .line 33
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 34
    :cond_12
    new-instance v0, Lcom/mqunar/necro/agent/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/logging/NullAgentLog;-><init>()V

    goto :goto_c
.end method

.method public withLogLevel(I)Lcom/mqunar/necro/agent/NewNecro;
    .registers 3

    .prologue
    .line 49
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->setLevel(I)V

    .line 50
    return-object p0
.end method

.method public withPid(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;
    .registers 2

    .prologue
    .line 39
    sput-object p1, Lcom/mqunar/necro/agent/util/Config;->pid:Ljava/lang/String;

    .line 40
    return-object p0
.end method

.method public withRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;
    .registers 3

    .prologue
    .line 54
    sput-object p1, Lcom/mqunar/necro/agent/util/Config;->pitcher:Ljava/lang/String;

    .line 55
    sput-object p2, Lcom/mqunar/necro/agent/util/Config;->t:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method withSender(Lcom/mqunar/necro/agent/task/IHttpSender;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mqunar/necro/agent/NewNecro;->sender:Lcom/mqunar/necro/agent/task/IHttpSender;

    .line 61
    return-void
.end method
