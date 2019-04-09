.class Lcom/mapquest/android/maps/MapAnimator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.mapquest.android.maps.mapanimator"


# instance fields
.field flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

.field private mapView:Lcom/mapquest/android/maps/MapView;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 17
    new-instance v0, Lcom/mapquest/android/maps/FlingAnimator;

    invoke-direct {v0, p1}, Lcom/mapquest/android/maps/FlingAnimator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    .line 18
    return-void
.end method

.method private applySnappable(IILandroid/graphics/Point;)V
    .registers 7

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 31
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/Overlay;

    .line 33
    instance-of v2, v0, Lcom/mapquest/android/maps/Overlay$Snappable;

    if-eqz v2, :cond_a

    .line 34
    check-cast v0, Lcom/mapquest/android/maps/Overlay$Snappable;

    .line 35
    iget-object v2, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-interface {v0, p1, p2, p3, v2}, Lcom/mapquest/android/maps/Overlay$Snappable;->onSnapToItem(IILandroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    :cond_24
    return-void
.end method


# virtual methods
.method public animateFlick(Landroid/graphics/Point;FF)V
    .registers 6

    .prologue
    .line 82
    if-eqz p1, :cond_e

    .line 83
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mapquest/android/maps/FlingAnimator;->animate(Landroid/graphics/Point;FF)V

    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 87
    :cond_e
    return-void
.end method

.method public animatePan(II)V
    .registers 5

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/mapquest/android/maps/FlingAnimator;->animate(II)V

    .line 45
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 46
    return-void
.end method

.method public animateRotation(F)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    new-instance v1, Lcom/mapquest/android/maps/RotationAnimator;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-direct {v1, v2, p1}, Lcom/mapquest/android/maps/RotationAnimator;-><init>(Lcom/mapquest/android/maps/MapView;F)V

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 91
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 3

    .prologue
    .line 49
    if-eqz p1, :cond_8

    .line 50
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0}, Lcom/mapquest/android/maps/MapAnimator;->animateTo(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/Runnable;)V

    .line 53
    :cond_8
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;I)V
    .registers 11

    .prologue
    .line 56
    if-eqz p1, :cond_2f

    .line 57
    invoke-virtual {p0, p1}, Lcom/mapquest/android/maps/MapAnimator;->animateTo(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 58
    iget-object v6, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    new-instance v0, Lcom/mapquest/android/maps/ZoomAnimator;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v2, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    new-instance v5, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v7}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v3, v7}, Landroid/graphics/Point;-><init>(II)V

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/ZoomAnimator;-><init>(Lcom/mapquest/android/maps/MapView;IIFLandroid/graphics/Point;)V

    invoke-virtual {v6, v0}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 61
    :cond_2f
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 73
    if-eqz p1, :cond_13

    .line 74
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/FlingAnimator;->animate(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 75
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/FlingAnimator;->setMessage(Landroid/os/Message;)V

    .line 76
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 79
    :cond_13
    return-void
.end method

.method public animateTo(Lcom/mapquest/android/maps/GeoPoint;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 64
    if-eqz p1, :cond_13

    .line 65
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/FlingAnimator;->animate(Lcom/mapquest/android/maps/GeoPoint;)V

    .line 66
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/FlingAnimator;->setRunnable(Ljava/lang/Runnable;)V

    .line 67
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 70
    :cond_13
    return-void
.end method

.method public animateZoomScaler(IIFLandroid/graphics/Point;Z)V
    .registers 13

    .prologue
    .line 21
    if-eqz p5, :cond_b

    if-ge p1, p2, :cond_b

    .line 22
    iget v0, p4, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1, p4}, Lcom/mapquest/android/maps/MapAnimator;->applySnappable(IILandroid/graphics/Point;)V

    .line 25
    :cond_b
    iget-object v6, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    new-instance v0, Lcom/mapquest/android/maps/ZoomAnimator;

    iget-object v1, p0, Lcom/mapquest/android/maps/MapAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/ZoomAnimator;-><init>(Lcom/mapquest/android/maps/MapView;IIFLandroid/graphics/Point;)V

    invoke-virtual {v6, v0}, Lcom/mapquest/android/maps/MapView;->queueAnimator(Lcom/mapquest/android/maps/Animator;)V

    .line 26
    return-void
.end method

.method public stopSpanning()V
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/MapAnimator;->stopSpanning(Z)V

    .line 95
    return-void
.end method

.method public stopSpanning(Z)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mapquest/android/maps/MapAnimator;->flingAnimator:Lcom/mapquest/android/maps/FlingAnimator;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/FlingAnimator;->stopAnimation(Z)V

    .line 99
    return-void
.end method
