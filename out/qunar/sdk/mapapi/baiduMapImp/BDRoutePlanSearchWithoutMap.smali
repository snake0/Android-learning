.class public Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;
.implements Lqunar/sdk/mapapi/QunarRoutePlanSearch;


# instance fields
.field private cityName:Ljava/lang/String;

.field end:Lqunar/sdk/mapapi/entity/QMarker;

.field private isCancle:Z

.field private isFinishFlag:Z

.field private mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

.field private myHandler:Landroid/os/Handler;

.field private overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

.field private qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

.field private route:Lcom/baidu/mapapi/search/core/RouteLine;

.field routeNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lqunar/sdk/mapapi/entity/QunarRouteNode;",
            ">;"
        }
    .end annotation
.end field

.field private routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

.field start:Lqunar/sdk/mapapi/entity/QMarker;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 56
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 57
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    .line 58
    iput-boolean v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isFinishFlag:Z

    .line 59
    iput-boolean v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    .line 62
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    .line 548
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->myHandler:Landroid/os/Handler;

    .line 67
    invoke-static {}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 68
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isFinishFlag:Z

    return v0
.end method

.method static synthetic access$102(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;Z)Z
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    return p1
.end method

.method static synthetic access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    return-object v0
.end method

.method static synthetic access$300(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/QunarRouteType;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    return-object v0
.end method

.method static synthetic access$400(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method private cancelTimer()V
    .registers 3

    .prologue
    .line 572
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 573
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 575
    :cond_b
    return-void
.end method

.method private getRouteNodes()V
    .registers 11

    .prologue
    .line 167
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    if-nez v0, :cond_5

    .line 238
    :goto_4
    return-void

    .line 170
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    .line 171
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 174
    const/4 v1, 0x0

    .line 175
    instance-of v3, v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    if-eqz v3, :cond_8a

    .line 176
    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    .line 177
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 178
    new-instance v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>()V

    .line 179
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v4, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 181
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDistance()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->distance:I

    .line 183
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDuration()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->duration:I

    .line 184
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_81

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_81

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 188
    new-instance v5, Lqunar/sdk/location/QLocation;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 189
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 192
    :cond_7f
    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->wayPoints:Ljava/util/List;

    :cond_81
    move-object v0, v1

    .line 233
    :goto_82
    if-eqz v0, :cond_16

    .line 234
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 194
    :cond_8a
    instance-of v3, v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    if-eqz v3, :cond_ec

    .line 195
    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 196
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 197
    new-instance v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>()V

    .line 198
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v4, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 200
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 201
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDistance()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->distance:I

    .line 202
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDuration()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->duration:I

    .line 203
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_ea

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ea

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 207
    new-instance v5, Lqunar/sdk/location/QLocation;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 208
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 211
    :cond_e8
    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->wayPoints:Ljava/util/List;

    :cond_ea
    move-object v0, v1

    .line 213
    goto :goto_82

    :cond_ec
    instance-of v3, v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    if-eqz v3, :cond_161

    .line 214
    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 215
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 216
    new-instance v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>()V

    .line 217
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v4, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 219
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getDistance()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->distance:I

    .line 221
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getDuration()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->duration:I

    .line 222
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_14c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14c

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_131
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 226
    new-instance v5, Lqunar/sdk/location/QLocation;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 227
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_131

    .line 230
    :cond_14a
    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->wayPoints:Ljava/util/List;

    :cond_14c
    move-object v0, v1

    goto/16 :goto_82

    .line 237
    :cond_14f
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x1

    const-string v2, ""

    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    iget-object v4, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    invoke-virtual {v4}, Lcom/baidu/mapapi/search/core/RouteLine;->getDistance()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_4

    :cond_161
    move-object v0, v1

    goto/16 :goto_82
.end method

.method private getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V
    .registers 15

    .prologue
    .line 244
    if-nez p1, :cond_3

    .line 289
    :goto_2
    return-void

    .line 247
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestStartNode()Ljava/util/List;

    move-result-object v5

    .line 248
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestEndNode()Ljava/util/List;

    move-result-object v6

    .line 249
    const/4 v0, 0x0

    .line 250
    const/4 v2, 0x0

    .line 253
    if-eqz v5, :cond_ba

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 254
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_48

    const/16 v0, 0xa

    move v1, v0

    .line 256
    :goto_25
    const/4 v0, 0x0

    move v4, v0

    :goto_27
    if-ge v4, v1, :cond_5d

    .line 257
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v7, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    .line 258
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v0, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 260
    if-nez v0, :cond_4e

    .line 261
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v7}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    .line 266
    :goto_41
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_27

    .line 255
    :cond_48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_25

    .line 263
    :cond_4e
    new-instance v8, Lqunar/sdk/location/QLocation;

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v8, v9, v10, v11, v12}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 264
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v0, v8, v7}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    goto :goto_41

    :cond_5d
    move-object v4, v3

    .line 271
    :goto_5e
    if-eqz v6, :cond_b8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 272
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_99

    const/16 v0, 0xa

    move v1, v0

    .line 274
    :goto_76
    const/4 v0, 0x0

    move v3, v0

    :goto_78
    if-ge v3, v1, :cond_ae

    .line 275
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v5, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    .line 276
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v0, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 278
    if-nez v0, :cond_9f

    .line 279
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v5}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    .line 284
    :goto_92
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_78

    .line 273
    :cond_99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_76

    .line 281
    :cond_9f
    new-instance v7, Lqunar/sdk/location/QLocation;

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v7, v8, v9, v10, v11}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 282
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v0, v7, v5}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    goto :goto_92

    :cond_ae
    move-object v0, v2

    .line 288
    :goto_af
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    invoke-interface {v1, v2, v4, v0}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onStartEndNodeAmbiguityCallback(Lqunar/sdk/mapapi/QunarRouteType;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_2

    :cond_b8
    move-object v0, v2

    goto :goto_af

    :cond_ba
    move-object v4, v0

    goto :goto_5e
.end method

.method private routeNode2PlanNode(Lqunar/sdk/mapapi/entity/QunarRouteNode;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 5

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    if-nez p1, :cond_4

    .line 114
    :cond_3
    :goto_3
    return-object v0

    .line 92
    :cond_4
    sget-object v1, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$2;->$SwitchMap$qunar$sdk$mapapi$entity$RouteNodeType:[I

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->routeNodeType:Lqunar/sdk/mapapi/entity/RouteNodeType;

    invoke-virtual {v2}, Lqunar/sdk/mapapi/entity/RouteNodeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    goto :goto_3

    .line 94
    :pswitch_12
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    if-eqz v1, :cond_1d

    .line 95
    iget-object v0, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->withLocation(Lqunar/sdk/location/QLocation;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 98
    :cond_1d
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 99
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cityName:Ljava/lang/String;

    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 104
    :pswitch_34
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    if-eqz v1, :cond_4b

    const-string v1, ""

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 105
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cityName:Ljava/lang/String;

    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 108
    :cond_4b
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    if-eqz v1, :cond_3

    .line 109
    iget-object v0, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->withLocation(Lqunar/sdk/location/QLocation;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 92
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_12
        :pswitch_34
    .end packed-switch
.end method

.method private routePlane(Lqunar/sdk/mapapi/QunarRouteType;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 135
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarRouteType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 153
    :goto_c
    iput-boolean v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    .line 154
    iput-boolean v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isFinishFlag:Z

    .line 155
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->startTimer()V

    .line 156
    return-void

    .line 137
    :pswitch_14
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z

    goto :goto_c

    .line 141
    :pswitch_27
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object v1

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->transitSearch(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z

    goto :goto_c

    .line 146
    :pswitch_40
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->walkingSearch(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z

    goto :goto_c

    .line 135
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_14
        :pswitch_27
        :pswitch_40
    .end packed-switch
.end method

.method private routePlaneEnd()V
    .registers 2

    .prologue
    .line 517
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cancelTimer()V

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isFinishFlag:Z

    .line 519
    return-void
.end method

.method private startTimer()V
    .registers 5

    .prologue
    .line 568
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 569
    return-void
.end method

.method private withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 5

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    if-eqz p2, :cond_f

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 120
    invoke-static {p1, p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    .line 122
    :cond_f
    return-object v0
.end method

.method private withLocation(Lqunar/sdk/location/QLocation;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 7

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    if-eqz p1, :cond_14

    .line 128
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 129
    invoke-static {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    .line 131
    :cond_14
    return-object v0
.end method


# virtual methods
.method public appointStartEndShowMarker(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 3

    .prologue
    .line 511
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->start:Lqunar/sdk/mapapi/entity/QMarker;

    .line 512
    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->end:Lqunar/sdk/mapapi/entity/QMarker;

    .line 513
    return-void
.end method

.method public cancelRoutePlane()V
    .registers 3

    .prologue
    .line 540
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cancelTimer()V

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    .line 542
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_b

    .line 546
    :goto_a
    return-void

    .line 545
    :cond_b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_a
.end method

.method public destory()V
    .registers 2

    .prologue
    .line 532
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cancelTimer()V

    .line 533
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    if-eqz v0, :cond_c

    .line 534
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->destroy()V

    .line 536
    :cond_c
    return-void
.end method

.method public onGetBikingRouteResult(Lcom/baidu/mapapi/search/route/BikingRouteResult;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 352
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlaneEnd()V

    .line 353
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 392
    :cond_9
    :goto_9
    return-void

    .line 355
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    if-eqz v0, :cond_16

    .line 357
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 361
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v1, :cond_26

    .line 362
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 365
    :cond_26
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_34

    .line 367
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 370
    :cond_34
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_9

    .line 371
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_71

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_71

    .line 374
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v2, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v1, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 375
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 376
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    .line 377
    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_69

    .line 378
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 380
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 381
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getRouteNodes()V

    goto :goto_9

    .line 384
    :cond_69
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 387
    :cond_71
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 296
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlaneEnd()V

    .line 297
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 338
    :cond_9
    :goto_9
    return-void

    .line 299
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    if-eqz v0, :cond_16

    .line 301
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 305
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v1, :cond_2a

    .line 306
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 307
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 311
    :cond_2a
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_38

    .line 313
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 316
    :cond_38
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_9

    .line 317
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 320
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v2, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v1, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 321
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 322
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_6d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 324
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 326
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 327
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getRouteNodes()V

    goto :goto_9

    .line 330
    :cond_6d
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 333
    :cond_75
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9
.end method

.method public onGetIndoorRouteResult(Lcom/baidu/mapapi/search/route/IndoorRouteResult;)V
    .registers 2

    .prologue
    .line 348
    return-void
.end method

.method public onGetMassTransitRouteResult(Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)V
    .registers 2

    .prologue
    .line 449
    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 399
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlaneEnd()V

    .line 400
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 440
    :cond_9
    :goto_9
    return-void

    .line 402
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    if-eqz v0, :cond_16

    .line 404
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 408
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v1, :cond_2a

    .line 409
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 410
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 414
    :cond_2a
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_38

    .line 416
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 419
    :cond_38
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_9

    .line 420
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_75

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_75

    .line 423
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v2, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v1, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 424
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 425
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v1

    .line 426
    if-eqz v1, :cond_6d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6d

    .line 427
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 429
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 430
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getRouteNodes()V

    goto :goto_9

    .line 433
    :cond_6d
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 436
    :cond_75
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v3, v1, v4, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 456
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlaneEnd()V

    .line 457
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 507
    :cond_9
    :goto_9
    return-void

    .line 459
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z

    if-eqz v0, :cond_16

    .line 461
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 465
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v1, :cond_2a

    .line 467
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 468
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v5, v1, v6, v5}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 472
    :cond_2a
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_38

    .line 474
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 477
    :cond_38
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_9

    .line 478
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v4

    .line 479
    if-eqz v4, :cond_a4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 481
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 483
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 484
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v2

    .line 486
    const/4 v1, 0x1

    move-object v3, v0

    :goto_5d
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_84

    .line 487
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v0

    if-le v2, v0, :cond_80

    .line 488
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v2

    .line 489
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    move-object v3, v0

    .line 486
    :cond_80
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5d

    .line 492
    :cond_84
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    .line 493
    if-eqz v0, :cond_9b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 494
    iput-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 496
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 497
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->getRouteNodes()V

    goto/16 :goto_9

    .line 500
    :cond_9b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v5, v1, v6, v5}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    .line 503
    :cond_a4
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v5, v1, v6, v5}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9
.end method

.method public removeFromMap()V
    .registers 2

    .prologue
    .line 523
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    if-eqz v0, :cond_c

    .line 524
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/overlayutil/OverlayManager;->removeFromMap()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    .line 528
    :cond_c
    return-void
.end method

.method public setRotePlanCallback(Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    .line 161
    return-void
.end method

.method public startRoutPlane(Lqunar/sdk/mapapi/QunarRouteType;Lqunar/sdk/mapapi/entity/QunarRouteNode;Lqunar/sdk/mapapi/entity/QunarRouteNode;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_6

    .line 85
    :goto_5
    return-void

    .line 75
    :cond_6
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    .line 76
    iput-object p4, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cityName:Ljava/lang/String;

    .line 77
    invoke-direct {p0, p2}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNode2PlanNode(Lqunar/sdk/mapapi/entity/QunarRouteNode;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    .line 78
    invoke-direct {p0, p3}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNode2PlanNode(Lqunar/sdk/mapapi/entity/QunarRouteNode;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v1

    .line 79
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 80
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    invoke-interface {v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisStartCallback()V

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlane(Lqunar/sdk/mapapi/QunarRouteType;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V

    goto :goto_5

    .line 83
    :cond_1f
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u8bf7\u5b8c\u6574\u586b\u5199\u8d77\u59cb\u4f4d\u7f6e\u4fe1\u606f"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_5
.end method
