.class public Lcom/mapquest/android/maps/RouteResponse;
.super Lcom/mapquest/android/maps/ServiceResponse;
.source "SourceFile"


# instance fields
.field public collections:Lcom/mapquest/android/maps/RouteResponse$Collections;

.field private helper:Lcom/mapquest/android/maps/JSONHelper;

.field public route:Lcom/mapquest/android/maps/RouteResponse$Route;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mapquest/android/maps/ServiceResponse;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ServiceResponse;-><init>(Lorg/json/JSONObject;)V

    .line 21
    invoke-super {p0}, Lcom/mapquest/android/maps/ServiceResponse;->getHelper()Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    .line 22
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    const-string v1, "collections"

    invoke-virtual {v0, v1, p1}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_1a

    .line 24
    new-instance v1, Lcom/mapquest/android/maps/RouteResponse$Collections;

    invoke-direct {v1, p0, v0}, Lcom/mapquest/android/maps/RouteResponse$Collections;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONArray;)V

    iput-object v1, p0, Lcom/mapquest/android/maps/RouteResponse;->collections:Lcom/mapquest/android/maps/RouteResponse$Collections;

    .line 27
    :cond_1a
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    const-string v2, "route"

    invoke-virtual {v1, v2, p1}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/RouteResponse$Route;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse;->route:Lcom/mapquest/android/maps/RouteResponse$Route;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    return-object v0
.end method


# virtual methods
.method buildGeoPoint(Lorg/json/JSONObject;)Lcom/mapquest/android/maps/GeoPoint;
    .registers 7

    .prologue
    .line 31
    if-eqz p1, :cond_20

    new-instance v0, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    const-string v2, "lat"

    invoke-virtual {v1, v2, p1}, Lcom/mapquest/android/maps/JSONHelper;->getDouble(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;

    const-string v4, "lng"

    invoke-virtual {v3, v4, p1}, Lcom/mapquest/android/maps/JSONHelper;->getDouble(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
