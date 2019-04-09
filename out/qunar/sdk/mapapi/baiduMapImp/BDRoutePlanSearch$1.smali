.class Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)V
    .registers 2

    .prologue
    .line 627
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 630
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 631
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 643
    :cond_8
    :goto_8
    return-void

    .line 633
    :pswitch_9
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isFinishFlag:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$300(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 634
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    const/4 v1, 0x1

    # setter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->isCancle:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$402(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Z)Z

    .line 635
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$500(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 636
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$500(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;
    invoke-static {v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$600(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/QunarRouteType;

    move-result-object v1

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->cityName:Ljava/lang/String;
    invoke-static {v2}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$700(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRouteTimeOut(Lqunar/sdk/mapapi/QunarRouteType;Ljava/lang/String;)V

    goto :goto_8

    .line 631
    nop

    :pswitch_data_36
    .packed-switch 0x271a
        :pswitch_9
    .end packed-switch
.end method
