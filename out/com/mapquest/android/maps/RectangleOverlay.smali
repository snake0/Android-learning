.class public Lcom/mapquest/android/maps/RectangleOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/mapquest/android/maps/RectangleOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/RectangleOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/BoundingBox;Landroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 18
    iput-object p2, p0, Lcom/mapquest/android/maps/RectangleOverlay;->paint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    .line 20
    return-void
.end method

.method private contains(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/GeoPoint;)Z
    .registers 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-virtual {v0, p2}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->paint:Landroid/graphics/Paint;

    .line 85
    iput-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 86
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    .line 33
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 34
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v3, v0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v2, v3, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 35
    new-instance v4, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v0, v0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v5

    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v0, v0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v2, v4, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 36
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v5, v0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v2, v5, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 37
    new-instance v5, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v6, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v6, v6, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLatitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v8, v8, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/mapquest/android/maps/GeoPoint;-><init>(DD)V

    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v2, v5, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 39
    iget-object v2, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    iget v5, v4, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 40
    iget-object v2, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 41
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 42
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    iget v1, v3, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 43
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapquest/android/maps/RectangleOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 44
    return-void
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_11

    invoke-direct {p0, p2, p1}, Lcom/mapquest/android/maps/RectangleOverlay;->contains(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 49
    const/4 v0, 0x1

    .line 51
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_23

    .line 57
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 58
    invoke-direct {p0, p2, v0}, Lcom/mapquest/android/maps/RectangleOverlay;->contains(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 60
    const/4 v0, 0x1

    .line 64
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    if-eqz v0, :cond_23

    .line 69
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 70
    invoke-direct {p0, p2, v0}, Lcom/mapquest/android/maps/RectangleOverlay;->contains(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 71
    iget-object v0, p0, Lcom/mapquest/android/maps/RectangleOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 72
    const/4 v0, 0x1

    .line 76
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setBoundingBox(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mapquest/android/maps/RectangleOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 24
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mapquest/android/maps/RectangleOverlay;->paint:Landroid/graphics/Paint;

    .line 28
    return-void
.end method
