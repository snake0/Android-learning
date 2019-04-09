.class public Lcom/mqunar/necro/agent/logging/AgentLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/mqunar/necro/agent/logging/DefaultAgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/logging/AgentLogManager;->instance:Lcom/mqunar/necro/agent/logging/DefaultAgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/mqunar/necro/agent/logging/AgentLogManager;->instance:Lcom/mqunar/necro/agent/logging/DefaultAgentLog;

    return-object v0
.end method

.method public static setAgentLog(Lcom/mqunar/necro/agent/logging/AgentLog;)V
    .registers 2

    .prologue
    .line 17
    sget-object v0, Lcom/mqunar/necro/agent/logging/AgentLogManager;->instance:Lcom/mqunar/necro/agent/logging/DefaultAgentLog;

    invoke-virtual {v0, p0}, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->setImpl(Lcom/mqunar/necro/agent/logging/AgentLog;)V

    .line 18
    return-void
.end method
