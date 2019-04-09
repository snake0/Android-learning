.class Lcom/mqunar/hy/res/libtask/ChiefGuard$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/libtask/Trumpet;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/ChiefGuard;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lcom/mqunar/hy/res/libtask/TaskTrain;)V
    .registers 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    iget-object v1, v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v1

    .line 55
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 57
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->checkTasks()V

    .line 58
    return-void

    .line 56
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public ok(Lcom/mqunar/hy/res/libtask/TaskTrain;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    iget-object v1, v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v1

    .line 43
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_13

    .line 45
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;->this$0:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->checkTasks()V

    .line 46
    return-void

    .line 44
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
