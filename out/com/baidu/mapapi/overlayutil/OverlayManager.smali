.class public abstract Lcom/baidu/mapapi/overlayutil/OverlayManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;
.implements Lcom/baidu/mapapi/map/BaiduMap$OnPolylineClickListener;


# instance fields
.field mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

.field mOverlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mOverlayOptionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 32
    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    .line 34
    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 44
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    if-nez v0, :cond_17

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    .line 47
    :cond_17
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    if-nez v0, :cond_22

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    .line 50
    :cond_22
    return-void
.end method


# virtual methods
.method public final addToMap()V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 76
    :cond_4
    return-void

    .line 67
    :cond_5
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/OverlayManager;->removeFromMap()V

    .line 68
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/OverlayManager;->getOverlayOptions()Ljava/util/List;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_17

    .line 70
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/OverlayManager;->getOverlayOptions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    :cond_17
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/OverlayOptions;

    .line 74
    iget-object v2, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    iget-object v3, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method

.method public abstract getOverlayOptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/OverlayOptions;",
            ">;"
        }
    .end annotation
.end method

.method public final removeFromMap()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 91
    :goto_4
    return-void

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 86
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Overlay;->remove()V

    goto :goto_b

    .line 88
    :cond_1b
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayOptionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_4
.end method

.method public zoomToSpan()V
    .registers 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-nez v0, :cond_5

    .line 115
    :cond_4
    :goto_4
    return-void

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 105
    new-instance v1, Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    invoke-direct {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 108
    instance-of v3, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v3, :cond_18

    .line 109
    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/Marker;->getPosition()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->include(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLngBounds$Builder;

    goto :goto_18

    .line 112
    :cond_32
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/OverlayManager;->mBaiduMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1}, Lcom/baidu/mapapi/model/LatLngBounds$Builder;->build()Lcom/baidu/mapapi/model/LatLngBounds;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/map/MapStatusUpdateFactory;->newLatLngBounds(Lcom/baidu/mapapi/model/LatLngBounds;)Lcom/baidu/mapapi/map/MapStatusUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setMapStatus(Lcom/baidu/mapapi/map/MapStatusUpdate;)V

    goto :goto_4
.end method
