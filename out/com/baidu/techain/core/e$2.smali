.class final Lcom/baidu/techain/core/e$2;
.super Lcom/baidu/techain/ac/Callback;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/baidu/techain/core/c;

.field final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/baidu/techain/core/c;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 409
    iput-object p1, p0, Lcom/baidu/techain/core/e$2;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/baidu/techain/core/e$2;->b:Lcom/baidu/techain/core/c;

    iput-object p3, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/baidu/techain/core/e$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/techain/ac/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs onEnd([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/baidu/techain/core/e$2;->a:Landroid/os/Bundle;

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    iget-object v0, p0, Lcom/baidu/techain/core/e$2;->b:Lcom/baidu/techain/core/c;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, v0, Lcom/baidu/techain/core/c;->f:Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_16
    .catchall {:try_start_0 .. :try_end_f} :catchall_20

    .line 418
    iget-object v0, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 420
    :goto_14
    const/4 v0, 0x0

    return-object v0

    .line 416
    :catch_16
    move-exception v0

    :try_start_17
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_20

    .line 418
    iget-object v0, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_14

    :catchall_20
    move-exception v0

    iget-object v1, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public final varargs onError([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/baidu/techain/core/e$2;->a:Landroid/os/Bundle;

    const-string v2, "status"

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    .line 427
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 426
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/techain/core/e$2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 430
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2e} :catch_35
    .catchall {:try_start_0 .. :try_end_2e} :catchall_3f

    .line 434
    iget-object v0, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 436
    :goto_33
    const/4 v0, 0x0

    return-object v0

    .line 432
    :catch_35
    move-exception v0

    :try_start_36
    invoke-static {}, Lcom/baidu/techain/b/e;->a()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3f

    .line 434
    iget-object v0, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_33

    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lcom/baidu/techain/core/e$2;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
