.class public Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;
.super Lcom/mapquest/android/maps/RouteResponse$TimeDistance;
.source "SourceFile"


# instance fields
.field public attributes:I

.field public direction:I

.field public directionName:Ljava/lang/String;

.field public iconUrl:Ljava/lang/String;

.field public index:I

.field public mapUrl:Ljava/lang/String;

.field public narrative:Ljava/lang/String;

.field public signs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;",
            ">;"
        }
    .end annotation
.end field

.field public startPoint:Lcom/mapquest/android/maps/GeoPoint;

.field public streets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

.field public transportMode:Ljava/lang/String;

.field public turnType:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse$Route$Leg;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 218
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    .line 219
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/RouteResponse$TimeDistance;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->signs:Ljava/util/List;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->streets:Ljava/util/List;

    .line 220
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "signs"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 222
    :goto_27
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 223
    iget-object v3, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v3, v3, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v3}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(ILorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    .line 224
    if-eqz v3, :cond_45

    .line 225
    iget-object v4, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->signs:Ljava/util/List;

    new-instance v5, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;

    invoke-direct {v5, p0, v3}, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;-><init>(Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 229
    :cond_48
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "index"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->index:I

    .line 230
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "direction"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->direction:I

    .line 231
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "narrative"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->narrative:Ljava/lang/String;

    .line 232
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "iconUrl"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->iconUrl:Ljava/lang/String;

    .line 233
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "streets"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 235
    :goto_96
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_b2

    .line 236
    iget-object v2, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v2, v2, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v2}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/mapquest/android/maps/JSONHelper;->getString(ILorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v2

    .line 237
    if-eqz v2, :cond_af

    .line 238
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->streets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_af
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 242
    :cond_b2
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "attributes"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->attributes:I

    .line 243
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "transportMode"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->transportMode:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "directionName"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->directionName:Ljava/lang/String;

    .line 245
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "mapUrl"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->mapUrl:Ljava/lang/String;

    .line 246
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    iget-object v1, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v1, v1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v1

    const-string v2, "startPoint"

    invoke-virtual {v1, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/RouteResponse;->buildGeoPoint(Lorg/json/JSONObject;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->startPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 247
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "turnType"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->turnType:I

    .line 248
    return-void
.end method
