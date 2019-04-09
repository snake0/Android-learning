.class public Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;
.super Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;
.source "SourceFile"


# static fields
.field private static final MINIMUM_ANGLE:F = 0.5f

.field private static final MINIMUM_SCALE_FACTOR:F = 0.03f


# instance fields
.field private center:Landroid/graphics/PointF;

.field private exAngle:F

.field private exScaleFactor:F

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field previousTouchPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private rotationStarted:Z

.field private scaleFactor:F

.field final synthetic this$0:Lcom/mapquest/android/maps/TouchEventHandler;

.field private zoomStarted:Z


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 299
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    .line 292
    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    .line 293
    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exScaleFactor:F

    .line 294
    iput-boolean v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->zoomStarted:Z

    .line 295
    iput-boolean v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->rotationStarted:Z

    .line 301
    iput-object p2, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 302
    return-void
.end method


# virtual methods
.method public angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 7

    .prologue
    .line 324
    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->hypotenuse(FF)F

    move-result v0

    .line 325
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float v0, v3, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 326
    invoke-virtual {p0, p1, v1, p2}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    return v0
.end method

.method public angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 10

    .prologue
    .line 330
    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 331
    iget v1, p3, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    .line 332
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    .line 333
    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    .line 334
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-float/2addr v2, v3

    float-to-double v2, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v4

    .line 335
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    .registers 14

    .prologue
    const/high16 v9, 0x43b40000    # 360.0f

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 339
    .line 340
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_102

    move v1, v2

    move v3, v0

    move v4, v0

    .line 346
    :goto_10
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_64

    .line 347
    iget-object v5, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p0, v5, v0}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 348
    iget-object v5, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    aget-object v7, p3, v1

    invoke-virtual {p0, v5, v7}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v5

    .line 349
    sub-float v5, v0, v5

    .line 350
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v7, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    invoke-static {v0, v7}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 351
    aget-object v7, p3, v6

    iget-object v8, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    invoke-static {v7, v8}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v7

    .line 352
    sub-float/2addr v0, v7

    .line 353
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_54

    move v4, v5

    .line 357
    :cond_54
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v3, v5

    if-gez v5, :cond_60

    .line 358
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 346
    :cond_60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 362
    :cond_64
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 363
    aget-object v1, p3, v2

    aget-object v3, p3, v6

    invoke-static {v1, v3}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 364
    iget v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    div-float v0, v1, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    .line 365
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    iget v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exScaleFactor:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3cf5c28f    # 0.03f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exAngle:F

    sub-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    div-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d3

    .line 367
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->zoomStarted:Z

    if-nez v0, :cond_ae

    .line 368
    iput-boolean v6, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->zoomStarted:Z

    .line 369
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->fireZoomStartEvent()V

    .line 372
    :cond_ae
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    iget v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    iget-object v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/mapquest/android/maps/MapView;->setScale(FFFF)V

    .line 373
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    move v0, v6

    .line 386
    :goto_c5
    if-eqz v0, :cond_d2

    .line 387
    iget v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exScaleFactor:F

    .line 388
    iput v4, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exAngle:F

    .line 389
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p3}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->copy(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V

    .line 398
    :cond_d2
    :goto_d2
    return v0

    .line 374
    :cond_d3
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exAngle:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_11a

    .line 376
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->rotationStarted:Z

    if-nez v0, :cond_ed

    .line 377
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 378
    iput-boolean v6, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->rotationStarted:Z

    .line 381
    :cond_ed
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v0

    add-float/2addr v0, v9

    add-float/2addr v0, v4

    rem-float/2addr v0, v9

    .line 382
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->setMapRotation(F)V

    .line 383
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    move v0, v6

    goto :goto_c5

    .line 392
    :cond_102
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p3}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->copy(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V

    .line 393
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, v1, Lcom/mapquest/android/maps/MapView;->currentScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    .line 394
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->getCenterPoint(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    move v0, v6

    .line 395
    goto :goto_d2

    :cond_11a
    move v0, v2

    goto :goto_c5
.end method

.method public onTouchEnd(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    .registers 14

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 305
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->zoomStarted:Z

    if-eqz v0, :cond_3f

    .line 307
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    .line 308
    int-to-double v2, v1

    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 309
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->getMapAnimator()Lcom/mapquest/android/maps/MapAnimator;

    move-result-object v0

    iget v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    new-instance v4, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->center:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/MapAnimator;->animateZoomScaler(IIFLandroid/graphics/Point;Z)V

    .line 312
    :cond_3f
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->rotationStarted:Z

    if-eqz v0, :cond_48

    .line 313
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 316
    :cond_48
    iput-boolean v9, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->rotationStarted:Z

    .line 317
    iput-boolean v9, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->zoomStarted:Z

    .line 318
    iput v8, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->scaleFactor:F

    .line 319
    iput v8, p0, Lcom/mapquest/android/maps/TouchEventHandler$RotationPinchHandler;->exScaleFactor:F

    .line 320
    return v5
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 402
    const/4 v0, 0x0

    return v0
.end method
