.class public interface abstract Lqunar/sdk/mapapi/listener/QunarRoutePlanCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onRouteNodeClick(Lqunar/sdk/mapapi/entity/QunarRouteNode;)V
.end method

.method public abstract onRoutePlanCallback(ZLjava/lang/String;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lqunar/sdk/mapapi/entity/QunarRouteNode;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onRouteTimeOut(Lqunar/sdk/mapapi/QunarRouteType;Ljava/lang/String;)V
.end method

.method public abstract onStartEndNodeAmbiguityCallback(Lqunar/sdk/mapapi/QunarRouteType;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqunar/sdk/mapapi/QunarRouteType;",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QunarRouteNode;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QunarRouteNode;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract routeAnalysisEndCallback(Lqunar/sdk/mapapi/listener/RoutePlaneResultType;)V
.end method

.method public abstract routeAnalysisStartCallback()V
.end method
