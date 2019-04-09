.class public Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field public static bBmpChange:Z

.field public static bmp:Landroid/graphics/Bitmap;

.field public static buffer:[I

.field public static fontCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lmapsdkvi/com/gdi/bgl/android/java/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->bBmpChange:Z

    sput-object v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->bmp:Landroid/graphics/Bitmap;

    sput-object v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->buffer:[I

    sput-object v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized drawText(Ljava/lang/String;II[IIIIII)[I
    .registers 26

    const-class v8, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_6
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    if-eqz v9, :cond_14

    if-nez v10, :cond_19

    :cond_14
    const/4 v1, 0x0

    new-array v1, v1, [I
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_121

    :cond_17
    :goto_17
    monitor-exit v8

    return-object v1

    :cond_19
    :try_start_19
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getPhoneType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v2, "vivo X3L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const/16 p2, 0x0

    :cond_29
    invoke-virtual {v10}, Landroid/text/TextPaint;->reset()V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v0, p1

    int-to-float v1, v0

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v2, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    packed-switch p2, :pswitch_data_352

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_4e
    if-eqz p7, :cond_65

    move/from16 v0, p7

    int-to-float v1, v0

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_65
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    if-eqz p2, :cond_84

    sget-object v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    if-eqz v1, :cond_84

    sget-object v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmapsdkvi/com/gdi/bgl/android/java/a;

    if-eqz v1, :cond_84

    iget-object v1, v1, Lmapsdkvi/com/gdi/bgl/android/java/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_84
    move/from16 v0, p1

    int-to-float v1, v0

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/16 v1, 0x5c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_1a0

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v11

    double-to-int v1, v1

    iget v2, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v7

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    const/4 v7, 0x0

    aput v1, p3, v7

    const/4 v7, 0x1

    aput v2, p3, v7

    move-object/from16 v0, p3

    array-length v7, v0

    const/4 v11, 0x4

    if-ne v7, v11, :cond_f3

    int-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v1, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    int-to-double v13, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v1, v11

    int-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    int-to-double v13, v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v2, v11

    :cond_f3
    if-ne v4, v1, :cond_f7

    if-eq v3, v2, :cond_34e

    :cond_f7
    move v3, v1

    :goto_f8
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_104

    const/4 v1, 0x2

    aput v3, p3, v1

    const/4 v1, 0x3

    aput v2, p3, v1

    :cond_104
    if-lez v3, :cond_34b

    if-lez v2, :cond_34b

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_130

    const/4 v1, 0x0

    new-array v1, v1, [I

    goto/16 :goto_17

    :pswitch_115
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_11f
    .catchall {:try_start_19 .. :try_end_11f} :catchall_121

    goto/16 :goto_4e

    :catchall_121
    move-exception v1

    monitor-exit v8

    throw v1

    :pswitch_124
    :try_start_124
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4e

    :cond_130
    invoke-virtual {v9, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v1, v5

    :goto_134
    const/high16 v4, -0x1000000

    and-int v4, v4, p6

    if-nez v4, :cond_19a

    const v4, 0xffffff

    invoke-virtual {v9, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_140
    if-eqz p7, :cond_168

    if-eqz v9, :cond_168

    move/from16 v0, p7

    int-to-float v4, v0

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v4, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_168
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v4, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v16, v1

    move v1, v2

    move-object/from16 v2, v16

    :goto_181
    mul-int/2addr v1, v3

    new-array v1, v1, [I

    if-eqz v2, :cond_18d

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    :cond_18d
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_17

    :cond_19a
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_140

    :cond_1a0
    add-int/lit8 v6, v2, 0x1

    const/4 v1, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move/from16 v16, v1

    move v1, v6

    move/from16 v6, v16

    :goto_1b4
    const/16 v7, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_1d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v2, :cond_1d3

    :goto_1cb
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    move v1, v7

    goto :goto_1b4

    :cond_1d3
    move v1, v2

    goto :goto_1cb

    :cond_1d5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v1, v7, :cond_1f1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v11, v1

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v1, v11

    if-le v1, v2, :cond_1f1

    move v2, v1

    :cond_1f1
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v1, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v11

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    mul-int v1, v11, v6

    const/4 v6, 0x0

    aput v2, p3, v6

    const/4 v6, 0x1

    aput v1, p3, v6

    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v12, 0x4

    if-ne v6, v12, :cond_240

    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v2, v12

    int-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v1, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v1, v12

    :cond_240
    if-ne v4, v2, :cond_244

    if-eq v3, v1, :cond_246

    :cond_244
    move v3, v1

    move v4, v2

    :cond_246
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_252

    const/4 v1, 0x2

    aput v4, p3, v1

    const/4 v1, 0x3

    aput v3, p3, v1

    :cond_252
    if-lez v4, :cond_348

    if-lez v3, :cond_348

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_263

    const/4 v1, 0x0

    new-array v1, v1, [I

    goto/16 :goto_17

    :cond_263
    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_266
    const/high16 v1, -0x1000000

    and-int v1, v1, p6

    if-nez v1, :cond_2d9

    const v1, 0xffffff

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_272
    invoke-static/range {p8 .. p8}, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_2df

    const/4 v1, 0x0

    :goto_27f
    const/4 v6, 0x0

    const/4 v5, 0x0

    :goto_281
    const/16 v12, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    if-lez v12, :cond_2ee

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v6, v12, 0x1

    if-eqz p7, :cond_2c0

    if-eqz v9, :cond_2c0

    move/from16 v0, p7

    int-to-float v12, v0

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v12, v1

    mul-int v14, v5, v11

    int-to-float v14, v14

    iget v15, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v15

    invoke-virtual {v9, v13, v12, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2c0
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v9, :cond_2d6

    int-to-float v12, v1

    mul-int v14, v5, v11

    int-to-float v14, v14

    iget v15, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v14, v15

    invoke-virtual {v9, v13, v12, v14, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_281

    :cond_2d9
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_272

    :cond_2df
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_2e8

    const/4 v1, 0x0

    aget v1, p3, v1

    goto :goto_27f

    :cond_2e8
    const/4 v1, 0x0

    aget v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_27f

    :cond_2ee
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v6, v12, :cond_344

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v12, v12

    if-eqz p7, :cond_32f

    if-eqz v9, :cond_32f

    move/from16 v0, p7

    int-to-float v12, v0

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v12, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v12, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v12, v1

    mul-int v13, v5, v11

    int-to-float v13, v13

    iget v14, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v13, v14

    invoke-virtual {v9, v6, v12, v13, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_32f
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v9, :cond_344

    int-to-float v1, v1

    mul-int/2addr v5, v11

    int-to-float v5, v5

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v5, v7

    invoke-virtual {v9, v6, v1, v5, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_344
    .catchall {:try_start_124 .. :try_end_344} :catchall_121

    :cond_344
    move v1, v3

    move v3, v4

    goto/16 :goto_181

    :cond_348
    move-object v2, v5

    goto/16 :goto_266

    :cond_34b
    move-object v1, v5

    goto/16 :goto_134

    :cond_34e
    move v2, v3

    move v3, v4

    goto/16 :goto_f8

    :pswitch_data_352
    .packed-switch 0x1
        :pswitch_115
        :pswitch_124
    .end packed-switch
.end method

.method public static drawTextAlpha(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .registers 19

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5}, Landroid/graphics/Canvas;-><init>()V

    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    if-eqz v5, :cond_f

    if-nez v6, :cond_11

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_10
    return-object v1

    :cond_11
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getPhoneType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    const-string v3, "vivo X3L"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/16 p2, 0x0

    :cond_21
    invoke-virtual {v6}, Landroid/text/TextPaint;->reset()V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v0, p1

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    packed-switch p2, :pswitch_data_178

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_3f
    move/from16 v0, p3

    int-to-float v2, v0

    const v3, 0x3fa66666    # 1.3f

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float v7, v2, v3

    const/16 v2, 0x5c

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a9

    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {p0, v3, v4, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v8, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v8

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    if-lez v3, :cond_81

    if-lez v4, :cond_81

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_81
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    const/4 v4, 0x0

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float v2, v4, v2

    invoke-virtual {v5, p0, v3, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    :pswitch_93
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3f

    :pswitch_9e
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3f

    :cond_a9
    add-int/lit8 v4, v2, 0x1

    const/4 v3, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v2, v8

    :goto_ba
    const/16 v8, 0x5c

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-lez v8, :cond_d7

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v9, v4

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v9, v11

    double-to-int v4, v9

    if-le v4, v2, :cond_d2

    move v2, v4

    :cond_d2
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_ba

    :cond_d7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v4, v8, :cond_f1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p0, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v4, v8

    if-le v4, v2, :cond_f1

    move v2, v4

    :cond_f1
    invoke-virtual {v6}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v4, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    add-int v2, v2, p3

    mul-int/2addr v3, v9

    if-lez v2, :cond_116

    if-lez v3, :cond_116

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v5, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_116
    const/4 v3, 0x3

    invoke-static {v3}, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_125
    const/16 v7, 0x5c

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_14f

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v11, v4

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v4, v11

    add-int/lit8 v4, v7, 0x1

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v5, :cond_14c

    mul-int v7, v3, v9

    int-to-float v7, v7

    iget v11, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v7, v11

    invoke-virtual {v5, v10, v2, v7, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_14c
    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    :cond_14f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v4, v7, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v7

    float-to-double v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    double-to-int v7, v10

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v5, :cond_10

    mul-int/2addr v3, v9

    int-to-float v3, v3

    iget v7, v8, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v7

    invoke-virtual {v5, v4, v2, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10

    nop

    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_93
        :pswitch_9e
    .end packed-switch
.end method

.method public static declared-synchronized drawTextExt(Ljava/lang/String;II[IIIIII)Landroid/graphics/Bitmap;
    .registers 26

    const-class v8, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_6
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9}, Landroid/graphics/Canvas;-><init>()V

    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_137

    if-eqz v9, :cond_14

    if-nez v10, :cond_17

    :cond_14
    move-object v1, v3

    :cond_15
    :goto_15
    monitor-exit v8

    return-object v1

    :cond_17
    :try_start_17
    invoke-static {}, Lcom/baidu/mapapi/common/SysOSUtil;->getPhoneType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    const-string v2, "vivo X3L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 p2, 0x0

    :cond_27
    invoke-virtual {v10}, Landroid/text/TextPaint;->reset()V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move/from16 v0, p1

    int-to-float v1, v0

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10, v1, v2, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    packed-switch p2, :pswitch_data_310

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_4c
    if-eqz p7, :cond_63

    move/from16 v0, p7

    int-to-float v1, v0

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_63
    const/16 v1, 0x5c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_158

    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v11

    double-to-int v2, v1

    iget v1, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v7

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v1, v11

    const/4 v7, 0x0

    aput v2, p3, v7

    const/4 v7, 0x1

    aput v1, p3, v7

    move-object/from16 v0, p3

    array-length v7, v0

    const/4 v11, 0x4

    if-ne v7, v11, :cond_cc

    int-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    int-to-double v13, v2

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v2, v11

    int-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v1, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    int-to-double v13, v1

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-int v1, v11

    :cond_cc
    if-ne v5, v2, :cond_d0

    if-eq v4, v1, :cond_d2

    :cond_d0
    move v4, v1

    move v5, v2

    :cond_d2
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_de

    const/4 v1, 0x2

    aput v5, p3, v1

    const/4 v1, 0x3

    aput v4, p3, v1

    :cond_de
    if-lez v5, :cond_30c

    if-lez v4, :cond_30c

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_ed
    const/high16 v2, -0x1000000

    and-int v2, v2, p6

    if-nez v2, :cond_152

    const v2, 0xffffff

    invoke-virtual {v9, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_f9
    if-eqz p7, :cond_121

    if-eqz v9, :cond_121

    move/from16 v0, p7

    int-to-float v2, v0

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_121
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v2, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_135
    .catchall {:try_start_17 .. :try_end_135} :catchall_137

    goto/16 :goto_15

    :catchall_137
    move-exception v1

    monitor-exit v8

    throw v1

    :pswitch_13a
    :try_start_13a
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4c

    :pswitch_146
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_4c

    :cond_152
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_f9

    :cond_158
    add-int/lit8 v6, v2, 0x1

    const/4 v1, 0x2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    float-to-double v11, v2

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v2, v11

    move/from16 v16, v1

    move v1, v6

    move/from16 v6, v16

    :goto_170
    const/16 v7, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    if-lez v7, :cond_195

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v11, v1

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v1, v11

    if-le v1, v2, :cond_193

    :goto_18b
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    move v1, v7

    goto :goto_170

    :cond_193
    move v1, v2

    goto :goto_18b

    :cond_195
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v1, v7, :cond_1b1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v11, v1

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    add-double/2addr v11, v13

    double-to-int v1, v11

    if-le v1, v2, :cond_1b1

    move v2, v1

    :cond_1b1
    invoke-virtual {v10}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v1, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v11

    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    mul-int v1, v11, v6

    const/4 v6, 0x0

    aput v2, p3, v6

    const/4 v6, 0x1

    aput v1, p3, v6

    move-object/from16 v0, p3

    array-length v6, v0

    const/4 v12, 0x4

    if-ne v6, v12, :cond_200

    int-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v2, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v2, v12

    int-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v1, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    int-to-double v14, v1

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    double-to-int v1, v12

    :cond_200
    if-ne v5, v2, :cond_204

    if-eq v4, v1, :cond_308

    :cond_204
    :goto_204
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_210

    const/4 v4, 0x2

    aput v2, p3, v4

    const/4 v4, 0x3

    aput v1, p3, v4

    :cond_210
    if-lez v2, :cond_305

    if-lez v1, :cond_305

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v2, v1

    :goto_220
    const/high16 v1, -0x1000000

    and-int v1, v1, p6

    if-nez v1, :cond_297

    const v1, 0xffffff

    invoke-virtual {v9, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_22c
    invoke-static/range {p8 .. p8}, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->getTextAlignedType(I)Landroid/graphics/Paint$Align;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v1, 0x1

    move/from16 v0, p8

    if-ne v0, v1, :cond_29d

    const/4 v1, 0x0

    :goto_239
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_23b
    const/16 v5, 0x5c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lez v5, :cond_2ac

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v4

    float-to-double v12, v4

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v4, v12

    add-int/lit8 v4, v5, 0x1

    if-eqz p7, :cond_27e

    if-eqz v9, :cond_27e

    move/from16 v0, p7

    int-to-float v5, v0

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v5, v1

    mul-int v12, v3, v11

    int-to-float v12, v12

    iget v13, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v12, v13

    invoke-virtual {v9, v6, v5, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_27e
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v9, :cond_294

    int-to-float v5, v1

    mul-int v12, v3, v11

    int-to-float v12, v12

    iget v13, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v12, v13

    invoke-virtual {v9, v6, v5, v12, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_294
    add-int/lit8 v3, v3, 0x1

    goto :goto_23b

    :cond_297
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_22c

    :cond_29d
    const/4 v1, 0x2

    move/from16 v0, p8

    if-ne v0, v1, :cond_2a6

    const/4 v1, 0x0

    aget v1, p3, v1

    goto :goto_239

    :cond_2a6
    const/4 v1, 0x0

    aget v1, p3, v1

    div-int/lit8 v1, v1, 0x2

    goto :goto_239

    :cond_2ac
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_302

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v12

    double-to-int v5, v5

    if-eqz p7, :cond_2ed

    if-eqz v9, :cond_2ed

    move/from16 v0, p7

    int-to-float v5, v0

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p5

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v5, v1

    mul-int v6, v3, v11

    int-to-float v6, v6

    iget v12, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v12

    invoke-virtual {v9, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2ed
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz v9, :cond_302

    int-to-float v1, v1

    mul-int/2addr v3, v11

    int-to-float v3, v3

    iget v5, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v3, v5

    invoke-virtual {v9, v4, v1, v3, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_302
    .catchall {:try_start_13a .. :try_end_302} :catchall_137

    :cond_302
    move-object v1, v2

    goto/16 :goto_15

    :cond_305
    move-object v2, v3

    goto/16 :goto_220

    :cond_308
    move v1, v4

    move v2, v5

    goto/16 :goto_204

    :cond_30c
    move-object v1, v3

    goto/16 :goto_ed

    nop

    :pswitch_data_310
    .packed-switch 0x1
        :pswitch_13a
        :pswitch_146
    .end packed-switch
.end method

.method private static getTextAlignedType(I)Landroid/graphics/Paint$Align;
    .registers 2

    const/4 v0, 0x1

    if-ne v0, p0, :cond_6

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_5
    return-object v0

    :cond_6
    const/4 v0, 0x2

    if-ne v0, p0, :cond_c

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_5

    :cond_c
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    goto :goto_5
.end method

.method public static getTextSize(Ljava/lang/String;II)[S
    .registers 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v0, 0x0

    :cond_9
    return-object v0

    :cond_a
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    invoke-virtual {v4, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    int-to-float v0, p1

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    packed-switch p2, :pswitch_data_50

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_25
    new-array v0, v3, [S

    move v1, v2

    :goto_28
    if-ge v1, v3, :cond_9

    add-int/lit8 v5, v1, 0x1

    invoke-static {p0, v2, v5, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :pswitch_3b
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_25

    :pswitch_45
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_25

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_45
    .end packed-switch
.end method

.method public static getTextSizeExt(Ljava/lang/String;II)[F
    .registers 8

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    packed-switch p2, :pswitch_data_50

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_26
    new-array v0, v2, [F

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    aput v2, v0, v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v1, v2, v1

    aput v1, v0, v3

    goto :goto_a

    :pswitch_3b
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_26

    :pswitch_45
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_26

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_45
    .end packed-switch
.end method

.method public static declared-synchronized registFontCache(ILandroid/graphics/Typeface;)V
    .registers 5

    const-class v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v1

    if-eqz p0, :cond_7

    if-nez p1, :cond_9

    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    sget-object v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    if-nez v0, :cond_14

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    :cond_14
    sget-object v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmapsdkvi/com/gdi/bgl/android/java/a;

    if-nez v0, :cond_34

    new-instance v0, Lmapsdkvi/com/gdi/bgl/android/java/a;

    invoke-direct {v0}, Lmapsdkvi/com/gdi/bgl/android/java/a;-><init>()V

    iput-object p1, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->a:Landroid/graphics/Typeface;

    iget v2, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I

    sget-object v2, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_31

    goto :goto_7

    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_34
    :try_start_34
    iget v2, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    goto :goto_7
.end method

.method public static declared-synchronized removeFontCache(I)V
    .registers 4

    const-class v1, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmapsdkvi/com/gdi/bgl/android/java/a;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1f

    if-nez v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit v1

    return-void

    :cond_f
    :try_start_f
    iget v2, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I

    iget v0, v0, Lmapsdkvi/com/gdi/bgl/android/java/a;->b:I

    if-nez v0, :cond_d

    sget-object v0, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->fontCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_1f

    goto :goto_d

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
