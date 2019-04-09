.class public final enum Lqunar/sdk/mapapi/entity/RouteNodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lqunar/sdk/mapapi/entity/RouteNodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lqunar/sdk/mapapi/entity/RouteNodeType;

.field public static final enum POSITIONLOCATION:Lqunar/sdk/mapapi/entity/RouteNodeType;

.field public static final enum POSITIONNAME:Lqunar/sdk/mapapi/entity/RouteNodeType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lqunar/sdk/mapapi/entity/RouteNodeType;

    const-string v1, "POSITIONLOCATION"

    invoke-direct {v0, v1, v2}, Lqunar/sdk/mapapi/entity/RouteNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONLOCATION:Lqunar/sdk/mapapi/entity/RouteNodeType;

    .line 9
    new-instance v0, Lqunar/sdk/mapapi/entity/RouteNodeType;

    const-string v1, "POSITIONNAME"

    invoke-direct {v0, v1, v3}, Lqunar/sdk/mapapi/entity/RouteNodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONNAME:Lqunar/sdk/mapapi/entity/RouteNodeType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lqunar/sdk/mapapi/entity/RouteNodeType;

    sget-object v1, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONLOCATION:Lqunar/sdk/mapapi/entity/RouteNodeType;

    aput-object v1, v0, v2

    sget-object v1, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONNAME:Lqunar/sdk/mapapi/entity/RouteNodeType;

    aput-object v1, v0, v3

    sput-object v0, Lqunar/sdk/mapapi/entity/RouteNodeType;->$VALUES:[Lqunar/sdk/mapapi/entity/RouteNodeType;

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

.method public static valueOf(Ljava/lang/String;)Lqunar/sdk/mapapi/entity/RouteNodeType;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lqunar/sdk/mapapi/entity/RouteNodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lqunar/sdk/mapapi/entity/RouteNodeType;

    return-object v0
.end method

.method public static values()[Lqunar/sdk/mapapi/entity/RouteNodeType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lqunar/sdk/mapapi/entity/RouteNodeType;->$VALUES:[Lqunar/sdk/mapapi/entity/RouteNodeType;

    invoke-virtual {v0}, [Lqunar/sdk/mapapi/entity/RouteNodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lqunar/sdk/mapapi/entity/RouteNodeType;

    return-object v0
.end method
