.class public Lqunar/sdk/location/QMapStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bound:Lqunar/sdk/location/QMapStatus$QBounds;

.field public final overlook:F

.field public final rotate:F

.field public final target:Lqunar/sdk/location/QLocation;

.field public final targetScreen:Landroid/graphics/Point;

.field public final zoom:F


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/map/MapStatus;)V
    .registers 9

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget v0, p1, Lcom/baidu/mapapi/map/MapStatus;->rotate:F

    iput v0, p0, Lqunar/sdk/location/QMapStatus;->rotate:F

    .line 17
    new-instance v0, Lqunar/sdk/location/QLocation;

    iget-object v1, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v1, v1, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v3, p1, Lcom/baidu/mapapi/map/MapStatus;->target:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    iput-object v0, p0, Lqunar/sdk/location/QMapStatus;->target:Lqunar/sdk/location/QLocation;

    .line 18
    iget v0, p1, Lcom/baidu/mapapi/map/MapStatus;->overlook:F

    iput v0, p0, Lqunar/sdk/location/QMapStatus;->overlook:F

    .line 19
    iget v0, p1, Lcom/baidu/mapapi/map/MapStatus;->zoom:F

    iput v0, p0, Lqunar/sdk/location/QMapStatus;->zoom:F

    .line 20
    new-instance v0, Lqunar/sdk/location/QMapStatus$QBounds;

    new-instance v1, Lqunar/sdk/location/QLocation;

    iget-object v2, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v2, v2, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v2, v2, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v4, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v4, v4, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v4, v4, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    new-instance v2, Lqunar/sdk/location/QLocation;

    iget-object v3, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v3, v3, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v3, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-object v5, p1, Lcom/baidu/mapapi/map/MapStatus;->bound:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v5, v5, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    iget-wide v5, v5, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lqunar/sdk/location/QLocation;-><init>(DD)V

    invoke-direct {v0, p0, v1, v2}, Lqunar/sdk/location/QMapStatus$QBounds;-><init>(Lqunar/sdk/location/QMapStatus;Lqunar/sdk/location/QLocation;Lqunar/sdk/location/QLocation;)V

    iput-object v0, p0, Lqunar/sdk/location/QMapStatus;->bound:Lqunar/sdk/location/QMapStatus$QBounds;

    .line 23
    iget-object v0, p1, Lcom/baidu/mapapi/map/MapStatus;->targetScreen:Landroid/graphics/Point;

    iput-object v0, p0, Lqunar/sdk/location/QMapStatus;->targetScreen:Landroid/graphics/Point;

    .line 24
    return-void
.end method
