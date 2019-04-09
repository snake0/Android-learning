.class public abstract Lcom/mqunar/libtask/AbsConductor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private called:Z

.field protected currentLength:I

.field protected error:I

.field private extraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final msgd:Lcom/mqunar/libtask/MsgDispatcher;

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
            "Lcom/mqunar/libtask/TaskCode;",
            ">;"
        }
    .end annotation
.end field

.field private ticket:Lcom/mqunar/libtask/Ticket;

.field protected train:Lcom/mqunar/libtask/TaskTrain;


# direct methods
.method protected varargs constructor <init>([Lcom/mqunar/libtask/TaskCallback;)V
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_NONE:Lcom/mqunar/libtask/TaskCode;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/libtask/AbsConductor;->currentLength:I

    .line 27
    iput-wide v2, p0, Lcom/mqunar/libtask/AbsConductor;->resultTotal:J

    .line 28
    iput-wide v2, p0, Lcom/mqunar/libtask/AbsConductor;->requestTotal:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/libtask/AbsConductor;->error:I

    .line 31
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/mqunar/libtask/AbsConductor;->progress:I

    .line 40
    new-instance v0, Lcom/mqunar/libtask/MsgDispatcher;

    iget-object v1, p0, Lcom/mqunar/libtask/AbsConductor;->ticket:Lcom/mqunar/libtask/Ticket;

    invoke-direct {v0, v1, p1}, Lcom/mqunar/libtask/MsgDispatcher;-><init>(Lcom/mqunar/libtask/Ticket;[Lcom/mqunar/libtask/TaskCallback;)V

    iput-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    .line 41
    return-void
.end method


# virtual methods
.method public beforeAdd()V
    .registers 1

    .prologue
    .line 221
    return-void
.end method

.method public cancel()Z
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/AbsConductor;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .registers 4

    .prologue
    .line 109
    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 110
    :cond_e
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskCode;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Lcom/mqunar/libtask/TaskCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 111
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0}, Lcom/mqunar/libtask/AbsConductor;->onCancelled()V

    .line 114
    :cond_2a
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    if-eqz v0, :cond_33

    .line 115
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->a()Z

    .line 117
    :cond_33
    const/4 v0, 0x1

    .line 119
    :goto_34
    return v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method protected checkTicket(Lcom/mqunar/libtask/Ticket;)V
    .registers 2

    .prologue
    .line 70
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
    .line 190
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

    invoke-virtual {p0}, Lcom/mqunar/libtask/AbsConductor;->getEmpId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/libtask/AbsConductor;->getEmpName()Ljava/lang/String;

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
            "Lcom/mqunar/libtask/TaskCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {v0}, Lcom/mqunar/libtask/MsgDispatcher;->getCallbacks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLength()I
    .registers 2

    .prologue
    .line 144
    iget v0, p0, Lcom/mqunar/libtask/AbsConductor;->currentLength:I

    return v0
.end method

.method protected abstract getEmpId()I
.end method

.method protected abstract getEmpName()Ljava/lang/String;
.end method

.method public getError()I
    .registers 2

    .prologue
    .line 162
    iget v0, p0, Lcom/mqunar/libtask/AbsConductor;->error:I

    return v0
.end method

.method public getExtraData(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->extraMap:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->extraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getParams()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lcom/mqunar/libtask/AbsConductor;->progress:I

    return v0
.end method

.method public getRequestTotal()J
    .registers 3

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/mqunar/libtask/AbsConductor;->requestTotal:J

    return-wide v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultTotal()J
    .registers 3

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/mqunar/libtask/AbsConductor;->resultTotal:J

    return-wide v0
.end method

.method public getResultType()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->resultType:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/mqunar/libtask/TaskCode;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskCode;

    return-object v0
.end method

.method public abstract hashCode()I
.end method

.method protected final initParam([Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mqunar/libtask/AbsConductor;->params:[Ljava/lang/Object;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/libtask/AbsConductor;->called:Z

    .line 85
    return-void
.end method

.method protected onCancelled()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    .line 102
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 94
    if-eqz p1, :cond_16

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 95
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mqunar/libtask/AbsConductor;->progress:I

    .line 96
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v1, p0}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    .line 98
    :cond_16
    return-void
.end method

.method public final putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->extraMap:Ljava/util/Map;

    if-nez v0, :cond_d

    .line 45
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->extraMap:Ljava/util/Map;

    .line 47
    :cond_d
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->extraMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract sameAs(Lcom/mqunar/libtask/AbsConductor;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mqunar/libtask/AbsConductor;",
            ">(TT;)Z"
        }
    .end annotation
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/mqunar/libtask/AbsConductor;->initParam([Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method final setTaskTrain(Lcom/mqunar/libtask/TaskTrain;)V
    .registers 4

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mqunar/libtask/AbsConductor;->train:Lcom/mqunar/libtask/TaskTrain;

    .line 56
    iget-boolean v0, p0, Lcom/mqunar/libtask/AbsConductor;->called:Z

    if-nez v0, :cond_e

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call initParam first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_e
    invoke-virtual {p1}, Lcom/mqunar/libtask/TaskTrain;->getTicket()Lcom/mqunar/libtask/Ticket;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->ticket:Lcom/mqunar/libtask/Ticket;

    .line 60
    iget-object v0, p0, Lcom/mqunar/libtask/AbsConductor;->ticket:Lcom/mqunar/libtask/Ticket;

    invoke-virtual {p0, v0}, Lcom/mqunar/libtask/AbsConductor;->checkTicket(Lcom/mqunar/libtask/Ticket;)V

    .line 61
    return-void
.end method
