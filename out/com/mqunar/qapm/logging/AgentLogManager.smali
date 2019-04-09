.class public Lcom/mqunar/qapm/logging/AgentLogManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mqunar/qapm/logging/DefaultAgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    new-instance v0, Lcom/mqunar/qapm/logging/DefaultAgentLog;

    invoke-direct {v0}, Lcom/mqunar/qapm/logging/DefaultAgentLog;-><init>()V

    sput-object v0, Lcom/mqunar/qapm/logging/AgentLogManager;->a:Lcom/mqunar/qapm/logging/DefaultAgentLog;

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

.method public static getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/mqunar/qapm/logging/AgentLogManager;->a:Lcom/mqunar/qapm/logging/DefaultAgentLog;

    return-object v0
.end method

.method public static setAgentLog(Lcom/mqunar/qapm/logging/AgentLog;)V
    .registers 2

    .prologue
    .line 17
    sget-object v0, Lcom/mqunar/qapm/logging/AgentLogManager;->a:Lcom/mqunar/qapm/logging/DefaultAgentLog;

    invoke-virtual {v0, p0}, Lcom/mqunar/qapm/logging/DefaultAgentLog;->setImpl(Lcom/mqunar/qapm/logging/AgentLog;)V

    .line 18
    return-void
.end method
