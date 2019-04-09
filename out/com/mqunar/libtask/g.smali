.class Lcom/mqunar/libtask/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/g;->a:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/libtask/a;)V
    .registers 2

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/mqunar/libtask/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()V
    .registers 3

    .prologue
    .line 270
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/libtask/g;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/mqunar/libtask/g;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_14

    .line 271
    sget-object v0, Lcom/mqunar/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/mqunar/libtask/g;->b:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 273
    :cond_14
    monitor-exit p0

    return-void

    .line 270
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 254
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/mqunar/libtask/g;->a:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/mqunar/libtask/h;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/libtask/h;-><init>(Lcom/mqunar/libtask/g;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/mqunar/libtask/g;->b:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 265
    invoke-virtual {p0}, Lcom/mqunar/libtask/g;->a()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 267
    :cond_12
    monitor-exit p0

    return-void

    .line 254
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method
