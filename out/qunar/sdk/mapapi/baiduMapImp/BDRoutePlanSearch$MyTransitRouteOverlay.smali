.class Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;
.super Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;


# direct methods
.method private constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;)V
    .registers 3

    .prologue
    .line 730
    iput-object p1, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    .line 731
    invoke-direct {p0, p2}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;-><init>(Lcom/baidu/mapapi/map/BaiduMap;)V

    .line 732
    return-void
.end method

.method synthetic constructor <init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$1;)V
    .registers 4

    .prologue
    .line 728
    invoke-direct {p0, p1, p2}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;-><init>(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;Lcom/baidu/mapapi/map/BaiduMap;)V

    return-void
.end method


# virtual methods
.method public getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 745
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->start:Lqunar/sdk/mapapi/entity/QMarker;

    if-eqz v0, :cond_f

    .line 746
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->start:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 749
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getStartMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e
.end method

.method public getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    .prologue
    .line 754
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->end:Lqunar/sdk/mapapi/entity/QMarker;

    if-eqz v0, :cond_f

    .line 755
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->end:Lqunar/sdk/mapapi/entity/QMarker;

    invoke-static {v0}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    .line 758
    :goto_e
    return-object v0

    :cond_f
    invoke-super {p0}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->getTerminalMarker()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e
.end method

.method public onRouteNodeClick(I)Z
    .registers 4

    .prologue
    .line 736
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNodes:Ljava/util/ArrayList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$500(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 737
    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    # getter for: Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routePlanCallback:Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
    invoke-static {v0}, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->access$500(Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;)Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;

    move-result-object v1

    iget-object v0, p0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$MyTransitRouteOverlay;->this$0:Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;

    iget-object v0, v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch;->routeNodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/QunarRouteNode;

    invoke-interface {v1, v0}, Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;->onRouteNodeClick(Lqunar/sdk/mapapi/entity/QunarRouteNode;)V

    .line 740
    :cond_21
    invoke-super {p0, p1}, Lcom/baidu/mapapi/overlayutil/TransitRouteOverlay;->onRouteNodeClick(I)Z

    move-result v0

    return v0
.end method
