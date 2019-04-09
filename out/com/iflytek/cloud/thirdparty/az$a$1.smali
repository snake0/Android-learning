.class Lcom/iflytek/cloud/thirdparty/az$a$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/az$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/az$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/az$a$1;->a:Lcom/iflytek/cloud/thirdparty/az$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az$a$1;->a:Lcom/iflytek/cloud/thirdparty/az$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/az$a;->a(Lcom/iflytek/cloud/thirdparty/az$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_8

    :pswitch_f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az$a$1;->a:Lcom/iflytek/cloud/thirdparty/az$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/az$a;->a(Lcom/iflytek/cloud/thirdparty/az$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/SpeechListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_8

    :pswitch_1f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az$a$1;->a:Lcom/iflytek/cloud/thirdparty/az$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/az$a;->a(Lcom/iflytek/cloud/thirdparty/az$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    goto :goto_8

    :pswitch_2f
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az$a$1;->a:Lcom/iflytek/cloud/thirdparty/az$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/az$a;->a(Lcom/iflytek/cloud/thirdparty/az$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_8

    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_1f
        :pswitch_2f
    .end packed-switch
.end method
