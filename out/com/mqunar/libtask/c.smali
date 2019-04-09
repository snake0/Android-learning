.class Lcom/mqunar/libtask/c;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mqunar/libtask/AsyncTask;


# direct methods
.method constructor <init>(Lcom/mqunar/libtask/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mqunar/libtask/c;->a:Lcom/mqunar/libtask/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .registers 4

    .prologue
    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/libtask/c;->a:Lcom/mqunar/libtask/AsyncTask;

    invoke-virtual {p0}, Lcom/mqunar/libtask/c;->get()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/mqunar/libtask/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mqunar/libtask/AsyncTask;->access$400(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_17

    .line 331
    :goto_9
    return-void

    .line 326
    :catch_a
    move-exception v0

    .line 327
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 328
    :catch_17
    move-exception v0

    .line 329
    iget-object v0, p0, Lcom/mqunar/libtask/c;->a:Lcom/mqunar/libtask/AsyncTask;

    const/4 v1, 0x0

    # invokes: Lcom/mqunar/libtask/AsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mqunar/libtask/AsyncTask;->access$400(Lcom/mqunar/libtask/AsyncTask;Ljava/lang/Object;)V

    goto :goto_9

    .line 324
    :catch_1f
    move-exception v0

    goto :goto_9
.end method
