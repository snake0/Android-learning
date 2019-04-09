.class Lcom/iflytek/cloud/thirdparty/bn$3;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/bn;

.field private b:I


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/thirdparty/bn;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->b:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_134

    goto :goto_8

    :pswitch_f
    const-string v0, "tts-onSpeakBegin"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakBegin()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_8

    :catch_1e
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

    :pswitch_36
    :try_start_36
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

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tts-onBufferProgress percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", beg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endpos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spell: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/cb;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onBufferProgress(IIILjava/lang/String;)V

    goto/16 :goto_8

    :pswitch_99
    const-string v0, "tts-onSpeakPaused"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakPaused()V

    goto/16 :goto_8

    :pswitch_a9
    const-string v0, "tts-onSpeakResumed"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakResumed()V

    goto/16 :goto_8

    :pswitch_b9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->b:I

    if-eq v1, v0, :cond_fd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tts-onSpeakProgress percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", begpos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", endpos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->b:I

    :cond_fd
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v3, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onSpeakProgress(III)V

    goto/16 :goto_8

    :pswitch_10c
    const-string v0, "tts-onCompleted"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/SpeechError;

    invoke-interface {v1, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    goto/16 :goto_8

    :pswitch_120
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/bn$3;->a:Lcom/iflytek/cloud/thirdparty/bn;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/bn;->a(Lcom/iflytek/cloud/thirdparty/bn;)Lcom/iflytek/cloud/SynthesizerListener;

    move-result-object v1

    const/16 v2, 0x4e21

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/iflytek/cloud/SynthesizerListener;->onEvent(IIILandroid/os/Bundle;)V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_131} :catch_1e

    goto/16 :goto_8

    nop

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_f
        :pswitch_36
        :pswitch_99
        :pswitch_a9
        :pswitch_b9
        :pswitch_10c
        :pswitch_120
    .end packed-switch
.end method
