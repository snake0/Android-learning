.class public final enum Lqunar/sdk/location/BDGPSLocationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqunar/sdk/location/BDGPSLocationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqunar/sdk/location/BDGPSLocationMode;

.field public static final enum Battery_Saving:Lqunar/sdk/location/BDGPSLocationMode;

.field public static final enum Device_Sensors:Lqunar/sdk/location/BDGPSLocationMode;

.field public static final enum Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lqunar/sdk/location/BDGPSLocationMode;

    const-string v1, "Battery_Saving"

    invoke-direct {v0, v1, v2}, Lqunar/sdk/location/BDGPSLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/BDGPSLocationMode;->Battery_Saving:Lqunar/sdk/location/BDGPSLocationMode;

    .line 11
    new-instance v0, Lqunar/sdk/location/BDGPSLocationMode;

    const-string v1, "Device_Sensors"

    invoke-direct {v0, v1, v3}, Lqunar/sdk/location/BDGPSLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/BDGPSLocationMode;->Device_Sensors:Lqunar/sdk/location/BDGPSLocationMode;

    .line 12
    new-instance v0, Lqunar/sdk/location/BDGPSLocationMode;

    const-string v1, "Hight_Accuracy"

    invoke-direct {v0, v1, v4}, Lqunar/sdk/location/BDGPSLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lqunar/sdk/location/BDGPSLocationMode;

    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode;->Battery_Saving:Lqunar/sdk/location/BDGPSLocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode;->Device_Sensors:Lqunar/sdk/location/BDGPSLocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode;->Hight_Accuracy:Lqunar/sdk/location/BDGPSLocationMode;

    aput-object v1, v0, v4

    sput-object v0, Lqunar/sdk/location/BDGPSLocationMode;->$VALUES:[Lqunar/sdk/location/BDGPSLocationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method public static convert2BDMode(Lqunar/sdk/location/BDGPSLocationMode;)Lcom/baidu/location/LocationClientOption$LocationMode;
    .registers 4

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    sget-object v1, Lqunar/sdk/location/BDGPSLocationMode$1;->$SwitchMap$qunar$sdk$location$BDGPSLocationMode:[I

    invoke-virtual {p0}, Lqunar/sdk/location/BDGPSLocationMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_16

    .line 31
    :goto_c
    return-object v0

    .line 18
    :pswitch_d
    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Battery_Saving:Lcom/baidu/location/LocationClientOption$LocationMode;

    goto :goto_c

    .line 21
    :pswitch_10
    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Device_Sensors:Lcom/baidu/location/LocationClientOption$LocationMode;

    goto :goto_c

    .line 25
    :pswitch_13
    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    goto :goto_c

    .line 16
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lqunar/sdk/location/BDGPSLocationMode;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lqunar/sdk/location/BDGPSLocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/BDGPSLocationMode;

    return-object v0
.end method

.method public static values()[Lqunar/sdk/location/BDGPSLocationMode;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lqunar/sdk/location/BDGPSLocationMode;->$VALUES:[Lqunar/sdk/location/BDGPSLocationMode;

    invoke-virtual {v0}, [Lqunar/sdk/location/BDGPSLocationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqunar/sdk/location/BDGPSLocationMode;

    return-object v0
.end method
