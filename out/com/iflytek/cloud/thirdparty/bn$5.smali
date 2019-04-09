.class Lcom/iflytek/cloud/thirdparty/bn$5;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/bn;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/bn;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn$5;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$5;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_76

    :pswitch_e
    goto :goto_8

    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "percent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "begpos"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "endpos"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "spellinfo"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bn$5;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onBufferProgress(IIILjava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_8

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeakSession mUiHandler error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->c(Ljava/lang/String;)V

    goto :goto_8

    :pswitch_4d
    :try_start_4d
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$5;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_8

    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$5;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->j(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_74} :catch_35

    goto :goto_8

    nop

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_4d
        :pswitch_5b
    .end packed-switch
.end method
