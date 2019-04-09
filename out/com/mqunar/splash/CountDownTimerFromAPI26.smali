.class public abstract Lcom/mqunar/splash/CountDownTimerFromAPI26;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private mCancelled:Z

.field private final mCountdownInterval:J

.field private mHandler:Landroid/os/Handler;

.field private final mMillisInFuture:J

.field private mStopTimeInFuture:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCancelled:Z

    .line 118
    new-instance v0, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/CountDownTimerFromAPI26$1;-><init>(Lcom/mqunar/splash/CountDownTimerFromAPI26;)V

    iput-object v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mHandler:Landroid/os/Handler;

    .line 75
    iput-wide p1, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mMillisInFuture:J

    .line 76
    iput-wide p3, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCountdownInterval:J

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/splash/CountDownTimerFromAPI26;)Z
    .registers 2

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCancelled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mqunar/splash/CountDownTimerFromAPI26;)J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mStopTimeInFuture:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mqunar/splash/CountDownTimerFromAPI26;)J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCountdownInterval:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .registers 3

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCancelled:Z

    .line 84
    iget-object v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 85
    monitor-exit p0

    return-void

    .line 83
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract onFinish()V
.end method

.method public abstract onTick(J)V
.end method

.method public final declared-synchronized start()Lcom/mqunar/splash/CountDownTimerFromAPI26;
    .registers 5

    .prologue
    .line 91
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mCancelled:Z

    .line 92
    iget-wide v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mMillisInFuture:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    .line 93
    invoke-virtual {p0}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->onFinish()V
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_29

    move-object v0, p0

    .line 98
    :goto_10
    monitor-exit p0

    return-object v0

    .line 96
    :cond_12
    :try_start_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mMillisInFuture:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mStopTimeInFuture:J

    .line 97
    iget-object v0, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mqunar/splash/CountDownTimerFromAPI26;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_29

    move-object v0, p0

    .line 98
    goto :goto_10

    .line 91
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
