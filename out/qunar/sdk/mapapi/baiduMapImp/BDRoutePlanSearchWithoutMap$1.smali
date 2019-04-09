.class Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;


# direct methods
.method constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)V
    .registers 2

    .prologue
    .line 548
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 551
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 552
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 564
    :cond_8
    :goto_8
    return-void

    .line 554
    :pswitch_9
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isFinishFlag:Z
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$000(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 555
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    const/4 v1, 0x1

    # setter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->isCancle:Z
    invoke-static {v0, v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$102(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;Z)Z

    .line 556
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 557
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->qunarRouteType:Lqunar/sdk/mapapi/QunarRouteType;
    invoke-static {v1}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$300(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/QunarRouteType;

    move-result-object v1

    iget-object v2, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$1;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->cityName:Ljava/lang/String;
    invoke-static {v2}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$400(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRouteTimeOut(Lqunar/sdk/mapapi/QunarRouteType;Ljava/lang/String;)V

    goto :goto_8

    .line 552
    nop

    :pswitch_data_36
    .packed-switch 0x271a
        :pswitch_9
    .end packed-switch
.end method
