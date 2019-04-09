.class public Lqunar/sdk/location/BDLocationStrategy;
.super Lqunar/sdk/location/QunarGPSLocationStrategy;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# instance fields
.field private context:Landroid/content/Context;

.field private isInit:Z

.field private locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationClient:Lcom/baidu/location/LocationClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lqunar/sdk/location/QunarGPSLocationStrategy;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/BDLocationStrategy;->isInit:Z

    .line 26
    iput-object p1, p0, Lqunar/sdk/location/BDLocationStrategy;->context:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Lqunar/sdk/location/BDLocationStrategy;->init()V

    .line 28
    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 31
    new-instance v0, Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locations:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method private setBDOptions()V
    .registers 4

    .prologue
    .line 41
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->option:Lqunar/sdk/location/QunarGPSOption;

    if-eqz v0, :cond_4b

    .line 42
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->option:Lqunar/sdk/location/QunarGPSOption;

    instance-of v0, v0, Lqunar/sdk/location/BDGPSOption;

    if-eqz v0, :cond_4b

    .line 43
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->option:Lqunar/sdk/location/QunarGPSOption;

    check-cast v0, Lqunar/sdk/location/BDGPSOption;

    .line 44
    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 45
    iget v2, v0, Lqunar/sdk/location/BDGPSOption;->scanSpan:I

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 46
    invoke-virtual {v0}, Lqunar/sdk/location/BDGPSOption;->isOpenGps()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 47
    invoke-virtual {v0}, Lqunar/sdk/location/BDGPSOption;->getCoorType()Lqunar/sdk/location/BDGPSCoorType;

    move-result-object v2

    invoke-static {v2}, Lqunar/sdk/location/BDGPSCoorType;->convert2BDCoorType(Lqunar/sdk/location/BDGPSCoorType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Lqunar/sdk/location/BDGPSOption;->getLocationMode()Lqunar/sdk/location/BDGPSLocationMode;

    move-result-object v2

    invoke-static {v2}, Lqunar/sdk/location/BDGPSLocationMode;->convert2BDMode(Lqunar/sdk/location/BDGPSLocationMode;)Lcom/baidu/location/LocationClientOption$LocationMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 49
    iget v0, v0, Lqunar/sdk/location/BDGPSOption;->timeout:I

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClientOption;->setTimeOut(I)V

    .line 50
    const-string v0, "all"

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/location/BDLocationStrategy;->isInit:Z

    .line 55
    :cond_4b
    return-void
.end method


# virtual methods
.method public forceStopLocation()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-nez v0, :cond_5

    .line 116
    :goto_4
    return-void

    .line 108
    :cond_5
    :try_start_5
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->getLocOption()Lcom/baidu/location/LocationClientOption;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 110
    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 111
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 112
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_1e} :catch_1f

    goto :goto_4

    .line 113
    :catch_1f
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_4
.end method

.method public getCacheLocation(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->context:Landroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lqunar/sdk/location/GPSStorageUtils;->getFitGPSS(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public getLocationType()Lqunar/sdk/location/QunarGPSLocationType;
    .registers 2

    .prologue
    .line 37
    sget-object v0, Lqunar/sdk/location/QunarGPSLocationType;->BAIDU:Lqunar/sdk/location/QunarGPSLocationType;

    return-object v0
.end method

.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    .line 124
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1c

    .line 125
    :cond_14
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locationListener:Lqunar/sdk/location/QunarGPSLocationListener;

    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    invoke-interface {v0, v1}, Lqunar/sdk/location/QunarGPSLocationListener;->onReceiveLocation(Lqunar/sdk/location/QLocation;)V

    .line 152
    :cond_1b
    :goto_1b
    return-void

    .line 128
    :cond_1c
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    .line 130
    const/16 v1, 0x3d

    if-eq v0, v1, :cond_30

    const/16 v1, 0x41

    if-eq v0, v1, :cond_30

    const/16 v1, 0x42

    if-eq v0, v1, :cond_30

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_1b

    .line 134
    :cond_30
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    if-nez v0, :cond_4f

    .line 135
    new-instance v0, Lqunar/sdk/location/QLocation;

    invoke-direct {v0, p1}, Lqunar/sdk/location/QLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    iput-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    .line 141
    :goto_3b
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locationListener:Lqunar/sdk/location/QunarGPSLocationListener;

    if-eqz v0, :cond_1b

    .line 146
    :goto_3f
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_5c

    .line 147
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locations:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3f

    .line 137
    :cond_4f
    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    monitor-enter v1

    .line 138
    :try_start_52
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0, p1}, Lqunar/sdk/location/QLocation;->set(Lcom/baidu/location/BDLocation;)V

    .line 139
    monitor-exit v1

    goto :goto_3b

    :catchall_59
    move-exception v0

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_59

    throw v0

    .line 149
    :cond_5c
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locations:Ljava/util/ArrayList;

    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->locationListener:Lqunar/sdk/location/QunarGPSLocationListener;

    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->eLoc:Lqunar/sdk/location/QLocation;

    invoke-interface {v0, v1}, Lqunar/sdk/location/QunarGPSLocationListener;->onReceiveLocation(Lqunar/sdk/location/QLocation;)V

    goto :goto_1b
.end method

.method public pauseLocation()V
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 74
    :cond_9
    return-void
.end method

.method public bridge synthetic setELocationListener(Lqunar/sdk/location/QunarGPSLocationListener;)V
    .registers 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lqunar/sdk/location/QunarGPSLocationStrategy;->setELocationListener(Lqunar/sdk/location/QunarGPSLocationListener;)V

    return-void
.end method

.method public bridge synthetic setOption(Lqunar/sdk/location/QunarGPSOption;)V
    .registers 2

    .prologue
    .line 18
    invoke-super {p0, p1}, Lqunar/sdk/location/QunarGPSLocationStrategy;->setOption(Lqunar/sdk/location/QunarGPSOption;)V

    return-void
.end method

.method public startGPSLoction()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_1a

    .line 60
    iget-boolean v0, p0, Lqunar/sdk/location/BDLocationStrategy;->isInit:Z

    if-nez v0, :cond_b

    .line 61
    invoke-direct {p0}, Lqunar/sdk/location/BDLocationStrategy;->setBDOptions()V

    .line 63
    :cond_b
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 64
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 65
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    .line 67
    :cond_1a
    return-void
.end method

.method public stopLocation()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->context:Landroid/content/Context;

    iget-object v1, p0, Lqunar/sdk/location/BDLocationStrategy;->locations:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lqunar/sdk/location/GPSStorageUtils;->cach5GPS(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 84
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_10

    .line 85
    iget-object v0, p0, Lqunar/sdk/location/BDLocationStrategy;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0, p0}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 87
    :cond_10
    invoke-virtual {p0}, Lqunar/sdk/location/BDLocationStrategy;->pauseLocation()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lqunar/sdk/location/BDLocationStrategy;->isInit:Z

    .line 101
    return-void
.end method
