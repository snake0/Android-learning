.class public Lcom/mqunar/libtask/TaskCallback$AsHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/libtask/TaskCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mqunar/libtask/AbsConductor;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mqunar/libtask/TaskCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    .line 45
    if-nez p1, :cond_f

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_f
    return-void
.end method


# virtual methods
.method public onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CACHE_HIT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 88
    return-void
.end method

.method public onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    return-void
.end method

.method public onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method

.method public onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_ERROR:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 63
    return-void
.end method

.method public onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void
.end method

.method public onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_REQUEST:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 53
    return-void
.end method

.method public onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 58
    return-void
.end method

.method public onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mqunar/libtask/TaskCallback$AsHandler;->a:Landroid/os/Handler;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1}, Lcom/mqunar/libtask/TaskCode;->getCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    return-void
.end method
