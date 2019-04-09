.class Lcom/mqunar/libtask/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:Lcom/mqunar/libtask/o;

.field b:Lcom/mqunar/network/NetRequest;


# direct methods
.method constructor <init>(Lcom/mqunar/libtask/o;)V
    .registers 2

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    .line 230
    return-void
.end method


# virtual methods
.method public a(Lcom/mqunar/network/NetRequest;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mqunar/libtask/p;->b:Lcom/mqunar/network/NetRequest;

    .line 234
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 238
    iget-object v1, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    invoke-virtual {v1}, Lcom/mqunar/libtask/o;->getStatus()Lcom/mqunar/libtask/TaskCode;

    move-result-object v1

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_CANCEL:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v1, v2}, Lcom/mqunar/libtask/TaskCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 256
    :goto_f
    return v0

    .line 241
    :cond_10
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_3c

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/network/NetMsgObj;

    .line 243
    iget v1, v0, Lcom/mqunar/network/NetMsgObj;->id:I

    iget-object v2, p0, Lcom/mqunar/libtask/p;->b:Lcom/mqunar/network/NetRequest;

    iget v2, v2, Lcom/mqunar/network/NetRequest;->id:I

    if-ne v1, v2, :cond_3a

    .line 244
    iget-object v2, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    iget-object v1, v0, Lcom/mqunar/network/NetMsgObj;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    iget-wide v3, v0, Lcom/mqunar/network/NetMsgObj;->arg1:J

    iget v0, v0, Lcom/mqunar/network/NetMsgObj;->arg2:I

    invoke-virtual {v2, v1, v3, v4, v0}, Lcom/mqunar/libtask/o;->buildResult([BJI)V

    .line 245
    iget-object v0, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    iget-object v0, v0, Lcom/mqunar/libtask/o;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_RESULT:Lcom/mqunar/libtask/TaskCode;

    iget-object v2, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    .line 256
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    goto :goto_f

    .line 247
    :cond_3c
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5f

    .line 248
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mqunar/network/NetMsgObj;

    .line 249
    iget v1, v0, Lcom/mqunar/network/NetMsgObj;->id:I

    iget-object v2, p0, Lcom/mqunar/libtask/p;->b:Lcom/mqunar/network/NetRequest;

    iget v2, v2, Lcom/mqunar/network/NetRequest;->id:I

    if-ne v1, v2, :cond_3a

    .line 250
    iget-object v1, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    iget-wide v2, v0, Lcom/mqunar/network/NetMsgObj;->arg1:J

    iput-wide v2, v1, Lcom/mqunar/libtask/o;->requestTotal:J

    .line 251
    iget-object v0, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    iget-object v0, v0, Lcom/mqunar/libtask/o;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_REQUEST:Lcom/mqunar/libtask/TaskCode;

    iget-object v2, p0, Lcom/mqunar/libtask/p;->a:Lcom/mqunar/libtask/o;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    goto :goto_3a

    .line 253
    :cond_5f
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    goto :goto_3a
.end method
