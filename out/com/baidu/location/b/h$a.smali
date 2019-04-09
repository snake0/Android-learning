.class Lcom/baidu/location/b/h$a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/h;

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/h;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/location/b/h$a;->a:Lcom/baidu/location/b/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/h$a;->b:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/h$a;->c:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/h;Lcom/baidu/location/b/h$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/h$a;-><init>(Lcom/baidu/location/b/h;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/baidu/location/b/h;->a:J

    iget-object v0, p0, Lcom/baidu/location/b/h$a;->a:Lcom/baidu/location/b/h;

    invoke-static {v0}, Lcom/baidu/location/b/h;->b(Lcom/baidu/location/b/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/b/i;

    invoke-direct {v1, p0}, Lcom/baidu/location/b/i;-><init>(Lcom/baidu/location/b/h$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_27
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/h$a;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/h$a;->b:J

    iget-boolean v0, p0, Lcom/baidu/location/b/h$a;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/b/h$a;->c:Z

    goto :goto_2
.end method
