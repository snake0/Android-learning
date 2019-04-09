.class public Lqunar/sdk/mapapi/QunarMapFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mapType:Lqunar/sdk/mapapi/QunarMapType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    sput-object v0, Lqunar/sdk/mapapi/QunarMapFacade;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static initMap(Landroid/view/ViewGroup;Lqunar/sdk/mapapi/QunarMapType;)Lqunar/sdk/mapapi/QunarMap;
    .registers 5

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    sget-object v1, Lqunar/sdk/mapapi/QunarMapFacade$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    .line 70
    :cond_c
    :goto_c
    :pswitch_c
    return-object v0

    .line 53
    :pswitch_d
    instance-of v1, p0, Lcom/baidu/mapapi/map/MapView;

    if-eqz v1, :cond_c

    .line 54
    check-cast p0, Lcom/baidu/mapapi/map/MapView;

    .line 55
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    goto :goto_c

    .line 62
    :pswitch_1d
    instance-of v1, p0, Lcom/mapquest/android/maps/MapView;

    if-eqz v1, :cond_c

    .line 63
    check-cast p0, Lcom/mapquest/android/maps/MapView;

    .line 64
    new-instance v0, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/mapquest/MapQuestStrategy;-><init>(Lcom/mapquest/android/maps/MapView;)V

    goto :goto_c

    .line 51
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_1d
    .end packed-switch
.end method

.method public static initMapControl(Lqunar/sdk/mapapi/QunarMapView;)Lqunar/sdk/mapapi/QunarMapControl;
    .registers 4

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    if-nez p0, :cond_4

    .line 95
    :goto_3
    :pswitch_3
    return-object v0

    .line 79
    :cond_4
    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v1

    .line 80
    sget-object v2, Lqunar/sdk/mapapi/QunarMapFacade$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_2e

    goto :goto_3

    .line 82
    :pswitch_14
    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMap()Lqunar/sdk/mapapi/QunarMap;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;

    .line 83
    new-instance v1, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;

    invoke-direct {v1, v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BaiduMapStrategy;)V

    move-object v0, v1

    .line 84
    goto :goto_3

    .line 89
    :pswitch_21
    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getDisplayMap()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 90
    new-instance v1, Lqunar/sdk/mapapi/mapquest/MapQuestControl;

    invoke-direct {v1, v0}, Lqunar/sdk/mapapi/mapquest/MapQuestControl;-><init>(Lcom/mapquest/android/maps/MapView;)V

    move-object v0, v1

    .line 91
    goto :goto_3

    .line 80
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_14
        :pswitch_3
        :pswitch_21
    .end packed-switch
.end method

.method public static initMapView(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)Lqunar/sdk/mapapi/IMapView;
    .registers 5

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    sget-object v1, Lqunar/sdk/mapapi/QunarMapFacade$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    iget-object v2, p1, Lqunar/sdk/mapapi/QunarMapInitOptions;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v2}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 45
    :goto_e
    :pswitch_e
    return-object v0

    .line 34
    :pswitch_f
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;

    invoke-direct {v0, p0, p1}, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapView;-><init>(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)V

    goto :goto_e

    .line 40
    :pswitch_15
    new-instance v0, Lqunar/sdk/mapapi/mapquest/MapQuestView;

    invoke-direct {v0, p0, p1}, Lqunar/sdk/mapapi/mapquest/MapQuestView;-><init>(Landroid/content/Context;Lqunar/sdk/mapapi/QunarMapInitOptions;)V

    goto :goto_e

    .line 32
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_15
    .end packed-switch
.end method

.method public static initQunarGeoCoder()Lqunar/sdk/mapapi/QunarGeoCoder;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    sget-object v1, Lqunar/sdk/mapapi/QunarMapFacade$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    sget-object v2, Lqunar/sdk/mapapi/QunarMapFacade;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v2}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 171
    :goto_e
    :pswitch_e
    return-object v0

    .line 161
    :pswitch_f
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;

    invoke-direct {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;-><init>()V

    goto :goto_e

    .line 158
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static initQunarGeoCoder(Lqunar/sdk/mapapi/QunarMapType;)Lqunar/sdk/mapapi/QunarGeoCoder;
    .registers 4

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    sget-object v1, Lqunar/sdk/mapapi/QunarMapFacade$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 149
    :goto_c
    :pswitch_c
    return-object v0

    .line 139
    :pswitch_d
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;

    invoke-direct {v0}, Lqunar/sdk/mapapi/baiduMapImp/BaiduGeoCoder;-><init>()V

    goto :goto_c

    .line 136
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static initRoutePlan(Lqunar/sdk/mapapi/QunarMapView;)Lqunar/sdk/mapapi/QunarRoutePlanSearch;
    .registers 5

    .prologue
    .line 102
    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getDisplayMap()Landroid/view/ViewGroup;

    move-result-object v0

    .line 106
    if-nez v0, :cond_8

    .line 128
    :goto_7
    return-object v1

    .line 109
    :cond_8
    sget-object v2, Lqunar/sdk/mapapi/QunarMapFacade$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    invoke-virtual {p0}, Lqunar/sdk/mapapi/QunarMapView;->getQunarMapType()Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v3

    invoke-virtual {v3}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3a

    :cond_17
    move-object v0, v1

    :goto_18
    move-object v1, v0

    .line 128
    goto :goto_7

    .line 111
    :pswitch_1a
    instance-of v2, v0, Lcom/baidu/mapapi/map/MapView;

    if-eqz v2, :cond_17

    .line 112
    check-cast v0, Lcom/baidu/mapapi/map/MapView;

    .line 113
    new-instance v1, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-direct {v1, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    move-object v0, v1

    .line 114
    goto :goto_18

    :pswitch_2b
    move-object v0, v1

    .line 118
    goto :goto_18

    .line 120
    :pswitch_2d
    instance-of v2, v0, Lcom/mapquest/android/maps/MapView;

    if-eqz v2, :cond_17

    .line 121
    check-cast v0, Lcom/mapquest/android/maps/MapView;

    .line 122
    new-instance v1, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    invoke-direct {v1, v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;-><init>(Lcom/mapquest/android/maps/MapView;)V

    move-object v0, v1

    .line 123
    goto :goto_18

    .line 109
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_2b
        :pswitch_2d
    .end packed-switch
.end method
