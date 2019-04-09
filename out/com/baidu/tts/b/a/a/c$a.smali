.class Lcom/baidu/tts/b/a/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/b/a/a/c;

.field private b:Lcom/baidu/tts/m/i;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/b/a/a/c;Lcom/baidu/tts/m/i;)V
    .registers 3

    .prologue
    .line 219
    iput-object p1, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    iput-object p2, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/m/i;

    .line 222
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 232
    :try_start_1
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/m/i;

    invoke-static {v1}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a/c;->a(Lcom/baidu/tts/m/h;)V

    .line 233
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v0, v0, Lcom/baidu/tts/b/a/a/c;->a:Lcom/baidu/tts/b/a/b/b;

    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/m/i;

    invoke-interface {v0, v1}, Lcom/baidu/tts/b/a/b/b;->a(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/aop/tts/TtsError;

    move-result-object v0

    .line 234
    if-nez v0, :cond_24

    .line 235
    iget-object v0, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/m/i;

    invoke-static {v1}, Lcom/baidu/tts/m/h;->b(Lcom/baidu/tts/m/i;)Lcom/baidu/tts/m/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/tts/b/a/a/c;->c(Lcom/baidu/tts/m/h;)V

    .line 242
    :goto_23
    return-object v3

    .line 237
    :cond_24
    iget-object v1, p0, Lcom/baidu/tts/b/a/a/c$a;->a:Lcom/baidu/tts/b/a/a/c;

    iget-object v2, p0, Lcom/baidu/tts/b/a/a/c$a;->b:Lcom/baidu/tts/m/i;

    invoke-static {v2, v0}, Lcom/baidu/tts/m/h;->a(Lcom/baidu/tts/m/i;Lcom/baidu/tts/aop/tts/TtsError;)Lcom/baidu/tts/m/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/tts/b/a/a/c;->e(Lcom/baidu/tts/m/h;)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_2f} :catch_30

    goto :goto_23

    .line 240
    :catch_30
    move-exception v0

    goto :goto_23
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/baidu/tts/b/a/a/c$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
