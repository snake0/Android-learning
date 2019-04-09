.class Lcom/iflytek/cloud/thirdparty/p$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/aiui/AIUIListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/p;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/p;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/p$3;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/iflytek/aiui/AIUIEvent;)V
    .registers 5

    const/4 v2, 0x1

    iget v0, p1, Lcom/iflytek/aiui/AIUIEvent;->eventType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p$3;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/p;->b(Lcom/iflytek/cloud/thirdparty/p;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/p$3;->a:Lcom/iflytek/cloud/thirdparty/p;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/p;->c(Lcom/iflytek/cloud/thirdparty/p;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_14
.end method
