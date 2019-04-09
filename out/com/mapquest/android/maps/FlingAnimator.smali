.class Lcom/mapquest/android/maps/FlingAnimator;
.super Lcom/mapquest/android/maps/Animator;
.source "SourceFile"


# static fields
.field private static final DURATION:I = 0x258

.field private static final SCROLL_FRICTION:F = 0.25f


# instance fields
.field private point:Lcom/mapquest/android/maps/GeoPoint;

.field scroller:Landroid/widget/Scroller;

.field private startX:I

.field private startY:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/Animator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 16
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/Animator;-><init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method private move()V
    .registers 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 64
    iget v1, p0, Lcom/mapquest/android/maps/FlingAnimator;->startX:I

    iget-object v2, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 65
    iget v2, p0, Lcom/mapquest/android/maps/FlingAnimator;->startY:I

    iget-object v3, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 66
    iget-object v3, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lcom/mapquest/android/maps/FlingAnimator;->startX:I

    .line 67
    iget-object v3, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/mapquest/android/maps/FlingAnimator;->startY:I

    .line 68
    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iput-object v0, v1, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 70
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public animate(II)V
    .registers 9

    .prologue
    .line 24
    invoke-super {p0}, Lcom/mapquest/android/maps/Animator;->startAnimation()V

    .line 25
    iput p1, p0, Lcom/mapquest/android/maps/FlingAnimator;->startX:I

    .line 26
    iput p2, p0, Lcom/mapquest/android/maps/FlingAnimator;->startY:I

    .line 27
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 28
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getFocalPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v4, v0, Landroid/graphics/Point;->y:I

    .line 29
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_26

    .line 30
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 35
    :goto_25
    return-void

    .line 32
    :cond_26
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/mapquest/android/maps/FlingAnimator;->startX:I

    iget v2, p0, Lcom/mapquest/android/maps/FlingAnimator;->startY:I

    iget v5, p0, Lcom/mapquest/android/maps/FlingAnimator;->startX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/mapquest/android/maps/FlingAnimator;->startY:I

    sub-int/2addr v4, v5

    const/16 v5, 0x258

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_25
.end method

.method public animate(Landroid/graphics/Point;FF)V
    .registers 13

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/high16 v4, 0x3e800000    # 0.25f

    .line 47
    invoke-super {p0}, Lcom/mapquest/android/maps/Animator;->startAnimation()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 49
    iget v0, p1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->startX:I

    .line 50
    iget v0, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->startY:I

    .line 51
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    .line 52
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 55
    :cond_23
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    mul-float v3, p2, v4

    float-to-int v3, v3

    mul-float/2addr v4, p3

    float-to-int v4, v4

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 56
    return-void
.end method

.method public animate(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 4

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_18

    .line 40
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, p1, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 41
    iput-object p1, p0, Lcom/mapquest/android/maps/FlingAnimator;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 42
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/mapquest/android/maps/FlingAnimator;->animate(II)V

    .line 44
    :cond_18
    return-void
.end method

.method public doAnimation()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 75
    invoke-direct {p0}, Lcom/mapquest/android/maps/FlingAnimator;->move()V

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_c
    return v0

    .line 78
    :cond_d
    invoke-direct {p0}, Lcom/mapquest/android/maps/FlingAnimator;->move()V

    .line 79
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public finishPan()V
    .registers 2

    .prologue
    .line 104
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 105
    return-void
.end method

.method public postAnimation()V
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->point:Lcom/mapquest/android/maps/GeoPoint;

    if-eqz v0, :cond_f

    .line 85
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/FlingAnimator;->point:Lcom/mapquest/android/maps/GeoPoint;

    iput-object v1, v0, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 86
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 89
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 90
    invoke-virtual {p0}, Lcom/mapquest/android/maps/FlingAnimator;->finishPan()V

    .line 91
    return-void
.end method

.method public preAnimation()V
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 60
    return-void
.end method

.method public stopAnimation(Z)V
    .registers 4

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/mapquest/android/maps/Animator;->stopAnimation(Z)V

    .line 95
    if-eqz p1, :cond_b

    .line 96
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 101
    :goto_a
    return-void

    .line 98
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/FlingAnimator;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_a
.end method
