.class Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;


# direct methods
.method public constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 579
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    .line 580
    invoke-direct {p0, p2}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 581
    return-void
.end method


# virtual methods
.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->start:Lqunar/sdk/mapapi/entity/QMarker;

    if-eqz v0, :cond_f

    .line 595
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->start:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 598
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->end:Lqunar/sdk/mapapi/entity/QMarker;

    if-eqz v0, :cond_f

    .line 604
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->end:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 607
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e
.end method

.method public onRouteNodeClick(I)Z
    .registers 4

    .prologue
    .line 585
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 586
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->access$200(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v1

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap$MyBikingRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearchWithoutMap;->routeNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRouteNodeClick(Lqunar/sdk/mapapi/entity/QunarRouteNode;)V

    .line 589
    :cond_21
    invoke-super {p0, p1}, Lcom/baidu/mapapi/overlayutil/BikingRouteOverlay;->onRouteNodeClick(I)Z

    move-result v0

    return v0
.end method
