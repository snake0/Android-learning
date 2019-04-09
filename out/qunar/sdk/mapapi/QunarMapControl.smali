.class public interface abstract Lqunar/sdk/mapapi/QunarMapControl;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract mapCenterTo(IIZ)V
.end method

.method public abstract overlook(FZI)V
.end method

.method public abstract rotate(FZI)V
.end method

.method public abstract setAllGesturesEnabled(Z)V
.end method

.method public abstract setCompassEnabled(Z)V
.end method

.method public abstract setMapBounds(Ljava/util/List;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;IIZ)V"
        }
    .end annotation
.end method

.method public abstract setMapBounds(Ljava/util/List;IIZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;IIZI)V"
        }
    .end annotation
.end method

.method public abstract setMapBounds(Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract setMapCenter(Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract setMapCenter(Lqunar/sdk/location/QLocation;ZI)V
.end method

.method public abstract setMapCenterZoom(Lqunar/sdk/location/QLocation;FZI)V
.end method

.method public abstract setMyLocationConfigeration(Lqunar/sdk/mapapi/QunarLocationConfigeration;)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOverlookingGesturesEnabled(Z)V
.end method

.method public abstract setRotateGesturesEnabled(Z)V
.end method

.method public abstract setScrollGesturesEnabled(Z)V
.end method

.method public abstract setZoomGesturesEnabled(Z)V
.end method

.method public abstract zoomBy(FZI)V
.end method

.method public abstract zoomIn()V
.end method

.method public abstract zoomOut()V
.end method

.method public abstract zoomTo(FZI)V
.end method
