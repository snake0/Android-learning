.class public Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;
.implements Lqunar/sdk/mapapi/QunarRoutePlanSearch;


# instance fields
.field private bdMap:Lcom/baidu/mapapi/map/BaiduMap;

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
.method public constructor <init>(Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 57
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 58
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    .line 59
    iput-boolean v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isFinishFlag:Z

    .line 60
    iput-boolean v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    .line 63
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNodes:Ljava/util/ArrayList;

    .line 627
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->myHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 69
    invoke-static {}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->newInstance()Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    .line 70
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->setOnGetRoutePlanResultListener(Lcom/baidu/mapapi/search/route/OnGetRoutePlanResultListener;)V

    .line 71
    return-void
.end method

.method static synthetic access$300(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isFinishFlag:Z

    return v0
.end method

.method static synthetic access$402(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Z)Z
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    return p1
.end method

.method static synthetic access$500(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    return-object v0
.end method

.method static synthetic access$600(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/QunarRouteType;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    return-object v0
.end method

.method static synthetic access$700(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method private cancelTimer()V
    .registers 3

    .prologue
    .line 651
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 652
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 654
    :cond_b
    return-void
.end method

.method private getRouteNodes()V
    .registers 11

    .prologue
    .line 169
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    if-nez v0, :cond_5

    .line 240
    :goto_4
    return-void

    .line 172
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNodes:Ljava/util/ArrayList;

    .line 173
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/core/RouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    .line 177
    instance-of v3, v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    if-eqz v3, :cond_8a

    .line 178
    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    .line 179
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 180
    new-instance v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>()V

    .line 181
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v4, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 183
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 184
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDistance()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->distance:I

    .line 185
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getDuration()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->duration:I

    .line 186
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_81

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_81

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_66
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 190
    new-instance v5, Lqunar/sdk/location/QLocation;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 191
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 194
    :cond_7f
    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->wayPoints:Ljava/util/List;

    :cond_81
    move-object v0, v1

    .line 235
    :goto_82
    if-eqz v0, :cond_16

    .line 236
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 196
    :cond_8a
    instance-of v3, v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    if-eqz v3, :cond_ec

    .line 197
    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 198
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 199
    new-instance v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>()V

    .line 200
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v4, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 202
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 203
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDistance()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->distance:I

    .line 204
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getDuration()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->duration:I

    .line 205
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_ea

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_ea

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_cf
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 209
    new-instance v5, Lqunar/sdk/location/QLocation;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 210
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cf

    .line 213
    :cond_e8
    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->wayPoints:Ljava/util/List;

    :cond_ea
    move-object v0, v1

    .line 215
    goto :goto_82

    :cond_ec
    instance-of v3, v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    if-eqz v3, :cond_161

    .line 216
    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 217
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getEntrance()Lcom/baidu/mapapi/search/core/RouteNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/search/core/RouteNode;->getLocation()Lcom/baidu/mapapi/model/LatLng;

    move-result-object v3

    .line 218
    new-instance v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v1}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>()V

    .line 219
    new-instance v4, Lqunar/sdk/location/QLocation;

    iget-wide v5, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v7, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v4, v5, v6, v7, v8}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v4, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 221
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getInstructions()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 222
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getDistance()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->distance:I

    .line 223
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getDuration()I

    move-result v3

    iput v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->duration:I

    .line 224
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_14c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_14c

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_131
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    .line 228
    new-instance v5, Lqunar/sdk/location/QLocation;

    iget-wide v6, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v5, v6, v7, v8, v9}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 229
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_131

    .line 232
    :cond_14a
    iput-object v3, v1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->wayPoints:Ljava/util/List;

    :cond_14c
    move-object v0, v1

    goto/16 :goto_82

    .line 239
    :cond_14f
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x1

    const-string v2, ""

    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNodes:Ljava/util/ArrayList;

    iget-object v4, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

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
    .line 246
    if-nez p1, :cond_3

    .line 291
    :goto_2
    return-void

    .line 249
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestStartNode()Ljava/util/List;

    move-result-object v5

    .line 250
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/SuggestAddrInfo;->getSuggestEndNode()Ljava/util/List;

    move-result-object v6

    .line 251
    const/4 v0, 0x0

    .line 252
    const/4 v2, 0x0

    .line 255
    if-eqz v5, :cond_ba

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ba

    .line 256
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_48

    const/16 v0, 0xa

    move v1, v0

    .line 258
    :goto_25
    const/4 v0, 0x0

    move v4, v0

    :goto_27
    if-ge v4, v1, :cond_5d

    .line 259
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v7, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    .line 260
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v0, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 262
    if-nez v0, :cond_4e

    .line 263
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    const/4 v8, 0x0

    invoke-direct {v0, v8, v7}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    .line 268
    :goto_41
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_27

    .line 257
    :cond_48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_25

    .line 265
    :cond_4e
    new-instance v8, Lqunar/sdk/location/QLocation;

    iget-wide v9, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v11, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v8, v9, v10, v11, v12}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 266
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v0, v8, v7}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    goto :goto_41

    :cond_5d
    move-object v4, v3

    .line 273
    :goto_5e
    if-eqz v6, :cond_b8

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_99

    const/16 v0, 0xa

    move v1, v0

    .line 276
    :goto_76
    const/4 v0, 0x0

    move v3, v0

    :goto_78
    if-ge v3, v1, :cond_ae

    .line 277
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v5, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->address:Ljava/lang/String;

    .line 278
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/core/PoiInfo;

    iget-object v0, v0, Lcom/baidu/mapapi/search/core/PoiInfo;->location:Lcom/baidu/mapapi/model/LatLng;

    .line 280
    if-nez v0, :cond_9f

    .line 281
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v5}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    .line 286
    :goto_92
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_78

    .line 275
    :cond_99
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    goto :goto_76

    .line 283
    :cond_9f
    new-instance v7, Lqunar/sdk/location/QLocation;

    iget-wide v8, v0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v10, v0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v7, v8, v9, v10, v11}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 284
    new-instance v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-direct {v0, v7, v5}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    goto :goto_92

    :cond_ae
    move-object v0, v2

    .line 290
    :goto_af
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

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
    .line 90
    const/4 v0, 0x0

    .line 91
    if-nez p1, :cond_4

    .line 116
    :cond_3
    :goto_3
    return-object v0

    .line 94
    :cond_4
    sget-object v1, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$entity$RouteNodeType:[I

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->routeNodeType:Lqunar/sdk/mapapi/entity/RouteNodeType;

    invoke-virtual {v2}, Lqunar/sdk/mapapi/entity/RouteNodeType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    goto :goto_3

    .line 96
    :pswitch_12
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    if-eqz v1, :cond_1d

    .line 97
    iget-object v0, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->withLocation(Lqunar/sdk/location/QLocation;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 100
    :cond_1d
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 101
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cityName:Ljava/lang/String;

    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 106
    :pswitch_34
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    if-eqz v1, :cond_4b

    const-string v1, ""

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 107
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cityName:Ljava/lang/String;

    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 110
    :cond_4b
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    if-eqz v1, :cond_3

    .line 111
    iget-object v0, p1, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->withLocation(Lqunar/sdk/location/QLocation;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    goto :goto_3

    .line 94
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

    .line 137
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    invoke-virtual {p1}, Lqunar/sdk/mapapi/QunarRouteType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_54

    .line 155
    :goto_c
    iput-boolean v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    .line 156
    iput-boolean v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isFinishFlag:Z

    .line 157
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->startTimer()V

    .line 158
    return-void

    .line 139
    :pswitch_14
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->drivingSearch(Lcom/baidu/mapapi/search/route/DrivingRoutePlanOption;)Z

    goto :goto_c

    .line 143
    :pswitch_27
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object v1

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->city(Ljava/lang/String;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->transitSearch(Lcom/baidu/mapapi/search/route/TransitRoutePlanOption;)Z

    goto :goto_c

    .line 148
    :pswitch_40
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    new-instance v1, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    invoke-direct {v1}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;-><init>()V

    invoke-virtual {v1, p2}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->from(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;->to(Lcom/baidu/mapapi/search/route/PlanNode;)Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->walkingSearch(Lcom/baidu/mapapi/search/route/WalkingRoutePlanOption;)Z

    goto :goto_c

    .line 137
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
    .line 595
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cancelTimer()V

    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isFinishFlag:Z

    .line 597
    return-void
.end method

.method private startTimer()V
    .registers 5

    .prologue
    .line 647
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 648
    return-void
.end method

.method private withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 5

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    if-eqz p2, :cond_f

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 122
    invoke-static {p1, p2}, Lcom/baidu/mapapi/search/route/PlanNode;->withCityNameAndPlaceName(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    .line 124
    :cond_f
    return-object v0
.end method

.method private withLocation(Lqunar/sdk/location/QLocation;)Lcom/baidu/mapapi/search/route/PlanNode;
    .registers 7

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    if-eqz p1, :cond_14

    .line 130
    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 131
    invoke-static {v0}, Lcom/baidu/mapapi/search/route/PlanNode;->withLocation(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    .line 133
    :cond_14
    return-object v0
.end method


# virtual methods
.method public appointStartEndShowMarker(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 3

    .prologue
    .line 589
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->start:Lqunar/sdk/mapapi/entity/QMarker;

    .line 590
    iput-object p2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->end:Lqunar/sdk/mapapi/entity/QMarker;

    .line 591
    return-void
.end method

.method public cancelRoutePlane()V
    .registers 3

    .prologue
    .line 619
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cancelTimer()V

    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    .line 621
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_b

    .line 625
    :goto_a
    return-void

    .line 624
    :cond_b
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_a
.end method

.method public destory()V
    .registers 2

    .prologue
    .line 610
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cancelTimer()V

    .line 611
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    if-eqz v0, :cond_c

    .line 612
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->mSearch:Lcom/baidu/mapapi/search/route/RoutePlanSearch;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/RoutePlanSearch;->destroy()V

    .line 614
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    .line 615
    return-void
.end method

.method public onGetBikingRouteResult(Lcom/baidu/mapapi/search/route/BikingRouteResult;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlaneEnd()V

    .line 373
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 431
    :cond_9
    :goto_9
    return-void

    .line 375
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    if-eqz v0, :cond_16

    .line 377
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 381
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v2, :cond_26

    .line 382
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 385
    :cond_26
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_34

    .line 387
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 390
    :cond_34
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/BikingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_9

    .line 391
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/BikingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_b6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b6

    .line 394
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v3, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v2, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 395
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->removeFromMap()V

    .line 396
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/BikingRouteLine;

    .line 397
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/BikingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    .line 398
    if-eqz v2, :cond_ad

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ad

    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v3, :cond_ad

    .line 399
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 403
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;

    .line 404
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/BikingRouteLine$BikingStep;->getWayPoints()Ljava/util/List;

    move-result-object v1

    .line 405
    if-eqz v1, :cond_bf

    .line 406
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_84
    move v2, v1

    .line 408
    goto :goto_6d

    .line 411
    :cond_86
    const/4 v1, 0x2

    if-le v2, v1, :cond_a4

    const/16 v1, 0x2710

    if-ge v2, v1, :cond_a4

    .line 412
    new-instance v1, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyBikingRouteOverlay;

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {v1, p0, v2}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyBikingRouteOverlay;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 413
    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    .line 414
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    .line 415
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/BikingRouteLine;)V

    .line 416
    invoke-virtual {v1}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;->addToMap()V

    .line 417
    invoke-virtual {v1}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;->zoomToSpan()V

    .line 419
    :cond_a4
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 420
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getRouteNodes()V

    goto/16 :goto_9

    .line 423
    :cond_ad
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    .line 426
    :cond_b6
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    :cond_bf
    move v1, v2

    goto :goto_84
.end method

.method public onGetDrivingRouteResult(Lcom/baidu/mapapi/search/route/DrivingRouteResult;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlaneEnd()V

    .line 299
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 359
    :cond_9
    :goto_9
    return-void

    .line 301
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    if-eqz v0, :cond_16

    .line 303
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 307
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v2, :cond_2a

    .line 308
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 309
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 313
    :cond_2a
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_38

    .line 315
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 318
    :cond_38
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_9

    .line 319
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/DrivingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_ba

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 322
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v3, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v2, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 323
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->removeFromMap()V

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/DrivingRouteLine;

    .line 325
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/DrivingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    .line 326
    if-eqz v2, :cond_b1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b1

    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v3, :cond_b1

    .line 327
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 331
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;

    .line 332
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/DrivingRouteLine$DrivingStep;->getWayPoints()Ljava/util/List;

    move-result-object v1

    .line 333
    if-eqz v1, :cond_c3

    .line 334
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_88
    move v2, v1

    .line 336
    goto :goto_71

    .line 339
    :cond_8a
    const/4 v1, 0x2

    if-le v2, v1, :cond_a8

    const/16 v1, 0x2710

    if-ge v2, v1, :cond_a8

    .line 340
    new-instance v1, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyDrivingRouteOverlay;

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {v1, p0, v2, v4}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyDrivingRouteOverlay;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;)V

    .line 341
    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    .line 342
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    .line 343
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/DrivingRouteLine;)V

    .line 344
    invoke-virtual {v1}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->addToMap()V

    .line 345
    invoke-virtual {v1}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->zoomToSpan()V

    .line 347
    :cond_a8
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 348
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getRouteNodes()V

    goto/16 :goto_9

    .line 351
    :cond_b1
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    .line 354
    :cond_ba
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    :cond_c3
    move v1, v2

    goto :goto_88
.end method

.method public onGetIndoorRouteResult(Lcom/baidu/mapapi/search/route/IndoorRouteResult;)V
    .registers 2

    .prologue
    .line 368
    return-void
.end method

.method public onGetMassTransitRouteResult(Lcom/baidu/mapapi/search/route/MassTransitRouteResult;)V
    .registers 2

    .prologue
    .line 507
    return-void
.end method

.method public onGetTransitRouteResult(Lcom/baidu/mapapi/search/route/TransitRouteResult;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 438
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlaneEnd()V

    .line 439
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 498
    :cond_9
    :goto_9
    return-void

    .line 441
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    if-eqz v0, :cond_16

    .line 443
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 447
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v2, :cond_2a

    .line 448
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 449
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 453
    :cond_2a
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_38

    .line 455
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 458
    :cond_38
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/TransitRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v2, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v2, :cond_9

    .line 459
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/TransitRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v0

    .line 460
    if-eqz v0, :cond_ba

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ba

    .line 462
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v3, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v2, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 463
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->removeFromMap()V

    .line 464
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/TransitRouteLine;

    .line 465
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/TransitRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v2

    .line 466
    if-eqz v2, :cond_b1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b1

    iget-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v3, :cond_b1

    .line 467
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 470
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    :goto_71
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;

    .line 471
    invoke-virtual {v1}, Lcom/baidu/mapapi/search/route/TransitRouteLine$TransitStep;->getWayPoints()Ljava/util/List;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_c3

    .line 473
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v2

    :goto_88
    move v2, v1

    .line 475
    goto :goto_71

    .line 478
    :cond_8a
    const/4 v1, 0x2

    if-le v2, v1, :cond_a8

    const/16 v1, 0x2710

    if-ge v2, v1, :cond_a8

    .line 479
    new-instance v1, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {v1, p0, v2, v4}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;)V

    .line 480
    iput-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    .line 481
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    .line 482
    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/TransitRouteLine;)V

    .line 483
    invoke-virtual {v1}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->addToMap()V

    .line 484
    invoke-virtual {v1}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->zoomToSpan()V

    .line 487
    :cond_a8
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 488
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getRouteNodes()V

    goto/16 :goto_9

    .line 491
    :cond_b1
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    .line 494
    :cond_ba
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v1, v2, v4, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    :cond_c3
    move v1, v2

    goto :goto_88
.end method

.method public onGetWalkingRouteResult(Lcom/baidu/mapapi/search/route/WalkingRouteResult;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 514
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlaneEnd()V

    .line 515
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 585
    :cond_9
    :goto_9
    return-void

    .line 517
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z

    if-eqz v0, :cond_16

    .line 519
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 523
    :cond_16
    if-eqz p1, :cond_1e

    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-eq v0, v1, :cond_2a

    .line 525
    :cond_1e
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 526
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v4, v1, v6, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 530
    :cond_2a
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->AMBIGUOUS_ROURE_ADDR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_38

    .line 532
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getSuggestAddrInfo()Lcom/baidu/mapapi/search/route/SuggestAddrInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getSuggestStartEndNodes(Lcom/baidu/mapapi/search/route/SuggestAddrInfo;)V

    goto :goto_9

    .line 535
    :cond_38
    iget-object v0, p1, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->error:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    sget-object v1, Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;->NO_ERROR:Lcom/baidu/mapapi/search/core/SearchResult$ERRORNO;

    if-ne v0, v1, :cond_9

    .line 536
    invoke-virtual {p1}, Lcom/baidu/mapapi/search/route/WalkingRouteResult;->getRouteLines()Ljava/util/List;

    move-result-object v5

    .line 537
    if-eqz v5, :cond_e7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e7

    .line 539
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 540
    invoke-virtual {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->removeFromMap()V

    .line 542
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    .line 543
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v2

    .line 545
    const/4 v1, 0x1

    move-object v3, v0

    :goto_60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_87

    .line 546
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v0

    if-le v2, v0, :cond_83

    .line 547
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getDistance()I

    move-result v2

    .line 548
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine;

    move-object v3, v0

    .line 545
    :cond_83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_60

    .line 552
    :cond_87
    invoke-virtual {v3}, Lcom/baidu/mapapi/search/route/WalkingRouteLine;->getAllStep()Ljava/util/List;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_de

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_de

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    if-eqz v1, :cond_de

    .line 554
    iput-object v3, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->route:Lcom/baidu/mapapi/search/core/RouteLine;

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v4

    :goto_9e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;

    .line 558
    invoke-virtual {v0}, Lcom/baidu/mapapi/search/route/WalkingRouteLine$WalkingStep;->getWayPoints()Ljava/util/List;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_f0

    .line 560
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    :goto_b5
    move v1, v0

    .line 562
    goto :goto_9e

    .line 565
    :cond_b7
    const/4 v0, 0x2

    if-le v1, v0, :cond_d5

    const/16 v0, 0x2710

    if-ge v1, v0, :cond_d5

    .line 566
    new-instance v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyWalkingRouteOverlay;

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-direct {v0, p0, v1, v6}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyWalkingRouteOverlay;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;)V

    .line 567
    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    .line 568
    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->bdMap:Lcom/baidu/mapapi/map/BaiduMap;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMarkerClickListener(Lcom/baidu/mapapi/map/BaiduMap$OnMarkerClickListener;)V

    .line 569
    invoke-virtual {v0, v3}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->setData(Lcom/baidu/mapapi/search/route/WalkingRouteLine;)V

    .line 570
    invoke-virtual {v0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->addToMap()V

    .line 571
    invoke-virtual {v0}, Lcom/baidu/mapapi/overlayutil/WalkingRouteOverlay;->zoomToSpan()V

    .line 574
    :cond_d5
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-eqz v0, :cond_9

    .line 575
    invoke-direct {p0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->getRouteNodes()V

    goto/16 :goto_9

    .line 578
    :cond_de
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v4, v1, v6, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    .line 581
    :cond_e7
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v4, v1, v6, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_9

    :cond_f0
    move v0, v1

    goto :goto_b5
.end method

.method public removeFromMap()V
    .registers 2

    .prologue
    .line 601
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    if-eqz v0, :cond_c

    .line 602
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/overlayutil/OverlayManager;->removeFromMap()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->overlayManager:Lcom/baidu/mapapi/overlayutil/OverlayManager;

    .line 606
    :cond_c
    return-void
.end method

.method public setRotePlanCallback(Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    .line 163
    return-void
.end method

.method public startRoutPlane(Lqunar/sdk/mapapi/QunarRouteType;Lqunar/sdk/mapapi/entity/QunarRouteNode;Lqunar/sdk/mapapi/entity/QunarRouteNode;Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 75
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_6

    .line 87
    :goto_5
    return-void

    .line 77
    :cond_6
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    .line 78
    iput-object p4, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cityName:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p2}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNode2PlanNode(Lqunar/sdk/mapapi/entity/QunarRouteNode;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v0

    .line 80
    invoke-direct {p0, p3}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNode2PlanNode(Lqunar/sdk/mapapi/entity/QunarRouteNode;)Lcom/baidu/mapapi/search/route/PlanNode;

    move-result-object v1

    .line 81
    if-eqz v0, :cond_1f

    if-eqz v1, :cond_1f

    .line 82
    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    invoke-interface {v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisStartCallback()V

    .line 83
    invoke-direct {p0, p1, v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlane(Lqunar/sdk/mapapi/QunarRouteType;Lcom/baidu/mapapi/search/route/PlanNode;Lcom/baidu/mapapi/search/route/PlanNode;)V

    goto :goto_5

    .line 85
    :cond_1f
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u8bf7\u5b8c\u6574\u586b\u5199\u8d77\u59cb\u4f4d\u7f6e\u4fe1\u606f"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_5
.end method
