.class public Lcom/mapquest/android/maps/RotatableIconOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# static fields
.field public static final ANCHOR_BOTTOM_CENTER:I = 0x4

.field public static final ANCHOR_CENTER:I = 0x0

.field public static final ANCHOR_CENTER_LEFT:I = 0x1

.field public static final ANCHOR_CENTER_RIGHT:I = 0x2

.field public static final ANCHOR_TOP_CENTER:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final TOUCH_TOLERANCE:I = 0xa


# instance fields
.field private DEBUG:Z

.field private alignment:I

.field private clipBounds:Landroid/graphics/RectF;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private imageRegion:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private paint:Landroid/graphics/Paint;

.field private point:Lcom/mapquest/android/maps/GeoPoint;

.field private rotateWithMap:Z

.field private rotation:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/mapquest/android/maps/RotatableIconOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/RotatableIconOverlay;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 32
    const/16 v0, 0x23

    invoke-direct {p0, p1, p2, v0}, Lcom/mapquest/android/maps/RotatableIconOverlay;-><init>(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/drawable/Drawable;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/drawable/Drawable;I)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->DEBUG:Z

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->clipBounds:Landroid/graphics/RectF;

    .line 39
    iput-object p1, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 40
    iput-object p2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->paint:Landroid/graphics/Paint;

    .line 42
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 44
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 45
    iput p3, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->alignment:I

    .line 46
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->matrix:Landroid/graphics/Matrix;

    .line 47
    invoke-static {p2, p3}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 48
    return-void
.end method

.method private intersects(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    iget-object v3, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->point:Lcom/mapquest/android/maps/GeoPoint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v2, v3, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 160
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v2

    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v2, p1, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 162
    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 163
    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 164
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 169
    iput-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 170
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 9

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    .line 85
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->DEBUG:Z

    if-eqz v0, :cond_6

    .line 89
    :cond_6
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->point:Lcom/mapquest/android/maps/GeoPoint;

    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v1, v2, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 90
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 91
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 92
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->clipBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 93
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->imageRegion:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->clipBounds:Landroid/graphics/RectF;

    invoke-static {v0, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 95
    :try_start_3c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 96
    iget v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->rotation:F

    rem-float/2addr v0, v4

    .line 97
    iget-boolean v2, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->rotateWithMap:Z

    if-eqz v2, :cond_4c

    .line 98
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v2

    add-float/2addr v0, v2

    .line 99
    rem-float/2addr v0, v4

    .line 102
    :cond_4c
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5d

    .line 104
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 107
    :cond_5d
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_66

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 115
    :cond_65
    :goto_65
    return-void

    .line 109
    :catchall_66
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0

    .line 111
    :cond_6b
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->DEBUG:Z

    if-eqz v0, :cond_65

    goto :goto_65
.end method

.method public getAligment()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->alignment:I

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPoint()Lcom/mapquest/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->point:Lcom/mapquest/android/maps/GeoPoint;

    return-object v0
.end method

.method public isRotateWithMap()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->rotateWithMap:Z

    return v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v0, :cond_15

    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/RotatableIconOverlay;->intersects(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 119
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    .line 124
    const/4 v0, 0x1

    .line 130
    :goto_14
    return v0

    .line 126
    :cond_15
    iget-boolean v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->DEBUG:Z

    if-eqz v0, :cond_19

    .line 130
    :cond_19
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_23

    .line 136
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

    .line 137
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/RotatableIconOverlay;->intersects(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 138
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 139
    const/4 v0, 0x1

    .line 143
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    if-eqz v0, :cond_23

    .line 148
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

    .line 149
    invoke-direct {p0, v0, p2}, Lcom/mapquest/android/maps/RotatableIconOverlay;->intersects(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 150
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 151
    const/4 v0, 0x1

    .line 155
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setAlignment(I)V
    .registers 3

    .prologue
    .line 73
    iput p1, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->alignment:I

    .line 74
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_b
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iget v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->alignment:I

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 65
    return-void
.end method

.method public setPoint(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->point:Lcom/mapquest/android/maps/GeoPoint;

    .line 56
    return-void
.end method

.method public setRotateWithMap(Z)V
    .registers 2

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->rotateWithMap:Z

    .line 178
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .prologue
    .line 68
    iput p1, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->rotation:F

    .line 69
    iget-object v0, p0, Lcom/mapquest/android/maps/RotatableIconOverlay;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 70
    return-void
.end method
