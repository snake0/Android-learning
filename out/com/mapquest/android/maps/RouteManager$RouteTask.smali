.class Lcom/mapquest/android/maps/RouteManager$RouteTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/mapquest/android/maps/RouteRequest;",
        "Ljava/lang/Void;",
        "Lcom/mapquest/android/maps/RouteResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/RouteManager;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/RouteManager;)V
    .registers 2

    .prologue
    .line 447
    iput-object p1, p0, Lcom/mapquest/android/maps/RouteManager$RouteTask;->this$0:Lcom/mapquest/android/maps/RouteManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 448
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/RouteManager;Lcom/mapquest/android/maps/RouteManager$1;)V
    .registers 3

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/RouteManager$RouteTask;-><init>(Lcom/mapquest/android/maps/RouteManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/mapquest/android/maps/RouteRequest;)Lcom/mapquest/android/maps/RouteResponse;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 451
    aget-object v0, p1, v4

    .line 452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 453
    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteRequest;->getRequestJSON()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v3, p0, Lcom/mapquest/android/maps/RouteManager$RouteTask;->this$0:Lcom/mapquest/android/maps/RouteManager;

    # getter for: Lcom/mapquest/android/maps/RouteManager;->debug:Z
    invoke-static {v3}, Lcom/mapquest/android/maps/RouteManager;->access$300(Lcom/mapquest/android/maps/RouteManager;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 460
    :cond_18
    const-string v3, "json"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    invoke-static {v2, v1}, Lcom/mapquest/android/maps/HttpUtil;->runPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 464
    :try_start_21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/RouteResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2c

    .line 471
    :goto_2b
    return-object v0

    .line 466
    :catch_2c
    move-exception v0

    move-object v1, v0

    .line 467
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {v0}, Lcom/mapquest/android/maps/RouteResponse;-><init>()V

    .line 469
    iget-object v2, v0, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iput v4, v2, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 470
    iget-object v2, v0, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iget-object v2, v2, Lcom/mapquest/android/maps/ServiceResponse$Info;->messages:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 446
    check-cast p1, [Lcom/mapquest/android/maps/RouteRequest;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/RouteManager$RouteTask;->doInBackground([Lcom/mapquest/android/maps/RouteRequest;)Lcom/mapquest/android/maps/RouteResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 3

    .prologue
    .line 476
    iget-object v0, p0, Lcom/mapquest/android/maps/RouteManager$RouteTask;->this$0:Lcom/mapquest/android/maps/RouteManager;

    # invokes: Lcom/mapquest/android/maps/RouteManager;->handleResponse(Lcom/mapquest/android/maps/RouteResponse;)V
    invoke-static {v0, p1}, Lcom/mapquest/android/maps/RouteManager;->access$400(Lcom/mapquest/android/maps/RouteManager;Lcom/mapquest/android/maps/RouteResponse;)V

    .line 477
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 446
    check-cast p1, Lcom/mapquest/android/maps/RouteResponse;

    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/RouteManager$RouteTask;->onPostExecute(Lcom/mapquest/android/maps/RouteResponse;)V

    return-void
.end method
