.class public Lcom/baidu/tts/d/a/i;
.super Lcom/baidu/tts/d/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/tts/d/a/a;-><init>(Lcom/baidu/tts/d/a/b;)V

    .line 20
    return-void
.end method


# virtual methods
.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/tts/d/a/i;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->p()Lcom/baidu/tts/d/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/i;->a(Lcom/baidu/tts/d/a/a;)V

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method
