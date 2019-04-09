.class public Lcom/baidu/tts/o/a/b;
.super Lcom/baidu/tts/o/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/o/a/c;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/baidu/tts/o/a/a;-><init>(Lcom/baidu/tts/o/a/c;)V

    .line 22
    return-void
.end method


# virtual methods
.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->i()V

    .line 46
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->j()V

    .line 54
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->k()V

    .line 62
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->l()V

    .line 67
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->a()Lcom/baidu/tts/o/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/o/a/b;->a(Lcom/baidu/tts/o/a/a;)V

    .line 68
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->b(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public loadCustomResource(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public setAudioStreamType(I)I
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->a(I)I

    move-result v0

    return v0
.end method

.method public setStereoVolume(FF)I
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/o/a/c;->a(FF)I

    move-result v0

    return v0
.end method

.method public speak(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->a(Lcom/baidu/tts/m/i;)V

    .line 76
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/tts/o/a/b;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/o/a/c;->b(Lcom/baidu/tts/m/i;)V

    .line 84
    return-void
.end method
