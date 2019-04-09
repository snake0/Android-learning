.class public final enum Lqunar/sdk/mapapi/QunarRouteType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqunar/sdk/mapapi/QunarRouteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqunar/sdk/mapapi/QunarRouteType;

.field public static final enum DRIVING:Lqunar/sdk/mapapi/QunarRouteType;

.field public static final enum TRANSIT:Lqunar/sdk/mapapi/QunarRouteType;

.field public static final enum WALKING:Lqunar/sdk/mapapi/QunarRouteType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lqunar/sdk/mapapi/QunarRouteType;

    const-string v1, "DRIVING"

    invoke-direct {v0, v1, v2}, Lqunar/sdk/mapapi/QunarRouteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/QunarRouteType;->DRIVING:Lqunar/sdk/mapapi/QunarRouteType;

    .line 9
    new-instance v0, Lqunar/sdk/mapapi/QunarRouteType;

    const-string v1, "TRANSIT"

    invoke-direct {v0, v1, v3}, Lqunar/sdk/mapapi/QunarRouteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/QunarRouteType;->TRANSIT:Lqunar/sdk/mapapi/QunarRouteType;

    .line 10
    new-instance v0, Lqunar/sdk/mapapi/QunarRouteType;

    const-string v1, "WALKING"

    invoke-direct {v0, v1, v4}, Lqunar/sdk/mapapi/QunarRouteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/QunarRouteType;->WALKING:Lqunar/sdk/mapapi/QunarRouteType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lqunar/sdk/mapapi/QunarRouteType;

    sget-object v1, Lqunar/sdk/mapapi/QunarRouteType;->DRIVING:Lqunar/sdk/mapapi/QunarRouteType;

    aput-object v1, v0, v2

    sget-object v1, Lqunar/sdk/mapapi/QunarRouteType;->TRANSIT:Lqunar/sdk/mapapi/QunarRouteType;

    aput-object v1, v0, v3

    sget-object v1, Lqunar/sdk/mapapi/QunarRouteType;->WALKING:Lqunar/sdk/mapapi/QunarRouteType;

    aput-object v1, v0, v4

    sput-object v0, Lqunar/sdk/mapapi/QunarRouteType;->$VALUES:[Lqunar/sdk/mapapi/QunarRouteType;

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

.method public static valueOf(Ljava/lang/String;)Lqunar/sdk/mapapi/QunarRouteType;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lqunar/sdk/mapapi/QunarRouteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/QunarRouteType;

    return-object v0
.end method

.method public static values()[Lqunar/sdk/mapapi/QunarRouteType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lqunar/sdk/mapapi/QunarRouteType;->$VALUES:[Lqunar/sdk/mapapi/QunarRouteType;

    invoke-virtual {v0}, [Lqunar/sdk/mapapi/QunarRouteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqunar/sdk/mapapi/QunarRouteType;

    return-object v0
.end method
