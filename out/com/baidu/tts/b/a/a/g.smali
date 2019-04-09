.class public Lcom/baidu/tts/b/a/a/g;
.super Lcom/baidu/tts/b/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/baidu/tts/b/a/a/b;-><init>(Lcom/baidu/tts/b/a/a/c;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/a/a/c;->b(Lcom/baidu/tts/m/i;)V

    .line 54
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->v()V

    .line 26
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->r()Lcom/baidu/tts/b/a/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/g;->a(Lcom/baidu/tts/b/a/a/b;)V

    .line 27
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->w()V

    .line 35
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->p()Lcom/baidu/tts/b/a/a/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/g;->a(Lcom/baidu/tts/b/a/a/b;)V

    .line 36
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->w()V

    .line 44
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->x()V

    .line 45
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/g;->a:Lcom/baidu/tts/b/a/a/c;

    invoke-virtual {v0}, Lcom/baidu/tts/b/a/a/c;->o()Lcom/baidu/tts/b/a/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/tts/b/a/a/g;->a(Lcom/baidu/tts/b/a/a/b;)V

    .line 46
    return-void
.end method
