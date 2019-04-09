.class Lcom/mapquest/android/maps/RotatableProjection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/ProjectionX;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field focalPointOnMap:Landroid/graphics/Point;

.field private mapPointOut:[F

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private projection:Lcom/mapquest/android/maps/ProjectionX;

.field private rectF:Landroid/graphics/RectF;

.field private reverseMapPointOut:[F

.field private reverseRotateMatrix:Landroid/graphics/Matrix;

.field private rotateMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/mapquest/android/maps/RotatableProjection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/RotatableProjection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Lcom/mapquest/android/maps/Projection;)V
    .registers 5

    .prologue
    const/4 v1, 0x2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapPointOut:[F

    .line 15
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPointOut:[F

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->focalPointOnMap:Landroid/graphics/Point;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->rectF:Landroid/graphics/RectF;

    .line 20
    iput-object p1, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 21
    check-cast p2, Lcom/mapquest/android/maps/ProjectionX;

    iput-object p2, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->rotateMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseRotateMatrix:Landroid/graphics/Matrix;

    .line 24
    return-void
.end method

.method private arrayToPoint([FLandroid/graphics/Point;)V
    .registers 5

    .prologue
    .line 42
    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    float-to-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 43
    return-void
.end method


# virtual methods
.method public calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;)I
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ProjectionX;->calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;)I

    move-result v0

    return v0
.end method

.method public calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I
    .registers 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    invoke-interface {v0, p1, p2, p3}, Lcom/mapquest/android/maps/ProjectionX;->calculateZoomLevel(Lcom/mapquest/android/maps/BoundingBox;II)I

    move-result v0

    return v0
.end method

.method public deScalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 9

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 135
    if-nez p3, :cond_32

    .line 136
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 141
    :goto_9
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    .line 142
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v3, v3, Lcom/mapquest/android/maps/MapView;->currentScale:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 143
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v2, v2, Lcom/mapquest/android/maps/MapView;->currentScale:F

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 144
    return-object p3

    .line 138
    :cond_32
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_9
.end method

.method public fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;
    .registers 6

    .prologue
    .line 179
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 180
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/RotatableProjection;->mapPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v0}, Lcom/mapquest/android/maps/ProjectionX;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    .line 182
    return-object v0
.end method

.method public getProjection()Lcom/mapquest/android/maps/Projection;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    return-object v0
.end method

.method public getScaleFactor(I)I
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ProjectionX;->getScaleFactor(I)I

    move-result v0

    return v0
.end method

.method public getScreenFromGlobal(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ProjectionX;->getScreenFromGlobal(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 174
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 175
    return-object v0
.end method

.method public mapPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 7

    .prologue
    .line 52
    if-nez p3, :cond_33

    .line 53
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 58
    :goto_7
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2a

    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapPointOut:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 60
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapPointOut:[F

    const/4 v1, 0x1

    int-to-float v2, p2

    aput v2, v0, v1

    .line 61
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapPointOut:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 62
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapPointOut:[F

    invoke-direct {p0, v0, p3}, Lcom/mapquest/android/maps/RotatableProjection;->arrayToPoint([FLandroid/graphics/Point;)V

    .line 65
    :cond_2a
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, p3}, Lcom/mapquest/android/maps/RotatableProjection;->offsetFromFocalPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 66
    return-object v0

    .line 55
    :cond_33
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_7
.end method

.method public metersToEquatorPixels(F)F
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    invoke-interface {v0, p1}, Lcom/mapquest/android/maps/ProjectionX;->metersToEquatorPixels(F)F

    move-result v0

    return v0
.end method

.method offsetFromFocalPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 8

    .prologue
    .line 86
    if-nez p3, :cond_e

    .line 87
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 92
    :goto_7
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 93
    iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    .line 94
    if-nez v1, :cond_12

    .line 99
    :goto_d
    return-object p3

    .line 89
    :cond_e
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_7

    .line 97
    :cond_12
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 98
    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p3, Landroid/graphics/Point;->y:I

    goto :goto_d
.end method

.method offsetToFocalPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 8

    .prologue
    .line 104
    if-nez p3, :cond_e

    .line 105
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 110
    :goto_7
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 111
    iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    .line 112
    if-nez v1, :cond_12

    .line 117
    :goto_d
    return-object p3

    .line 107
    :cond_e
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_7

    .line 115
    :cond_12
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    add-int/2addr v2, p1

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 116
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    add-int/2addr v0, p2

    iput v0, p3, Landroid/graphics/Point;->y:I

    goto :goto_d
.end method

.method offsetToFocalPoint(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 123
    iget-object v1, v0, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    .line 124
    if-nez v1, :cond_7

    .line 130
    :goto_6
    return-object p1

    .line 127
    :cond_7
    iget v2, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    .line 128
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, v1, v0

    .line 129
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6
.end method

.method public reverseMapPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 8

    .prologue
    .line 70
    if-nez p3, :cond_7

    .line 71
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 74
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapquest/android/maps/RotatableProjection;->offsetToFocalPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_32

    .line 76
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPointOut:[F

    const/4 v2, 0x0

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aput v3, v1, v2

    .line 77
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPointOut:[F

    const/4 v2, 0x1

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    aput v3, v1, v2

    .line 78
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->rotateMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPointOut:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 79
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPointOut:[F

    invoke-direct {p0, v1, v0}, Lcom/mapquest/android/maps/RotatableProjection;->arrayToPoint([FLandroid/graphics/Point;)V

    .line 82
    :cond_32
    return-object v0
.end method

.method public rotateMapRect(Landroid/graphics/Rect;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 48
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 49
    return-void
.end method

.method public scalePoint(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 9

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 148
    if-nez p3, :cond_32

    .line 149
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 154
    :goto_9
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget-object v0, v0, Lcom/mapquest/android/maps/MapView;->scalePoint:Landroid/graphics/Point;

    .line 155
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v3, v3, Lcom/mapquest/android/maps/MapView;->currentScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p3, Landroid/graphics/Point;->x:I

    .line 156
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int v0, p2, v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableProjection;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v2, v2, Lcom/mapquest/android/maps/MapView;->currentScale:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p3, Landroid/graphics/Point;->y:I

    .line 157
    return-object p3

    .line 151
    :cond_32
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto :goto_9
.end method

.method public setRotate(FII)V
    .registers 9

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->rotateMatrix:Landroid/graphics/Matrix;

    .line 28
    iget-object v1, p0, Lcom/mapquest/android/maps/RotatableProjection;->reverseRotateMatrix:Landroid/graphics/Matrix;

    .line 29
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_13

    .line 30
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 31
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->focalPointOnMap:Landroid/graphics/Point;

    .line 39
    :goto_12
    return-void

    .line 34
    :cond_13
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 35
    neg-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    goto :goto_12
.end method

.method public toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableProjection;->projection:Lcom/mapquest/android/maps/ProjectionX;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/ProjectionX;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 191
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/mapquest/android/maps/RotatableProjection;->reverseMapPoint(IILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 192
    return-object v0
.end method
