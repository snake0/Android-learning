.class public Lcom/mapquest/android/maps/PolygonOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field private linePaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointPaint:Landroid/graphics/Paint;

.field private polygon:Lcom/mapquest/android/maps/Polygon;

.field private showPoints:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/mapquest/android/maps/PolygonOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/PolygonOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->showPoints:Z

    .line 28
    iput-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->DEBUG:Z

    .line 31
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/PolygonOverlay;->init(Landroid/graphics/Paint;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 27
    iput-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->showPoints:Z

    .line 28
    iput-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->DEBUG:Z

    .line 35
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/PolygonOverlay;->init(Landroid/graphics/Paint;)V

    .line 36
    return-void
.end method

.method private contains(Lcom/mapquest/android/maps/GeoPoint;)Z
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/Polygon;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method private createPointPaint()Landroid/graphics/Paint;
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_26

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 140
    iget-object v1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 142
    iget-object v1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 145
    :goto_25
    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    goto :goto_25
.end method

.method private init(Landroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 39
    if-eqz p1, :cond_4

    .line 40
    iput-object p1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    .line 43
    :cond_4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->path:Landroid/graphics/Path;

    .line 44
    new-instance v0, Lcom/mapquest/android/maps/Polygon;

    invoke-direct {v0}, Lcom/mapquest/android/maps/Polygon;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    .line 45
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    .line 188
    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 189
    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->path:Landroid/graphics/Path;

    .line 190
    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    .line 191
    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 192
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 87
    :cond_5
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 89
    iget-object v3, p0, Lcom/mapquest/android/maps/PolygonOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-static {v3, p2}, Lcom/mapquest/android/maps/Util;->createRectFromBoundingBox(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;

    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    .line 91
    neg-int v5, v4

    neg-int v4, v4

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 92
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 93
    invoke-virtual {v4, v3, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    .line 94
    iget-object v3, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/Polygon;->getData()Ljava/util/List;

    move-result-object v3

    .line 95
    if-eqz v0, :cond_a7

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 97
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 98
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 99
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    invoke-interface {v2, v0, v4}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 100
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 101
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 104
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/GeoPoint;

    .line 106
    invoke-interface {v2, v0, v4}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 107
    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    .line 108
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 109
    if-nez v1, :cond_8f

    .line 110
    iget-object v6, p0, Lcom/mapquest/android/maps/PolygonOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    :goto_70
    iget-boolean v6, p0, Lcom/mapquest/android/maps/PolygonOverlay;->showPoints:Z

    if-eqz v6, :cond_8b

    .line 116
    iget-object v6, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_7e

    .line 117
    invoke-direct {p0}, Lcom/mapquest/android/maps/PolygonOverlay;->createPointPaint()Landroid/graphics/Paint;

    move-result-object v6

    iput-object v6, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 120
    :cond_7e
    iget-object v6, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v0, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 104
    :cond_8b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_53

    .line 112
    :cond_8f
    iget-object v6, p0, Lcom/mapquest/android/maps/PolygonOverlay;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_70

    .line 124
    :cond_95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    iget-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->DEBUG:Z

    if-eqz v0, :cond_9c

    .line 129
    :cond_9c
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 130
    iget-boolean v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->DEBUG:Z

    if-eqz v0, :cond_a7

    .line 135
    :cond_a7
    return-void
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/PolygonOverlay;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 152
    const/4 v0, 0x1

    .line 154
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_23

    .line 160
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

    .line 161
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/PolygonOverlay;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 162
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 163
    const/4 v0, 0x1

    .line 167
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    if-eqz v0, :cond_23

    .line 172
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

    .line 173
    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/PolygonOverlay;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 174
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 175
    const/4 v0, 0x1

    .line 179
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setBoundingBox(Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 80
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/Polygon;->setData(Ljava/util/List;)V

    .line 62
    invoke-static {p1}, Lcom/mapquest/android/maps/BoundingBox;->calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 63
    return-void
.end method

.method public setData(Ljava/util/List;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;",
            "Lcom/mapquest/android/maps/BoundingBox;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/Polygon;->setData(Ljava/util/List;)V

    .line 49
    iput-object p2, p0, Lcom/mapquest/android/maps/PolygonOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 50
    return-void
.end method

.method public setData(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->polygon:Lcom/mapquest/android/maps/Polygon;

    invoke-virtual {v0, p1}, Lcom/mapquest/android/maps/Polygon;->setData(Ljava/util/List;)V

    .line 54
    if-eqz p2, :cond_d

    .line 55
    invoke-static {p1}, Lcom/mapquest/android/maps/BoundingBox;->calculateBoundingBoxGeoPoint(Ljava/util/List;)Lcom/mapquest/android/maps/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/PolygonOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 58
    :cond_d
    return-void
.end method

.method public setLinePaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->linePaint:Landroid/graphics/Paint;

    .line 67
    return-void
.end method

.method public setPointPaint(Landroid/graphics/Paint;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 76
    return-void
.end method

.method public setShowPoints(ZLandroid/graphics/Paint;)V
    .registers 3

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/mapquest/android/maps/PolygonOverlay;->showPoints:Z

    .line 71
    iput-object p2, p0, Lcom/mapquest/android/maps/PolygonOverlay;->pointPaint:Landroid/graphics/Paint;

    .line 72
    return-void
.end method
