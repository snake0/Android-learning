.class public Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/OverlayManager;
.source "SourceFile"


# instance fields
.field private isSameCity:Z

.field private mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/overlayutil/OverlayManager;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 35
    return-void
.end method

.method private getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 4

    .prologue
    .line 201
    sget-object v0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay$1;->$SwitchMap$com$baidu$mapapi$search$route$MassTransitRouteLine$TransitStep$StepVehicleInfoType:[I

    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    .line 212
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 203
    :pswitch_11
    const-string v0, "Icon_walk_route.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_10

    .line 205
    :pswitch_18
    const-string v0, "Icon_subway_station.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_10

    .line 210
    :pswitch_1f
    const-string v0, "Icon_bus_station.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_10

    .line 201
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_11
        :pswitch_18
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
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
    .registers 16
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
    const/16 v14, 0x4e

    const/16 v13, 0xb2

    const/16 v12, 0xa

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    if-nez v0, :cond_f

    .line 75
    const/4 v0, 0x0

    .line 196
    :goto_e
    return-object v0

    .line 78
    :cond_f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getNewSteps()Ljava/util/List;

    move-result-object v7

    .line 80
    iget-boolean v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->isSameCity:Z

    if-eqz v0, :cond_f9

    move v1, v2

    .line 84
    :goto_1f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_99

    .line 86
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 87
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v4, "index"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 91
    new-instance v4, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_67
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_95

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    if-eqz v3, :cond_95

    .line 97
    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_95
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :cond_99
    move v1, v2

    .line 106
    :goto_9a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_211

    .line 107
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 109
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    move-result-object v3

    sget-object v4, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_WALK:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    if-eq v3, v4, :cond_e5

    .line 112
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v3

    if-eqz v3, :cond_de

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v3

    .line 117
    :goto_be
    new-instance v4, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v4}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9a

    .line 112
    :cond_de
    const/16 v3, 0xff

    invoke-static {v13, v2, v14, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    goto :goto_be

    .line 115
    :cond_e5
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v3

    if-eqz v3, :cond_f0

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v3

    goto :goto_be

    :cond_f0
    const/16 v3, 0x58

    const/16 v4, 0xd0

    invoke-static {v13, v3, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    goto :goto_be

    :cond_f9
    move v1, v2

    move v3, v2

    .line 125
    :goto_fb
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_110

    .line 126
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v3, v0

    .line 125
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_fb

    .line 130
    :cond_110
    const/4 v0, 0x1

    move v1, v2

    .line 131
    :goto_112
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_19a

    move v5, v2

    move v4, v0

    .line 133
    :goto_11a
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_194

    .line 134
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 135
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 136
    const-string v9, "index"

    invoke-virtual {v8, v9, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    if-eqz v9, :cond_166

    .line 139
    new-instance v9, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v9}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getStartLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/baidu/mapapi/map/MarkerOptions;->extraInfo(Landroid/os/Bundle;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v8

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_166
    if-ne v4, v3, :cond_18e

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v8

    if-eqz v8, :cond_18e

    .line 145
    new-instance v8, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v8}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getEndLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v8

    invoke-direct {p0, v0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getIconForStep(Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_18e
    add-int/lit8 v4, v4, 0x1

    .line 133
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_11a

    .line 131
    :cond_194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    goto/16 :goto_112

    :cond_19a
    move v1, v2

    .line 155
    :goto_19b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_211

    move v3, v2

    .line 157
    :goto_1a2
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_20d

    .line 158
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;

    .line 160
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getVehileType()Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    move-result-object v4

    sget-object v5, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;->ESTEP_WALK:Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep$StepVehicleInfoType;

    if-eq v4, v5, :cond_1f9

    .line 163
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v4

    if-eqz v4, :cond_1f2

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v4

    .line 168
    :goto_1cc
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1ee

    .line 169
    new-instance v5, Lcom/baidu/mapapi/map/PolylineOptions;

    invoke-direct {v5}, Lcom/baidu/mapapi/map/PolylineOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/baidu/mapapi/map/PolylineOptions;->points(Ljava/util/List;)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/mapapi/map/PolylineOptions;->width(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/baidu/mapapi/map/PolylineOptions;->color(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/PolylineOptions;->zIndex(I)Lcom/baidu/mapapi/map/PolylineOptions;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_1ee
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a2

    .line 163
    :cond_1f2
    const/16 v4, 0xff

    invoke-static {v13, v2, v14, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_1cc

    .line 166
    :cond_1f9
    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v4

    if-eqz v4, :cond_204

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getLineColor()I

    move-result v4

    goto :goto_1cc

    :cond_204
    const/16 v4, 0x58

    const/16 v5, 0xd0

    invoke-static {v13, v4, v5, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    goto :goto_1cc

    .line 155
    :cond_20d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19b

    .line 179
    :cond_211
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_24d

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_24d

    .line 180
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getStarting()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_28c

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_242
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_24d
    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    if-eqz v0, :cond_289

    iget-object v0, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_289

    .line 187
    new-instance v0, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/MassTransitRouteLine;->getTerminal()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_293

    invoke-virtual {p0}, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :goto_27e
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_289
    move-object v0, v6

    .line 196
    goto/16 :goto_e

    .line 180
    :cond_28c
    const-string v0, "Icon_start.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_242

    .line 187
    :cond_293
    const-string v0, "Icon_end.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAssetWithDpi(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_27e
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
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onPolylineClick(Lcom/baidu/mapapi/map/Polyline;)Z
    .registers 3

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public setData(Lcom/baidu/mapapi/search/route/MassTransitRouteLine;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->mRouteLine:Lcom/baidu/mapapi/search/route/MassTransitRouteLine;

    .line 46
    return-void
.end method

.method public setSameCity(Z)V
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/baidu/mapapi/overlayutil/MassTransitRouteOverlay;->isSameCity:Z

    .line 50
    return-void
.end method
