.class public Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;
.implements Lqunar/sdk/mapapi/QunarGeoCoder;


# instance fields
.field private mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

.field private qunarGeoCoderResultListener:Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    .line 22
    invoke-static {}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->newInstance()Lcom/baidu/mapapi/search/geocode/GeoCoder;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    .line 23
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->setOnGetGeoCodeResultListener(Lcom/baidu/mapapi/search/geocode/OnGetGeoCoderResultListener;)V

    .line 24
    return-void
.end method


# virtual methods
.method public destory()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    if-eqz v0, :cond_9

    .line 64
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->destroy()V

    .line 66
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    .line 67
    return-void
.end method

.method public onGetGeoCodeResult(Lcom/baidu/mapapi/search/geocode/GeoCodeResult;)V
    .registers 2

    .prologue
    .line 29
    return-void
.end method

.method public onGetReverseGeoCodeResult(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;)V
    .registers 9

    .prologue
    .line 34
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->qunarGeoCoderResultListener:Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;

    if-nez v0, :cond_5

    .line 45
    :cond_4
    :goto_4
    return-void

    .line 36
    :cond_5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->qunarGeoCoderResultListener:Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;

    if-eqz v0, :cond_4

    .line 37
    if-eqz p1, :cond_17

    iget-object v0, p1, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_17

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-nez v0, :cond_21

    .line 38
    :cond_17
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->qunarGeoCoderResultListener:Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;->onGetReverseGeoCodeResult(ZLqunar/sdk/location/QLocation;Ljava/lang/String;)V

    goto :goto_4

    .line 41
    :cond_21
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->qunarGeoCoderResultListener:Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;

    const/4 v1, 0x1

    new-instance v2, Lqunar/sdk/location/QLocation;

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    iget-wide v5, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeResult;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;->onGetReverseGeoCodeResult(ZLqunar/sdk/location/QLocation;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public reverseGeoCode(Lqunar/sdk/location/QLocation;)Z
    .registers 7

    .prologue
    .line 54
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    if-nez v0, :cond_8

    .line 55
    :cond_6
    const/4 v0, 0x0

    .line 58
    :goto_7
    return v0

    .line 56
    :cond_8
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 57
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->mSearch:Lcom/baidu/mapapi/search/geocode/GeoCoder;

    new-instance v2, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    invoke-direct {v2}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;-><init>()V

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;->location(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/search/geocode/GeoCoder;->reverseGeoCode(Lcom/baidu/mapapi/search/geocode/ReverseGeoCodeOption;)Z

    move-result v0

    goto :goto_7
.end method

.method public setOnGetGeoCodeResultListener(Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;->qunarGeoCoderResultListener:Lqunar/sdk/mapapi/listener/QunarGeoCoderResultListener;

    .line 50
    return-void
.end method
