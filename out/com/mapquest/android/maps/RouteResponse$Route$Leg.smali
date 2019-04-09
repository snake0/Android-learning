.class public Lcom/mapquest/android/maps/RouteResponse$Route$Leg;
.super Lcom/mapquest/android/maps/RouteResponse$RouteMeta;
.source "SourceFile"


# instance fields
.field public index:I

.field public maneuvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;",
            ">;"
        }
    .end annotation
.end field

.field public route:Lcom/mapquest/android/maps/RouteResponse$Route;

.field final synthetic this$1:Lcom/mapquest/android/maps/RouteResponse$Route;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse$Route;Lorg/json/JSONObject;)V
    .registers 8

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    .line 191
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->maneuvers:Ljava/util/List;

    .line 192
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->index:I

    .line 193
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "maneuvers"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v1

    .line 195
    const/4 v0, 0x0

    :goto_29
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_48

    .line 196
    iget-object v2, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v2}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(ILorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_45

    .line 198
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->maneuvers:Ljava/util/List;

    new-instance v4, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;

    invoke-direct {v4, p0, v2}, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;-><init>(Lcom/mapquest/android/maps/RouteResponse$Route$Leg;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 202
    :cond_48
    return-void
.end method
