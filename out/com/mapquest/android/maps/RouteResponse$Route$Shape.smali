.class public Lcom/mapquest/android/maps/RouteResponse$Route$Shape;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public legIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public manueverIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public shapePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/mapquest/android/maps/RouteResponse$Route;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse$Route;Lorg/json/JSONObject;Lcom/mapquest/android/maps/RouteResponse$Route$Options;)V
    .registers 13

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 273
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->this$1:Lcom/mapquest/android/maps/RouteResponse$Route;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->manueverIndexes:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->shapePoints:Ljava/util/List;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->legIndexes:Ljava/util/List;

    .line 274
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "maneuverIndexes"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 276
    :goto_2a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_46

    .line 277
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->manueverIndexes:Ljava/util/List;

    iget-object v4, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v4}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getInt(ILorg/json/JSONArray;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 280
    :cond_46
    iget-object v0, p3, Lcom/mapquest/android/maps/RouteResponse$Route$Options;->shapeFormat:Ljava/lang/String;

    .line 283
    const-string v2, "raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 284
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "shapePoints"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v2

    move v0, v1

    .line 286
    :goto_5d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_ab

    .line 287
    iget-object v3, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v3}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getDouble(ILorg/json/JSONArray;)D

    move-result-wide v3

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 289
    iget-object v5, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v5}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/mapquest/android/maps/JSONHelper;->getDouble(ILorg/json/JSONArray;)D

    move-result-wide v5

    .line 290
    iget-object v7, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->shapePoints:Ljava/util/List;

    new-instance v8, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v8, v3, v4, v5, v6}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 295
    :cond_86
    const-string v2, "cmp6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 296
    new-instance v0, Lcom/mapquest/android/util/ShapeTransform;

    invoke-direct {v0, v6}, Lcom/mapquest/android/util/ShapeTransform;-><init>(I)V

    .line 297
    invoke-virtual {v0, v5}, Lcom/mapquest/android/util/ShapeTransform;->setOptimizeShape(Z)V

    .line 298
    iget-object v2, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v2}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    const-string v3, "shapePoints"

    invoke-virtual {v2, v3, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 299
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->shapePoints:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/util/ShapeTransform;->decodeCompressed(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    :cond_ab
    :goto_ab
    iget-object v0, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v0}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v0

    const-string v2, "legIndexes"

    invoke-virtual {v0, v2, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v0

    .line 310
    :goto_b7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_f9

    .line 311
    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->legIndexes:Ljava/util/List;

    iget-object v3, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v3}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/mapquest/android/maps/JSONHelper;->getInt(ILorg/json/JSONArray;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_b7

    .line 300
    :cond_d3
    const-string v2, "cmp5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 301
    new-instance v0, Lcom/mapquest/android/util/ShapeTransform;

    invoke-direct {v0, v6}, Lcom/mapquest/android/util/ShapeTransform;-><init>(I)V

    .line 302
    invoke-virtual {v0, v5}, Lcom/mapquest/android/util/ShapeTransform;->setOptimizeShape(Z)V

    .line 303
    iget-object v2, p1, Lcom/mapquest/android/maps/RouteResponse$Route;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {v2}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    const-string v3, "shapePoints"

    invoke-virtual {v2, v3, p2}, Lcom/mapquest/android/maps/JSONHelper;->getString(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 304
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteResponse$Route$Shape;->shapePoints:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/mapquest/android/util/ShapeTransform;->decodeCompressed(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_ab

    .line 314
    :cond_f9
    return-void
.end method
