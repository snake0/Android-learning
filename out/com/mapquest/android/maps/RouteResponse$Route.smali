.class public Lcom/mapquest/android/maps/RouteResponse$Route;
.super Lcom/mapquest/android/maps/RouteResponse$RouteMeta;
.source "SourceFile"


# instance fields
.field public boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field public legs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Route$Leg;",
            ">;"
        }
    .end annotation
.end field

.field public locationSequence:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Location;",
            ">;"
        }
    .end annotation
.end field

.field public options:Lcom/mapquest/android/maps/RouteResponse$Route$Options;

.field public sessionId:Ljava/lang/String;

.field public shape:Lcom/mapquest/android/maps/RouteResponse$Route$Shape;

.field final synthetic this$0:Lcom/mapquest/android/maps/RouteResponse;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    .line 151
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/RouteResponse$RouteMeta;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    .line 143
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    invoke-direct {v0}, Lcom/mapquest/android/maps/BoundingBox;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->locationSequence:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->locations:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->legs:Ljava/util/List;

    .line 152
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse$Route$Options;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    const-string v3, "options"

    invoke-virtual {v2, v3, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/mapquest/android/maps/RouteResponse$Route$Options;-><init>(Lcom/mapquest/android/maps/RouteResponse$Route;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->options:Lcom/mapquest/android/maps/RouteResponse$Route$Options;

    .line 153
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    const-string v3, "shape"

    invoke-virtual {v2, v3, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->options:Lcom/mapquest/android/maps/RouteResponse$Route$Options;

    invoke-direct {v0, p0, v2, v3}, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;-><init>(Lcom/mapquest/android/maps/RouteResponse$Route;Lorg/json/JSONObject;Lcom/mapquest/android/maps/RouteResponse$Route$Options;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->shape:Lcom/mapquest/android/maps/RouteResponse$Route$Shape;

    .line 154
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "boundingBox"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_76

    .line 156
    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    const-string v4, "ul"

    invoke-virtual {v3, v4, v0}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/mapquest/android/maps/RouteResponse;->buildGeoPoint(Lorg/json/JSONObject;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    .line 157
    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    const-string v4, "lr"

    invoke-virtual {v3, v4, v0}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapquest/android/maps/RouteResponse;->buildGeoPoint(Lorg/json/JSONObject;)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, v2, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    .line 160
    :cond_76
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "locationSequence"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 162
    :goto_81
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_9b

    .line 163
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->locationSequence:Ljava/util/List;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(ILorg/json/JSONArray;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 166
    :cond_9b
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->sessionId:Ljava/lang/String;

    .line 167
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "locations"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 169
    :goto_b2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_d2

    .line 170
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(ILorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v3

    .line 171
    if-eqz v3, :cond_cf

    .line 172
    iget-object v4, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->locations:Ljava/util/List;

    new-instance v5, Lcom/mapquest/android/maps/RouteResponse$Location;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, p1, v3}, Lcom/mapquest/android/maps/RouteResponse$Location;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2

    .line 176
    :cond_d2
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "legs"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 178
    :goto_dc
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_f7

    .line 179
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(ILorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v2

    .line 180
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route;->legs:Ljava/util/List;

    new-instance v4, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;

    invoke-direct {v4, p0, v2}, Lcom/mapquest/android/maps/RouteResponse$Route$Leg;-><init>(Lcom/mapquest/android/maps/RouteResponse$Route;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_dc

    .line 183
    :cond_f7
    return-void
.end method
