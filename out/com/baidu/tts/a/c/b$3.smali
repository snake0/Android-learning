.class Lcom/baidu/tts/a/c/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/a/b;


# instance fields
.field final synthetic a:Lcom/baidu/tts/a/c/b;


# direct methods
.method constructor <init>(Lcom/baidu/tts/a/c/b;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;Lcom/baidu/tts/m/h;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->b(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a/c;->a(Lcom/baidu/tts/m/h;)V

    .line 240
    :cond_11
    return-void
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;Lcom/baidu/tts/m/h;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 252
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->b(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a/c;->a(Lcom/baidu/tts/m/h;)V

    .line 254
    :cond_11
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0, p1}, Lcom/baidu/tts/a/c/b;->a(Lcom/baidu/tts/a/c/b;Lcom/baidu/tts/m/h;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 259
    iget-object v0, p0, Lcom/baidu/tts/a/c/b$3;->a:Lcom/baidu/tts/a/c/b;

    invoke-static {v0}, Lcom/baidu/tts/a/c/b;->b(Lcom/baidu/tts/a/c/b;)Lcom/baidu/tts/b/b/a/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/tts/b/b/a/c;->a(Lcom/baidu/tts/m/h;)V

    .line 261
    :cond_11
    return-void
.end method

.method public d(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 268
    return-void
.end method

.method public e(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 275
    return-void
.end method
