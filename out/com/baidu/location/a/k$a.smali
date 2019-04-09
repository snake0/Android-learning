.class Lcom/baidu/location/a/k$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/k;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private a(Lcom/baidu/location/BDLocation;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "latitude"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "longitude"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "radius"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "errorcode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasAltitude()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "altitude"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_37
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_4b

    const-string v2, "speed"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getSpeed()F

    move-result v3

    const v4, 0x40666666    # 3.6f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_4b
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5d

    const-string v2, "direction"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDirection()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_5d
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6c

    const-string v2, "buildingname"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getBuildingName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6c
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7b

    const-string v2, "buildingid"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getBuildingID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7b
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8a

    const-string v2, "floor"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getFloor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8d} :catch_8f

    move-result-object v0

    :goto_8e
    return-object v0

    :catch_8f
    move-exception v1

    goto :goto_8e
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->c(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v1}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/k$a;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Z)Z

    :cond_1d
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_82

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    :try_start_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/a/k$b;

    invoke-virtual {v0}, Lcom/baidu/location/a/k$b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/location/a/k$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v2}, Lcom/baidu/location/a/k;->f(Lcom/baidu/location/a/k;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7d
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_80} :catch_81

    goto :goto_3b

    :catch_81
    move-exception v0

    :cond_82
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_170

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/a/k$b;

    iget-object v4, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v4}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v4}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->g(Lcom/baidu/location/a/k;)Lcom/baidu/location/LocationClient;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->g(Lcom/baidu/location/a/k;)Lcom/baidu/location/LocationClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    move-result v0

    if-eqz v0, :cond_16d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->h(Lcom/baidu/location/a/k;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->i(Lcom/baidu/location/a/k;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_16d

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_16d

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/location/a/k$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v4}, Lcom/baidu/location/a/k;->i(Lcom/baidu/location/a/k;)Lcom/baidu/location/BDLocation;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    move v0, v2

    :goto_62
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->c(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v4}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/location/a/k$a;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Z)Z

    :cond_80
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;

    move-result-object v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    new-instance v2, Lcom/baidu/location/a/k$f;

    iget-object v4, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-direct {v2, v4, v1}, Lcom/baidu/location/a/k$f;-><init>(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$1;)V

    invoke-static {v0, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$f;)Lcom/baidu/location/a/k$f;

    :cond_94
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v1}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/a/k;->c()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/baidu/location/a/k$a;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v3}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Z)Z

    goto/16 :goto_9

    :pswitch_ae
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/BDLocation;

    invoke-direct {p0, v0}, Lcom/baidu/location/a/k$a;->a(Lcom/baidu/location/BDLocation;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/a/k$a;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_bb
    :try_start_bb
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "errorcode"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c9} :catch_16a

    move-result-object v1

    :goto_ca
    if-eqz v1, :cond_9

    invoke-direct {p0, v1}, Lcom/baidu/location/a/k$a;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :pswitch_d1
    :try_start_d1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "errorcode"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_df
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_df} :catch_e7

    move-result-object v0

    :goto_e0
    if-eqz v0, :cond_9

    invoke-direct {p0, v0}, Lcom/baidu/location/a/k$a;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_e7
    move-exception v0

    move-object v0, v1

    goto :goto_e0

    :pswitch_ea
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_10b

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Ljava/util/List;)Ljava/util/List;

    :goto_fc
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->g(Lcom/baidu/location/a/k;)Lcom/baidu/location/LocationClient;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    iget-object v1, v1, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/a/k$e;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V

    goto/16 :goto_9

    :cond_10b
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_fc

    :pswitch_115
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->e(Lcom/baidu/location/a/k;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Ljava/util/List;)Ljava/util/List;

    :cond_12b
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->g(Lcom/baidu/location/a/k;)Lcom/baidu/location/LocationClient;

    move-result-object v0

    iget-object v3, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    iget-object v3, v3, Lcom/baidu/location/a/k;->a:Lcom/baidu/location/a/k$e;

    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDAbstractLocationListener;)V

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    const-wide/16 v3, 0x0

    invoke-static {v0, v3, v4}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;J)J

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Lcom/baidu/location/BDLocation;)Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;

    move-result-object v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->c(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v1}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Lcom/baidu/location/a/k$f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/k$a;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_163
    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Z)Z

    goto/16 :goto_9

    :catch_16a
    move-exception v0

    goto/16 :goto_ca

    :cond_16d
    move v0, v3

    goto/16 :goto_62

    :pswitch_data_170
    .packed-switch 0x1
        :pswitch_a
        :pswitch_ae
        :pswitch_ea
        :pswitch_115
        :pswitch_bb
        :pswitch_d1
    .end packed-switch
.end method
