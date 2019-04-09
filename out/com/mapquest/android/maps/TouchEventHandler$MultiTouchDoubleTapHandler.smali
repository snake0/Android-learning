.class public Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;
.super Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;
.source "SourceFile"


# instance fields
.field private doZoom:Z

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private previousTouchTime:J

.field final synthetic this$0:Lcom/mapquest/android/maps/TouchEventHandler;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    .line 411
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->doZoom:Z

    .line 409
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    .line 413
    iput-object p2, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 414
    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .registers 5

    .prologue
    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    .registers 10

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getActionMask()I

    move-result v1

    and-int/2addr v0, v1

    .line 418
    if-ne v0, v5, :cond_12

    .line 419
    iput-wide v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    .line 438
    :cond_11
    :goto_11
    return v4

    .line 422
    :cond_12
    invoke-virtual {p2}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getActionPointerDown()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 423
    iget-wide v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_25

    .line 424
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    goto :goto_11

    .line 428
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_50

    array-length v0, p3

    if-ne v0, v5, :cond_50

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    invoke-virtual {p0, v0, p3}, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->copy(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V

    .line 431
    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->getCenterPoint(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/mapquest/android/maps/MapController;->zoomOutFixing(II)Z

    .line 435
    :cond_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->previousTouchTime:J

    goto :goto_11
.end method

.method public onTouchEnd(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    .registers 5

    .prologue
    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method
