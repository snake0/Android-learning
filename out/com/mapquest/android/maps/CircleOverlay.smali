.class public Lcom/mapquest/android/maps/CircleOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# instance fields
.field private center:Lcom/mapquest/android/maps/GeoPoint;

.field private paint:Landroid/graphics/Paint;

.field private radiusMeters:D

.field private radiusPixels:I


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;DLandroid/graphics/Paint;)V
    .registers 5

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mapquest/android/maps/CircleOverlay;->center:Lcom/mapquest/android/maps/GeoPoint;

    .line 27
    iput-wide p2, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    .line 28
    iput-object p4, p0, Lcom/mapquest/android/maps/CircleOverlay;->paint:Landroid/graphics/Paint;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;ILandroid/graphics/Paint;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mapquest/android/maps/CircleOverlay;->center:Lcom/mapquest/android/maps/GeoPoint;

    .line 21
    iput p2, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusPixels:I

    .line 22
    iput-object p3, p0, Lcom/mapquest/android/maps/CircleOverlay;->paint:Landroid/graphics/Paint;

    .line 23
    return-void
.end method

.method private contains(Landroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z
    .registers 9

    .prologue
    .line 109
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/CircleOverlay;->center:Lcom/mapquest/android/maps/GeoPoint;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, v2, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 112
    iget-wide v2, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_3a

    .line 113
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget-wide v2, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    double-to-float v2, v2

    invoke-interface {v0, v2}, Lcom/mapquest/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v0

    float-to-int v0, v0

    .line 118
    :goto_21
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    .line 119
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v3

    .line 120
    mul-int/2addr v2, v2

    mul-int/2addr v1, v1

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 121
    int-to-double v3, v0

    cmpg-double v0, v1, v3

    if-gtz v0, :cond_3d

    const/4 v0, 0x1

    :goto_39
    return v0

    .line 115
    :cond_3a
    iget v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusPixels:I

    goto :goto_21

    .line 121
    :cond_3d
    const/4 v0, 0x0

    goto :goto_39
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->paint:Landroid/graphics/Paint;

    .line 126
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 13

    .prologue
    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/mapquest/android/maps/CircleOverlay;->center:Lcom/mapquest/android/maps/GeoPoint;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, v2, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 53
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 54
    iget v2, v0, Landroid/graphics/Point;->y:I

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 57
    iget-wide v4, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_53

    .line 58
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    iget-wide v4, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    double-to-float v4, v4

    invoke-interface {v0, v4}, Lcom/mapquest/android/maps/Projection;->metersToEquatorPixels(F)F

    move-result v0

    float-to-int v0, v0

    .line 63
    :goto_29
    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, v1, v0

    sub-int v6, v2, v0

    add-int v7, v1, v0

    add-int v8, v2, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    iget-object v5, p0, Lcom/mapquest/android/maps/CircleOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x2

    .line 65
    neg-int v6, v5

    neg-int v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 66
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 67
    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/mapquest/android/maps/CircleOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 70
    :cond_52
    return-void

    .line 60
    :cond_53
    iget v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusPixels:I

    goto :goto_29
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_1c

    .line 74
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, p1, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/CircleOverlay;->contains(Landroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 76
    iget-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 77
    const/4 v0, 0x1

    .line 81
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_20

    .line 86
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 87
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/CircleOverlay;->contains(Landroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 88
    iget-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 89
    const/4 v0, 0x1

    .line 93
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    if-eqz v0, :cond_20

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 99
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/CircleOverlay;->contains(Landroid/graphics/Point;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 100
    iget-object v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 101
    const/4 v0, 0x1

    .line 105
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public setCenter(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mapquest/android/maps/CircleOverlay;->center:Lcom/mapquest/android/maps/GeoPoint;

    .line 33
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mapquest/android/maps/CircleOverlay;->paint:Landroid/graphics/Paint;

    .line 37
    return-void
.end method

.method public setRadiusMeters(D)V
    .registers 4

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusPixels:I

    .line 47
    return-void
.end method

.method public setRadiusPixels(I)V
    .registers 4

    .prologue
    .line 40
    iput p1, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusPixels:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/CircleOverlay;->radiusMeters:D

    .line 42
    return-void
.end method
