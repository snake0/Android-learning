.class synthetic Lqunar/sdk/mapapi/SDKInitializer$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$qunar$sdk$mapapi$QunarMapType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 89
    invoke-static {}, Lqunar/sdk/mapapi/QunarMapType;->values()[Lqunar/sdk/mapapi/QunarMapType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/mapapi/SDKInitializer$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    :try_start_9
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lqunar/sdk/mapapi/SDKInitializer$1;->$SwitchMap$qunar$sdk$mapapi$QunarMapType:[I

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->GAODE:Lqunar/sdk/mapapi/QunarMapType;

    invoke-virtual {v1}, Lqunar/sdk/mapapi/QunarMapType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method
