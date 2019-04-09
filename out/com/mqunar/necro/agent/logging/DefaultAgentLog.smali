.class public Lcom/mqunar/necro/agent/logging/DefaultAgentLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/logging/AgentLog;


# instance fields
.field private impl:Lcom/mqunar/necro/agent/logging/AgentLog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/mqunar/necro/agent/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/logging/NullAgentLog;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 10
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 19
    monitor-enter p0

    .line 20
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 21
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public error(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 45
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 49
    monitor-enter p0

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 51
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->getLevel()I

    move-result v0

    monitor-exit p0

    return v0

    .line 57
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 25
    monitor-enter p0

    .line 26
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 27
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public setImpl(Lcom/mqunar/necro/agent/logging/AgentLog;)V
    .registers 3

    .prologue
    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iput-object p1, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 15
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setLevel(I)V
    .registers 3

    .prologue
    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->setLevel(I)V

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 63
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 31
    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 33
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public warning(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 37
    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/logging/DefaultAgentLog;->impl:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 39
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
