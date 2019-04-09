.class Lcom/iflytek/cloud/thirdparty/bn$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/record/c$a;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/bn;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/bn;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->b(Lcom/iflytek/cloud/thirdparty/bn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public a(III)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->b(Lcom/iflytek/cloud/thirdparty/bn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->b(Lcom/iflytek/cloud/thirdparty/bn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->i(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/c;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->i(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/record/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/record/c;->e()V

    :cond_1f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/bn;->cancel(Z)V

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->b(Lcom/iflytek/cloud/thirdparty/bn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public c()V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$2;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->b(Lcom/iflytek/cloud/thirdparty/bn;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
