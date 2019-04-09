.class public Lqunar/sdk/mapapi/mapquest/MapQuestControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/QunarMapControlV2;


# instance fields
.field private mapController:Lcom/mapquest/android/maps/MapController;

.field private mapView:Lcom/mapquest/android/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_d

    .line 27
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 28
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    .line 30
    :cond_d
    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 189
    if-eqz p1, :cond_17

    const-string v0, "the_guy_want_to_cry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 190
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_11

    .line 191
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 193
    :cond_11
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_17

    .line 194
    iput-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    .line 197
    :cond_17
    return-void
.end method

.method public mapCenterTo(IIZ)V
    .registers 4

    .prologue
    .line 52
    return-void
.end method

.method public overlook(FZI)V
    .registers 4

    .prologue
    .line 96
    return-void
.end method

.method public rotate(FZI)V
    .registers 5

    .prologue
    .line 100
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_9

    .line 101
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapController;->setMapRotation(F)V

    .line 103
    :cond_9
    return-void
.end method

.method public setAllGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 137
    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .registers 2

    .prologue
    .line 207
    return-void
.end method

.method public setCompassEnabled(Z)V
    .registers 2

    .prologue
    .line 143
    return-void
.end method

.method public setIndoorEnabled(Z)V
    .registers 2

    .prologue
    .line 202
    return-void
.end method

.method public setMapBounds(Ljava/util/List;IIZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;IIZ)V"
        }
    .end annotation

    .prologue
    .line 73
    return-void
.end method

.method public setMapBounds(Ljava/util/List;IIZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;IIZI)V"
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public setMapBounds(Ljava/util/List;ZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 68
    :cond_c
    :goto_c
    return-void

    .line 60
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqunar/sdk/location/QLocation;

    .line 62
    new-instance v3, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 64
    :cond_33
    invoke-static {v1}, Lcom/mapquest/android/maps/BoundingBox;->calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_c

    .line 66
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapController;->zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V

    goto :goto_c
.end method

.method public setMapCenter(Ljava/util/List;ZI)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public setMapCenter(Lqunar/sdk/location/QLocation;ZI)V
    .registers 10

    .prologue
    .line 40
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_18

    .line 41
    if-eqz p2, :cond_19

    .line 42
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 47
    :cond_18
    :goto_18
    return-void

    .line 44
    :cond_19
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setCenter(Lcom/mapquest/android/maps/GeoPoint;)V

    goto :goto_18
.end method

.method public setMapCenterZoom(Lqunar/sdk/location/QLocation;FZI)V
    .registers 11

    .prologue
    .line 82
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_1e

    .line 83
    if-eqz p3, :cond_1f

    .line 84
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 88
    :goto_18
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setZoom(I)V

    .line 90
    :cond_1e
    return-void

    .line 86
    :cond_1f
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setCenter(Lcom/mapquest/android/maps/GeoPoint;)V

    goto :goto_18
.end method

.method public setMaxAndMinZoomLevel(FF)V
    .registers 3

    .prologue
    .line 217
    return-void
.end method

.method public setMyLocationConfigeration(Lqunar/sdk/mapapi/QunarLocationConfigeration;)V
    .registers 2

    .prologue
    .line 185
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .registers 2

    .prologue
    .line 173
    return-void
.end method

.method public setOverlookingGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 149
    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 155
    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 161
    return-void
.end method

.method public setShowPointOfInterest(Z)V
    .registers 2

    .prologue
    .line 178
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .registers 2

    .prologue
    .line 212
    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 167
    return-void
.end method

.method public zoomBy(FZI)V
    .registers 7

    .prologue
    .line 107
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapView:Lcom/mapquest/android/maps/MapView;

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    float-to-int v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setZoom(I)V

    .line 110
    :cond_15
    return-void
.end method

.method public zoomIn()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomIn()Z

    .line 117
    :cond_9
    return-void
.end method

.method public zoomOut()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->zoomOut()Z

    .line 124
    :cond_9
    return-void
.end method

.method public zoomTo(FZI)V
    .registers 6

    .prologue
    .line 128
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/MapQuestControl;->mapController:Lcom/mapquest/android/maps/MapController;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapController;->setZoom(I)V

    .line 131
    :cond_a
    return-void
.end method
