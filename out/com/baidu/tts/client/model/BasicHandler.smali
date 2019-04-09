.class public Lcom/baidu/tts/client/model/BasicHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/FutureTask;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/baidu/tts/client/model/BasicHandler;->a:Ljava/util/concurrent/FutureTask;

    .line 28
    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/baidu/tts/client/model/BasicHandler;->a:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 42
    :try_start_1
    const-string v1, "BasicHandler"

    const-string v2, "before get"

    invoke-static {v1, v2}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/baidu/tts/client/model/BasicHandler;->a:Ljava/util/concurrent/FutureTask;

    sget-object v2, Lcom/baidu/tts/f/l;->a:Lcom/baidu/tts/f/l;

    invoke-virtual {v2}, Lcom/baidu/tts/f/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_15} :catch_22
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_15} :catch_31

    move-result-object v0

    .line 51
    :goto_16
    return-object v0

    .line 44
    :catch_17
    move-exception v1

    .line 45
    const-string v2, "BasicHandler"

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 46
    :catch_22
    move-exception v1

    .line 47
    const-string v2, "BasicHandler"

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 48
    :catch_31
    move-exception v1

    .line 49
    const-string v2, "BasicHandler"

    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method public start()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/baidu/tts/client/model/BasicHandler;->a:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 32
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    return-void
.end method
