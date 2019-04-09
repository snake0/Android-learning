.class public Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/IMapView;


# instance fields
.field private initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

.field private mapView:Lcom/baidu/mapapi/map/MapView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 23
    new-instance v0, Lcom/baidu/mapapi/map/MapView;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/map/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)V
    .registers 5

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 27
    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    .line 28
    new-instance v0, Lcom/baidu/mapapi/map/BaiduMapOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/BaiduMapOptions;-><init>()V

    .line 29
    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->compassEnabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;->compassEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 30
    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->overlookingGesturesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;->overlookingGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 31
    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->rotateGesturesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;->rotateGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 32
    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->scaleControlEnabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;->scaleControlEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 33
    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomControlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;->zoomControlsEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 34
    iget-boolean v1, p2, Lqunar/sdk/mapapi/QunarMapInitOptions;->zoomGesturesEnabled:Z

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMapOptions;->zoomGesturesEnabled(Z)Lcom/baidu/mapapi/map/BaiduMapOptions;

    .line 36
    new-instance v1, Lcom/baidu/mapapi/map/MapView;

    invoke-direct {v1, p1, v0}, Lcom/baidu/mapapi/map/MapView;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/map/BaiduMapOptions;)V

    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    .line 37
    return-void
.end method


# virtual methods
.method public getInitOptions()Lqunar/sdk/mapapi/QunarMapInitOptions;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    if-nez v0, :cond_11

    .line 79
    new-instance v0, Lqunar/sdk/mapapi/QunarMapInitOptions;

    invoke-direct {v0}, Lqunar/sdk/mapapi/QunarMapInitOptions;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    .line 80
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    iput-object v1, v0, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    .line 82
    :cond_11
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->initOptions:Lqunar/sdk/mapapi/QunarMapInitOptions;

    return-object v0
.end method

.method public bridge synthetic getMapView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 18
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->getMapView()Lcom/baidu/mapapi/map/MapView;

    move-result-object v0

    return-object v0
.end method

.method public getMapView()Lcom/baidu/mapapi/map/MapView;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 48
    :cond_9
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 55
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;->mapView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 62
    :cond_9
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 68
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method
