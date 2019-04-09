.class synthetic Lqunar/sdk/location/LocationFacade$2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

.field static final synthetic $SwitchMap$qunar$sdk$location$QunarGPSLocationType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 143
    invoke-static {}, Lqunar/sdk/location/BDGPSCoorType;->values()[Lqunar/sdk/location/BDGPSCoorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

    :try_start_9
    sget-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

    sget-object v1, Lqunar/sdk/location/BDGPSCoorType;->JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

    invoke-virtual {v1}, Lqunar/sdk/location/BDGPSCoorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_45

    :goto_14
    :try_start_14
    sget-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

    sget-object v1, Lqunar/sdk/location/BDGPSCoorType;->GCJTYPE:Lqunar/sdk/location/BDGPSCoorType;

    invoke-virtual {v1}, Lqunar/sdk/location/BDGPSCoorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_43

    :goto_1f
    :try_start_1f
    sget-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

    sget-object v1, Lqunar/sdk/location/BDGPSCoorType;->MKTTYPE:Lqunar/sdk/location/BDGPSCoorType;

    invoke-virtual {v1}, Lqunar/sdk/location/BDGPSCoorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_41

    .line 113
    :goto_2a
    invoke-static {}, Lqunar/sdk/location/QunarGPSLocationType;->values()[Lqunar/sdk/location/QunarGPSLocationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$QunarGPSLocationType:[I

    :try_start_33
    sget-object v0, Lqunar/sdk/location/LocationFacade$2;->$SwitchMap$qunar$sdk$location$QunarGPSLocationType:[I

    sget-object v1, Lqunar/sdk/location/QunarGPSLocationType;->BAIDU:Lqunar/sdk/location/QunarGPSLocationType;

    invoke-virtual {v1}, Lqunar/sdk/location/QunarGPSLocationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3f

    :goto_3e
    return-void

    :catch_3f
    move-exception v0

    goto :goto_3e

    .line 143
    :catch_41
    move-exception v0

    goto :goto_2a

    :catch_43
    move-exception v0

    goto :goto_1f

    :catch_45
    move-exception v0

    goto :goto_14
.end method
