.class Lcom/baidu/tts/auth/a$1;
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
        "Lcom/baidu/tts/auth/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/tts/m/b;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/baidu/tts/auth/a;


# direct methods
.method constructor <init>(Lcom/baidu/tts/auth/a;Lcom/baidu/tts/m/b;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .prologue
    .line 193
    iput-object p1, p0, Lcom/baidu/tts/auth/a$1;->c:Lcom/baidu/tts/auth/a;

    iput-object p2, p0, Lcom/baidu/tts/auth/a$1;->a:Lcom/baidu/tts/m/b;

    iput-object p3, p0, Lcom/baidu/tts/auth/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/tts/auth/c$a;
    .registers 3

    .prologue
    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/auth/a$1;->a:Lcom/baidu/tts/m/b;

    invoke-virtual {v0}, Lcom/baidu/tts/m/b;->a()Lcom/baidu/tts/b/a/b/f$b;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/baidu/tts/auth/a$1;->c:Lcom/baidu/tts/auth/a;

    invoke-virtual {v1, v0}, Lcom/baidu/tts/auth/a;->a(Lcom/baidu/tts/b/a/b/f$b;)Lcom/baidu/tts/auth/c$a;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_12

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/baidu/tts/auth/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v0

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/auth/a$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/baidu/tts/auth/a$1;->a()Lcom/baidu/tts/auth/c$a;

    move-result-object v0

    return-object v0
.end method
