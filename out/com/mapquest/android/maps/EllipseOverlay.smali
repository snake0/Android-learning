.class public Lcom/mapquest/android/maps/EllipseOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/mapquest/android/maps/EllipseOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/EllipseOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/BoundingBox;Landroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mapquest/android/maps/EllipseOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 17
    iput-object p2, p0, Lcom/mapquest/android/maps/EllipseOverlay;->paint:Landroid/graphics/Paint;

    .line 18
    return-void
.end method

.method private contains(Lcom/mapquest/android/maps/GeoPoint;)Z
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->paint:Landroid/graphics/Paint;

    .line 82
    iput-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 83
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    .line 31
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v3, v0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v2, v3, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 32
    iget-object v3, p0, Lcom/mapquest/android/maps/EllipseOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    iget-object v3, v3, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v2, v3, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 33
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 34
    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 35
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 37
    invoke-static {v2, v0}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 38
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 41
    :cond_45
    return-void
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/EllipseOverlay;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_23

    .line 54
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

    .line 55
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/EllipseOverlay;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 56
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 57
    const/4 v0, 0x1

    .line 61
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    if-eqz v0, :cond_23

    .line 66
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

    .line 67
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/EllipseOverlay;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 68
    iget-object v0, p0, Lcom/mapquest/android/maps/EllipseOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 69
    const/4 v0, 0x1

    .line 73
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setBoundingBox(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mapquest/android/maps/EllipseOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 22
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mapquest/android/maps/EllipseOverlay;->paint:Landroid/graphics/Paint;

    .line 26
    return-void
.end method
