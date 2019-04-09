.class Lcom/mqunar/splash/CountDownTimerFromAPI26$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/CountDownTimerFromAPI26;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .prologue
    const-wide/16 v0, 0x0

    .line 123
    iget-object v4, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    monitor-enter v4

    .line 124
    :try_start_5
    iget-object v2, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    # getter for: Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCancelled:Z
    invoke-static {v2}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->access$000(Lcom/mqunar/splash/CountDownTimerFromAPI26;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 125
    monitor-exit v4

    .line 158
    :goto_e
    return-void

    .line 128
    :cond_f
    iget-object v2, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    # getter for: Lcom/mqunar/splash/CountDownTimerFromAPI26;->mStopTimeInFuture:J
    invoke-static {v2}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->access$100(Lcom/mqunar/splash/CountDownTimerFromAPI26;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    .line 130
    cmp-long v5, v2, v0

    if-gtz v5, :cond_28

    .line 131
    iget-object v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    invoke-virtual {v0}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->onFinish()V

    .line 157
    :goto_23
    monitor-exit v4

    goto :goto_e

    :catchall_25
    move-exception v0

    monitor-exit v4
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v0

    .line 133
    :cond_28
    :try_start_28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 134
    iget-object v7, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    invoke-virtual {v7, v2, v3}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->onTick(J)V

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v5, v7, v5

    .line 140
    iget-object v7, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    # getter for: Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCountdownInterval:J
    invoke-static {v7}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->access$200(Lcom/mqunar/splash/CountDownTimerFromAPI26;)J

    move-result-wide v7

    cmp-long v7, v2, v7

    if-gez v7, :cond_4f

    .line 142
    sub-long/2addr v2, v5

    .line 146
    cmp-long v5, v2, v0

    if-gez v5, :cond_62

    .line 155
    :goto_46
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_23

    .line 148
    :cond_4f
    iget-object v2, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    # getter for: Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCountdownInterval:J
    invoke-static {v2}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->access$200(Lcom/mqunar/splash/CountDownTimerFromAPI26;)J

    move-result-wide v2

    sub-long/2addr v2, v5

    .line 152
    :goto_56
    cmp-long v5, v2, v0

    if-gez v5, :cond_62

    iget-object v5, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;->this$0:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    # getter for: Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCountdownInterval:J
    invoke-static {v5}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->access$200(Lcom/mqunar/splash/CountDownTimerFromAPI26;)J
    :try_end_5f
    .catchall {:try_start_28 .. :try_end_5f} :catchall_25

    move-result-wide v5

    add-long/2addr v2, v5

    goto :goto_56

    :cond_62
    move-wide v0, v2

    goto :goto_46
.end method
