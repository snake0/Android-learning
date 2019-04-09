.class public Lcom/baidu/tts/loopj/RequestHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final request:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/tts/loopj/AsyncHttpRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/tts/loopj/AsyncHttpRequest;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 53
    if-eqz v0, :cond_28

    .line 54
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_23

    .line 55
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/baidu/tts/loopj/RequestHandle$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/baidu/tts/loopj/RequestHandle$1;-><init>(Lcom/baidu/tts/loopj/RequestHandle;Lcom/baidu/tts/loopj/AsyncHttpRequest;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 63
    const/4 v0, 0x1

    .line 68
    :goto_22
    return v0

    .line 65
    :cond_23
    invoke-virtual {v0, p1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->cancel(Z)Z

    move-result v0

    goto :goto_22

    .line 68
    :cond_28
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 119
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public isCancelled()Z
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 89
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 79
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->isDone()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public setTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/RequestHandle;
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 107
    if-eqz v0, :cond_d

    .line 108
    invoke-virtual {v0, p1}, Lcom/baidu/tts/loopj/AsyncHttpRequest;->setRequestTag(Ljava/lang/Object;)Lcom/baidu/tts/loopj/AsyncHttpRequest;

    .line 109
    :cond_d
    return-object p0
.end method

.method public shouldBeGarbageCollected()Z
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/baidu/tts/loopj/RequestHandle;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/baidu/tts/loopj/RequestHandle;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_c
    const/4 v0, 0x1

    .line 94
    :goto_d
    if-eqz v0, :cond_14

    .line 95
    iget-object v1, p0, Lcom/baidu/tts/loopj/RequestHandle;->request:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 96
    :cond_14
    return v0

    .line 93
    :cond_15
    const/4 v0, 0x0

    goto :goto_d
.end method
