.class public Lcom/iflytek/cloud/thirdparty/l;
.super Lcom/iflytek/cloud/thirdparty/j;

# interfaces
.implements Lcom/iflytek/alsa/AlsaRecorder$PcmListener;


# instance fields
.field private c:I

.field private d:Lcom/iflytek/alsa/AlsaRecorder;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/j;-><init>(Lcom/iflytek/cloud/thirdparty/k;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/l;->f:I

    const v0, 0x17700

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/l;->c:I

    const/16 v0, 0x600

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/l;->e:I

    return-void
.end method

.method private e()V
    .registers 4

    const-string v0, "alsa"

    const-string v1, "sound_card"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/l;->f:I

    const-string v0, "alsa"

    const-string v1, "card_sample_rate"

    const v2, 0x17700

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/l;->c:I

    const-string v0, "alsa"

    const-string v1, "period_size"

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/l;->e:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/l;->e:I

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/l;->f:I

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/l;->c:I

    iget v2, p0, Lcom/iflytek/cloud/thirdparty/l;->e:I

    invoke-static {v0, v1, v2}, Lcom/iflytek/alsa/AlsaRecorder;->createInstance(III)Lcom/iflytek/alsa/AlsaRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Lcom/iflytek/alsa/AlsaRecorder;->setBufferSize(I)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/l;->c:I

    return v0
.end method

.method public c()I
    .registers 5

    const/16 v1, 0x4e26

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/l;->b()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v0, "AlsaAudioCaptor"

    const-string v1, "AlsaAudioCaptor was already started."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/l;->e()V

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    if-eqz v2, :cond_1f

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/alsa/AlsaRecorder;->startRecording(Lcom/iflytek/alsa/AlsaRecorder$PcmListener;)I

    move-result v0

    :cond_1f
    if-nez v0, :cond_35

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/l;->b:Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/l;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/l;->a:Lcom/iflytek/cloud/thirdparty/k;

    invoke-interface {v1}, Lcom/iflytek/cloud/thirdparty/k;->a()V

    :cond_2d
    const-string v1, "AlsaAudioCaptor"

    const-string v2, "AlsaAudioCaptor started."

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_35
    const-string v0, "AlsaAudioCaptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlsaAudioCaptor start error, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_11
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/l;->b()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "AlsaAudioCaptor"

    const-string v1, "AlsaAudioCaptor was not started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    invoke-virtual {v0}, Lcom/iflytek/alsa/AlsaRecorder;->stopRecording()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->d:Lcom/iflytek/alsa/AlsaRecorder;

    invoke-virtual {v0}, Lcom/iflytek/alsa/AlsaRecorder;->destroy()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/l;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->a:Lcom/iflytek/cloud/thirdparty/k;

    invoke-interface {v0}, Lcom/iflytek/cloud/thirdparty/k;->b()V

    :cond_28
    const-string v0, "AlsaAudioCaptor"

    const-string v1, "AlsaAudioCaptor stopped."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onPcmData([BI)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/l;->a:Lcom/iflytek/cloud/thirdparty/k;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/iflytek/cloud/thirdparty/k;->a([BILandroid/os/Bundle;)V

    :cond_a
    return-void
.end method
