.class public Lcom/mapquest/android/maps/RouteManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private bestFitRoute:Z

.field private context:Landroid/content/Context;

.field private debug:Z

.field private handleAmbiguities:Z

.field private ignoreAmbiguities:Z

.field private itinerary:Landroid/webkit/WebView;

.field private letterPaint:Landroid/graphics/Paint;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private options:Ljava/lang/String;

.field private routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

.field private routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapquest/android/maps/ItemizedOverlay",
            "<+",
            "Lcom/mapquest/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "gis"

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteManager;->debug:Z

    .line 46
    iput-boolean v1, p0, Lcom/mapquest/android/maps/RouteManager;->bestFitRoute:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/mapquest/android/maps/RouteManager;->ignoreAmbiguities:Z

    .line 50
    iput-boolean v1, p0, Lcom/mapquest/android/maps/RouteManager;->handleAmbiguities:Z

    .line 54
    instance-of v0, p1, Lcom/mapquest/android/maps/MapActivity;

    if-nez v0, :cond_21

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the context used in instantiating a RouteManager must be a MapActivity.  If you are not using a MapActivity then use the RouteManager(Context context,String apiKey) constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_21
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->context:Landroid/content/Context;

    .line 58
    instance-of v0, p1, Lcom/mapquest/android/maps/MapActivity;

    if-eqz v0, :cond_2f

    .line 59
    check-cast p1, Lcom/mapquest/android/maps/MapActivity;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapActivity;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    .line 62
    :cond_2f
    invoke-direct {p0}, Lcom/mapquest/android/maps/RouteManager;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "gis"

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteManager;->debug:Z

    .line 46
    iput-boolean v1, p0, Lcom/mapquest/android/maps/RouteManager;->bestFitRoute:Z

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/mapquest/android/maps/RouteManager;->ignoreAmbiguities:Z

    .line 50
    iput-boolean v1, p0, Lcom/mapquest/android/maps/RouteManager;->handleAmbiguities:Z

    .line 67
    iput-object p2, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->context:Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/mapquest/android/maps/RouteManager;->init()V

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/RouteManager;)Lcom/mapquest/android/maps/RouteManager$RouteCallback;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/RouteManager;)Ljava/util/List;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRequestLocations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mapquest/android/maps/RouteManager;)Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RouteManager;->debug:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mapquest/android/maps/RouteManager;Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/RouteManager;->handleResponse(Lcom/mapquest/android/maps/RouteResponse;)V

    return-void
.end method

.method private bestFit(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iget-object v1, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V

    .line 415
    return-void
.end method

.method private generateOptionsJSON(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    if-eqz p1, :cond_a0

    .line 169
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_94

    .line 175
    :goto_8
    if-nez v1, :cond_10

    .line 177
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_9d

    move-object v1, v0

    .line 184
    :cond_10
    :goto_10
    :try_start_10
    const-string v0, "generalize"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 185
    const-string v0, "shapeFormat"

    const-string v2, "cmp6"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    if-eqz v0, :cond_28

    .line 187
    const-string v0, "narrativeType"

    const-string v2, "microformat"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_28
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_8f

    .line 191
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 192
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 193
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    instance-of v3, v3, Lcom/mapquest/android/maps/MercatorProjection;

    if-eqz v3, :cond_8f

    .line 194
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getMapCenter()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v3

    .line 195
    const-string v4, "lat"

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 196
    const-string v4, "lng"

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 197
    const-string v3, "center"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string v3, "scale"

    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/MercatorProjection;

    iget-object v4, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v4}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/mapquest/android/maps/MercatorProjection;->getScaleFactor(I)I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    const-string v0, "height"

    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 200
    const-string v0, "width"

    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 201
    const-string v0, "mapState"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8f} :catch_98

    .line 208
    :cond_8f
    :goto_8f
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 170
    :catch_94
    move-exception v1

    move-object v1, v0

    goto/16 :goto_8

    .line 204
    :catch_98
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8f

    .line 178
    :catch_9d
    move-exception v0

    goto/16 :goto_10

    :cond_a0
    move-object v1, v0

    goto/16 :goto_8
.end method

