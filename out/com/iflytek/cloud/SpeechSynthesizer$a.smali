.class final Lcom/iflytek/cloud/SpeechSynthesizer$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/SynthesizerListener;


# instance fields
.field private a:Lcom/iflytek/cloud/SynthesizerListener;

.field private b:Lcom/iflytek/speech/SynthesizerListener;

.field private c:Landroid/os/Handler;


# direct methods
.method static synthetic a(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->b:Lcom/iflytek/speech/SynthesizerListener;

    return-object v0
.end method


# virtual methods
.method public onBufferProgress(IIILjava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_2b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "percent"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "begpos"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "endpos"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "spellinfo"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_2b
    return-void
.end method

.method public onCompleted(Lcom/iflytek/cloud/SpeechError;)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_1b

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v1, v2, v3, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public onSpeakBegin()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public onSpeakPaused()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method

.method public onSpeakProgress(III)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    return-void
.end method

.method public onSpeakResumed()V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->a:Lcom/iflytek/cloud/SynthesizerListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    return-void
.end method
