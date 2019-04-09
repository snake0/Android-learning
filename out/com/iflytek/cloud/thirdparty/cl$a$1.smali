.class Lcom/iflytek/cloud/thirdparty/cl$a$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/cl$a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/cl$a;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_74

    :goto_f
    :pswitch_f
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_9

    :pswitch_13
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/EvaluatorListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_f

    :pswitch_21
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-interface {v1, v2, v0}, Lcom/iflytek/cloud/EvaluatorListener;->onVolumeChanged(I[B)V

    goto :goto_f

    :pswitch_33
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/EvaluatorListener;->onBeginOfSpeech()V

    goto :goto_f

    :pswitch_3d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/EvaluatorListener;->onEndOfSpeech()V

    goto :goto_f

    :pswitch_47
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/EvaluatorResult;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_59

    :goto_55
    invoke-interface {v2, v0, v1}, Lcom/iflytek/cloud/EvaluatorListener;->onResult(Lcom/iflytek/cloud/EvaluatorResult;Z)V

    goto :goto_f

    :cond_59
    const/4 v1, 0x0

    goto :goto_55

    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cl$a$1;->a:Lcom/iflytek/cloud/thirdparty/cl$a;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cl$a;->a(Lcom/iflytek/cloud/thirdparty/cl$a;)Lcom/iflytek/cloud/EvaluatorListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/EvaluatorListener;->onEvent(IIILandroid/os/Bundle;)V

    goto :goto_f

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_13
        :pswitch_21
        :pswitch_33
        :pswitch_3d
        :pswitch_47
        :pswitch_f
        :pswitch_5b
    .end packed-switch
.end method
