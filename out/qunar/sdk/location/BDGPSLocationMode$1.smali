.class synthetic Lqunar/sdk/location/BDGPSLocationMode$1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$qunar$sdk$location$BDGPSLocationMode:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 16
    invoke-static {}, Lqunar/sdk/location/BDGPSLocationMode;->values()[Lqunar/sdk/location/BDGPSLocationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lqunar/sdk/location/BDGPSLocationMode$1;->$SwitchMap$qunar$sdk$location$BDGPSLocationMode:[I

    :try_start_9
    sget-object v0, Lqunar/sdk/location/BDGPSLocationMode$1;->$SwitchMap$qunar$sdk$location$BDGPSLocationMode:[I

    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode;->Battery_Saving:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-virtual {v1}, Lqunar/sdk/location/BDGPSLocationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lqunar/sdk/location/BDGPSLocationMode$1;->$SwitchMap$qunar$sdk$location$BDGPSLocationMode:[I

    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode;->Device_Sensors:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-virtual {v1}, Lqunar/sdk/location/BDGPSLocationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lqunar/sdk/location/BDGPSLocationMode$1;->$SwitchMap$qunar$sdk$location$BDGPSLocationMode:[I

    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    invoke-virtual {v1}, Lqunar/sdk/location/BDGPSLocationMode;->ordinal()I

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
