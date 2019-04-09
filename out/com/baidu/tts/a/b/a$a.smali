.class Lcom/baidu/tts/a/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/baidu/tts/a/b/a;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/a/b/a;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/tts/client/SpeechSynthesizeBag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    iput-object p1, p0, Lcom/baidu/tts/a/b/a$a;->b:Lcom/baidu/tts/a/b/a;

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/baidu/tts/a/b/a$a;->a:Ljava/util/List;

    .line 402
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 406
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$a;->a:Ljava/util/List;

    if-eqz v0, :cond_52

    .line 407
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 408
    if-lez v3, :cond_52

    .line 409
    const/4 v0, 0x0

    move v2, v0

    :goto_f
    if-ge v2, v3, :cond_52

    .line 410
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/SpeechSynthesizeBag;

    .line 411
    if-eqz v0, :cond_4e

    .line 412
    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getText()Ljava/lang/String;

    move-result-object v4

    .line 413
    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->getUtteranceId()Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 415
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizeBag;->setUtteranceId(Ljava/lang/String;)V

    :cond_30
    move-object v0, v1

    .line 418
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_52

    .line 419
    new-instance v1, Lcom/baidu/tts/m/i;

    invoke-direct {v1, v4, v0}, Lcom/baidu/tts/m/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/baidu/tts/f/i;->b:Lcom/baidu/tts/f/i;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/m/i;->a(Lcom/baidu/tts/f/i;)V

    .line 421
    iget-object v0, p0, Lcom/baidu/tts/a/b/a$a;->b:Lcom/baidu/tts/a/b/a;

    invoke-static {v0}, Lcom/baidu/tts/a/b/a;->a(Lcom/baidu/tts/a/b/a;)Lcom/baidu/tts/aop/tts/ITts;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/baidu/tts/aop/tts/ITts;->speak(Lcom/baidu/tts/m/i;)V

    .line 409
    :cond_4e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 429
    :cond_52
    return-object v6
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/baidu/tts/a/b/a$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
