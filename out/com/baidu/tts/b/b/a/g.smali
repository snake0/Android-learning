.class public Lcom/baidu/tts/b/b/a/g;
.super Lcom/baidu/tts/b/b/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/b/a/f;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/b/a/b;-><init>(Lcom/baidu/tts/b/b/a/f;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/f;->e(Lcom/baidu/tts/m/h;)V

    .line 26
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->w()V

    .line 34
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->s()Lcom/baidu/tts/b/b/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/g;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 35
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->x()V

    .line 43
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->q()Lcom/baidu/tts/b/b/a/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/g;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 44
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->x()V

    .line 52
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->y()V

    .line 53
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/g;->a:Lcom/baidu/tts/b/b/a/f;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/f;->p()Lcom/baidu/tts/b/b/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/b/a/g;->a(Lcom/baidu/tts/b/b/a/b;)V

    .line 54
    return-void
.end method
