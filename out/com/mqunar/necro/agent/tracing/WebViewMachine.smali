.class public Lcom/mqunar/necro/agent/tracing/WebViewMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field private static webData:Lcom/mqunar/necro/agent/bean/WebViewData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dealData()V
    .registers 1

    .prologue
    .line 52
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    :goto_6
    return-void

    .line 55
    :cond_7
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    invoke-static {v0}, Lcom/mqunar/necro/agent/Agent;->dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V

    goto :goto_6
.end method

.method public static isTracingInactive()Z
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static onPageFinished(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "WebViewMachine onPageFinished begin trace "

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 37
    :cond_d
    :goto_d
    return-void

    .line 33
    :cond_e
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    iget-object v0, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->endTime:Ljava/lang/String;

    .line 35
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->dealData()V

    goto :goto_d
.end method

.method public static onPageStarted(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 22
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "WebViewMachine onPageStarted begin trace "

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/mqunar/necro/agent/bean/WebViewData;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/bean/WebViewData;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    .line 24
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    iput-object p0, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->url:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->startTime:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static onReceivedError(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 40
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "WebViewMachine onReceivedError begin trace "

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 49
    :cond_d
    :goto_d
    return-void

    .line 44
    :cond_e
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    iget-object v0, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->endTime:Ljava/lang/String;

    .line 46
    sget-object v0, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->webData:Lcom/mqunar/necro/agent/bean/WebViewData;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/bean/WebViewData;->errorType:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/WebViewMachine;->dealData()V

    goto :goto_d
.end method
