.class public Lorg/webrtc/ThreadUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V
    .registers 2

    .prologue
    .line 124
    new-instance v0, Lorg/webrtc/ThreadUtils$2;

    invoke-direct {v0, p0}, Lorg/webrtc/ThreadUtils$2;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V

    .line 130
    return-void
.end method

.method public static awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move v1, v0

    move-wide v2, p1

    .line 139
    :cond_7
    :try_start_7
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_17

    move-result v0

    .line 150
    :goto_d
    if-eqz v1, :cond_16

    .line 151
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 153
    :cond_16
    return v0

    .line 141
    :catch_17
    move-exception v1

    .line 144
    const/4 v1, 0x1

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    .line 146
    sub-long v2, p1, v2

    .line 148
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_7

    goto :goto_d
.end method

.method public static executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 77
    :goto_1
    :try_start_1
    invoke-interface {p0}, Lorg/webrtc/ThreadUtils$BlockingOperation;->run()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_e

    .line 86
    if-eqz v0, :cond_d

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 89
    :cond_d
    return-void

    .line 79
    :catch_e
    move-exception v0

    .line 82
    const/4 v0, 0x1

    .line 83
    goto :goto_1
.end method

.method public static invokeUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/webrtc/ThreadUtils$1Result;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$1Result;-><init>()V

    .line 164
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 165
    new-instance v2, Lorg/webrtc/ThreadUtils$3;

    invoke-direct {v2, v0, p1, v1}, Lorg/webrtc/ThreadUtils$3;-><init>(Lorg/webrtc/ThreadUtils$1Result;Ljava/util/concurrent/Callable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    invoke-static {v1}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 176
    iget-object v0, v0, Lorg/webrtc/ThreadUtils$1Result;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public static invokeUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 183
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 184
    new-instance v1, Lorg/webrtc/ThreadUtils$4;

    invoke-direct {v1, p1, v0}, Lorg/webrtc/ThreadUtils$4;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 191
    return-void
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;)V
    .registers 2

    .prologue
    .line 115
    new-instance v0, Lorg/webrtc/ThreadUtils$1;

    invoke-direct {v0, p0}, Lorg/webrtc/ThreadUtils$1;-><init>(Ljava/lang/Thread;)V

    invoke-static {v0}, Lorg/webrtc/ThreadUtils;->executeUninterruptibly(Lorg/webrtc/ThreadUtils$BlockingOperation;)V

    .line 121
    return-void
.end method

.method public static joinUninterruptibly(Ljava/lang/Thread;J)Z
    .registers 14

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move v2, v1

    move-wide v3, p1

    .line 95
    :goto_8
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_11

    .line 97
    :try_start_e
    invoke-virtual {p0, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_21

    .line 108
    :cond_11
    if-eqz v2, :cond_1a

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 111
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_2d

    :goto_20
    return v0

    .line 99
    :catch_21
    move-exception v2

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 104
    sub-long v2, p1, v2

    move-wide v9, v2

    move-wide v3, v9

    move v2, v0

    .line 105
    goto :goto_8

    :cond_2d
    move v0, v1

    .line 111
    goto :goto_20
.end method
