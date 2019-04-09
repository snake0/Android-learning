.class public Lcom/mqunar/necro/agent/tracing/ActivityTraces;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final activityTraces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/tracing/ActivityTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTraces;->activityTraces:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/mqunar/necro/agent/tracing/ActivityTrace;)V
    .registers 3

    .prologue
    .line 13
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 14
    monitor-exit p0

    return-void

    .line 13
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 22
    return-void
.end method

.method public count()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getActivityTraces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/tracing/ActivityTrace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTraces;->activityTraces:Ljava/util/Collection;

    return-object v0
.end method

.method public declared-synchronized remove(Lcom/mqunar/necro/agent/tracing/ActivityTrace;)V
    .registers 3

    .prologue
    .line 17
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 18
    monitor-exit p0

    return-void

    .line 17
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
