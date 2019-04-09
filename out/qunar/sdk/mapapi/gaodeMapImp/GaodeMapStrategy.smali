.class public Lqunar/sdk/mapapi/gaodeMapImp/GaodeMapStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqunar/sdk/mapapi/QunarMapV2;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 2

    .prologue
    .line 51
    return-void
.end method

.method public addMarkers(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public addMarkers(Ljava/util/List;ZII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;ZII)V"
        }
    .end annotation

    .prologue
    .line 164
    return-void
.end method

.method public addMyLocationData(Lqunar/sdk/location/QLocation;)V
    .registers 2

    .prologue
    .line 107
    return-void
.end method

.method public clear()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public destroy(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    if-eqz p1, :cond_a

    const-string v0, "the_guy_want_to_cry"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    :cond_a
    return-void
.end method

.method public drawPolygon(Ljava/util/List;IIILjava/lang/String;)V
    .registers 6
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

    .prologue
    .line 144
    return-void
.end method

.method public drawPolyline(Ljava/util/List;IILqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 6
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

    .prologue
    .line 134
    return-void
.end method

.method public varargs drawPolyline(Ljava/util/List;Ljava/util/List;IIII[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 8
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

    .prologue
    .line 139
    return-void
.end method

.method public getMapCenter()Lqunar/sdk/location/QLocation;
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getZoomLevel()F
    .registers 2

    .prologue
    .line 123
    const/high16 v0, 0x40400000    # 3.0f

    return v0
.end method

.method public hideInfoWindow()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method

.method public isAutoMarkersZoom(Z)V
    .registers 2

    .prologue
    .line 55
    return-void
.end method

.method public isMapLoaded()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public varargs mapBound(Ljava/util/List;II[Lqunar/sdk/mapapi/listener/CustomMapCallback;)V
    .registers 5
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

    .prologue
    .line 159
    return-void
.end method

.method public mapCenterTo(II)V
    .registers 3

    .prologue
    .line 169
    return-void
.end method

.method public reSetBitmap(Lqunar/sdk/mapapi/entity/QMarkerV2;Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 209
    return-void
.end method

.method public reSetDraggable(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 3

    .prologue
    .line 204
    return-void
.end method

.method public reSetMarkAnchor(Lqunar/sdk/mapapi/entity/QMarkerV2;FF)V
    .registers 4

    .prologue
    .line 189
    return-void
.end method

.method public reSetMarkFlat(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 3

    .prologue
    .line 199
    return-void
.end method

.method public reSetMarkPerspective(Lqunar/sdk/mapapi/entity/QMarkerV2;Z)V
    .registers 3

    .prologue
    .line 194
    return-void
.end method

.method public reSetMarkPosition(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/location/QLocation;)V
    .registers 3

    .prologue
    .line 174
    return-void
.end method

.method public reSetMarkRotate(Lqunar/sdk/mapapi/entity/QMarker;F)V
    .registers 3

    .prologue
    .line 179
    return-void
.end method

.method public reSetMarkTitle(Lqunar/sdk/mapapi/entity/QMarkerV2;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 184
    return-void
.end method

.method public reSetOpacity(Lqunar/sdk/mapapi/entity/QMarkerV2;F)V
    .registers 3

    .prologue
    .line 214
    return-void
.end method

.method public removeMarker(Lqunar/sdk/mapapi/entity/QMarker;)V
    .registers 2

    .prologue
    .line 62
    return-void
.end method

.method public removeMarkers(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public removePolygon(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 154
    return-void
.end method

.method public setOnMapClickListener(Lqunar/sdk/mapapi/listener/MapClickListener;)V
    .registers 2

    .prologue
    .line 33
    return-void
.end method

.method public setOnMapLoadedCallback(Lqunar/sdk/mapapi/listener/MapLoadedCallback;)V
    .registers 2

    .prologue
    .line 89
    return-void
.end method

.method public setOnMapLongClickListener(Lqunar/sdk/mapapi/listener/MapLongClickListener;)V
    .registers 2

    .prologue
    .line 39
    return-void
.end method

.method public setOnMapStatusChangeListener(Lqunar/sdk/mapapi/listener/MapStatusChangeListener;)V
    .registers 2

    .prologue
    .line 95
    return-void
.end method

.method public setOnMarkerClickListener(Lqunar/sdk/mapapi/listener/MarkerClickListener;)V
    .registers 2

    .prologue
    .line 45
    return-void
.end method

.method public setOnMarkerDragListener(Lqunar/sdk/mapapi/listener/MapMarkerDragCallback;)V
    .registers 2

    .prologue
    .line 236
    return-void
.end method

.method public setOnMyLocationClickListener(Lqunar/sdk/mapapi/listener/MyLocationClickListener;)V
    .registers 2

    .prologue
    .line 219
    return-void
.end method

.method public setViewPadding(IIII)V
    .registers 5

    .prologue
    .line 224
    return-void
.end method

.method public showCustomInfoWindow(Landroid/view/View;Lqunar/sdk/location/QLocation;I)V
    .registers 4

    .prologue
    .line 83
    return-void
.end method

.method public showInfoWindow(Lqunar/sdk/mapapi/QunarInfoWindow;)V
    .registers 2

    .prologue
    .line 78
    return-void
.end method

.method public twoPoint2Line(Lqunar/sdk/mapapi/entity/QMarker;Lqunar/sdk/mapapi/entity/QMarker;II)V
    .registers 5

    .prologue
    .line 129
    return-void
.end method

.method public updatePolygon(IIILjava/lang/String;)V
    .registers 5

    .prologue
    .line 149
    return-void
.end method
