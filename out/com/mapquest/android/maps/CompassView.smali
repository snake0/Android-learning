.class Lcom/mapquest/android/maps/CompassView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private bg:Landroid/graphics/drawable/BitmapDrawable;

.field private context:Landroid/content/Context;

.field private needle:Landroid/graphics/drawable/BitmapDrawable;

.field private rotation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/CompassView;->init(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/CompassView;->init(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 48
    const-string v0, "icn_compass_needle"

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/CompassView;->needle:Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    const-string v0, "icn_compass_bg"

    invoke-static {p1, v0}, Lcom/mapquest/android/maps/Util;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/CompassView;->bg:Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    iget-object v0, p0, Lcom/mapquest/android/maps/CompassView;->needle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v0, p0, Lcom/mapquest/android/maps/CompassView;->bg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v0, v1}, Lcom/mapquest/android/maps/Overlay;->setAlignment(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/mapquest/android/maps/CompassView;->getWidth()I

    move-result v0

    .line 27
    invoke-virtual {p0}, Lcom/mapquest/android/maps/CompassView;->getHeight()I

    move-result v1

    .line 30
    :try_start_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget-object v0, p0, Lcom/mapquest/android/maps/CompassView;->bg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    iget v0, p0, Lcom/mapquest/android/maps/CompassView;->rotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 34
    iget-object v0, p0, Lcom/mapquest/android/maps/CompassView;->needle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_27

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 39
    return-void

    .line 36
    :catchall_27
    move-exception v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v0
.end method

.method protected onMeasure(II)V
    .registers 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mapquest/android/maps/CompassView;->bg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/CompassView;->needle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/mapquest/android/maps/CompassView;->bg:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/mapquest/android/maps/CompassView;->needle:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 44
    invoke-virtual {p0, v0, v1}, Lcom/mapquest/android/maps/CompassView;->setMeasuredDimension(II)V

    .line 45
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .prologue
    .line 55
    iput p1, p0, Lcom/mapquest/android/maps/CompassView;->rotation:F

    .line 56
    invoke-virtual {p0}, Lcom/mapquest/android/maps/CompassView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_b

    .line 57
    invoke-virtual {p0}, Lcom/mapquest/android/maps/CompassView;->invalidate()V

    .line 60
    :cond_b
    return-void
.end method
