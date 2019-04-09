.class public Lqunar/sdk/mapapi/entity/QunarRouteNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field public distance:I

.field public duration:I

.field public instructions:Ljava/lang/String;

.field public nodeLocation:Lqunar/sdk/location/QLocation;

.field public routeNodeType:Lqunar/sdk/mapapi/entity/RouteNodeType;

.field public wayPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONNAME:Lqunar/sdk/mapapi/entity/RouteNodeType;

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QunarRouteNode;->routeNodeType:Lqunar/sdk/mapapi/entity/RouteNodeType;

    .line 26
    return-void
.end method

.method public constructor <init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lqunar/sdk/mapapi/entity/RouteNodeType;->POSITIONNAME:Lqunar/sdk/mapapi/entity/RouteNodeType;

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QunarRouteNode;->routeNodeType:Lqunar/sdk/mapapi/entity/RouteNodeType;

    .line 30
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    .line 31
    iput-object p2, p0, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QunarRouteNode [nodeLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QunarRouteNode;->nodeLocation:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instructions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QunarRouteNode;->instructions:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
