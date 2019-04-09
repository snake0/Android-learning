.class Lcom/mapquest/android/maps/ZoomAnimator;
.super Lcom/mapquest/android/maps/Animator;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x190


# instance fields
.field private centerPoint:Landroid/graphics/Point;

.field private currentScale:F

.field private deltaScale:F

.field private endZoom:I

.field private finalScale:F

.field private geoPoint:Lcom/mapquest/android/maps/GeoPoint;

.field private initialScale:F

.field private startTime:J

.field private startZoom:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/Animator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 19
    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->initialScale:F

    .line 20
    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    .line 21
    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->startTime:J

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;IIFLandroid/graphics/Point;)V
    .registers 6

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ZoomAnimator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 35
    iput p2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->startZoom:I

    .line 36
    iput p3, p0, Lcom/mapquest/android/maps/ZoomAnimator;->endZoom:I

    .line 37
    iput p4, p0, Lcom/mapquest/android/maps/ZoomAnimator;->initialScale:F

    .line 38
    iput p4, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    .line 39
    iput-object p5, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/Animator;-><init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V

    .line 27
    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->initialScale:F

    .line 28
    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    .line 29
    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->startTime:J

    .line 31
    return-void
.end method


# virtual methods
.method public animate(FLandroid/graphics/Point;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v0, v0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    .line 44
    iget v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    .line 45
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ZoomAnimator;->getDuration()I

    move-result v0

    add-int/lit16 v0, v0, 0x190

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ZoomAnimator;->setDuration(I)V

    .line 46
    return-void
.end method

.method public doAnimation()Z
    .registers 6

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->startTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 68
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ZoomAnimator;->getDuration()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_41

    iget v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    iget v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_41

    .line 69
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ZoomAnimator;->getDuration()I

    move-result v0

    int-to-float v0, v0

    .line 74
    :cond_1e
    iget v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->initialScale:F

    invoke-virtual {p0}, Lcom/mapquest/android/maps/ZoomAnimator;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->deltaScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    .line 75
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    iget v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    iget-object v3, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/MapView;->setScale(FFFF)V

    .line 76
    const/4 v0, 0x1

    :goto_40
    return v0

    .line 70
    :cond_41
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ZoomAnimator;->getDuration()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1e

    .line 71
    const/4 v0, 0x0

    goto :goto_40
.end method

.method public postAnimation()V
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->currentScale:F

    iput v1, v0, Lcom/mapquest/android/maps/MapView;->currentScale:F

    .line 81
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->endZoom:I

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->setZoomLevel(I)V

    .line 82
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v0, :cond_42

    .line 83
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    iput-object v1, v0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 85
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 86
    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v2

    .line 87
    iget-object v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v3, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    invoke-interface {v3, v1, v0}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, v2, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 91
    :cond_42
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->zoomEnd()V

    .line 92
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 93
    return-void
.end method

.method public preAnimation()V
    .registers 5

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ZoomAnimator;->getDuration()I

    move-result v0

    if-nez v0, :cond_b

    .line 50
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/ZoomAnimator;->setDuration(I)V

    .line 53
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-boolean v0, v0, Lcom/mapquest/android/maps/MapView;->scaling:Z

    if-nez v0, :cond_16

    .line 54
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 57
    :cond_16
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v0, v1, :cond_46

    .line 58
    :cond_32
    iget-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget-object v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->centerPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 61
    :cond_46
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, Lcom/mapquest/android/maps/ZoomAnimator;->endZoom:I

    iget v3, p0, Lcom/mapquest/android/maps/ZoomAnimator;->startZoom:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    .line 62
    iget v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->finalScale:F

    iget v1, p0, Lcom/mapquest/android/maps/ZoomAnimator;->initialScale:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->deltaScale:F

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/ZoomAnimator;->startTime:J

    .line 64
    return-void
.end method
