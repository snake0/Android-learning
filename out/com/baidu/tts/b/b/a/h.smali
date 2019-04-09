.class public Lcom/baidu/tts/b/b/a/h;
.super Lcom/baidu/tts/b/b/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/a/b;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/h;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 37
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->a()Lcom/baidu/tts/b/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_10

    .line 38
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->a(Lcom/baidu/tts/m/h;)V

    .line 40
    :cond_10
    return-void
.end method

.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->t()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v1}, Lcom/baidu/tts/b/b/a/f;->q()Lcom/baidu/tts/b/b/a/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/b/b/a/h;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 28
    return-object v0
.end method

.method public o()V
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/h;->b()Lcom/baidu/tts/aop/tts/TtsError;

    .line 48
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->a()Lcom/baidu/tts/b/b/a/b;

    move-result-object v0

    if-eq v0, p0, :cond_10

    .line 49
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/h;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->o()V

    .line 51
    :cond_10
    return-void
.end method
