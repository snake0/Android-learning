.class Lcom/iflytek/cloud/thirdparty/co$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/co;

.field private final b:Lcom/iflytek/cloud/SpeechUnderstanderListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/co;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V
    .registers 3

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/co$a;->a:Lcom/iflytek/cloud/thirdparty/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onBeginOfSpeech()V

    :cond_9
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onEndOfSpeech()V

    :cond_9
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_b
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onEvent(IIILandroid/os/Bundle;)V

    :cond_9
    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .registers 6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    new-instance v1, Lcom/iflytek/cloud/UnderstanderResult;

    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/UnderstanderResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onResult(Lcom/iflytek/cloud/UnderstanderResult;)V

    :cond_12
    return-void
.end method

.method public onVolumeChanged(I[B)V
    .registers 4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/co$a;->b:Lcom/iflytek/cloud/SpeechUnderstanderListener;

    invoke-interface {v0, p1, p2}, Lcom/iflytek/cloud/SpeechUnderstanderListener;->onVolumeChanged(I[B)V

    :cond_9
    return-void
.end method
