.class public abstract Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapquest/android/maps/TouchEventHandler$MultiTouchHandler;


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/TouchEventHandler;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/TouchEventHandler;Lcom/mapquest/android/maps/MapView;)V
    .registers 3

    .prologue
    .line 456
    iput-object p1, p0, Lcom/mapquest/android/maps/TouchEventHandler$AbstractMultiTouchHandler;->this$0:Lcom/mapquest/android/maps/TouchEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method


# virtual methods
.method protected copy(Ljava/util/ArrayList;[Landroid/graphics/PointF;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;[",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_12

    .line 462
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 465
    :cond_12
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    array-length v0, p2

    if-ge v1, v0, :cond_33

    .line 466
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    aget-object v2, p2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 467
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    aget-object v2, p2, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 465
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 470
    :cond_33
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_39
    array-length v1, p2

    if-lt v0, v1, :cond_42

    .line 471
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 470
    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    .line 474
    :cond_42
    return-void
.end method

.method public getCenterPoint(Ljava/util/ArrayList;)Landroid/graphics/PointF;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 477
    .line 481
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    .line 486
    :cond_b
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 487
    add-float v0, v4, v5

    div-float/2addr v0, v8

    .line 488
    add-float/2addr v1, v3

    div-float/2addr v1, v8

    .line 489
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2

    .line 492
    :cond_1c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 493
    iget v7, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v7, v5, v7

    if-gtz v7, :cond_2c

    cmpl-float v7, v5, v2

    if-nez v7, :cond_2e

    .line 494
    :cond_2c
    iget v5, v0, Landroid/graphics/PointF;->x:F

    .line 497
    :cond_2e
    iget v7, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_38

    cmpl-float v7, v4, v2

    if-nez v7, :cond_3a

    .line 498
    :cond_38
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 501
    :cond_3a
    iget v7, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v3, v7

    if-gtz v7, :cond_44

    cmpl-float v7, v3, v2

    if-nez v7, :cond_46

    .line 502
    :cond_44
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 504
    :cond_46
    iget v7, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_50

    cmpl-float v7, v1, v2

    if-nez v7, :cond_b

    .line 506
    :cond_50
    iget v0, v0, Landroid/graphics/PointF;->y:F

    move v1, v0

    .line 507
    goto :goto_b
.end method
