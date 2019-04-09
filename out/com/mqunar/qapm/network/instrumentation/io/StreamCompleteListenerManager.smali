.class public Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->a:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    .line 64
    if-nez v0, :cond_a

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->a:Z

    .line 68
    :cond_a
    monitor-exit p0

    return v0

    .line 69
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method private b()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    .line 74
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 75
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 76
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 77
    monitor-exit v1

    return-object v0

    .line 78
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V
    .registers 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    .line 25
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 26
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 18
    monitor-enter p0

    .line 19
    :try_start_1
    iget-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->a:Z

    monitor-exit p0

    return v0

    .line 20
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public notifyStreamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 39
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;

    .line 43
    invoke-interface {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;->streamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V

    goto :goto_e

    .line 47
    :cond_1e
    return-void
.end method

.method public notifyStreamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 51
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 53
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;

    .line 55
    invoke-interface {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;->streamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V

    goto :goto_e

    .line 59
    :cond_1e
    return-void
.end method

.method public removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    .line 32
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    monitor-enter v1

    .line 33
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 34
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v0
.end method
