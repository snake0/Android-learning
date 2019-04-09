.class public abstract Lcom/mapquest/android/maps/Overlay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOTTOM:I = 0x20

.field public static final CENTER:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f

.field public static final TOP:I = 0x10


# instance fields
.field private key:Ljava/lang/String;

.field protected tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

.field protected touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

.field protected trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

.field private zIndex:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/Overlay;->key:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/mapquest/android/maps/Overlay;->zIndex:I

    .line 27
    return-void
.end method

.method protected static drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .registers 7

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 76
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_f

    .line 88
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    .line 91
    return-void

    .line 88
    :catchall_f
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method public static setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_6c

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 32
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 33
    shr-int/lit8 v0, v7, 0x1

    neg-int v5, v0

    .line 34
    add-int v3, v5, v7

    .line 35
    shr-int/lit8 v0, v4, 0x1

    neg-int v2, v0

    .line 36
    add-int v0, v2, v4

    move v6, v3

    move v8, v5

    move v5, v2

    move v3, v0

    move v0, v1

    .line 39
    :goto_1a
    if-eqz p1, :cond_69

    add-int/lit8 v2, v0, 0x1

    const/4 v9, 0x3

    if-ge v0, v9, :cond_69

    .line 40
    and-int/lit8 v0, p1, 0x1

    if-lez v0, :cond_30

    .line 41
    shr-int/lit8 v0, v7, 0x1

    neg-int v6, v0

    .line 42
    add-int v0, v6, v7

    .line 43
    xor-int/lit8 p1, p1, 0x1

    move v8, v6

    move v6, v0

    move v0, v2

    goto :goto_1a

    .line 44
    :cond_30
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_3f

    .line 45
    shr-int/lit8 v0, v4, 0x1

    neg-int v3, v0

    .line 46
    add-int v0, v3, v4

    .line 47
    xor-int/lit8 p1, p1, 0x2

    move v5, v3

    move v3, v0

    move v0, v2

    goto :goto_1a

    .line 48
    :cond_3f
    and-int/lit8 v0, p1, 0x20

    if-lez v0, :cond_4a

    .line 49
    neg-int v0, v4

    .line 51
    xor-int/lit8 p1, p1, 0x20

    move v3, v1

    move v5, v0

    move v0, v2

    goto :goto_1a

    .line 52
    :cond_4a
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_54

    .line 55
    xor-int/lit8 p1, p1, 0x10

    move v0, v2

    move v3, v4

    move v5, v1

    goto :goto_1a

    .line 56
    :cond_54
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_5f

    .line 58
    neg-int v0, v7

    .line 59
    xor-int/lit8 p1, p1, 0x8

    move v6, v1

    move v8, v0

    move v0, v2

    goto :goto_1a

    .line 60
    :cond_5f
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_6d

    .line 63
    xor-int/lit8 p1, p1, 0x4

    move v0, v2

    move v6, v7

    move v8, v1

    goto :goto_1a

    .line 67
    :cond_69
    invoke-virtual {p0, v8, v5, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    :cond_6c
    return-object p0

    :cond_6d
    move v0, v2

    goto :goto_1a
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .prologue
    .line 134
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V
    .registers 4

    .prologue
    .line 106
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;ZJ)Z
    .registers 7

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/mapquest/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/mapquest/android/maps/MapView;Z)V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mapquest/android/maps/Overlay;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/mapquest/android/maps/Overlay;->zIndex:I

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 5

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 5

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/mapquest/android/maps/MapView;)Z
    .registers 4

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mapquest/android/maps/Overlay;->key:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setTapListener(Lcom/mapquest/android/maps/Overlay$OverlayTapListener;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mapquest/android/maps/Overlay;->tapListener:Lcom/mapquest/android/maps/Overlay$OverlayTapListener;

    .line 95
    return-void
.end method

.method public setTouchEventListener(Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mapquest/android/maps/Overlay;->touchListener:Lcom/mapquest/android/maps/Overlay$OverlayTouchEventListener;

    .line 99
    return-void
.end method

.method public setTrackballEventListener(Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mapquest/android/maps/Overlay;->trackballListener:Lcom/mapquest/android/maps/Overlay$OverlayTrackballEventListener;

    .line 103
    return-void
.end method

.method public setZIndex(I)V
    .registers 2

    .prologue
    .line 141
    iput p1, p0, Lcom/mapquest/android/maps/Overlay;->zIndex:I

    .line 142
    return-void
.end method
