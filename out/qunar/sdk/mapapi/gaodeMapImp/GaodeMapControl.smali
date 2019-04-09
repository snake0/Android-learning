.class public Lqunar/sdk/mapapi/gaodeMapImp/GaodeMapControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/QunarMapControlV2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    if-eqz p1, :cond_a

    const-string v0, "the_guy_want_to_cry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 143
    :cond_a
    return-void
.end method

.method public mapCenterTo(IIZ)V
    .registers 4

    .prologue
    .line 29
    return-void
.end method

.method public overlook(FZI)V
    .registers 4

    .prologue
    .line 54
    return-void
.end method

.method public rotate(FZI)V
    .registers 4

    .prologue
    .line 59
    return-void
.end method

.method public setAllGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 89
    return-void
.end method

.method public setBuildingsEnabled(Z)V
    .registers 2

    .prologue
    .line 153
    return-void
.end method

.method public setCompassEnabled(Z)V
    .registers 2

    .prologue
    .line 95
    return-void
.end method

.method public setIndoorEnabled(Z)V
    .registers 2

    .prologue
    .line 148
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
    .line 39
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
    .line 43
    return-void
.end method

.method public setMapBounds(Ljava/util/List;ZI)V
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
    .line 34
    return-void
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
    .line 19
    return-void
.end method

.method public setMapCenter(Lqunar/sdk/location/QLocation;ZI)V
    .registers 4

    .prologue
    .line 24
    return-void
.end method

.method public setMapCenterZoom(Lqunar/sdk/location/QLocation;FZI)V
    .registers 5

    .prologue
    .line 49
    return-void
.end method

.method public setMaxAndMinZoomLevel(FF)V
    .registers 3

    .prologue
    .line 163
    return-void
.end method

.method public setMyLocationConfigeration(Lqunar/sdk/mapapi/QunarLocationConfigeration;)V
    .registers 2

    .prologue
    .line 136
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .registers 2

    .prologue
    .line 125
    return-void
.end method

.method public setOverlookingGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 101
    return-void
.end method

.method public setRotateGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 107
    return-void
.end method

.method public setScrollGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 113
    return-void
.end method

.method public setShowPointOfInterest(Z)V
    .registers 2

    .prologue
    .line 130
    return-void
.end method

.method public setTrafficEnabled(Z)V
    .registers 2

    .prologue
    .line 158
    return-void
.end method

.method public setZoomGesturesEnabled(Z)V
    .registers 2

    .prologue
    .line 119
    return-void
.end method

.method public zoomBy(FZI)V
    .registers 4

    .prologue
    .line 65
    return-void
.end method

.method public zoomIn()V
    .registers 1

    .prologue
    .line 71
    return-void
.end method

.method public zoomOut()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public zoomTo(FZI)V
    .registers 4

    .prologue
    .line 83
    return-void
.end method
