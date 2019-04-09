.class public Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/OverlayManager;
.source "SourceFile"


# instance fields
.field colorInfo:[I

.field private mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 10

    .prologue
    const/16 v7, 0xff

    const/16 v6, 0x58

    const/16 v5, 0x4e

    const/16 v4, 0xb2

    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-static {v4, v3, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x1

    const/16 v2, 0xd0

    invoke-static {v4, v6, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v4, v6, v5, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->colorInfo:[I

    .line 38
    return-void
.end method


# virtual methods
.method public getLineColor()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getOverlayOptions()Ljava/util/List;
    .registers 12
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
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v9, 0x3f000000    # 0.5f

    const/16 v8, 0xa

    .line 74
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    if-nez v0, :cond_b

    .line 136
    :goto_a
    return-object v2

    .line 78
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c4

    .line 83
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;

    .line 84
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string v6, "index"

    iget-object v7, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getEntrace()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    if-eqz v6, :cond_7e

    .line 87
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getEntrace()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    const-string v6, "Icon_walk_route.png"

    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_7e
    iget-object v5, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2e

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 95
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    const-string v5, "Icon_walk_route.png"

    invoke-static {v5}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    .line 102
    :cond_c4
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_f4

    .line 103
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_196

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_e9
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_f4
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_124

    .line 110
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_19e

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_119
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_124
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b0

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b0

    .line 120
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v3

    :goto_143
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;

    .line 121
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/IndoorRouteLine$IndoorRouteStep;->getWayPoints()Ljava/util/List;

    move-result-object v6

    .line 122
    if-eqz v6, :cond_1b3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    if-eqz v2, :cond_15f

    .line 125
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_15f
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    new-instance v2, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v2}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v7

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->getLineColor()I

    move-result v0

    if-eqz v0, :cond_1a6

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->getLineColor()I

    move-result v0

    :goto_179
    invoke-virtual {v7, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    move v10, v1

    move-object v1, v0

    move v0, v10

    :goto_193
    move-object v2, v1

    move v1, v0

    .line 132
    goto :goto_143

    .line 103
    :cond_196
    const-string v0, "Icon_start.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_e9

    .line 110
    :cond_19e
    const-string v0, "Icon_end.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_119

    .line 128
    :cond_1a6
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->colorInfo:[I

    add-int/lit8 v2, v1, 0x1

    rem-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    move v1, v2

    goto :goto_179

    :cond_1b0
    move-object v2, v4

    .line 136
    goto/16 :goto_a

    :cond_1b3
    move v0, v1

    move-object v1, v2

    goto :goto_193
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .registers 3

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .registers 3

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/IndoorRouteLine;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/IndoorRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/IndoorRouteLine;

    .line 49
    return-void
.end method
