.class public Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/OverlayManager;
.source "SourceFile"


# instance fields
.field focus:Z

.field private mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->focus:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getCustomTextureList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    const-string v1, "Icon_road_blue_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    const-string v1, "Icon_road_green_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    const-string v1, "Icon_road_yellow_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const-string v1, "Icon_road_red_arrow.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    const-string v1, "Icon_road_nofocus.png"

    invoke-static {v1}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-object v0
.end method

.method public getLineColor()I
    .registers 2

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public final getOverlayOptions()Ljava/util/List;
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
    const/4 v3, 0x1

    const/16 v9, 0xa

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    if-nez v0, :cond_c

    .line 44
    const/4 v0, 0x0

    .line 144
    :goto_b
    return-object v0

    .line 47
    :cond_c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d0

    .line 52
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    .line 53
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 54
    const-string v6, "index"

    iget-object v7, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v6

    if-eqz v6, :cond_8a

    .line 56
    new-instance v6, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v6}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDirection()I

    move-result v7

    rsub-int v7, v7, 0x168

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    const-string v6, "Icon_line_node.png"

    invoke-static {v6}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_8a
    iget-object v5, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v5}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v6}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2f

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 68
    new-instance v5, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getExit()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v8, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    const-string v5, "Icon_line_node.png"

    invoke-static {v5}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2f

    .line 79
    :cond_d0
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_100

    .line 80
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1bd

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_f5
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_100
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_130

    .line 87
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1c5

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_125
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_130
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_237

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_237

    .line 99
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v7

    .line 100
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 103
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    move v1, v2

    .line 106
    :goto_15a
    if-ge v5, v8, :cond_1f6

    .line 107
    add-int/lit8 v0, v8, -0x1

    if-ne v5, v0, :cond_1cd

    .line 108
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    :goto_16d
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int v6, v1, v0

    .line 114
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v0

    if-eqz v0, :cond_1f0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1f0

    move v1, v2

    .line 115
    :goto_199
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1f0

    .line 116
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getTrafficList()[I

    move-result-object v0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_199

    .line 80
    :cond_1bd
    const-string v0, "Icon_start.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_f5

    .line 87
    :cond_1c5
    const-string v0, "Icon_end.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto/16 :goto_125

    .line 110
    :cond_1cd
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_16d

    .line 106
    :cond_1f0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v1, v6

    goto/16 :goto_15a

    .line 133
    :cond_1f6
    if-eqz v10, :cond_245

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_245

    move v0, v3

    .line 136
    :goto_1ff
    new-instance v1, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v1}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v1, v9}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/baidu/mapapi/map/PolylineOptions;->textureIndex(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->dottedLine(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->focus(Z)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v3

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getLineColor()I

    move-result v1

    if-eqz v1, :cond_23a

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getLineColor()I

    move-result v1

    :goto_223
    invoke-virtual {v3, v1}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v1

    .line 139
    if-eqz v0, :cond_234

    .line 140
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getCustomTextureList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->customTextureList(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    .line 142
    :cond_234
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_237
    move-object v0, v4

    .line 144
    goto/16 :goto_b

    .line 136
    :cond_23a
    const/16 v1, 0xb2

    const/16 v5, 0x4e

    const/16 v6, 0xff

    invoke-static {v1, v2, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_223

    :cond_245
    move v0, v2

    goto :goto_1ff
.end method

.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMarkerClick(Lcom/baidu/mapapi/map/Marker;)Z
    .registers 5

    .prologue
    .line 208
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

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

    .line 209
    instance-of v2, v0, Lcom/baidu/mapapi/map/Marker;

    if-eqz v2, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 210
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 211
    invoke-virtual {p1}, Lcom/baidu/mapapi/map/Marker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "index"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->onRouteNodeClick(I)Z

    goto :goto_6

    .line 215
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 220
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 222
    instance-of v4, v0, Lcom/baidu/mapapi/map/Polyline;

    if-eqz v4, :cond_8

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 228
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->setFocus(Z)V

    .line 229
    return v1

    :cond_23
    move v0, v2

    goto :goto_1f
.end method

.method public onRouteNodeClick(I)Z
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 201
    const-string v0, "baidumapsdk"

    const-string v1, "DrivingRouteOverlay onRouteNodeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 155
    return-void
.end method

.method public setFocus(Z)V
    .registers 5

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->focus:Z

    .line 234
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->mOverlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Overlay;

    .line 235
    instance-of v2, v0, Lcom/baidu/mapapi/map/Polyline;

    if-eqz v2, :cond_8

    .line 237
    check-cast v0, Lcom/baidu/mapapi/map/Polyline;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->setFocus(Z)V

    .line 243
    :cond_1d
    return-void
.end method
