.class public final enum Lqunar/sdk/location/QunarGPSLocationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqunar/sdk/location/QunarGPSLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqunar/sdk/location/QunarGPSLocationType;

.field public static final enum BAIDU:Lqunar/sdk/location/QunarGPSLocationType;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lqunar/sdk/location/QunarGPSLocationType;

    const-string v1, "BAIDU"

    invoke-direct {v0, v1, v2}, Lqunar/sdk/location/QunarGPSLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/location/QunarGPSLocationType;->BAIDU:Lqunar/sdk/location/QunarGPSLocationType;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lqunar/sdk/location/QunarGPSLocationType;

    sget-object v1, Lqunar/sdk/location/QunarGPSLocationType;->BAIDU:Lqunar/sdk/location/QunarGPSLocationType;

    aput-object v1, v0, v2

    sput-object v0, Lqunar/sdk/location/QunarGPSLocationType;->$VALUES:[Lqunar/sdk/location/QunarGPSLocationType;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lqunar/sdk/location/QunarGPSLocationType;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lqunar/sdk/location/QunarGPSLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QunarGPSLocationType;

    return-object v0
.end method

.method public static values()[Lqunar/sdk/location/QunarGPSLocationType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lqunar/sdk/location/QunarGPSLocationType;->$VALUES:[Lqunar/sdk/location/QunarGPSLocationType;

    invoke-virtual {v0}, [Lqunar/sdk/location/QunarGPSLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqunar/sdk/location/QunarGPSLocationType;

    return-object v0
.end method
