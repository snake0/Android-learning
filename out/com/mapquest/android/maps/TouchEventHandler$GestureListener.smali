.class Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/TouchEventHandler;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;)V
    .registers 2

    .prologue
    .line 520
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 521
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/TouchEventHandler$1;)V
    .registers 3

    .prologue
    .line 519
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 540
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    iget-object v0, v0, Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDoubleTapHandler:Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchDoubleTapHandler;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_22

    .line 541
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/mapquest/android/maps/MapController;->zoomInFixing(II)Z

    .line 544
    :cond_22
    return v3
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 535
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->stopPanning()V

    .line 536
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    .prologue
    .line 572
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$100(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 573
    const/4 v0, 0x0

    .line 577
    :goto_d
    return v0

    .line 575
    :cond_e
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 576
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v1}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapController;->getMapAnimator()Lcom/mapquest/android/maps/MapAnimator;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/mapquest/android/maps/MapAnimator;->animateFlick(Landroid/graphics/Point;FF)V

    .line 577
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    .line 525
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$100(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_26

    .line 526
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 527
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 528
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "data"

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 529
    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendMessage(Landroid/os/Message;)V

    .line 530
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 532
    :cond_26
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    .line 549
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$100(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 550
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->multiTouchDetector:Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$100(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 567
    :goto_16
    return v4

    .line 553
    :cond_17
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v1}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v1

    iget-object v1, v1, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    .line 555
    iget-object v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v2}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v2

    iget-object v2, v2, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    float-to-int v3, p4

    add-int/2addr v2, v3

    .line 556
    iget-object v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v3}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v3

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, v3, Lcom/mapquest/android/maps/MapView;->centerGeoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 557
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 558
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$300(Lcom/mapquest/android/maps/TouchEventHandler;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 559
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 561
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # setter for: Lcom/mapquest/android/maps/TouchEventHandler;->firedMoveStart:Z
    invoke-static {v0, v4}, Lcom/mapquest/android/maps/TouchEventHandler;->access$302(Lcom/mapquest/android/maps/TouchEventHandler;Z)Z

    goto :goto_16

    .line 563
    :cond_61
    const/16 v0, 0x16

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_16
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 582
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$GestureListener;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    # getter for: Lcom/mapquest/android/maps/TouchEventHandler;->mapView:Lcom/mapquest/android/maps/MapView;
    invoke-static {v1}, Lcom/mapquest/android/maps/TouchEventHandler;->access$200(Lcom/mapquest/android/maps/TouchEventHandler;)Lcom/mapquest/android/maps/MapView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/MapView;->onTap(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 585
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 587
    const/4 v0, 0x0

    .line 589
    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x1

    goto :goto_29
.end method
