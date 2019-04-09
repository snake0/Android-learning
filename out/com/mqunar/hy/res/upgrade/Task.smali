.class abstract Lcom/mqunar/hy/res/upgrade/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TASK_FAILED:B = 0x3t

.field public static final TASK_NORUN:B = 0x0t

.field public static final TASK_RUNING:B = 0x1t

.field public static final TASK_SUCCESS:B = 0x2t


# instance fields
.field private isValid:Z

.field private status:B


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mqunar/hy/res/upgrade/Task;->status:B

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/hy/res/upgrade/Task;->isValid:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized necessary()Z
    .registers 3

    .prologue
    .line 21
    monitor-enter p0

    :try_start_1
    iget-byte v0, p0, Lcom/mqunar/hy/res/upgrade/Task;->status:B

    if-eqz v0, :cond_a

    iget-byte v0, p0, Lcom/mqunar/hy/res/upgrade/Task;->status:B
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_f

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    :cond_a
    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs abstract run(Ljava/util/List;Lcom/mqunar/hy/res/TaskResult;[Ljava/io/Serializable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/mqunar/hy/res/TaskResult",
            "<TV;>;[TT;)V"
        }
    .end annotation
.end method

.method public declared-synchronized setStatus(B)V
    .registers 3

    .prologue
    .line 25
    monitor-enter p0

    :try_start_1
    iput-byte p1, p0, Lcom/mqunar/hy/res/upgrade/Task;->status:B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 26
    monitor-exit p0

    return-void

    .line 25
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValid(Z)V
    .registers 3

    .prologue
    .line 29
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/mqunar/hy/res/upgrade/Task;->isValid:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 30
    monitor-exit p0

    return-void

    .line 29
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized valid()Z
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/mqunar/hy/res/upgrade/Task;->isValid:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
