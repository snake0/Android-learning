.class public Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/OverlayManager;
.source "SourceFile"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 36
    return-void
.end method

.method private getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 4

    .prologue
    .line 111
    sget-object v0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay$1;->$SwitchMap$com$baidu$mapapi$search$route$TransitRouteLine$TransitStep$TransitRouteStepType:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 119
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 113
    :pswitch_11
    const-string v0, "Icon_bus_station.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_10

    .line 115
    :pswitch_18
    const-string v0, "Icon_subway_station.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_10

    .line 117
    :pswitch_1f
    const-string v0, "Icon_walk_route.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_10

    .line 111
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_18
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public getLineColor()I
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
    .registers 11
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
    const/16 v9, 0xb2

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/16 v6, 0xa

    .line 41
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    if-nez v0, :cond_d

    .line 42
    const/4 v0, 0x0

    .line 107
    :goto_c
    return-object v0

    .line 45
    :cond_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c2

    .line 50
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 51
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v4, "index"

    iget-object v5, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    if-eqz v4, :cond_7e

    .line 54
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_7e
    iget-object v3, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_30

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 62
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_30

    .line 70
    :cond_c2
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_f2

    .line 71
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_181

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_e7
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_f2
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_122

    .line 78
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_189

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_117
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_122
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1ad

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1ad

    .line 90
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_140
    :goto_140
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 91
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 95
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getStepType()Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    move-result-object v1

    sget-object v4, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;->WAKLING:Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep$TransitRouteStepType;

    if-eq v1, v4, :cond_199

    .line 97
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v1

    if-eqz v1, :cond_190

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v1

    .line 102
    :goto_164
    new-instance v4, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_140

    .line 71
    :cond_181
    const-string v0, "Icon_start.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_e7

    .line 78
    :cond_189
    const-string v0, "Icon_end.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_117

    .line 97
    :cond_190
    const/16 v1, 0x4e

    const/16 v4, 0xff

    invoke-static {v9, v8, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_164

    .line 100
    :cond_199
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v1

    if-eqz v1, :cond_1a4

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getLineColor()I

    move-result v1

    goto :goto_164

    :cond_1a4
    const/16 v1, 0x58

    const/16 v4, 0xd0

    invoke-static {v9, v1, v4, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_164

    :cond_1ad
    move-object v0, v2

    .line 107
    goto/16 :goto_c
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 139
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .registers 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 174
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 176
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_6

    .line 180
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .registers 3

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public onRouteNodeClick(I)Z
    .registers 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 166
    const-string v0, "baidumapsdk"

    const-string v1, "TransitRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/TransitRouteLine;)V
    .registers 2

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 131
    return-void
.end method
