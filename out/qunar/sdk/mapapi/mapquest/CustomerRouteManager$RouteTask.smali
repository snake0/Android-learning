.class Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;
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
.field final synthetic this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;


# direct methods
.method private constructor <init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)V
    .registers 2

    .prologue
    .line 425
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$1;)V
    .registers 3

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;-><init>(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/mapquest/android/maps/RouteRequest;)Lcom/mapquest/android/maps/RouteResponse;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 442
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$200(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$300(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 443
    :cond_11
    const/4 v0, 0x0

    .line 465
    :goto_12
    return-object v0

    .line 445
    :cond_13
    aget-object v0, p1, v4

    .line 446
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 447
    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteRequest;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v0}, Lcom/mapquest/android/maps/RouteRequest;->getRequestJSON()Ljava/lang/String;

    move-result-object v0

    .line 449
    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->debug:Z
    invoke-static {v3}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$500(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 454
    :cond_2a
    const-string v3, "json"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-static {v2, v1}, Lcom/mapquest/android/maps/HttpUtil;->runPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 458
    :try_start_33
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 459
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/RouteResponse;-><init>(Lorg/json/JSONObject;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_3e

    goto :goto_12

    .line 460
    :catch_3e
    move-exception v0

    move-object v1, v0

    .line 461
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    new-instance v0, Lcom/mapquest/android/maps/RouteResponse;

    invoke-direct {v0}, Lcom/mapquest/android/maps/RouteResponse;-><init>()V

    .line 463
    iget-object v2, v0, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iput v4, v2, Lcom/mapquest/android/maps/ServiceResponse$Info;->statusCode:I

    .line 464
    iget-object v2, v0, Lcom/mapquest/android/maps/RouteResponse;->info:Lcom/mapquest/android/maps/ServiceResponse$Info;

    iget-object v2, v2, Lcom/mapquest/android/maps/ServiceResponse$Info;->messages:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 424
    check-cast p1, [Lcom/mapquest/android/maps/RouteRequest;

    invoke-virtual {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->doInBackground([Lcom/mapquest/android/maps/RouteRequest;)Lcom/mapquest/android/maps/RouteResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/mapquest/android/maps/RouteResponse;)V
    .registers 3

    .prologue
    .line 470
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$200(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$300(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 474
    :cond_10
    :goto_10
    return-void

    .line 473
    :cond_11
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # invokes: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->handleResponse(Lcom/mapquest/android/maps/RouteResponse;)V
    invoke-static {v0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$600(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Lcom/mapquest/android/maps/RouteResponse;)V

    goto :goto_10
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 424
    check-cast p1, Lcom/mapquest/android/maps/RouteResponse;

    invoke-virtual {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->onPostExecute(Lcom/mapquest/android/maps/RouteResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$100(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-nez v0, :cond_13

    .line 431
    invoke-virtual {p0, v2}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->cancel(Z)Z

    .line 432
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # setter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z
    invoke-static {v0, v2}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$202(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Z)Z

    .line 439
    :goto_12
    return-void

    .line 435
    :cond_13
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # getter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$100(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    invoke-interface {v0}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->routeAnalysisStartCallback()V

    .line 436
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # setter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isCancle:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$202(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Z)Z

    .line 437
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # setter for: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->isFinishFlag:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$302(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;Z)Z

    .line 438
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager$RouteTask;->this$0:Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;

    # invokes: Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->startTimer()V
    invoke-static {v0}, Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;->access$400(Lqunar/sdk/mapapi/mapquest/CustomerRouteManager;)V

    goto :goto_12
.end method
