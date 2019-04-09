.class public Lcom/baidu/tts/client/SpeechSynthesizeBag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 27
    invoke-static {p1}, Lcom/baidu/tts/tools/ResourceTools;->isTextValid(Ljava/lang/String;)Lcom/baidu/tts/f/n;

    move-result-object v0

    .line 28
    if-nez v0, :cond_a

    .line 29
    iput-object p1, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_9
    return v0

    :cond_a
    invoke-virtual {v0}, Lcom/baidu/tts/f/n;->b()I

    move-result v0

    goto :goto_9
.end method

.method public setUtteranceId(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/tts/client/SpeechSynthesizeBag;->b:Ljava/lang/String;

    .line 48
    return-void
.end method
