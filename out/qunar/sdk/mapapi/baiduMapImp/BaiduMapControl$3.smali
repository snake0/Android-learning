.class synthetic Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$qunar$sdk$mapapi$QunarLocationConfigeration:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 344
    invoke-static {}, Lqunar/sdk/mapapi/QunarLocationConfigeration;->values()[Lqunar/sdk/mapapi/QunarLocationConfigeration;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$3;->$SwitchMap$qunar$sdk$mapapi$QunarLocationConfigeration:[I

    :try_start_9
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$3;->$SwitchMap$qunar$sdk$mapapi$QunarLocationConfigeration:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarLocationConfigeration;->COMPASS:Lqunar/sdk/mapapi/QunarLocationConfigeration;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarLocationConfigeration;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$3;->$SwitchMap$qunar$sdk$mapapi$QunarLocationConfigeration:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarLocationConfigeration;->NORMAL:Lqunar/sdk/mapapi/QunarLocationConfigeration;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarLocationConfigeration;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lqunar/sdk/mapapi/baiduMapImp/BaiduMapControl$3;->$SwitchMap$qunar$sdk$mapapi$QunarLocationConfigeration:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarLocationConfigeration;->FOLLOWING:Lqunar/sdk/mapapi/QunarLocationConfigeration;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarLocationConfigeration;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
