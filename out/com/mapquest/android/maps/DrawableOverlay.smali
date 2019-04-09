.class public Lcom/mapquest/android/maps/DrawableOverlay;
.super Lcom/mapquest/android/maps/Overlay;
.source "SourceFile"


# instance fields
.field private boundingBox:Lcom/mapquest/android/maps/BoundingBox;

.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mapquest/android/maps/Overlay;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mapquest/android/maps/DrawableOverlay;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p2, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 21
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_16

    .line 112
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_16
    iput-object v1, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 116
    iput-object v1, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 117
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 24
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7f

    if-nez p3, :cond_7f

    .line 26
    :try_start_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5d

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2f

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_47

    .line 31
    :cond_2f
    const/4 v6, 0x1

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 33
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move v0, v6

    .line 36
    :cond_47
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v1

    iget-object v2, p2, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p2, Lcom/mapquest/android/maps/MapView;->focalPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 37
    if-eqz v0, :cond_5d

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 42
    :cond_5d
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-static {v0, p2}, Lcom/mapquest/android/maps/Util;->createOriginRectFromBoundingBox(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;

    move-result-object v1

    .line 43
    invoke-virtual {p2}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    check-cast v0, Lcom/mapquest/android/maps/RotatableProjection;

    .line 44
    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/RotatableProjection;->offsetToFocalPoint(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 45
    invoke-static {v1, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 46
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_7c
    .catchall {:try_start_b .. :try_end_7c} :catchall_80

    .line 50
    :cond_7c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    :cond_7f
    return-void

    .line 50
    :catchall_80
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public getBoundingBox()Lcom/mapquest/android/maps/BoundingBox;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    iget-object v2, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-virtual {v2, p1}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 86
    iget-object v2, p0, Lcom/mapquest/android/maps/DrawableOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    if-eqz v2, :cond_22

    .line 87
    iget-object v2, p0, Lcom/mapquest/android/maps/DrawableOverlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    invoke-interface {v2, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTapListener;->onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)V

    move v2, v1

    .line 91
    :goto_18
    if-nez v2, :cond_20

    invoke-virtual {p0, p2}, Lcom/mapquest/android/maps/DrawableOverlay;->onTap(Lcom/mapquest/android/maps/MapView;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    move v0, v1

    .line 94
    :cond_21
    return v0

    :cond_22
    move v2, v0

    goto :goto_18
.end method

.method public onTap(Lcom/mapquest/android/maps/MapView;)Z
    .registers 3

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 6

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    if-eqz v0, :cond_29

    .line 100
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

    .line 101
    iget-object v1, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/BoundingBox;->contains(Lcom/mapquest/android/maps/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 102
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    invoke-interface {v0, p1, p2}, Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;->onTouch(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)V

    .line 103
    const/4 v0, 0x1

    .line 107
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/BoundingBox;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_19

    .line 58
    iget-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 62
    :cond_19
    if-eqz p1, :cond_23

    .line 63
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 64
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 65
    iput-object p1, p0, Lcom/mapquest/android/maps/DrawableOverlay;->drawable:Landroid/graphics/drawable/Drawable;

    .line 68
    :cond_23
    iput-object p2, p0, Lcom/mapquest/android/maps/DrawableOverlay;->boundingBox:Lcom/mapquest/android/maps/BoundingBox;

    .line 69
    return-void
.end method
