.class public Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/OverlayManager;
.source "SourceFile"


# instance fields
.field private mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 31
    return-void
.end method


# virtual methods
.method public getLineColor()I
    .registers 2

    .prologue
    .line 130
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
    const/4 v1, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/16 v7, 0xa

    .line 45
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    if-nez v0, :cond_b

    .line 118
    :goto_a
    return-object v1

    .line 49
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_cf

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 53
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v5, "index"

    iget-object v6, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_89

    .line 56
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDirection()I

    move-result v6

    rsub-int v6, v6, 0x168

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    const-string v5, "Icon_line_node.png"

    invoke-static {v5}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_89
    iget-object v4, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_2e

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v4

    if-eqz v4, :cond_2e

    .line 69
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    const-string v4, "Icon_line_node.png"

    invoke-static {v4}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 80
    :cond_cf
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_ff

    .line 81
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_19c

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_f4
    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_ff
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_12f

    .line 89
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v3, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1a4

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_124
    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_12f
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b7

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b7

    .line 102
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 103
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v4

    .line 104
    if-eqz v4, :cond_1ba

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    if-eqz v1, :cond_169

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_169
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 110
    new-instance v1, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->getLineColor()I

    move-result v0

    if-eqz v0, :cond_1ac

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->getLineColor()I

    move-result v0

    :goto_183
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    :goto_19a
    move-object v1, v0

    .line 114
    goto :goto_14d

    .line 81
    :cond_19c
    const-string v0, "Icon_start.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_f4

    .line 89
    :cond_1a4
    const-string v0, "Icon_end.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_124

    .line 110
    :cond_1ac
    const/16 v0, 0xb2

    const/16 v5, 0x4e

    const/16 v6, 0xff

    invoke-static {v0, v9, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_183

    :cond_1b7
    move-object v1, v2

    .line 118
    goto/16 :goto_a

    :cond_1ba
    move-object v0, v1

    goto :goto_19a
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .registers 5

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 161
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 163
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_6

    .line 167
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .registers 3

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onRouteNodeClick(I)Z
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 153
    const-string v0, "baidumapsdk"

    const-string v1, "WalkingRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 41
    return-void
.end method
