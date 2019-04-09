.class public abstract Lcom/baidu/tts/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/tts/j/b;


# instance fields
.field protected final d:Ljava/util/concurrent/locks/Lock;

.field protected final e:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    .line 18
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/j/a;->e:Ljava/util/concurrent/locks/Condition;

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized A()V
    .registers 2

    .prologue
    .line 37
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->h()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()V
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 112
    return-void
.end method

.method public C()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/baidu/tts/j/a;->a(Lcom/baidu/tts/j/a$a;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_c

    .line 120
    :goto_4
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->n()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_b
    return v0

    .line 117
    :catch_c
    move-exception v0

    .line 118
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->B()V

    goto :goto_4

    .line 123
    :cond_11
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public a(Lcom/baidu/tts/j/a$a;)V
    .registers 3

    .prologue
    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->m()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 92
    invoke-virtual {p0, p1}, Lcom/baidu/tts/j/a;->b(Lcom/baidu/tts/j/a$a;)V

    goto :goto_0

    .line 94
    :cond_a
    return-void
.end method

.method public declared-synchronized b()Lcom/baidu/tts/aop/tts/TtsError;
    .registers 2

    .prologue
    .line 27
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->g()Lcom/baidu/tts/aop/tts/TtsError;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/baidu/tts/j/a$a;)V
    .registers 4

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 99
    if-eqz p1, :cond_a

    .line 100
    invoke-interface {p1}, Lcom/baidu/tts/j/a$a;->a()V

    .line 102
    :cond_a
    const-string v0, "ASafeLife"

    const-string v1, "before await"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/tts/j/a;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 104
    const-string v0, "ASafeLife"

    const-string v1, "after await"

    invoke-static {v0, v1}, Lcom/baidu/tts/chainofresponsibility/logger/LoggerProxy;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_23

    .line 106
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    return-void

    .line 106
    :catchall_23
    move-exception v0

    iget-object v1, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->i()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1f

    .line 49
    :try_start_4
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 50
    iget-object v0, p0, Lcom/baidu/tts/j/a;->e:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_15
    .catchall {:try_start_4 .. :try_end_e} :catchall_22

    .line 54
    :try_start_e
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_1f

    .line 56
    :goto_13
    monitor-exit p0

    return-void

    .line 51
    :catch_15
    move-exception v0

    .line 52
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_22

    .line 54
    :try_start_19
    iget-object v0, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1f

    goto :goto_13

    .line 47
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :catchall_22
    move-exception v0

    :try_start_23
    iget-object v1, p0, Lcom/baidu/tts/j/a;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_1f
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->j()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 2

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->k()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 76
    monitor-exit p0

    return-void

    .line 75
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/baidu/tts/j/a;->l()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract g()Lcom/baidu/tts/aop/tts/TtsError;
.end method

.method protected abstract h()V
.end method

.method protected abstract i()V
.end method

.method protected abstract j()V
.end method

.method protected abstract k()V
.end method

.method protected abstract l()V
.end method

.method public abstract m()Z
.end method

.method public abstract n()Z
.end method
