.class public Lcom/mapquest/android/maps/RouteResponse$Collections;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public locationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/RouteResponse$Location;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mapquest/android/maps/RouteResponse;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONArray;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 401
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteResponse$Collections;->this$0:Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RouteResponse$Collections;->locationList:Ljava/util/List;

    move v0, v1

    .line 402
    :goto_e
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 403
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v2

    invoke-virtual {v2, v0, p2}, Lcom/mapquest/android/maps/JSONHelper;->getJSONArray(ILorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v3

    .line 404
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 406
    :goto_22
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_3e

    .line 407
    # getter for: Lcom/mapquest/android/maps/RouteResponse;->helper:Lcom/mapquest/android/maps/JSONHelper;
    invoke-static {p1}, Lcom/mapquest/android/maps/RouteResponse;->access$000(Lcom/mapquest/android/maps/RouteResponse;)Lcom/mapquest/android/maps/JSONHelper;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/mapquest/android/maps/JSONHelper;->getJSONObject(ILorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v5

    .line 408
    new-instance v6, Lcom/mapquest/android/maps/RouteResponse$Location;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, p1, v5}, Lcom/mapquest/android/maps/RouteResponse$Location;-><init>(Lcom/mapquest/android/maps/RouteResponse;Lorg/json/JSONObject;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 411
    :cond_3e
    iget-object v2, p0, Lcom/mapquest/android/maps/RouteResponse$Collections;->locationList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 414
    :cond_46
    return-void
.end method
