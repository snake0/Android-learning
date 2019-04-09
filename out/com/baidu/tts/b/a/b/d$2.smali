.class Lcom/baidu/tts/b/a/b/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/b/a/b;


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/b/d;


# direct methods
.method constructor <init>(Lcom/baidu/tts/b/a/b/d;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/baidu/tts/b/a/b/d$2;->a:Lcom/baidu/tts/b/a/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 106
    return-void
.end method

.method public b(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 123
    return-void
.end method

.method public c(Lcom/baidu/tts/m/h;)V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/baidu/tts/b/a/b/d$2;->a:Lcom/baidu/tts/b/a/b/d;

    iget-object v1, p0, Lcom/baidu/tts/b/a/b/d$2;->a:Lcom/baidu/tts/b/a/b/d;

    invoke-static {v1, p1}, Lcom/baidu/tts/b/a/b/d;->a(Lcom/baidu/tts/b/a/b/d;Lcom/baidu/tts/m/h;)Lcom/baidu/tts/m/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/b/d;->a(Lcom/baidu/tts/m/h;)V

    .line 111
    return-void
.end method

.method public d(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 135
    return-void
.end method

.method public e(Lcom/baidu/tts/m/h;)V
    .registers 2

    .prologue
    .line 129
    return-void
.end method
