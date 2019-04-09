.class Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;


# direct methods
.method private constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 617
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    .line 618
    invoke-direct {p0, p2}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 619
    return-void
.end method


# virtual methods
.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 632
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->start:Lqunar/sdk/mapapi/entity/QMarker;

    if-eqz v0, :cond_f

    .line 633
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->start:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 636
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->end:Lqunar/sdk/mapapi/entity/QMarker;

    if-eqz v0, :cond_f

    .line 642
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->end:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 645
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e
.end method

.method public onRouteNodeClick(I)Z
    .registers 4

    .prologue
    .line 623
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 624
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v1

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyDrivingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRouteNodeClick(Lqunar/sdk/mapapi/entity/QunarRouteNode;)V

    .line 627
    :cond_21
    invoke-super {p0, p1}, Lcom/baidu/mapapi/overlayutil/DrivingRouteOverlay;->onRouteNodeClick(I)Z

    move-result v0

    return v0
.end method
