.class public Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/QunarRoutePlanSearch;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private bestFitRoute:Z

.field private cityName:Ljava/lang/String;

.field private debug:Z

.field df:Ljava/text/DecimalFormat;

.field endPointDrawable:Landroid/graphics/drawable/Drawable;

.field private ignoreAmbiguities:Z

.field private isCancle:Z

.field private isFinishFlag:Z

.field private letterPaint:Landroid/graphics/Paint;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private myHandler:Landroid/os/Handler;

.field private options:Ljava/lang/String;

.field private qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

.field private routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

.field private routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

.field private routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

.field private routeRequestLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private routeRibbonPaint:Landroid/graphics/Paint;

.field private routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

.field startPointDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "gis"

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->TAG:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->debug:Z

    .line 58
    iput-boolean v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->bestFitRoute:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    .line 61
    iput-boolean v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->ignoreAmbiguities:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    .line 69
    iput-boolean v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z

    .line 70
    iput-boolean v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z

    .line 545
    new-instance v0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;

    invoke-direct {v0, p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;-><init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->myHandler:Landroid/os/Handler;

    .line 79
    sget-object v0, Lqunar/sdk/mapapi/mapquest/MapQuestView;->MAPQUEST_KEY:Ljava/lang/String;

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 81
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$100(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    return-object v0
.end method

.method static synthetic access$200(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z

    return v0
.end method

.method static synthetic access$202(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Z)Z
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z

    return p1
.end method

.method static synthetic access$300(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z

    return v0
.end method

.method static synthetic access$302(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Z)Z
    .registers 2

    .prologue
    .line 50
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z

    return p1
.end method

.method static synthetic access$400(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->startTimer()V

    return-void
.end method

.method static synthetic access$500(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->debug:Z

    return v0
.end method

.method static synthetic access$600(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->handleResponse(Lcom/mapquest/android/maps/RouteResponse;)V

    return-void
.end method

.method static synthetic access$700(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/QunarRouteType;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    return-object v0
.end method

.method static synthetic access$800(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->cityName:Ljava/lang/String;

    return-object v0
.end method

.method private bestFit(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 4

    .prologue
    .line 397
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iget-object v1, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V

    .line 398
    return-void
.end method

.method private cancelTimer()V
    .registers 3

    .prologue
    .line 569
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 570
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 572
    :cond_b
    return-void
.end method

.method private createRoute(Ljava/util/List;Lqunar/sdk/mapapi/QunarRouteType;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lqunar/sdk/mapapi/QunarRouteType;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_c

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_c

    .line 153
    :cond_b
    :goto_b
    return-void

    .line 128
    :cond_c
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRequestLocations:Ljava/util/List;

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    const-string v0, "{ locations:["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 132
    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    .line 133
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->locationify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_39

    .line 135
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_19

    .line 139
    :cond_3d
    const-string v0, "],options:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->options:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->generateOptionsJSON(Ljava/lang/String;Lqunar/sdk/mapapi/QunarRouteType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 141
    new-instance v0, Lcom/mapquest/android/maps/RouteRequest;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    iget-boolean v4, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->ignoreAmbiguities:Z

    invoke-direct {v0, v1, v3, v4}, Lcom/mapquest/android/maps/RouteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    if-eqz v1, :cond_82

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v3, :cond_82

    .line 143
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-virtual {v1, v5}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->cancel(Z)Z

    .line 144
    iput-object v6, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    .line 146
    :cond_82
    new-instance v1, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-direct {v1, p0, v6}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;-><init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;)V

    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    .line 147
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    new-array v3, v5, [Lcom/mapquest/android/maps/RouteRequest;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_b
.end method

.method private generateOptionsJSON(Ljava/lang/String;Lqunar/sdk/mapapi/QunarRouteType;)Ljava/lang/String;
    .registers 10

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    if-eqz p1, :cond_be

    .line 168
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a9

    .line 174
    :goto_8
    if-nez v1, :cond_10

    .line 176
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_bb

    move-object v1, v0

    .line 183
    :cond_10
    :goto_10
    :try_start_10
    const-string v0, "generalize"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 184
    const-string v0, "shapeFormat"

    const-string v2, "cmp6"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v0, "narrativeType"

    const-string v2, "text"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v0, "unit"

    const-string v2, "k"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    sget-object v0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    invoke-virtual {p2}, Lqunar/sdk/mapapi/QunarRouteType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_c2

    .line 199
    const-string v0, "fastest"

    .line 203
    :goto_38
    const-string v2, "routeType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_a4

    .line 205
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 206
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 207
    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    instance-of v3, v3, Lcom/mapquest/android/maps/MercatorProjection;

    if-eqz v3, :cond_a4

    .line 208
    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v3

    .line 209
    const-string v4, "lat"

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 210
    const-string v4, "lng"

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 211
    const-string v3, "center"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v3, "scale"

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MercatorProjection;

    iget-object v4, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v4}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapquest/android/maps/MercatorProjection;->getScaleFactor(I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    const-string v0, "height"

    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v0, "width"

    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 215
    const-string v0, "mapState"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_a4} :catch_b6

    .line 222
    :cond_a4
    :goto_a4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :catch_a9
    move-exception v1

    move-object v1, v0

    goto/16 :goto_8

    .line 190
    :pswitch_ad
    :try_start_ad
    const-string v0, "fastest"

    goto :goto_38

    .line 193
    :pswitch_b0
    const-string v0, "multimodal"

    goto :goto_38

    .line 196
    :pswitch_b3
    const-string v0, "pedestrian"
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b5} :catch_b6

    goto :goto_38

    .line 218
    :catch_b6
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a4

    .line 177
    :catch_bb
    move-exception v0

    goto/16 :goto_10

    :cond_be
    move-object v1, v0

    goto/16 :goto_8

    .line 188
    nop

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_b0
        :pswitch_b3
    .end packed-switch
.end method

.method private getRouteNodes(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 16

    .prologue
    .line 306
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->df:Ljava/text/DecimalFormat;

    if-nez v0, :cond_d

    .line 307
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->df:Ljava/text/DecimalFormat;

    .line 309
    :cond_d
    iget-object v2, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    .line 310
    iget-object v3, v2, Lcom/mapquest/android/maps/RouteResponse$Route;->legs:Ljava/util/List;

    .line 311
    iget-object v0, v2, Lcom/mapquest/android/maps/RouteResponse$Route;->legs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ce

    .line 313
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 315
    const/4 v0, 0x0

    move v1, v0

    :goto_20
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8f

    .line 316
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    .line 317
    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->maneuvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 319
    :cond_32
    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 320
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;

    .line 321
    iget-object v6, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->startPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 322
    new-instance v7, Lqunar/sdk/location/QLocation;

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 323
    new-instance v6, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->narrative:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " about "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->df:Ljava/text/DecimalFormat;

    iget-wide v10, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->distance:D

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Meter."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    .line 324
    iget-wide v7, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->distance:D

    const-wide/16 v9, 0x0

    cmpl-double v0, v7, v9

    if-eqz v0, :cond_32

    .line 325
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 315
    :cond_8b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_20

    .line 330
    :cond_8f
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->locations:Ljava/util/List;

    .line 331
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_b4

    .line 332
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    .line 333
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/RouteResponse$Location;

    .line 334
    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    .line 335
    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    .line 336
    invoke-virtual {p0, v0, v1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->buildLocationsItemizedOverlay(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    .line 339
    :cond_b4
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x1

    const-string v3, ""

    new-instance v5, Ljava/lang/Double;

    iget-wide v6, v2, Lcom/mapquest/android/maps/RouteResponse$Route;->distance:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v5}, Ljava/lang/Double;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v3, v4, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    .line 343
    :goto_cd
    return-void

    .line 341
    :cond_ce
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x0

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_cd
.end method

.method private getSuggestStartEndNodes(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 13

    .prologue
    .line 276
    if-eqz p1, :cond_6

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_7

    .line 300
    :cond_6
    :goto_6
    return-void

    .line 281
    :cond_7
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->collections:Lcom/mapquest/android/maps/RouteResponse$Collections;

    iget-object v2, v0, Lcom/mapquest/android/maps/RouteResponse$Collections;->locationList:Ljava/util/List;

    .line 282
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 285
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 287
    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5c

    .line 288
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 289
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 287
    :cond_2e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 292
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_36
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    .line 293
    iget-object v5, v0, Lcom/mapquest/android/maps/RouteResponse$Location;->latLng:Lcom/mapquest/android/maps/GeoPoint;

    .line 294
    new-instance v6, Lqunar/sdk/location/QLocation;

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    .line 295
    new-instance v5, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Location;->street:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Lqunar/sdk/mapapi/entity/QunarRouteNode;-><init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V

    .line 296
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 299
    :cond_5c
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    invoke-interface {v0, v1, v3, v3}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onStartEndNodeAmbiguityCallback(Lqunar/sdk/mapapi/QunarRouteType;Ljava/util/List;Ljava/util/List;)V

    goto :goto_6
.end method

.method private handleResponse(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 227
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlaneEnd()V

    .line 228
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_a

    .line 270
    :goto_9
    return-void

    .line 230
    :cond_a
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z

    if-eqz v0, :cond_16

    .line 232
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_9

    .line 236
    :cond_16
    if-eqz p1, :cond_20

    :try_start_18
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    if-eqz v0, :cond_20

    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    if-nez v0, :cond_34

    .line 237
    :cond_20
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x0

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2a} :catch_2b

    goto :goto_9

    .line 266
    :catch_2b
    move-exception v0

    .line 267
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    invoke-interface {v0, v5, v1, v6, v5}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_9

    .line 240
    :cond_34
    :try_start_34
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iget v0, v0, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 241
    if-nez v0, :cond_79

    .line 242
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_6b

    .line 243
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->removeFromMap()V

    .line 244
    invoke-virtual {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->buildRouteOverlay(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/LineOverlay;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    .line 246
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->SUCCESS:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    .line 247
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    if-eqz v0, :cond_64

    .line 248
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->bestFitRoute:Z

    if-eqz v0, :cond_64

    .line 250
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->bestFit(Lcom/mapquest/android/maps/RouteResponse;)V

    .line 253
    :cond_64
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->getRouteNodes(Lcom/mapquest/android/maps/RouteResponse;)V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRequestLocations:Ljava/util/List;

    goto :goto_9

    .line 256
    :cond_6b
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x0

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRequestLocations:Ljava/util/List;

    goto :goto_9

    .line 259
    :cond_79
    const/16 v1, 0x262

    if-ne v0, v1, :cond_81

    .line 260
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->getSuggestStartEndNodes(Lcom/mapquest/android/maps/RouteResponse;)V

    goto :goto_9

    .line 263
    :cond_81
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const/4 v1, 0x0

    const-string v2, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf\uff01"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRequestLocations:Ljava/util/List;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_8e} :catch_2b

    goto/16 :goto_9
.end method

.method private init()V
    .registers 5

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    .line 102
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    const-string v1, "#E51b88ff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 104
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 106
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->letterPaint:Landroid/graphics/Paint;

    .line 109
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->letterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 111
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->letterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->letterPaint:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void
.end method

.method private locationify(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 157
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 160
    :goto_5
    return-object p1

    .line 159
    :catch_6
    move-exception v0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5
.end method

.method private routePlaneEnd()V
    .registers 2

    .prologue
    .line 576
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->cancelTimer()V

    .line 577
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z

    .line 578
    return-void
.end method

.method private startTimer()V
    .registers 5

    .prologue
    .line 565
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->myHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 566
    return-void
.end method


# virtual methods
.method protected addEventHandlersLocationsItemizedOverlay(Lcom/mapquest/android/maps/ItemizedOverlay;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapquest/android/maps/ItemizedOverlay",
            "<+",
            "Lcom/mapquest/android/maps/OverlayItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 391
    return-void
.end method

.method protected addEventHandlersRouteOverlay(Lcom/mapquest/android/maps/Overlay;)V
    .registers 2

    .prologue
    .line 394
    return-void
.end method

.method public appointStartEndShowMarker(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 4

    .prologue
    .line 582
    if-eqz p1, :cond_e

    .line 583
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createDrawable(Landroid/content/Context;Lqunar/sdk/mapapi/entity/QMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->startPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 585
    :cond_e
    if-eqz p2, :cond_1c

    .line 586
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createDrawable(Landroid/content/Context;Lqunar/sdk/mapapi/entity/QMarker;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->endPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 588
    :cond_1c
    return-void
.end method

.method protected buildLocationsItemizedOverlay(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 7

    .prologue
    const/16 v3, 0x21

    .line 358
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-nez v0, :cond_74

    .line 359
    new-instance v0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "poi"

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    .line 360
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->setZIndex(I)V

    .line 361
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :goto_2b
    new-instance v1, Lcom/mapquest/android/maps/OverlayItem;

    const-string v0, ""

    const-string v2, ""

    invoke-direct {v1, p1, v0, v2}, Lcom/mapquest/android/maps/OverlayItem;-><init>(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->startPointDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7a

    .line 369
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "start_mdpi.png"

    invoke-static {v0, v2}, Lcom/mapquest/android/maps/Util;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 373
    :goto_44
    invoke-static {v0, v3}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 374
    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->addItem(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 377
    new-instance v1, Lcom/mapquest/android/maps/OverlayItem;

    const-string v0, ""

    const-string v2, ""

    invoke-direct {v1, p2, v0, v2}, Lcom/mapquest/android/maps/OverlayItem;-><init>(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->endPointDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_7d

    .line 380
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "end_mdpi.png"

    invoke-static {v0, v2}, Lcom/mapquest/android/maps/Util;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 384
    :goto_68
    invoke-static {v0, v3}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 385
    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 386
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->addItem(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 387
    return-void

    .line 363
    :cond_74
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->clear()V

    goto :goto_2b

    .line 371
    :cond_7a
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->startPointDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    .line 382
    :cond_7d
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->endPointDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_68
.end method

.method protected buildRouteOverlay(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/LineOverlay;
    .registers 5

    .prologue
    .line 346
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    if-nez v0, :cond_14

    .line 347
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    .line 348
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;->setZIndex(I)V

    .line 351
    :cond_14
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/LineOverlay;->setSimplify(ZI)V

    .line 352
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    iget-object v1, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route;->shape:Lcom/mapquest/android/maps/RouteResponse$Route$Shape;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->shapePoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;->setData(Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->addEventHandlersRouteOverlay(Lcom/mapquest/android/maps/Overlay;)V

    .line 354
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    return-object v0
.end method

.method public cancelRoutePlane()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 528
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->cancelTimer()V

    .line 529
    iput-boolean v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z

    .line 530
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1c

    .line 531
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-virtual {v0, v2}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->cancel(Z)Z

    .line 532
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    .line 534
    :cond_1c
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_21

    .line 538
    :goto_20
    return-void

    .line 537
    :cond_21
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    sget-object v1, Lqunar/sdk/mapapi/listener/RoutePlaneResultType;->CANCLE:Lqunar/sdk/mapapi/listener/RoutePlaneResultType;

    invoke-interface {v0, v1}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V

    goto :goto_20
.end method

.method public clearRoute()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 401
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    if-eqz v0, :cond_1b

    .line 402
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_14

    .line 403
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 406
    :cond_14
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/LineOverlay;->destroy()V

    .line 407
    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    .line 410
    :cond_1b
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    if-eqz v0, :cond_35

    .line 411
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_2e

    .line 412
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 415
    :cond_2e
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->destroy()V

    .line 416
    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    .line 419
    :cond_35
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_3e

    .line 420
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 422
    :cond_3e
    return-void
.end method

.method public destory()V
    .registers 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->cancelRoutePlane()V

    .line 522
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->clearRoute()V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 524
    return-void
.end method

.method public removeFromMap()V
    .registers 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->clearRoute()V

    .line 543
    return-void
.end method

.method public setBestFitRoute(Z)V
    .registers 2

    .prologue
    .line 97
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->bestFitRoute:Z

    .line 98
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .prologue
    .line 93
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->debug:Z

    .line 94
    return-void
.end method

.method public setIgnoreAmbiguities(Z)V
    .registers 2

    .prologue
    .line 85
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->ignoreAmbiguities:Z

    .line 86
    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->options:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRotePlanCallback(Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;)V
    .registers 2

    .prologue
    .line 516
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    .line 517
    return-void
.end method

.method public setRouteRibbonPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    .line 117
    return-void
.end method

.method public startRoutPlane(Lqunar/sdk/mapapi/QunarRouteType;Lqunar/sdk/mapapi/entity/QunarRouteNode;Lqunar/sdk/mapapi/entity/QunarRouteNode;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 484
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    if-nez v0, :cond_c

    .line 512
    :cond_b
    :goto_b
    return-void

    .line 487
    :cond_c
    if-eqz p2, :cond_18

    if-eqz p3, :cond_18

    iget-object v0, p2, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    if-eqz v0, :cond_18

    iget-object v0, p3, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    if-nez v0, :cond_20

    .line 489
    :cond_18
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u62b1\u6b49\uff0c\u672a\u627e\u5230\u5408\u9002\u7684\u8def\u7ebf"

    invoke-interface {v0, v4, v1, v5, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_b

    .line 492
    :cond_20
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;

    .line 493
    iput-object p4, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->cityName:Ljava/lang/String;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    const-string v1, "{ locations:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"latLng\":{\"lat\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"lng\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}},"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "{\"latLng\":{\"lat\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"lng\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-virtual {v2}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, "],options:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->options:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->generateOptionsJSON(Ljava/lang/String;Lqunar/sdk/mapapi/QunarRouteType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_dd

    .line 500
    new-instance v1, Lcom/mapquest/android/maps/RouteRequest;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->apiKey:Ljava/lang/String;

    iget-boolean v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->ignoreAmbiguities:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/mapquest/android/maps/RouteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 501
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-virtual {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_cb

    .line 502
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-virtual {v0, v6}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->cancel(Z)Z

    .line 503
    iput-object v5, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    .line 505
    :cond_cb
    new-instance v0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    invoke-direct {v0, p0, v5}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;-><init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    .line 506
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routeTask:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;

    new-array v2, v6, [Lcom/mapquest/android/maps/RouteRequest;

    aput-object v1, v2, v4

    invoke-virtual {v0, v2}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_b

    .line 509
    :cond_dd
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    const-string v1, "\u65e0\u6cd5\u8bbf\u95ee\u8def\u5f84\u5206\u6790\u670d\u52a1"

    invoke-interface {v0, v4, v1, v5, v4}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_b
.end method
