.class public interface abstract Lqunar/sdk/mapapi/QunarMap;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
.end method

.method public abstract addMarkers(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract addMarkers(Ljava/util/List;ZII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;ZII)V"
        }
    .end annotation
.end method

.method public abstract addMyLocationData(Lqunar/sdk/location/QLocation;)V
.end method

.method public abstract clear()V
.end method

.method public abstract destroy(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract drawPolygon(Ljava/util/List;IIILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract drawPolyline(Ljava/util/List;IILqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;II",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ")V"
        }
    .end annotation
.end method

.method public varargs abstract drawPolyline(Ljava/util/List;Ljava/util/List;IIII[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;IIII[",
            "Lqunar/sdk/mapapi/listener/CustomMapCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getMapCenter()Lqunar/sdk/location/QLocation;
.end method

.method public abstract getZoomLevel()F
.end method

.method public abstract hideInfoWindow()V
.end method

.method public abstract isAutoMarkersZoom(Z)V
.end method

.method public abstract isMapLoaded()Z
.end method

.method public varargs abstract mapBound(Ljava/util/List;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/location/QLocation;",
            ">;II[",
            "Lqunar/sdk/mapapi/listener/CustomMapCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract mapCenterTo(II)V
.end method

.method public abstract reSetMarkPosition(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/location/QLocation;)V
.end method

.method public abstract reSetMarkRotate(Lqunar/sdk/mapapi/entity/QMarker;F)V
.end method

.method public abstract removeMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
.end method

.method public abstract removeMarkers(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removePolygon(Ljava/lang/String;)V
.end method

.method public abstract setOnMapClickListener(Lqunar/sdk/mapapi/listener/MapClickListener;)V
.end method

.method public abstract setOnMapLoadedCallback(Lqunar/sdk/mapapi/listener/MapLoadedCallback;)V
.end method

.method public abstract setOnMapLongClickListener(Lqunar/sdk/mapapi/listener/MapLongClickListener;)V
.end method

.method public abstract setOnMapStatusChangeListener(Lqunar/sdk/mapapi/listener/MapStatusChangeListener;)V
.end method

.method public abstract setOnMarkerClickListener(Lqunar/sdk/mapapi/listener/MarkerClickListener;)V
.end method

.method public abstract setOnMyLocationClickListener(Lqunar/sdk/mapapi/listener/MyLocationClickListener;)V
.end method

.method public abstract setViewPadding(IIII)V
.end method

.method public abstract showCustomInfoWindow(Landroid/view/View;Lqunar/sdk/location/QLocation;I)V
.end method

.method public abstract showInfoWindow(Lqunar/sdk/mapapi/QunarInfoWindow;)V
.end method

.method public abstract twoPoint2Line(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;II)V
.end method

.method public abstract updatePolygon(IIILjava/lang/String;)V
.end method
