.class public Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public direction:I

.field public extraText:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field final synthetic this$3:Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 257
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->this$3:Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->text:Ljava/lang/String;

    .line 259
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "extraText"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->extraText:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "direction"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->direction:I

    .line 261
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->type:I

    .line 262
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver;->this$2:Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    iget-object v0, v0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Leg$Maneuver$Sign;->url:Ljava/lang/String;

    .line 263
    return-void
.end method
