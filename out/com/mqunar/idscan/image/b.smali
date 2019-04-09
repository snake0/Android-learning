.class public final Lcom/mqunar/idscan/image/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 8

    const/4 v1, 0x0

    const/16 v6, 0xa

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_56

    move v3, v0

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v3, v0, :cond_2a

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v6, :cond_2a

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_12

    :cond_2a
    add-int/lit8 v2, v3, 0x1

    :goto_2c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_43

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v6, :cond_43

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_43
    sub-int v0, v2, v3

    if-lt v0, v6, :cond_54

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v3, 0x1

    add-int/lit8 v5, v2, -0x1

    aput v5, v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_54
    move v0, v2

    goto :goto_9

    :cond_56
    return-object v4
.end method

.method private static a([I[ILjava/util/List;[I[II)Ljava/util/List;
    .registers 30

    new-instance v21, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object v6, v5

    move-object v5, v4

    :goto_15
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_132

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    :try_start_21
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v4, v1, v2, v3}, Lcom/mqunar/idscan/image/b;->a([I[I[I[II)Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/mqunar/idscan/image/b;->c(Ljava/util/List;)[I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_30} :catch_9c

    move-result-object v9

    :try_start_31
    array-length v6, v9

    if-nez v6, :cond_37

    move-object/from16 v4, v21

    :goto_36
    return-object v4

    :cond_37
    const/4 v6, 0x1

    aget v6, v4, v6

    const/4 v10, 0x0

    aget v7, v4, v10

    sub-int/2addr v6, v7

    add-int/lit8 v7, v6, 0x1

    const/4 v6, 0x1

    aget v6, v9, v6

    const/4 v10, 0x0

    aget v8, v9, v10

    sub-int/2addr v6, v8

    add-int/lit8 v8, v6, 0x1

    mul-int v6, v7, v8

    new-array v6, v6, [I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4d} :catch_136

    const v5, -0x777778

    :try_start_50
    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([II)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_13e

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    :goto_57
    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_59
    aget v5, p4, v5

    const/4 v9, 0x0

    aget v9, p3, v9

    add-int/2addr v5, v9

    const/4 v9, 0x0

    aget v9, v20, v9

    add-int/2addr v5, v9

    move v10, v5

    :goto_64
    const/4 v5, 0x0

    aget v5, p4, v5

    const/4 v9, 0x0

    aget v9, p3, v9

    add-int/2addr v5, v9

    const/4 v9, 0x1

    aget v9, v20, v9

    add-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    if-ge v10, v5, :cond_b3

    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v9, 0x0

    aget v9, v4, v9

    add-int/2addr v5, v9

    move v9, v5

    :goto_7b
    const/4 v5, 0x2

    aget v5, p4, v5

    const/4 v11, 0x1

    aget v11, v4, v11

    add-int/2addr v5, v11

    add-int/lit8 v5, v5, 0x1

    if-ge v9, v5, :cond_ab

    mul-int v5, v10, p5

    add-int/2addr v5, v9

    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v5, v11, :cond_141

    add-int/lit8 v5, v6, 0x1

    mul-int v11, v10, p5

    add-int/2addr v11, v9

    aget v11, p1, v11

    aput v11, v19, v6
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_97} :catch_af

    :goto_97
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v5

    goto :goto_7b

    :catch_9c
    move-exception v9

    move-object/from16 v23, v9

    move-object v9, v6

    move-object v6, v5

    move-object/from16 v5, v23

    :goto_a3
    invoke-static {v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    move-object/from16 v19, v6

    move-object/from16 v20, v9

    goto :goto_57

    :cond_ab
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_64

    :catch_af
    move-exception v4

    invoke-static {v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    :cond_b3
    :try_start_b3
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static/range {v19 .. v19}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v5, 0x41e00000    # 28.0f

    int-to-float v6, v7

    div-float/2addr v5, v6

    const/high16 v6, 0x41e00000    # 28.0f

    int-to-float v10, v8

    div-float/2addr v6, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    new-array v10, v5, [I

    const/4 v11, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v9 .. v16}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v5, 0x1c

    const/16 v6, 0x1c

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v13, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1c

    div-int/lit8 v15, v5, 0x2

    const/16 v16, 0x0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    move-object v12, v10

    invoke-virtual/range {v11 .. v18}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_128} :catch_12e

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    goto/16 :goto_15

    :catch_12e
    move-exception v4

    invoke-static {v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    :cond_132
    move-object/from16 v4, v21

    goto/16 :goto_36

    :catch_136
    move-exception v6

    move-object/from16 v23, v6

    move-object v6, v5

    move-object/from16 v5, v23

    goto/16 :goto_a3

    :catch_13e
    move-exception v5

    goto/16 :goto_a3

    :cond_141
    move v5, v6

    goto/16 :goto_97
.end method

.method private static a([I[I[I[II)Ljava/util/List;
    .registers 14

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aget v0, p3, v3

    aget v1, p2, v3

    add-int/2addr v0, v1

    :goto_d
    aget v1, p3, v3

    aget v2, p2, v5

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_41

    aget v1, p3, v8

    aget v2, p1, v3

    add-int/2addr v1, v2

    move v2, v3

    :goto_1c
    aget v4, p3, v8

    aget v7, p1, v5

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_37

    mul-int v4, v0, p4

    add-int/2addr v4, v1

    aget v4, p0, v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-nez v4, :cond_35

    move v4, v5

    :goto_31
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_35
    move v4, v3

    goto :goto_31

    :cond_37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_41
    return-object v6
.end method

.method public static a([I[I[II)[Ljava/util/List;
    .registers 16

    const/16 v10, 0x2c

    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aget v0, p2, v6

    :goto_d
    aget v1, p2, v7

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_46

    aget v1, p2, v11

    move v2, v6

    :goto_16
    const/4 v3, 0x3

    aget v3, p2, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_3c

    mul-int v3, v0, p3

    add-int/2addr v3, v1

    if-ltz v3, :cond_25

    array-length v8, p0

    if-lt v3, v8, :cond_2a

    :cond_25
    move-object v0, v4

    :goto_26
    if-nez v0, :cond_48

    move-object v0, v4

    :goto_29
    return-object v0

    :cond_2a
    mul-int v3, v0, p3

    add-int/2addr v3, v1

    aget v3, p0, v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-nez v3, :cond_3a

    move v3, v7

    :goto_36
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_3a
    move v3, v6

    goto :goto_36

    :cond_3c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_46
    move-object v0, v5

    goto :goto_26

    :cond_48
    invoke-static {v0}, Lcom/mqunar/idscan/image/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v11, :cond_54

    move-object v0, v4

    goto :goto_29

    :cond_54
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {p0, v0, p2, p3}, Lcom/mqunar/idscan/image/b;->b([I[I[II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {p0, v0, p2, p3}, Lcom/mqunar/idscan/image/b;->b([I[I[II)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/mqunar/idscan/image/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0}, Lcom/mqunar/idscan/image/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_7c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v10, :cond_7e

    :cond_7c
    move-object v0, v4

    goto :goto_29

    :cond_7e
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mqunar/idscan/image/b;->a([I[ILjava/util/List;[I[II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, v9

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/mqunar/idscan/image/b;->a([I[ILjava/util/List;[I[II)Ljava/util/List;

    move-result-object v1

    new-array v0, v11, [Ljava/util/List;

    aput-object v10, v0, v6

    aput-object v1, v0, v7

    goto :goto_29
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .registers 8

    const/4 v1, 0x0

    const/4 v6, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_5f

    move v3, v0

    :goto_11
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v3, v0, :cond_29

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v6, :cond_29

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_11

    :cond_29
    add-int/lit8 v2, v3, 0x1

    :goto_2b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_42

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v6, :cond_42

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_42
    sub-int v0, v2, v3

    const/4 v5, 0x4

    if-lt v0, v5, :cond_5d

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0x2c

    if-ge v0, v5, :cond_5d

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit8 v3, v3, -0x2

    aput v3, v0, v1

    add-int/lit8 v3, v2, 0x1

    aput v3, v0, v6

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5d
    move v0, v2

    goto :goto_8

    :cond_5f
    return-object v4
.end method

.method private static b([I[I[II)Ljava/util/List;
    .registers 12

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x2

    aget v0, p2, v0

    :goto_a
    const/4 v1, 0x3

    aget v1, p2, v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_45

    aget v1, p2, v3

    aget v2, p1, v3

    add-int/2addr v1, v2

    move v2, v3

    :goto_17
    aget v4, p2, v3

    aget v7, p1, v5

    add-int/2addr v4, v7

    add-int/lit8 v4, v4, 0x1

    if-ge v1, v4, :cond_32

    mul-int v4, v1, p3

    add-int/2addr v4, v0

    aget v4, p0, v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-nez v4, :cond_30

    move v4, v5

    :goto_2c
    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    move v4, v3

    goto :goto_2c

    :cond_32
    const/4 v1, 0x5

    if-gt v0, v1, :cond_46

    move v1, v3

    :goto_36
    add-int/lit8 v2, p3, -0x5

    if-lt v0, v2, :cond_3b

    move v1, v3

    :cond_3b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_45
    return-object v6

    :cond_46
    move v1, v2

    goto :goto_36
.end method

.method private static c(Ljava/util/List;)[I
    .registers 7

    const/4 v1, 0x0

    new-array v4, v1, [I

    move v0, v1

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_52

    move v3, v0

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v3, v0, :cond_25

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_25

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_d

    :cond_25
    add-int/lit8 v2, v3, 0x1

    :goto_27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt v2, v0, :cond_3e

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3e

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3e
    sub-int v0, v2, v3

    const/4 v5, 0x4

    if-lt v0, v5, :cond_50

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit8 v3, v3, -0x2

    aput v3, v0, v1

    const/4 v1, 0x1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    :goto_4f
    return-object v0

    :cond_50
    move v0, v2

    goto :goto_4

    :cond_52
    move-object v0, v4

    goto :goto_4f
.end method
