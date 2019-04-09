.class public final enum Lqunar/sdk/location/BDGPSCoorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqunar/sdk/location/BDGPSCoorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqunar/sdk/location/BDGPSCoorType;

.field public static final enum GCJTYPE:Lqunar/sdk/location/BDGPSCoorType;

.field public static final enum JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

.field public static final enum MKTTYPE:Lqunar/sdk/location/BDGPSCoorType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lqunar/sdk/location/BDGPSCoorType;

    const-string v1, "GCJTYPE"

    invoke-direct {v0, v1, v2}, Lqunar/sdk/location/BDGPSCoorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/BDGPSCoorType;->GCJTYPE:Lqunar/sdk/location/BDGPSCoorType;

    .line 9
    new-instance v0, Lqunar/sdk/location/BDGPSCoorType;

    const-string v1, "MKTTYPE"

    invoke-direct {v0, v1, v3}, Lqunar/sdk/location/BDGPSCoorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/BDGPSCoorType;->MKTTYPE:Lqunar/sdk/location/BDGPSCoorType;

    .line 10
    new-instance v0, Lqunar/sdk/location/BDGPSCoorType;

    const-string v1, "JWDTYPE"

    invoke-direct {v0, v1, v4}, Lqunar/sdk/location/BDGPSCoorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/BDGPSCoorType;->JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lqunar/sdk/location/BDGPSCoorType;

    sget-object v1, Lqunar/sdk/location/BDGPSCoorType;->GCJTYPE:Lqunar/sdk/location/BDGPSCoorType;

    aput-object v1, v0, v2

    sget-object v1, Lqunar/sdk/location/BDGPSCoorType;->MKTTYPE:Lqunar/sdk/location/BDGPSCoorType;

    aput-object v1, v0, v3

    sget-object v1, Lqunar/sdk/location/BDGPSCoorType;->JWDTYPE:Lqunar/sdk/location/BDGPSCoorType;

    aput-object v1, v0, v4

    sput-object v0, Lqunar/sdk/location/BDGPSCoorType;->$VALUES:[Lqunar/sdk/location/BDGPSCoorType;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    return-void
.end method

.method public static convert2BDCoorType(Lqunar/sdk/location/BDGPSCoorType;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 13
    .line 14
    sget-object v0, Lqunar/sdk/location/BDGPSCoorType$1;->$SwitchMap$qunar$sdk$location$BDGPSCoorType:[I

    invoke-virtual {p0}, Lqunar/sdk/location/BDGPSCoorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_18

    .line 26
    const-string v0, "gcj02"

    .line 29
    :goto_d
    return-object v0

    .line 16
    :pswitch_e
    const-string v0, "gcj02"

    goto :goto_d

    .line 19
    :pswitch_11
    const-string v0, "bd09"

    goto :goto_d

    .line 23
    :pswitch_14
    const-string v0, "bd09ll"

    goto :goto_d

    .line 14
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lqunar/sdk/location/BDGPSCoorType;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lqunar/sdk/location/BDGPSCoorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/BDGPSCoorType;

    return-object v0
.end method

.method public static values()[Lqunar/sdk/location/BDGPSCoorType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lqunar/sdk/location/BDGPSCoorType;->$VALUES:[Lqunar/sdk/location/BDGPSCoorType;

    invoke-virtual {v0}, [Lqunar/sdk/location/BDGPSCoorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqunar/sdk/location/BDGPSCoorType;

    return-object v0
.end method
