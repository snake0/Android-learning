.class synthetic Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

.field static final synthetic $SwitchMap$qunar$sdk$mapapi$entity$RouteNodeType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 137
    invoke-static {}, Lqunar/sdk/mapapi/QunarRouteType;->values()[Lqunar/sdk/mapapi/QunarRouteType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    :try_start_9
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarRouteType;->DRIVING:Lqunar/sdk/mapapi/QunarRouteType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarRouteType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarRouteType;->TRANSIT:Lqunar/sdk/mapapi/QunarRouteType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarRouteType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    :goto_1f
    :try_start_1f
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$QunarRouteType:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarRouteType;->WALKING:Lqunar/sdk/mapapi/QunarRouteType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarRouteType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_4e

    .line 94
    :goto_2a
    invoke-static {}, Lqunar/sdk/mapapi/entity/RouteNodeType;->values()[Lqunar/sdk/mapapi/entity/RouteNodeType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$entity$RouteNodeType:[I

    :try_start_33
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$entity$RouteNodeType:[I

    sget-object v1, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONLOCATION:Lqunar/sdk/mapapi/entity/RouteNodeType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/entity/RouteNodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BDRoutePlanSearch$2;->$SwitchMap$qunar$sdk$mapapi$entity$RouteNodeType:[I

    sget-object v1, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONNAME:Lqunar/sdk/mapapi/entity/RouteNodeType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/entity/RouteNodeType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    .line 137
    :catch_4e
    move-exception v0

    goto :goto_2a

    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
