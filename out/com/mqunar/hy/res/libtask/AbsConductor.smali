.class public abstract Lcom/mqunar/hy/res/libtask/AbsConductor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private called:Z

.field protected currentLength:I

.field protected error:I

.field protected final msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

.field protected params:[Ljava/lang/Object;

.field protected progress:I

.field protected requestTotal:J

.field protected result:Ljava/lang/Object;

.field protected resultTotal:J

.field protected resultType:Ljava/lang/Object;

.field protected status:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/mqunar/hy/res/libtask/TaskCode;",
            ">;"
        }
    .end annotation
.end field

.field private ticket:Lcom/mqunar/hy/res/libtask/Ticket;

.field protected train:Lcom/mqunar/hy/res/libtask/TaskTrain;


# direct methods
.method protected varargs constructor <init>([Lcom/mqunar/hy/res/libtask/TaskCallback;)V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_NONE:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->currentLength:I

    .line 25
    iput-wide v2, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->resultTotal:J

    .line 26
    iput-wide v2, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->requestTotal:J

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->error:I

    .line 29
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->progress:I

    .line 36
    new-instance v0, Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    invoke-direct {v0, v1, p1}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;-><init>(Lcom/mqunar/hy/res/libtask/Ticket;[Lcom/mqunar/hy/res/libtask/TaskCallback;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    .line 37
    return-void
.end method


# virtual methods
.method public beforeAdd()V
    .registers 1

    .prologue
    .line 206
    return-void
.end method

.method public cancel()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .registers 4

    .prologue
    .line 94
    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 95
    :cond_e
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/libtask/TaskCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 96
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->onCancelled()V

    .line 99
    :cond_2a
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    if-eqz v0, :cond_33

    .line 100
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->cancel()Z

    .line 102
    :cond_33
    const/4 v0, 0x1

    .line 104
    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method protected checkTicket(Lcom/mqunar/hy/res/libtask/Ticket;)V
    .registers 2

    .prologue
    .line 55
    return-void
.end method

.method protected abstract doingTask()V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract findCache(Z)Ljava/lang/Object;
.end method

.method public final fullId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->getEmpId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->getEmpName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/libtask/TaskCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->getCallbacks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLength()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->currentLength:I

    return v0
.end method

.method protected abstract getEmpId()I
.end method

.method protected abstract getEmpName()Ljava/lang/String;
.end method

.method public getError()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->error:I

    return v0
.end method

.method public getParams()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->progress:I

    return v0
.end method

.method public getRequestTotal()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->requestTotal:J

    return-wide v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultTotal()J
    .registers 3

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->resultTotal:J

    return-wide v0
.end method

.method public getResultType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->resultType:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/mqunar/hy/res/libtask/TaskCode;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskCode;

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method protected final initParam([Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->params:[Ljava/lang/Object;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->called:Z

    .line 70
    return-void
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    .line 87
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 79
    if-eqz p1, :cond_16

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 80
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->progress:I

    .line 81
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    .line 83
    :cond_16
    return-void
.end method

.method public abstract sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mqunar/hy/res/libtask/AbsConductor;",
            ">(TT;)Z"
        }
    .end annotation
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/libtask/AbsConductor;->initParam([Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method final setTaskTrain(Lcom/mqunar/hy/res/libtask/TaskTrain;)V
    .registers 4

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->train:Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 41
    iget-boolean v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->called:Z

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call initParam first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_e
    invoke-virtual {p1}, Lcom/mqunar/hy/res/libtask/TaskTrain;->getTicket()Lcom/mqunar/hy/res/libtask/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    .line 45
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/AbsConductor;->ticket:Lcom/mqunar/hy/res/libtask/Ticket;

    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/AbsConductor;->checkTicket(Lcom/mqunar/hy/res/libtask/Ticket;)V

    .line 46
    return-void
.end method
