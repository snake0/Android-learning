.class Lcom/mapquest/android/maps/MapView$Reticle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static paint:Landroid/graphics/Paint;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1707
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1708
    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/Point;)V
    .registers 11

    .prologue
    .line 1711
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    .line 1712
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v6, v1, 0xa

    .line 1713
    iget v1, p2, Landroid/graphics/Point;->x:I

    shr-int/lit8 v2, v6, 0x1

    sub-int v7, v1, v2

    .line 1714
    iget v1, p2, Landroid/graphics/Point;->y:I

    shr-int/lit8 v2, v6, 0x1

    sub-int v4, v1, v2

    .line 1715
    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-static {}, Lcom/mapquest/android/maps/MapView$Reticle;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1716
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    int-to-float v2, v4

    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    add-int v0, v4, v6

    int-to-float v4, v0

    sget-object v5, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1717
    int-to-float v1, v7

    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    add-int v0, v7, v6

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-float v4, v0

    sget-object v5, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1718
    return-void
.end method

.method private static getPaint()Landroid/graphics/Paint;
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1721
    sget-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_37

    .line 1722
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    .line 1723
    sget-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1724
    sget-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1725
    sget-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1726
    sget-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1727
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_3a

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 1728
    sget-object v1, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 1731
    :cond_37
    sget-object v0, Lcom/mapquest/android/maps/MapView$Reticle;->paint:Landroid/graphics/Paint;

    return-object v0

    .line 1727
    :array_3a
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method
