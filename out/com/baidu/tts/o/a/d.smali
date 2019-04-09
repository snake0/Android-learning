.class public Lcom/baidu/tts/o/a/d;
.super Lcom/baidu/tts/o/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/o/a/c;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/baidu/tts/o/a/a;-><init>(Lcom/baidu/tts/o/a/c;)V

    .line 25
    return-void
.end method


# virtual methods
.method public b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->h()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_24

    .line 34
    invoke-virtual {v0}, Lcom/baidu/tts/aop/tts/TtsError;->getErrorEnum()Lcom/baidu/tts/f/n;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_23

    .line 36
    invoke-virtual {v1}, Lcom/baidu/tts/f/n;->a()Lcom/baidu/tts/f/n$a;

    move-result-object v1

    .line 37
    sget-object v2, Lcom/baidu/tts/f/n$a;->a:Lcom/baidu/tts/f/n$a;

    invoke-virtual {v2, v1}, Lcom/baidu/tts/f/n$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 38
    iget-object v1, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v1}, Lcom/baidu/tts/o/a/c;->g()Lcom/baidu/tts/o/a/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/o/a/d;->a(Lcom/baidu/tts/o/a/a;)V

    .line 44
    :cond_23
    :goto_23
    return-object v0

    .line 42
    :cond_24
    iget-object v1, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v1}, Lcom/baidu/tts/o/a/c;->g()Lcom/baidu/tts/o/a/b;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/tts/o/a/d;->a(Lcom/baidu/tts/o/a/a;)V

    goto :goto_23
.end method

.method public c()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    .line 61
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    .line 69
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    .line 77
    return-void
.end method

.method public f()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method public freeCustomResource(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    move-result v0

    return v0
.end method

.method public loadCustomResource(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    move-result v0

    return v0
.end method

.method public loadEnglishModel(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    move-result v0

    return v0
.end method

.method public loadModel(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    move-result v0

    return v0
.end method

.method public setAudioStreamType(I)I
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->e()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(I)V

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public setStereoVolume(FF)I
    .registers 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->getTtsParams()Lcom/baidu/tts/m/j;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/baidu/tts/m/j;->e()Lcom/baidu/tts/b/b/b/b$a;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/b/b$a;->a(F)V

    .line 155
    invoke-virtual {v0, p2}, Lcom/baidu/tts/b/b/b/b$a;->b(F)V

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public speak(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    .line 93
    return-void
.end method

.method public synthesize(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/tts/o/a/d;->a:Lcom/baidu/tts/o/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/o/a/c;->p()I

    .line 101
    return-void
.end method
