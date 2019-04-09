.class public Lcom/baidu/tts/d/a/h;
.super Lcom/baidu/tts/d/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/d/a/b;)V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/baidu/tts/d/a/a;-><init>(Lcom/baidu/tts/d/a/b;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;
    .registers 3

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/h;->c()V

    .line 53
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->a()Lcom/baidu/tts/d/a/a;

    move-result-object v0

    if-eq v0, p0, :cond_12

    .line 54
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/a/b;->a(Lcom/baidu/tts/d/a/c;)Lcom/baidu/tts/d/a/e;

    move-result-object v0

    .line 56
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public c()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->q()Lcom/baidu/tts/d/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/h;->a(Lcom/baidu/tts/d/a/a;)V

    .line 25
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->t()V

    .line 33
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->p()Lcom/baidu/tts/d/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/d/a/h;->a(Lcom/baidu/tts/d/a/a;)V

    .line 34
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/baidu/tts/d/a/h;->e()V

    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->a()Lcom/baidu/tts/d/a/a;

    move-result-object v0

    if-eq v0, p0, :cond_10

    .line 43
    iget-object v0, p0, Lcom/baidu/tts/d/a/h;->a:Lcom/baidu/tts/d/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/a/b;->f()V

    .line 45
    :cond_10
    return-void
.end method
