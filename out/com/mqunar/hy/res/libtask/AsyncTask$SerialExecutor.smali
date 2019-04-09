.class Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/libtask/AsyncTask$1;)V
    .registers 2

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor$1;-><init>(Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 264
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 266
    :cond_12
    monitor-exit p0

    return-void

    .line 253
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .registers 3

    .prologue
    .line 269
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 270
    sget-object v0, Lcom/mqunar/hy/res/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 272
    :cond_14
    monitor-exit p0

    return-void

    .line 269
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
