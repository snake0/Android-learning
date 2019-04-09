.class Lcom/iflytek/cloud/thirdparty/cm$c$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cm$c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cm$c;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_98

    :cond_f
    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_9

    :pswitch_13
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/RecognizerListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_f

    :pswitch_21
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/RecognizerListener;->onVolumeChanged(I[B)V

    goto :goto_f

    :pswitch_33
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onBeginOfSpeech()V

    goto :goto_f

    :pswitch_3d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onEndOfSpeech()V

    goto :goto_f

    :pswitch_47
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/RecognizerResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_7d

    move v1, v2

    :goto_56
    invoke-interface {v3, v0, v1}, Lcom/iflytek/cloud/RecognizerListener;->onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cm$c;->b(Lcom/iflytek/cloud/thirdparty/cm$c;)Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/cm$c;->a:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v1, "ui_frs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;Z)Z

    :cond_6f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/cm$c;->a:Lcom/iflytek/cloud/thirdparty/cm;

    const-string v1, "ui_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cm;->b(Ljava/lang/String;)V

    goto :goto_f

    :cond_7d
    const/4 v1, 0x0

    goto :goto_56

    :pswitch_7f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cm$c$1;->a:Lcom/iflytek/cloud/thirdparty/cm$c;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cm$c;->a(Lcom/iflytek/cloud/thirdparty/cm$c;)Lcom/iflytek/cloud/RecognizerListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    goto/16 :goto_f

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_13
        :pswitch_21
        :pswitch_33
        :pswitch_3d
        :pswitch_47
        :pswitch_f
        :pswitch_7f
    .end packed-switch
.end method
