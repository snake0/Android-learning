.class public Lcom/baidu/tts/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/tts/d/b/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->c()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(JJ)V
    .registers 6

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/tts/d/b/b;->a(JJ)V

    .line 47
    return-void
.end method

.method public a(Lcom/baidu/tts/aop/tts/TtsError;)V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/d/b/b;->a(Lcom/baidu/tts/aop/tts/TtsError;)V

    .line 55
    return-void
.end method

.method public a(Lcom/baidu/tts/d/b/b;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->g()V

    .line 39
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->h()V

    .line 43
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/baidu/tts/d/a/c;->a:Lcom/baidu/tts/d/b/b;

    invoke-virtual {v0}, Lcom/baidu/tts/d/b/b;->i()V

    .line 51
    return-void
.end method
