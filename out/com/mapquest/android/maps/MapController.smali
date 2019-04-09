.class public final Lcom/mapquest/android/maps/MapController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.mapquest.android.maps.mapcontroller"


# instance fields
.field private handler:Lcom/mapquest/android/maps/MapController$MapHandler;

.field private mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

.field private mapView:Lcom/mapquest/android/maps/MapView;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 20
    new-instance v0, Lcom/mapquest/android/maps/MapAnimator;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/MapAnimator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    .line 21
    new-instance v0, Lcom/mapquest/android/maps/MapController$MapHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/mapquest/android/maps/MapController$MapHandler;-><init>(Lcom/mapquest/android/maps/MapController;Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/MapController$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    .line 22
    return-void
.end method


# virtual methods
.method public animateRotation(F)V
    .registers 4

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 37
    add-float v0, p1, v1

    rem-float/2addr v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/mapquest/android/maps/MapController;->getMapAnimator()Lcom/mapquest/android/maps/MapAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapAnimator;->animateRotation(F)V

    .line 39
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapAnimator;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 26
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/MapAnimator;->animateTo(Lcom/mapquest/android/maps/GeoPoint;Landroid/os/Message;)V

    .line 30
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/MapAnimator;->animateTo(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 122
    iput-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    .line 123
    return-void
.end method

.method getMapAnimator()Lcom/mapquest/android/maps/MapAnimator;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public scrollBy(II)V
    .registers 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v3, p2

    invoke-interface {v0, v2, v3}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendSetCenter(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 48
    return-void
.end method

.method public setCenter(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendSetCenter(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 52
    return-void
.end method

.method public setMapRotation(F)V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendSetMapRotation(F)V

    .line 60
    return-void
.end method

.method public setZoom(I)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendSetZoom(I)V

    .line 56
    return-void
.end method

.method public stopAnimation(Z)V
    .registers 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->animators:Ljava/util/Queue;

    .line 65
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 66
    invoke-interface {v1}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Animator;

    .line 67
    invoke-virtual {v0}, Lcom/mapquest/android/maps/Animator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/Animator;->stopAnimation(Z)V

    goto :goto_4

    .line 72
    :cond_1a
    return-void
.end method

.method public stopPanning()V
    .registers 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapAnimator;->stopSpanning(Z)V

    .line 76
    return-void
.end method

.method public zoomIn()Z
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapController;->zoomInFixing(II)Z

    move-result v0

    return v0
.end method

.method public zoomInFixing(II)Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 83
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v2, v2, Lcom/mapquest/android/maps/MapView;->currentScale:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 84
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 85
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 86
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v3, v3, Lcom/mapquest/android/maps/MapView;->currentScale:F

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/MapAnimator;->animateZoomScaler(IIFLandroid/graphics/Point;Z)V

    .line 87
    const/4 v5, 0x1

    .line 89
    :cond_3e
    return v5
.end method

.method public zoomOut()Z
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/MapController;->zoomOutFixing(II)Z

    move-result v0

    return v0
.end method

.method public zoomOutFixing(II)Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v2, v2, Lcom/mapquest/android/maps/MapView;->currentScale:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 99
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 100
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 101
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->mapAnimator:Lcom/mapquest/android/maps/MapAnimator;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/mapquest/android/maps/MapController;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v3, v3, Lcom/mapquest/android/maps/MapView;->currentScale:F

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/MapAnimator;->animateZoomScaler(IIFLandroid/graphics/Point;Z)V

    .line 102
    const/4 v5, 0x1

    .line 104
    :cond_3e
    return v5
.end method

.method public zoomToSpan(II)V
    .registers 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendZoomToSpan(II)V

    .line 110
    return-void
.end method

.method public zoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mapquest/android/maps/MapController;->handler:Lcom/mapquest/android/maps/MapController$MapHandler;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/MapController$MapHandler;->sendZoomToSpan(Lcom/mapquest/android/maps/BoundingBox;)V

    .line 114
    return-void
.end method
