.class Lcom/baidu/location/b/e$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/e;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/e;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/e$d;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/e;Lcom/baidu/location/b/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/b/e$d;-><init>(Lcom/baidu/location/b/e;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-static {v0}, Lcom/baidu/location/b/e;->a(Lcom/baidu/location/b/e;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    if-ne v0, v1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/e$d;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/baidu/location/a/v;->a(Landroid/location/Location;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/location/b/e$d;->b:J

    iget-object v0, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-static {v0}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/e$d;->a:Lcom/baidu/location/b/e;

    invoke-static {v1}, Lcom/baidu/location/b/e;->b(Lcom/baidu/location/b/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    return-void
.end method
