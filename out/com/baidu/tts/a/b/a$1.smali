.class Lcom/baidu/tts/a/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/aop/ttslistener/TtsListener;


# instance fields
.field final synthetic a:Lcom/baidu/tts/a/b/a;


# direct methods
.method constructor <init>(Lcom/baidu/tts/a/b/a;)V
    .registers 2

    .prologue
    .line 434
    iput-object p1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/baidu/tts/m/h;)Z
    .registers 7

    .prologue
    .line 520
    const/4 v0, 0x0

    .line 522
    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->f()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v1

    .line 523
    invoke-virtual {v1}, Lcom/baidu/tts/aop/tts/TtsError;->getTtsErrorFlyweight()Lcom/baidu/tts/h/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/tts/h/a/b;->a()Lcom/baidu/tts/f/n;

    move-result-object v1

    .line 524
    sget-object v2, Lcom/baidu/tts/a/b/a$2;->a:[I

    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->ordinal()I

    move-result v1

    aget v1, v2, v1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_1b

    packed-switch v1, :pswitch_data_3a

    .line 537
    :goto_18
    return v0

    .line 528
    :pswitch_19
    const/4 v0, 0x1

    .line 529
    goto :goto_18

    .line 534
    :catch_1b
    move-exception v1

    .line 535
    const-string v2, "SpeechSynthesizerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStopped exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 524
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method


# virtual methods
.method public onError(Lcom/baidu/tts/m/h;)V
    .registers 5

    .prologue
    .line 510
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 511
    invoke-direct {p0, p1}, Lcom/baidu/tts/a/b/a$1;->a(Lcom/baidu/tts/m/h;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 512
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1, p1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/client/SpeechError;

    move-result-object v1

    .line 514
    iget-object v2, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v2}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onError(Ljava/lang/String;Lcom/baidu/tts/client/SpeechError;)V

    .line 517
    :cond_23
    return-void
.end method

.method public onPlayFinished(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 500
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechFinish(Ljava/lang/String;)V

    .line 503
    :cond_17
    return-void
.end method

.method public onPlayProgressUpdate(Lcom/baidu/tts/m/h;)V
    .registers 5

    .prologue
    .line 487
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 488
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v1

    .line 490
    iget-object v2, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v2}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechProgressChanged(Ljava/lang/String;I)V

    .line 492
    :cond_1b
    return-void
.end method

.method public onPlayStart(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 476
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 477
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSpeechStart(Ljava/lang/String;)V

    .line 480
    :cond_17
    return-void
.end method

.method public onSynthesizeDataArrived(Lcom/baidu/tts/m/h;)V
    .registers 6

    .prologue
    .line 452
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 453
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->d()[B

    move-result-object v1

    .line 455
    invoke-virtual {p1}, Lcom/baidu/tts/m/h;->c()I

    move-result v2

    .line 456
    iget-object v3, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v3}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v3

    invoke-interface {v3, v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeDataArrived(Ljava/lang/String;[BI)V

    .line 458
    :cond_1f
    return-void
.end method

.method public onSynthesizeFinished(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 465
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 466
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeFinish(Ljava/lang/String;)V

    .line 469
    :cond_17
    return-void
.end method

.method public onSynthesizeStart(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 441
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 442
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;Lcom/baidu/tts/m/h;)Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/baidu/tts/a/b/a$1;->a:Lcom/baidu/tts/a/b/a;

    invoke-static {v1}, Lcom/baidu/tts/a/b/a;->b(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/client/SpeechSynthesizerListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/tts/client/SpeechSynthesizerListener;->onSynthesizeStart(Ljava/lang/String;)V

    .line 445
    :cond_17
    return-void
.end method
