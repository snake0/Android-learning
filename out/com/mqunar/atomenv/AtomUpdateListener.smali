.class public Lcom/mqunar/atomenv/AtomUpdateListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/content/IntentFilter;

.field private b:Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;)V
    .registers 10

    .prologue
    .line 35
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/atomenv/AtomUpdateListener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;J)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;J)V
    .registers 8

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->a:Landroid/content/IntentFilter;

    .line 40
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->a:Landroid/content/IntentFilter;

    const-string v1, "com.mqunar.spider.module.download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->c:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->b:Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;

    .line 44
    iput-object p2, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->d:Ljava/lang/String;

    .line 45
    iput-wide p4, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->f:J

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->e:Landroid/os/Handler;

    .line 47
    invoke-virtual {p0}, Lcom/mqunar/atomenv/AtomUpdateListener;->a()V

    .line 48
    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_10

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_10
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_20
    return-void
.end method

.method b()V
    .registers 5

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 97
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->f:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 99
    :cond_10
    return-void
.end method

.method c()V
    .registers 5

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 103
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    :cond_e
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 82
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_13

    .line 83
    invoke-virtual {p0}, Lcom/mqunar/atomenv/AtomUpdateListener;->stop()V

    .line 84
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->b:Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;->onError(Ljava/lang/Throwable;)V

    .line 92
    :cond_12
    :goto_12
    return v2

    .line 85
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_12

    .line 86
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/version/VersionUtils;->getAtomFileWithUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 88
    invoke-virtual {p0}, Lcom/mqunar/atomenv/AtomUpdateListener;->c()V

    .line 89
    iget-object v1, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->b:Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;->onSuccess(Ljava/io/File;)V

    goto :goto_12
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->e:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mqunar/atomenv/version/VersionUtils;->getAtomFileWithUpdate(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 62
    iget-object v1, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->b:Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;

    invoke-interface {v1, v0}, Lcom/mqunar/atomenv/AtomUpdateListener$AtomFileCallback;->onSuccess(Ljava/io/File;)V

    .line 67
    :goto_15
    return-void

    .line 64
    :cond_16
    invoke-virtual {p0}, Lcom/mqunar/atomenv/AtomUpdateListener;->b()V

    .line 65
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->a:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto :goto_15
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/mqunar/atomenv/AtomUpdateListener;->c()V

    .line 71
    iget-object v0, p0, Lcom/mqunar/atomenv/AtomUpdateListener;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    return-void
.end method
