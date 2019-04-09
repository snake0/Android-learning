.class public Lcom/iflytek/cloud/thirdparty/m;
.super Lcom/iflytek/cloud/thirdparty/j;

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# instance fields
.field private c:Lcom/iflytek/cloud/record/PcmRecorder;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/j;-><init>(Lcom/iflytek/cloud/thirdparty/k;)V

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/m;->d:I

    return-void
.end method

.method private e()V
    .registers 4

    const-string v0, "iat"

    const-string v1, "sample_rate"

    const/16 v2, 0x3e80

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ac;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/thirdparty/m;->d:I

    new-instance v0, Lcom/iflytek/cloud/record/PcmRecorder;

    iget v1, p0, Lcom/iflytek/cloud/thirdparty/m;->d:I

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(II)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Lcom/iflytek/cloud/record/PcmRecorder;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/iflytek/cloud/thirdparty/m;->d:I

    return v0
.end method

.method public c()I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "SystemAudioCaptor"

    const-string v2, "SingleAudioCaptor was already started."

    invoke-static {v1, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_e
    return v0

    :cond_f
    invoke-direct {p0}, Lcom/iflytek/cloud/thirdparty/m;->e()V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v1, :cond_e

    :try_start_16
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v1, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V
    :try_end_1b
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_e

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->printStackTrace()V

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v0

    const-string v1, "SystemAudioCaptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SingleAudioCaptor start error, error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public d()V
    .registers 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/m;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->c:Lcom/iflytek/cloud/record/PcmRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    goto :goto_6
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/k;->a(ILjava/lang/String;)V

    :cond_11
    const-string v0, "SystemAudioCaptor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SingleAudioCaptor error, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRecordBuffer([BII)V
    .registers 7

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v0, :cond_10

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p3, v2}, Lcom/iflytek/cloud/thirdparty/k;->a([BILandroid/os/Bundle;)V

    :cond_10
    return-void
.end method

.method public onRecordReleased()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/m;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    invoke-interface {v0}, Lcom/iflytek/cloud/thirdparty/k;->b()V

    :cond_c
    const-string v0, "SystemAudioCaptor"

    const-string v1, "SingleAudioCaptor stopped."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRecordStarted(Z)V
    .registers 4

    if-eqz p1, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/m;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/m;->a:Lcom/iflytek/cloud/thirdparty/k;

    invoke-interface {v0}, Lcom/iflytek/cloud/thirdparty/k;->a()V

    :cond_e
    const-string v0, "SystemAudioCaptor"

    const-string v1, "SingleAudioCaptor started."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
