.class Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

.field netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetHttpConductor;)V
    .registers 2

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    .line 212
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 220
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->getStatus()Lcom/mqunar/hy/res/libtask/TaskCode;

    move-result-object v1

    sget-object v2, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/libtask/TaskCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 238
    :goto_f
    return v0

    .line 223
    :cond_10
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_3c

    .line 224
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;

    .line 225
    iget v1, v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->id:I

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget v2, v2, Lcom/mqunar/hy/res/libtask/NetRequest;->id:I

    if-ne v1, v2, :cond_3a

    .line 226
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    iget-object v1, v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-wide v3, v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->arg1:J

    iget v0, v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->arg2:I

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->buildResult([BJI)V

    .line 227
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/hy/res/libtask/TaskCode;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    .line 238
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    goto :goto_f

    .line 229
    :cond_3c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    .line 230
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;

    .line 231
    iget v1, v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->id:I

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget v2, v2, Lcom/mqunar/hy/res/libtask/NetRequest;->id:I

    if-ne v1, v2, :cond_3a

    .line 232
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    iget-wide v2, v0, Lcom/mqunar/hy/res/libtask/NetMsgObj;->arg1:J

    iput-wide v2, v1, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->requestTotal:J

    .line 233
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/NetHttpConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_REQUEST:Lcom/mqunar/hy/res/libtask/TaskCode;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->conductor:Lcom/mqunar/hy/res/libtask/NetHttpConductor;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    goto :goto_3a
.end method

.method public setNetRequest(Lcom/mqunar/hy/res/libtask/NetRequest;)V
    .registers 2

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetHttpConductor$CutCallback;->netRequest:Lcom/mqunar/hy/res/libtask/NetRequest;

    .line 216
    return-void
.end method
