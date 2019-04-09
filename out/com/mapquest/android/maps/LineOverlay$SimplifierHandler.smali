.class Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field static final SIMPLIFY:I


# instance fields
.field private mapView:Lcom/mapquest/android/maps/MapView;

.field reuse:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<[I>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mapquest/android/maps/LineOverlay;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/LineOverlay;Lcom/mapquest/android/maps/MapView;Landroid/os/Looper;)V
    .registers 5

    .prologue
    .line 360
    iput-object p1, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    .line 361
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 357
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->reuse:Ljava/util/Stack;

    .line 362
    iput-object p2, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 363
    return-void
.end method

.method private getIndices(II)[I
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 378
    .line 380
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->reuse:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 381
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    aput p2, v0, v2

    .line 388
    :goto_11
    return-object v0

    .line 383
    :cond_12
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->reuse:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 384
    aput p1, v0, v1

    .line 385
    aput p2, v0, v2

    goto :goto_11
.end method

.method private simplify(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;II)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 392
    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    .line 394
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->getIndices(II)[I

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 403
    :cond_2a
    :goto_2a
    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 404
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 405
    const/4 v3, -0x1

    .line 406
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    .line 408
    :goto_39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 409
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 410
    if-eq v3, v4, :cond_d4

    .line 411
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_56
    move v4, v3

    .line 414
    goto :goto_39

    .line 419
    :cond_58
    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    .line 420
    const/4 v4, 0x0

    aget v12, v3, v4

    .line 421
    const/4 v4, 0x1

    aget v13, v3, v4

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->reuse:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    add-int/lit8 v3, v12, 0x1

    if-ge v3, v13, :cond_2a

    .line 425
    const/4 v8, 0x0

    .line 426
    const/4 v7, 0x0

    .line 427
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 428
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 430
    add-int/lit8 v6, v12, 0x1

    :goto_85
    if-ge v6, v13, :cond_ab

    .line 431
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 432
    invoke-static {v5, v3, v4, v11}, Lcom/mapquest/android/maps/Util;->closestPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 433
    iget v14, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v15, v11, Landroid/graphics/Point;->x:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v14, v5, v15, v0}, Lcom/mapquest/android/maps/Util;->distanceSquared(IIII)I

    move-result v5

    .line 434
    if-le v5, v8, :cond_d1

    move v7, v5

    move v5, v6

    .line 430
    :goto_a6
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    move v7, v5

    goto :goto_85

    .line 440
    :cond_ab
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->epsilon:I
    invoke-static {v3}, Lcom/mapquest/android/maps/LineOverlay;->access$700(Lcom/mapquest/android/maps/LineOverlay;)I

    move-result v3

    if-le v8, v3, :cond_2a

    .line 441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v7}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->getIndices(II)[I

    move-result-object v3

    .line 443
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->getIndices(II)[I

    move-result-object v4

    .line 444
    invoke-virtual {v9, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-virtual {v9, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2a

    .line 416
    :cond_d0
    return-void

    :cond_d1
    move v5, v7

    move v7, v8

    goto :goto_a6

    :cond_d4
    move v3, v4

    goto :goto_56
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .prologue
    .line 366
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    .line 373
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 375
    return-void

    .line 368
    :pswitch_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->points:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$400(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$300(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # getter for: Lcom/mapquest/android/maps/LineOverlay;->data:Ljava/util/List;
    invoke-static {v0}, Lcom/mapquest/android/maps/LineOverlay;->access$300(Lcom/mapquest/android/maps/LineOverlay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->simplify(Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;II)V

    .line 370
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->this$0:Lcom/mapquest/android/maps/LineOverlay;

    # setter for: Lcom/mapquest/android/maps/LineOverlay;->simplified:Ljava/util/List;
    invoke-static {v0, v3}, Lcom/mapquest/android/maps/LineOverlay;->access$602(Lcom/mapquest/android/maps/LineOverlay;Ljava/util/List;)Ljava/util/List;

    .line 371
    iget-object v0, p0, Lcom/mapquest/android/maps/LineOverlay$SimplifierHandler;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->postInvalidate()V

    goto :goto_5

    .line 366
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method
