.class public Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;
.super Lcom/baidu/mapapi/overlayutil/OverlayManager;
.source "SourceFile"


# static fields
.field private static final MAX_POI_SIZE:I = 0xa


# instance fields
.field private mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    .line 34
    return-void
.end method


# virtual methods
.method public getIndoorPoiResult()Lcom/baidu/mapapi/search/poi/PoiIndoorResult;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    return-object v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 48
    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->getmArrayPoiInfo()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_f

    .line 49
    :cond_d
    const/4 v0, 0x0

    .line 67
    :goto_e
    return-object v0

    .line 51
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    move v2, v0

    .line 54
    :goto_16
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->getmArrayPoiInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_86

    const/16 v0, 0xa

    if-ge v2, v0, :cond_86

    .line 55
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->getmArrayPoiInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;

    iget-object v0, v0, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->latLng:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_3a

    .line 54
    :goto_36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 58
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v4, "index"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Icon_mark"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/poi/PoiIndoorResult;->getmArrayPoiInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;

    iget-object v0, v0, Lcom/baidu/mapapi/search/poi/PoiIndoorInfo;->latLng:Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_86
    move-object v0, v3

    .line 67
    goto :goto_e
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 99
    :cond_9
    :goto_9
    return v0

    .line 96
    :cond_a
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 97
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->onPoiClick(I)Z

    move-result v0

    goto :goto_9
.end method

.method public onPoiClick(I)Z
    .registers 3

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .registers 3

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/poi/PoiIndoorResult;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/IndoorPoiOverlay;->mIndoorPoiResult:Lcom/baidu/mapapi/search/poi/PoiIndoorResult;

    .line 44
    return-void
.end method
