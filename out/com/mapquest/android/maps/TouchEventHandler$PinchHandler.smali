.class public Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;
.super Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;
.source "SourceFile"


# instance fields
.field center:Landroid/graphics/PointF;

.field private lastSuccessScaleFactor:F

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

.field private scaleFactor:F

.field final synthetic this$0:Lcom/mapquest/android/maps/TouchEventHandler;

.field private zoomStarted:Z


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V
    .registers 5

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 228
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;-><init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->center:Landroid/graphics/PointF;

    .line 224
    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    .line 225
    iput v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->lastSuccessScaleFactor:F

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->zoomStarted:Z

    .line 230
    iput-object p2, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 231
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 248
    .line 249
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_85

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;->getActionMask()I

    move-result v1

    and-int/2addr v0, v1

    .line 251
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7f

    .line 252
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v0

    .line 253
    aget-object v1, p3, v2

    aget-object v2, p3, v5

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v1

    .line 254
    iget v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    div-float v0, v1, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    .line 255
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->validateZoomLevel(I)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 256
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->zoomStarted:Z

    if-nez v0, :cond_60

    .line 257
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/TouchEventHandler;->fireZoomStartEvent()V

    .line 258
    iput-boolean v5, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->zoomStarted:Z

    .line 261
    :cond_60
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    iget v2, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    iget-object v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->center:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->center:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mapquest/android/maps/MapView;->setScale(FFFF)V

    .line 262
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V

    .line 263
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->lastSuccessScaleFactor:F

    .line 268
    :goto_7a
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p3}, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->copy(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V

    .line 277
    :cond_7f
    :goto_7f
    return v5

    .line 265
    :cond_80
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->lastSuccessScaleFactor:F

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    goto :goto_7a

    .line 271
    :cond_85
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p3}, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->copy(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V

    .line 272
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    iget-object v1, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, v1, Lcom/mapquest/android/maps/MapView;->currentScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    .line 273
    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->lastSuccessScaleFactor:F

    .line 274
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->getCenterPoint(Ljava/util/ArrayList;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->center:Landroid/graphics/PointF;

    goto :goto_7f
.end method

.method public onTouchEnd(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/TouchEventHandler$SimpleMultiTouchDetector;[Landroid/graphics/PointF;)Z
    .registers 13

    .prologue
    const/4 v5, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 234
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->zoomStarted:Z

    if-eqz v0, :cond_41

    .line 236
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getZoomLevel()I

    move-result v1

    .line 237
    int-to-double v2, v1

    iget v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Lcom/mapquest/android/maps/Util;->log2(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .line 238
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getController()Lcom/mapquest/android/maps/MapController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapController;->getMapAnimator()Lcom/mapquest/android/maps/MapAnimator;

    move-result-object v0

    iget v3, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    new-instance v4, Landroid/graphics/Point;

    iget-object v6, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->center:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->center:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-int v7, v7

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual/range {v0 .. v5}, Lcom/mapquest/android/maps/MapAnimator;->animateZoomScaler(IIFLandroid/graphics/Point;Z)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->zoomStarted:Z

    .line 242
    :cond_41
    iput v8, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    .line 243
    iput v8, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->lastSuccessScaleFactor:F

    .line 244
    return v5
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->previousTouchPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 282
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mapquest/android/maps/TouchEventHandler$PinchHandler;->scaleFactor:F

    .line 283
    const/4 v0, 0x0

    return v0
.end method
