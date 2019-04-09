.class public abstract Lcom/baidu/tts/b/b/a/a;
.super Lcom/baidu/tts/j/a;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/b/a/c;


# instance fields
.field protected a:Lcom/baidu/tts/b/b/a;

.field protected volatile b:Lcom/baidu/tts/b/b/a/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/tts/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)I
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/tts/b/b/a/b;->a(FF)I

    move-result v0

    return v0
.end method

.method public a(I)I
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(I)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/b/b/a/b;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    return-object v0
.end method

.method public a(Lcom/baidu/tts/b/b/a/b;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    .line 30
    return-void
.end method

.method public a(Lcom/baidu/tts/b/b/a;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Lcom/baidu/tts/b/b/a;)V

    .line 94
    return-void
.end method

.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Lcom/baidu/tts/m/h;)V

    .line 110
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/b/b/a/b;->a(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method protected b(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 136
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_f

    .line 137
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->a(Lcom/baidu/tts/m/h;)V

    .line 140
    :cond_f
    return-void
.end method

.method protected c(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 144
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->b(Lcom/baidu/tts/m/h;)V

    .line 148
    :cond_f
    return-void
.end method

.method protected d(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/baidu/tts/b/b/a/a;->C()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 152
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    if-eqz v0, :cond_f

    .line 153
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->a:Lcom/baidu/tts/b/b/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a;->c(Lcom/baidu/tts/m/h;)V

    .line 156
    :cond_f
    return-void
.end method

.method protected g()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->a()V

    .line 46
    return-void
.end method

.method protected i()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->c()V

    .line 54
    return-void
.end method

.method protected j()V
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->d()V

    .line 62
    return-void
.end method

.method protected k()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->e()V

    .line 70
    return-void
.end method

.method protected l()V
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->f()V

    .line 78
    return-void
.end method

.method public o()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/tts/b/b/a/a;->b:Lcom/baidu/tts/b/b/a/b;

    invoke-virtual {v0}, Lcom/baidu/tts/b/b/a/b;->o()V

    .line 102
    return-void
.end method
