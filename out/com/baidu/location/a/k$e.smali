.class public Lcom/baidu/location/a/k$e;
.super Lcom/baidu/location/BDAbstractLocationListener;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/k;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/a/k$e;->a:Lcom/baidu/location/a/k;

    invoke-direct {p0}, Lcom/baidu/location/BDAbstractLocationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/location/a/k$e;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-eqz v0, :cond_56

    if-eqz p1, :cond_56

    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, p1}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->getCoorType()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_23

    const/16 v3, 0xa1

    if-eq v1, v3, :cond_23

    const/16 v3, 0x42

    if-ne v1, v3, :cond_81

    :cond_23
    if-eqz v2, :cond_33

    const-string v1, "gcj02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "gcj2wgs"

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/baidu/location/a/k$e;->a:Lcom/baidu/location/a/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;J)J

    iget-object v1, p0, Lcom/baidu/location/a/k$e;->a:Lcom/baidu/location/a/k;

    new-instance v2, Lcom/baidu/location/BDLocation;

    invoke-direct {v2, v0}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-static {v1, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Lcom/baidu/location/BDLocation;)Lcom/baidu/location/BDLocation;

    iget-object v1, p0, Lcom/baidu/location/a/k$e;->a:Lcom/baidu/location/a/k;

    invoke-static {v1}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_56
    :goto_56
    return-void

    :cond_57
    const-string v1, "bd09"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const-string v1, "bd092gcj"

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    const-string v1, "gcj2wgs"

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    goto :goto_33

    :cond_6c
    const-string v1, "bd09ll"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "bd09ll2gcj"

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    const-string v1, "gcj2wgs"

    invoke-static {v0, v1}, Lcom/baidu/location/LocationClient;->getBDLocationInCoorType(Lcom/baidu/location/BDLocation;Ljava/lang/String;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    goto :goto_33

    :cond_81
    iget-object v0, p0, Lcom/baidu/location/a/k$e;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_56
.end method