.method private handleResponse(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 8

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iget v0, v0, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 214
    if-nez v0, :cond_69

    .line 215
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_44

    .line 216
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->locations:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/RouteManager;->buildLocationsItemizedOverlay(Ljava/util/List;)Lcom/mapquest/android/maps/ItemizedOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    .line 217
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    if-eqz v0, :cond_28

    .line 218
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/RouteManager;->addEventHandlersLocationsItemizedOverlay(Lcom/mapquest/android/maps/ItemizedOverlay;)V

    .line 219
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_28
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/RouteManager;->buildRouteOverlay(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/LineOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    .line 223
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    if-eqz v0, :cond_44

    .line 224
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RouteManager;->bestFitRoute:Z

    if-eqz v0, :cond_44

    .line 226
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/RouteManager;->bestFit(Lcom/mapquest/android/maps/RouteResponse;)V

    .line 231
    :cond_44
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    if-eqz v0, :cond_5c

    .line 232
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/RouteManager;->buildHTMLItinerary(Lcom/mapquest/android/maps/RouteResponse;)Ljava/lang/String;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_5c

    .line 234
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_5c
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    if-eqz v0, :cond_65

    .line 239
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/RouteManager$RouteCallback;->onSuccess(Lcom/mapquest/android/maps/RouteResponse;)V

    .line 242
    :cond_65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRequestLocations:Ljava/util/List;

    .line 269
    :cond_68
    :goto_68
    return-void

    .line 243
    :cond_69
    const/16 v1, 0x262

    if-ne v0, v1, :cond_ad

    iget-boolean v0, p0, Lcom/mapquest/android/maps/RouteManager;->handleAmbiguities:Z

    if-eqz v0, :cond_ad

    .line 244
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse;->collections:Lcom/mapquest/android/maps/RouteResponse$Collections;

    iget-object v2, v0, Lcom/mapquest/android/maps/RouteResponse$Collections;->locationList:Ljava/util/List;

    .line 246
    const/4 v0, 0x0

    move v1, v0

    :goto_77
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_68

    .line 247
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_a9

    .line 249
    invoke-direct {p0, v0, v1, p1}, Lcom/mapquest/android/maps/RouteManager;->showAmbiguityPicker(Ljava/util/List;ILcom/mapquest/android/maps/RouteResponse;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_68

    .line 261
    :catch_8e
    move-exception v0

    .line 262
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    if-eqz v1, :cond_68

    .line 263
    new-instance v1, Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {v1}, Lcom/mapquest/android/maps/RouteResponse;-><init>()V

    .line 264
    iget-object v2, v1, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iget-object v2, v2, Lcom/mapquest/android/maps/ServiceResponse$Info;->messages:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    invoke-interface {v0, v1}, Lcom/mapquest/android/maps/RouteManager$RouteCallback;->onError(Lcom/mapquest/android/maps/RouteResponse;)V

    goto :goto_68

    .line 246
    :cond_a9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    .line 255
    :cond_ad
    :try_start_ad
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    if-eqz v0, :cond_b6

    .line 256
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/RouteManager$RouteCallback;->onError(Lcom/mapquest/android/maps/RouteResponse;)V

    .line 259
    :cond_b6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRequestLocations:Ljava/util/List;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b9} :catch_8e

    goto :goto_68
.end method

.method private init()V
    .registers 5

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    .line 106
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 110
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 111
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->letterPaint:Landroid/graphics/Paint;

    .line 113
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->letterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->letterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->letterPaint:Landroid/graphics/Paint;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    return-void
.end method

.method private locationify(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 158
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 161
    :goto_5
    return-object p1

    .line 160
    :catch_6
    move-exception v0

    .line 161
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

.method private showAmbiguityPicker(Ljava/util/List;ILcom/mapquest/android/maps/RouteResponse;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Location;",
            ">;I",
            "Lcom/mapquest/android/maps/RouteResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 275
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    .line 277
    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteResponse$Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 280
    :cond_1d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 281
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteManager;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    const-string v2, "Resolve Location:"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 283
    new-instance v2, Lcom/mapquest/android/maps/RouteManager$1;

    invoke-direct {v2, p0, p3}, Lcom/mapquest/android/maps/RouteManager$1;-><init>(Lcom/mapquest/android/maps/RouteManager;Lcom/mapquest/android/maps/RouteResponse;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    new-instance v2, Lcom/mapquest/android/maps/RouteManager$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/mapquest/android/maps/RouteManager$2;-><init>(Lcom/mapquest/android/maps/RouteManager;ILjava/util/List;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
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
    .line 408
    return-void
.end method

.method protected addEventHandlersRouteOverlay(Lcom/mapquest/android/maps/Overlay;)V
    .registers 2

    .prologue
    .line 411
    return-void
.end method

.method protected buildHTMLItinerary(Lcom/mapquest/android/maps/RouteResponse;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v3, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    .line 301
    iget-object v4, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->locations:Ljava/util/List;

    .line 302
    iget-object v5, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->legs:Ljava/util/List;

    .line 303
    const-string v0, "M"

    iget-object v1, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->options:Lcom/mapquest/android/maps/RouteResponse$Route$Options;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    const-string v0, " miles"

    move-object v1, v0

    .line 304
    :goto_16
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v0, "#.##"

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    iget-object v0, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->legs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1e2

    .line 307
    const-string v0, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v0, "<html>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v0, "<head>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, "<title>Route Itinerary</title>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v0, "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string v0, "<style type=\"text/css\">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    const-string v0, "  .locationSummary{font-weight: bold;}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string v0, "  .distTimeSummary{font-size:12px;}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    const-string v0, "  .first{font-weight:bold;}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v0, "  img {margin:2px;}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, "  th {text-align:left; font-size:20; background-color:#eeeeee;}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v0, "  td {vertical-align:top;}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    const-string v0, "</style>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v0, "</head>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    const-string v0, "<body>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, "<table>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v0, "  <tr><td>Start:</td><td><span class=\"locationSummary\">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteResponse$Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "</span></td></tr>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v0, "  <tr><td>End:</td><td><span class=\"locationSummary\">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteResponse$Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "</span></td></tr>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v0, "  <tr><td colspan=\"2\"><div class=\"distTimeSummary\">Distance: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v8, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->distance:D

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->formattedTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</div></td></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, "</table>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v0, "<hr>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v0, "<table>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :goto_e6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1b4

    .line 331
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    .line 332
    const-string v1, "<tr><th colspan=\"2\">"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/RouteResponse$Location;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/RouteResponse$Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</th></tr>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->maneuvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 335
    :goto_111
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 336
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;

    .line 337
    const-string v1, "<tr>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    const-string v1, "<td>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const-string v1, ""

    iget-object v6, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14e

    .line 340
    const-string v1, "<img alt=\""

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->directionName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\" src=\""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\">"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    :cond_14e
    iget-object v1, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->signs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 345
    :cond_154
    :goto_154
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18d

    .line 346
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;

    .line 347
    const-string v8, ""

    iget-object v9, v1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->url:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_154

    .line 348
    const-string v8, "<img alt=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" src=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->url:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, "\">"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_154

    .line 303
    :cond_188
    const-string v0, " kilometers"

    move-object v1, v0

    goto/16 :goto_16

    .line 352
    :cond_18d
    const-string v1, "</td>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "<td>"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->narrative:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</td>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const-string v0, "</tr>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string v0, "<tr><td colspan=\"2\"><hr></td></tr>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_111

    .line 330
    :cond_1af
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_e6

    .line 359
    :cond_1b4
    const-string v0, "<tr><th colspan=\"2\">"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteResponse$Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</th></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v0, "</table>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v0, "</body>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v0, "</html>"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1e2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected buildLocationOverlayItem(Lcom/mapquest/android/maps/RouteResponse$Location;I)Lcom/mapquest/android/maps/OverlayItem;
    .registers 8

    .prologue
    .line 397
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v0, :cond_45

    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Location;->displayLatLng:Lcom/mapquest/android/maps/GeoPoint;

    .line 398
    :goto_6
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "poi"

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 399
    iget-object v2, p0, Lcom/mapquest/android/maps/RouteManager;->letterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 400
    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    add-int/lit8 v4, p2, 0x41

    int-to-char v4, v4

    aput-char v4, v2, v3

    .line 401
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([C)V

    iget-object v2, p0, Lcom/mapquest/android/maps/RouteManager;->letterPaint:Landroid/graphics/Paint;

    invoke-static {v3, v1, v4, v2}, Lcom/mapquest/android/maps/Util;->addStringToMarker(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 402
    new-instance v2, Lcom/mapquest/android/maps/OverlayItem;

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v0, v3, v4}, Lcom/mapquest/android/maps/OverlayItem;-><init>(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v2, v1}, Lcom/mapquest/android/maps/OverlayItem;->setMarker(Landroid/graphics/drawable/Drawable;)V

    .line 404
    return-object v2

    .line 397
    :cond_45
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Location;->latLng:Lcom/mapquest/android/maps/GeoPoint;

    goto :goto_6
.end method

.method protected buildLocationsItemizedOverlay(Ljava/util/List;)Lcom/mapquest/android/maps/ItemizedOverlay;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Location;",
            ">;)",
            "Lcom/mapquest/android/maps/ItemizedOverlay",
            "<+",
            "Lcom/mapquest/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    if-nez v0, :cond_3b

    .line 382
    new-instance v0, Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "poi"

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    .line 383
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/ItemizedOverlay;->setZIndex(I)V

    .line 388
    :goto_1e
    const/4 v0, 0x0

    move v2, v0

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_41

    .line 389
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RouteResponse$Location;

    .line 390
    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    check-cast v1, Lcom/mapquest/android/maps/DefaultItemizedOverlay;

    invoke-virtual {p0, v0, v2}, Lcom/mapquest/android/maps/RouteManager;->buildLocationOverlayItem(Lcom/mapquest/android/maps/RouteResponse$Location;I)Lcom/mapquest/android/maps/OverlayItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/DefaultItemizedOverlay;->addItem(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 388
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_20

    .line 385
    :cond_3b
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->clear()V

    goto :goto_1e

    .line 393
    :cond_41
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    return-object v0
.end method

.method protected buildRouteOverlay(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/LineOverlay;
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    if-nez v0, :cond_14

    .line 370
    new-instance v0, Lcom/mapquest/android/maps/LineOverlay;

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    .line 371
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;->setZIndex(I)V

    .line 374
    :cond_14
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/LineOverlay;->setSimplify(ZI)V

    .line 375
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    iget-object v1, p1, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route;->shape:Lcom/mapquest/android/maps/RouteResponse$Route$Shape;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->shapePoints:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/LineOverlay;->setData(Ljava/util/List;)V

    .line 376
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/RouteManager;->addEventHandlersRouteOverlay(Lcom/mapquest/android/maps/Overlay;)V

    .line 377
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    return-object v0
.end method

.method public clearRoute()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 418
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    if-eqz v0, :cond_1b

    .line 419
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_14

    .line 420
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 423
    :cond_14
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/LineOverlay;->destroy()V

    .line 424
    iput-object v2, p0, Lcom/mapquest/android/maps/RouteManager;->routeOverlay:Lcom/mapquest/android/maps/LineOverlay;

    .line 427
    :cond_1b
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    if-eqz v0, :cond_35

    .line 428
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_2e

    .line 429
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 432
    :cond_2e
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ItemizedOverlay;->destroy()V

    .line 433
    iput-object v2, p0, Lcom/mapquest/android/maps/RouteManager;->routeLocationsItemizedOverlay:Lcom/mapquest/android/maps/ItemizedOverlay;

    .line 436
    :cond_35
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_3e

    .line 437
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 440
    :cond_3e
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    if-eqz v0, :cond_47

    .line 441
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 444
    :cond_47
    return-void
.end method

.method public createRoute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/RouteManager;->createRoute(Ljava/util/List;)V

    .line 128
    return-void
.end method

.method public createRoute(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    if-nez v0, :cond_e

    .line 154
    :cond_d
    :goto_d
    return-void

    .line 134
    :cond_e
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->routeRequestLocations:Ljava/util/List;

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v0, "{ locations:["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 138
    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3f

    .line 139
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/RouteManager;->locationify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_3b

    .line 141
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_3b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    .line 145
    :cond_3f
    const-string v0, "],options:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteManager;->options:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mapquest/android/maps/RouteManager;->generateOptionsJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 147
    new-instance v0, Lcom/mapquest/android/maps/RouteRequest;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager;->apiKey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/mapquest/android/maps/RouteManager;->ignoreAmbiguities:Z

    invoke-direct {v0, v1, v3, v4}, Lcom/mapquest/android/maps/RouteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    new-instance v1, Lcom/mapquest/android/maps/RouteManager$RouteTask;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/mapquest/android/maps/RouteManager$RouteTask;-><init>(Lcom/mapquest/android/maps/RouteManager;Lcom/mapquest/android/maps/RouteManager$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mapquest/android/maps/RouteRequest;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/mapquest/android/maps/RouteManager$RouteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_d
.end method

.method public setBestFitRoute(Z)V
    .registers 2

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/mapquest/android/maps/RouteManager;->bestFitRoute:Z

    .line 94
    return-void
.end method

.method public setDebug(Z)V
    .registers 2

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mapquest/android/maps/RouteManager;->debug:Z

    .line 90
    return-void
.end method

.method public setHandleAmbiguities(Z)V
    .registers 2

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mapquest/android/maps/RouteManager;->handleAmbiguities:Z

    .line 74
    return-void
.end method

.method public setIgnoreAmbiguities(Z)V
    .registers 2

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/mapquest/android/maps/RouteManager;->ignoreAmbiguities:Z

    .line 78
    return-void
.end method

.method public setItineraryView(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->itinerary:Landroid/webkit/WebView;

    .line 98
    return-void
.end method

.method public setMapView(Lcom/mapquest/android/maps/MapView;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 86
    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->options:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setRouteCallback(Lcom/mapquest/android/maps/RouteManager$RouteCallback;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->routeCallback:Lcom/mapquest/android/maps/RouteManager$RouteCallback;

    .line 102
    return-void
.end method

.method public setRouteRibbonPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager;->routeRibbonPaint:Landroid/graphics/Paint;

    .line 121
    return-void
.end method
