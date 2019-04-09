.class Lcom/mapquest/android/maps/RouteResponse$TimeDistance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public distance:D

.field public formattedTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/mapquest/android/maps/RouteResponse;

.field public time:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 134
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$TimeDistance;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$TimeDistance;->time:I

    .line 136
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "distance"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getDouble(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/RouteResponse$TimeDistance;->distance:D

    .line 137
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "formattedTime"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$TimeDistance;->formattedTime:Ljava/lang/String;

    .line 138
    return-void
.end method
