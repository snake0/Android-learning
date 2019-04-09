.class public Lcom/mqunar/qutui/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final tag:Ljava/lang/String; = "NotificationReceiver"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qutui/NotificationReceiver;->a:Landroid/os/Handler;

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/qutui/NotificationReceiver;->b:J

    return-void
.end method

.method private a()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 33
    :try_start_1
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 34
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_20

    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_18

    move-result v0

    .line 41
    :goto_17
    return v0

    .line 38
    :catch_18
    move-exception v0

    .line 39
    const-string v0, "CONNECTIVITY_SERVICE ERROR"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    move v0, v1

    .line 41
    goto :goto_17
.end method

.method static synthetic a(Lcom/mqunar/qutui/NotificationReceiver;)Z
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mqunar/qutui/NotificationReceiver;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mqunar/qutui/NotificationReceiver;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mqunar/qutui/NotificationReceiver;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 47
    const-string v0, "NotificationReceiver"

    const-string v1, "ACTION_TIME_TICK"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    .line 69
    :cond_1d
    :goto_1d
    return-void

    .line 49
    :cond_1e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mqunar.dispatcher.MESSAGE_CONNECT_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 50
    const-string v0, "NotificationReceiver"

    const-string v1, "ACTION_MESSAGE_CONNECT_STATE"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    iget-wide v2, p0, Lcom/mqunar/qutui/NotificationReceiver;->b:J

    sub-long v2, v0, v2

    .line 53
    iput-wide v0, p0, Lcom/mqunar/qutui/NotificationReceiver;->b:J

    .line 54
    iget-object v0, p0, Lcom/mqunar/qutui/NotificationReceiver;->a:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/qutui/e;

    invoke-direct {v1, p0, v2, v3}, Lcom/mqunar/qutui/e;-><init>(Lcom/mqunar/qutui/NotificationReceiver;J)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1d
.end method
