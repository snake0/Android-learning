.class public Lcom/baidu/tts/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/a/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)I
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/a/c/a;->a(FF)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->a(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/f;)I
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->a(Lcom/baidu/tts/m/f;)I

    move-result v0

    return v0
.end method

.method public a(Lcom/baidu/tts/m/g;)I
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->a(Lcom/baidu/tts/m/g;)I

    move-result v0

    return v0
.end method

.method public a()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->b()Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/tts/a/c/a;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    .line 61
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->a(Lcom/baidu/tts/aop/ttslistener/TtsListener;)V

    .line 45
    return-void
.end method

.method public a(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->b(Lcom/baidu/tts/m/i;)V

    .line 49
    return-void
.end method

.method public b(Lcom/baidu/tts/m/e;)I
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->b(Lcom/baidu/tts/m/e;)I

    move-result v0

    return v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->c()V

    .line 29
    return-void
.end method

.method public b(Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0, p1}, Lcom/baidu/tts/a/c/a;->a(Lcom/baidu/tts/m/i;)V

    .line 53
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->d()V

    .line 33
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->e()V

    .line 37
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    invoke-interface {v0}, Lcom/baidu/tts/a/c/a;->f()V

    .line 41
    return-void
.end method

.method public f()Lcom/baidu/tts/a/c/a;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/tts/a/c/c;->a:Lcom/baidu/tts/a/c/a;

    return-object v0
.end method
