.class Lcom/iflytek/cloud/thirdparty/bi$a$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/bi$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/bi$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bi$a$1;->a:Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi$a$1;->a:Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bi$a;->a(Lcom/iflytek/cloud/thirdparty/bi$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeechListener onMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    :goto_26
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_2a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi$a$1;->a:Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bi$a;->a(Lcom/iflytek/cloud/thirdparty/bi$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/SpeechListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_26

    :pswitch_3a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi$a$1;->a:Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bi$a;->a(Lcom/iflytek/cloud/thirdparty/bi$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    goto :goto_26

    :pswitch_4a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bi$a$1;->a:Lcom/iflytek/cloud/thirdparty/bi$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bi$a;->a(Lcom/iflytek/cloud/thirdparty/bi$a;)Lcom/iflytek/cloud/SpeechListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_26

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_3a
        :pswitch_4a
    .end packed-switch
.end method
