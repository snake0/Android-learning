.class Lcom/iflytek/cloud/ui/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/ui/a;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/ui/a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .registers 1

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->f(Lcom/iflytek/cloud/ui/a;)V

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->h(Lcom/iflytek/cloud/ui/a;)Z

    move-result v0

    if-nez v0, :cond_21

    :cond_a
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/a;->f()V

    :goto_f
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->g(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->g(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/ui/RecognizerDialogListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    :cond_20
    return-void

    :cond_21
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0, p1}, Lcom/iflytek/cloud/ui/a;->a(Lcom/iflytek/cloud/ui/a;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_f
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .registers 5

    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .registers 4

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/a;->f()V

    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->g(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->g(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/ui/RecognizerDialogListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/cloud/ui/RecognizerDialogListener;->onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V

    :cond_18
    return-void
.end method

.method public onVolumeChanged(I[B)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->d(Lcom/iflytek/cloud/ui/a;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->e(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/thirdparty/cw;

    move-result-object v0

    if-eqz v0, :cond_27

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v1}, Lcom/iflytek/cloud/ui/a;->e(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/thirdparty/cw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/cw;->setVolume(I)V

    iget-object v0, p0, Lcom/iflytek/cloud/ui/a$2;->a:Lcom/iflytek/cloud/ui/a;

    invoke-static {v0}, Lcom/iflytek/cloud/ui/a;->e(Lcom/iflytek/cloud/ui/a;)Lcom/iflytek/cloud/thirdparty/cw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cw;->invalidate()V

    :cond_27
    return-void
.end method
