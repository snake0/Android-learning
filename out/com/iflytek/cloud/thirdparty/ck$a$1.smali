.class Lcom/iflytek/cloud/thirdparty/ck$a$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ck$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/ck$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6c

    :goto_e
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_8

    :pswitch_12
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/VerifierListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_e

    :pswitch_20
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/VerifierResult;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/VerifierListener;->onResult(Lcom/iflytek/cloud/VerifierResult;)V

    goto :goto_e

    :pswitch_2e
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/VerifierListener;->onVolumeChanged(I[B)V

    goto :goto_e

    :pswitch_40
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onBeginOfSpeech()V

    goto :goto_e

    :pswitch_4a
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onEndOfSpeech()V

    goto :goto_e

    :pswitch_54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ck$a$1;->a:Lcom/iflytek/cloud/thirdparty/ck$a;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ck$a;->a(Lcom/iflytek/cloud/thirdparty/ck$a;)Lcom/iflytek/cloud/VerifierListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/VerifierListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_e

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_12
        :pswitch_2e
        :pswitch_40
        :pswitch_4a
        :pswitch_20
        :pswitch_54
    .end packed-switch
.end method
