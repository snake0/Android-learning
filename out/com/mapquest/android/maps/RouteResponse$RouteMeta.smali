.class Lcom/mapquest/android/maps/RouteResponse$RouteMeta;
.super Lcom/mapquest/android/maps/RouteResponse$TimeDistance;
.source "SourceFile"


# instance fields
.field public hasFerry:Z

.field public hasHighway:Z

.field public hasSeasonalClosure:Z

.field public hasTollRoad:Z

.field public hasUnpaved:Z

.field final synthetic this$0:Lcom/mapquest/android/maps/RouteResponse;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/RouteResponse$TimeDistance;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    .line 121
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "hasSeasonalClosure"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;->hasSeasonalClosure:Z

    .line 122
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "hasUnpaved"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;->hasUnpaved:Z

    .line 123
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "hasHighway"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;->hasHighway:Z

    .line 124
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "hasFerry"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;->hasFerry:Z

    .line 125
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "hasTollRoad"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getBoolean(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;->hasTollRoad:Z

    .line 126
    return-void
.end method
