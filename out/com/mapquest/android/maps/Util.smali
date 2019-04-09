.class public Lcom/mapquest/android/maps/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ANDROID_API_VERSION_NUMBER:Ljava/lang/String; = "android-api-1.0.4"

.field private static final LOG_TAG:Ljava/lang/String; = "mq.android.maps.util"

.field private static canWriteFlag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 388
    const/4 v0, 0x0

    sput v0, Lcom/mapquest/android/maps/Util;->canWriteFlag:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static addStringToMarker(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/drawable/Drawable;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 344
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 345
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 346
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 347
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 348
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 349
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 350
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 351
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3, p2, v6, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 352
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v0, v4

    rem-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x1

    .line 353
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 354
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v3, p2, v0, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 355
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static checkIfSameThread(Landroid/os/Handler;)Z
    .registers 3

    .prologue
    .line 381
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static closestPoint(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 14

    .prologue
    .line 184
    if-nez p3, :cond_7

    .line 185
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    .line 188
    :cond_7
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 189
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 190
    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    .line 191
    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    .line 192
    if-nez v2, :cond_1d

    if-nez v3, :cond_1d

    .line 193
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 212
    :goto_1c
    return-object p3

    .line 196
    :cond_1d
    iget v4, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    .line 197
    iget v5, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v1

    .line 198
    mul-int/2addr v4, v2

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    .line 199
    if-gtz v4, :cond_30

    .line 200
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1c

    .line 203
    :cond_30
    mul-int v5, v2, v2

    mul-int v6, v3, v3

    add-int/2addr v5, v6

    .line 204
    if-gt v5, v4, :cond_3f

    .line 205
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1c

    .line 208
    :cond_3f
    int-to-double v5, v5

    int-to-double v7, v4

    div-double v4, v5, v7

    .line 209
    int-to-double v6, v0

    int-to-double v8, v2

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-int v0, v6

    .line 210
    int-to-double v1, v1

    int-to-double v6, v3

    mul-double v3, v6, v4

    add-double/2addr v1, v3

    double-to-int v1, v1

    .line 211
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Point;->set(II)V

    goto :goto_1c
.end method

.method public static closestPoint(Lcom/mapquest/android/maps/GeoPoint;Ljava/util/List;)Lcom/mapquest/android/maps/GeoPoint;
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapquest/android/maps/GeoPoint;",
            "Ljava/util/List",
            "<",
            "Lcom/mapquest/android/maps/GeoPoint;",
            ">;)",
            "Lcom/mapquest/android/maps/GeoPoint;"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v5, 0x1

    .line 220
    const-wide v8, 0x41dfffffffc00000L    # 2.147483647E9

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-long v12, v2

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-long v14, v2

    .line 223
    const/4 v4, 0x0

    .line 224
    const/4 v3, 0x0

    .line 225
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v16, v2, -0x1

    .line 228
    const/4 v2, 0x0

    move v11, v2

    :goto_1a
    move/from16 v0, v16

    if-ge v11, v0, :cond_101

    .line 229
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    .line 230
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    .line 231
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    sub-int/2addr v2, v6

    int-to-long v0, v2

    move-wide/from16 v17, v0

    .line 232
    add-int/lit8 v2, v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    sub-int/2addr v2, v7

    int-to-long v0, v2

    move-wide/from16 v19, v0

    .line 233
    move-wide/from16 v0, v17

    long-to-float v2, v0

    const/4 v10, 0x0

    cmpl-float v2, v2, v10

    if-nez v2, :cond_6a

    move-wide/from16 v0, v19

    long-to-float v2, v0

    const/4 v10, 0x0

    cmpl-float v2, v2, v10

    if-eqz v2, :cond_15d

    .line 234
    :cond_6a
    int-to-long v0, v6

    move-wide/from16 v21, v0

    sub-long v21, v12, v21

    .line 235
    int-to-long v0, v7

    move-wide/from16 v23, v0

    sub-long v23, v14, v23

    .line 236
    mul-long v25, v17, v21

    mul-long v27, v19, v23

    add-long v25, v25, v27

    .line 237
    move-wide/from16 v0, v25

    long-to-float v2, v0

    const/4 v5, 0x0

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_b4

    .line 238
    const/4 v7, 0x0

    .line 239
    mul-long v5, v21, v21

    mul-long v17, v23, v23

    add-long v5, v5, v17

    long-to-double v5, v5

    .line 240
    cmpg-double v2, v5, v8

    if-gez v2, :cond_157

    .line 242
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    .line 243
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    move-wide/from16 v29, v5

    move-wide/from16 v4, v29

    move v6, v7

    .line 228
    :goto_ab
    add-int/lit8 v7, v11, 0x1

    move v11, v7

    move-wide v8, v4

    move v4, v3

    move v5, v6

    move v3, v2

    goto/16 :goto_1a

    .line 246
    :cond_b4
    move-wide/from16 v0, v25

    long-to-double v0, v0

    move-wide/from16 v21, v0

    mul-long v23, v17, v17

    mul-long v25, v19, v19

    add-long v23, v23, v25

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    .line 247
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v21, v23

    if-ltz v2, :cond_d2

    .line 248
    const/4 v2, 0x1

    move v6, v2

    move v2, v3

    move v3, v4

    move-wide v4, v8

    goto :goto_ab

    .line 250
    :cond_d2
    const/4 v10, 0x0

    .line 251
    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v17, v17, v21

    move-wide/from16 v0, v17

    double-to-int v2, v0

    add-int/2addr v2, v6

    .line 252
    move-wide/from16 v0, v19

    long-to-double v5, v0

    mul-double v5, v5, v21

    double-to-int v5, v5

    add-int/2addr v5, v7

    .line 253
    int-to-long v6, v2

    sub-long v6, v12, v6

    long-to-double v6, v6

    int-to-long v0, v5

    move-wide/from16 v17, v0

    sub-long v17, v14, v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v6, v7, v0, v1}, Lcom/mapquest/android/maps/Util;->distSqr(DD)D

    move-result-wide v6

    .line 254
    cmpg-double v17, v6, v8

    if-gez v17, :cond_151

    move v3, v5

    move-wide v4, v6

    move v6, v10

    .line 257
    goto :goto_ab

    .line 264
    :cond_101
    if-eqz v5, :cond_14b

    .line 265
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-long v5, v2

    sub-long v5, v12, v5

    long-to-double v5, v5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    int-to-long v10, v2

    sub-long v10, v14, v10

    long-to-double v10, v10

    invoke-static {v5, v6, v10, v11}, Lcom/mapquest/android/maps/Util;->distSqr(DD)D

    move-result-wide v5

    .line 266
    cmpg-double v2, v5, v8

    if-gez v2, :cond_14b

    .line 267
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v4

    .line 268
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 272
    :cond_14b
    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v4, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    return-object v2

    :cond_151
    move v2, v3

    move v6, v10

    move v3, v4

    move-wide v4, v8

    goto/16 :goto_ab

    :cond_157
    move v2, v3

    move v6, v7

    move v3, v4

    move-wide v4, v8

    goto/16 :goto_ab

    :cond_15d
    move v2, v3

    move v6, v5

    move v3, v4

    move-wide v4, v8

    goto/16 :goto_ab
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 359
    if-eqz p0, :cond_30

    .line 360
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 361
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 364
    :try_start_b
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    :goto_17
    invoke-virtual {v2, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_28

    .line 368
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_17

    .line 371
    :catchall_23
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_28
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 374
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_2f
    return-object v0

    :cond_30
    const-string v0, ""

    goto :goto_2f
.end method

.method public static createBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v1

    .line 151
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {v1, v2, v3}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    .line 152
    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {v1, v3, v4}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v3

    .line 153
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v4, v5}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v4

    .line 154
    iget v5, p0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v5, v6}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v1

    .line 155
    const/4 v5, 0x4

    new-array v5, v5, [Lcom/mapquest/android/maps/GeoPoint;

    aput-object v2, v5, v0

    const/4 v2, 0x1

    aput-object v3, v5, v2

    const/4 v2, 0x2

    aput-object v4, v5, v2

    const/4 v2, 0x3

    aput-object v1, v5, v2

    .line 156
    const-wide v1, 0x4066800000000000L    # 180.0

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v4

    .line 157
    const-wide v1, -0x3f99800000000000L    # -180.0

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v3

    .line 158
    const-wide v1, -0x3fa9800000000000L    # -90.0

    invoke-static {v1, v2}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v2

    .line 159
    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-static {v6, v7}, Lcom/mapquest/android/maps/Util;->to1E6(D)I

    move-result v1

    .line 161
    :goto_57
    array-length v6, v5

    if-ge v0, v6, :cond_95

    .line 162
    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-ge v6, v4, :cond_68

    .line 163
    aget-object v4, v5, v0

    invoke-virtual {v4}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v4

    .line 166
    :cond_68
    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    if-le v6, v3, :cond_76

    .line 167
    aget-object v3, v5, v0

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    .line 170
    :cond_76
    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-le v6, v2, :cond_84

    .line 171
    aget-object v2, v5, v0

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v2

    .line 174
    :cond_84
    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v6

    if-ge v6, v1, :cond_92

    .line 175
    aget-object v1, v5, v0

    invoke-virtual {v1}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    .line 161
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 179
    :cond_95
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    new-instance v5, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v5, v2, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v2, v1, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {v0, v5, v2}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V

    .line 180
    return-object v0
.end method

.method public static createOriginBoundingBoxFromRect(Landroid/graphics/Rect;Lcom/mapquest/android/maps/MapView;)Lcom/mapquest/android/maps/BoundingBox;
    .registers 8

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 100
    :try_start_1
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 101
    instance-of v2, v0, Lcom/mapquest/android/maps/RotatableProjection;

    if-eqz v2, :cond_f

    .line 102
    check-cast v0, Lcom/mapquest/android/maps/RotatableProjection;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/RotatableProjection;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 105
    :cond_f
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    invoke-interface {v0, v2, v3}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v2

    .line 106
    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v0, v3, v4}, Lcom/mapquest/android/maps/Projection;->fromPixels(II)Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v3

    .line 107
    new-instance v0, Lcom/mapquest/android/maps/BoundingBox;

    new-instance v4, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v2}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-direct {v4, v5, v2}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    new-instance v2, Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v3}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-direct {v2, v5, v3}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    invoke-direct {v0, v4, v2}, Lcom/mapquest/android/maps/BoundingBox;-><init>(Lcom/mapquest/android/maps/GeoPoint;Lcom/mapquest/android/maps/GeoPoint;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_3f

    .line 112
    :goto_3e
    return-object v0

    .line 108
    :catch_3f
    move-exception v0

    move-object v0, v1

    goto :goto_3e
.end method

.method public static createOriginRectFromBoundingBox(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    .line 86
    instance-of v2, v0, Lcom/mapquest/android/maps/RotatableProjection;

    if-eqz v2, :cond_2f

    .line 87
    check-cast v0, Lcom/mapquest/android/maps/RotatableProjection;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/RotatableProjection;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v0

    move-object v2, v0

    .line 90
    :goto_10
    iget-object v3, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v2, v3, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 91
    iget-object v3, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v2, v3, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 93
    return-object v2

    :cond_2f
    move-object v2, v0

    goto :goto_10
.end method

.method public static createRectFromBoundingBox(Lcom/mapquest/android/maps/BoundingBox;Lcom/mapquest/android/maps/MapView;)Landroid/graphics/Rect;
    .registers 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getProjection()Lcom/mapquest/android/maps/Projection;

    move-result-object v3

    .line 117
    new-instance v4, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v5, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v5}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v3, v4, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 118
    new-instance v5, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v6, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v6}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v3, v5, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 119
    new-instance v6, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v0, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v0

    iget-object v7, p0, Lcom/mapquest/android/maps/BoundingBox;->ul:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v7

    invoke-direct {v6, v0, v7}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    invoke-interface {v3, v6, v0}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 120
    new-instance v6, Lcom/mapquest/android/maps/GeoPoint;

    iget-object v7, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v7}, Lcom/mapquest/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v7

    iget-object v8, p0, Lcom/mapquest/android/maps/BoundingBox;->lr:Lcom/mapquest/android/maps/GeoPoint;

    invoke-virtual {v8}, Lcom/mapquest/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    check-cast v1, Landroid/graphics/Point;

    invoke-interface {v3, v6, v1}, Lcom/mapquest/android/maps/Projection;->toPixels(Lcom/mapquest/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    .line 121
    const/4 v3, 0x4

    new-array v6, v3, [Landroid/graphics/Point;

    aput-object v4, v6, v2

    const/4 v3, 0x1

    aput-object v5, v6, v3

    const/4 v3, 0x2

    aput-object v0, v6, v3

    const/4 v0, 0x3

    aput-object v1, v6, v0

    move v0, v2

    move v1, v2

    move v3, v2

    move v4, v2

    .line 127
    :goto_77
    array-length v5, v6

    if-ge v0, v5, :cond_ad

    .line 128
    aget-object v5, v6, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-lt v5, v4, :cond_82

    if-nez v4, :cond_86

    .line 129
    :cond_82
    aget-object v4, v6, v0

    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 132
    :cond_86
    aget-object v5, v6, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-gt v5, v3, :cond_8e

    if-nez v3, :cond_92

    .line 133
    :cond_8e
    aget-object v3, v6, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 136
    :cond_92
    aget-object v5, v6, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-lt v5, v1, :cond_9a

    if-nez v1, :cond_9e

    .line 137
    :cond_9a
    aget-object v1, v6, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 140
    :cond_9e
    aget-object v5, v6, v0

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-gt v5, v2, :cond_a6

    if-nez v2, :cond_aa

    .line 141
    :cond_a6
    aget-object v2, v6, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 127
    :cond_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_77

    .line 145
    :cond_ad
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4, v1, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 146
    return-object v0
.end method

.method public static distSqr(DD)D
    .registers 8

    .prologue
    .line 276
    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static distance(FFFF)F
    .registers 7

    .prologue
    .line 61
    sub-float v0, p0, p2

    sub-float v1, p0, p2

    mul-float/2addr v0, v1

    .line 62
    sub-float v1, p1, p3

    sub-float v2, p1, p3

    mul-float/2addr v1, v2

    .line 63
    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static distance(Landroid/graphics/Point;Landroid/graphics/Point;)F
    .registers 6

    .prologue
    .line 67
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/mapquest/android/maps/Util;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method public static distance(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .registers 6

    .prologue
    .line 71
    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v1, v2, v3}, Lcom/mapquest/android/maps/Util;->distance(FFFF)F

    move-result v0

    return v0
.end method

.method public static distanceSquared(IIII)I
    .registers 6

    .prologue
    .line 75
    sub-int v0, p0, p2

    .line 76
    sub-int v1, p1, p3

    .line 77
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static from1E6(I)D
    .registers 5

    .prologue
    .line 41
    int-to-double v0, p0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method static getApiVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 385
    const-string v0, "android-api-1.0.5"

    return-object v0
.end method

.method public static getAppFileDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 408
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 409
    invoke-static {p0, p1}, Lcom/mapquest/android/maps/Util;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 410
    sget v2, Lcom/mapquest/android/maps/Util;->canWriteFlag:I

    if-nez v2, :cond_4f

    .line 415
    :try_start_16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 416
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 418
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 421
    :cond_2c
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_31} :catch_59
    .catchall {:try_start_16 .. :try_end_31} :catchall_73

    .line 422
    :try_start_31
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_36} :catch_99
    .catchall {:try_start_31 .. :try_end_36} :catchall_8f

    .line 423
    const/4 v1, 0x0

    :try_start_37
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 424
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 425
    const/4 v1, 0x1

    sput v1, Lcom/mapquest/android/maps/Util;->canWriteFlag:I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_40} :catch_9e
    .catchall {:try_start_37 .. :try_end_40} :catchall_93

    .line 429
    if-eqz v3, :cond_4f

    .line 431
    :try_start_42
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_54

    .line 436
    :goto_45
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 437
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 443
    :cond_4f
    :goto_4f
    sget v1, Lcom/mapquest/android/maps/Util;->canWriteFlag:I

    if-ne v1, v5, :cond_8a

    .line 448
    :goto_53
    return-object v0

    .line 432
    :catch_54
    move-exception v1

    .line 433
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 426
    :catch_59
    move-exception v2

    move-object v2, v1

    .line 427
    :goto_5b
    const/4 v3, 0x2

    :try_start_5c
    sput v3, Lcom/mapquest/android/maps/Util;->canWriteFlag:I
    :try_end_5e
    .catchall {:try_start_5c .. :try_end_5e} :catchall_96

    .line 429
    if-eqz v2, :cond_4f

    .line 431
    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_6e

    .line 436
    :goto_63
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_4f

    .line 432
    :catch_6e
    move-exception v2

    .line 433
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63

    .line 429
    :catchall_73
    move-exception v0

    move-object v3, v1

    :goto_75
    if-eqz v3, :cond_84

    .line 431
    :try_start_77
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_85

    .line 436
    :goto_7a
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 437
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_84
    throw v0

    .line 432
    :catch_85
    move-exception v2

    .line 433
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7a

    .line 448
    :cond_8a
    invoke-virtual {p0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_53

    .line 429
    :catchall_8f
    move-exception v0

    move-object v3, v1

    move-object v1, v2

    goto :goto_75

    :catchall_93
    move-exception v0

    move-object v1, v2

    goto :goto_75

    :catchall_96
    move-exception v0

    move-object v3, v2

    goto :goto_75

    .line 426
    :catch_99
    move-exception v3

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_5b

    :catch_9e
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_5b
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 280
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, p0

    .line 281
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    packed-switch v0, :pswitch_data_94

    .line 287
    const-string v0, "_mdpi.png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :goto_26
    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 297
    :try_start_50
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_87

    .line 303
    :goto_55
    if-nez v0, :cond_76

    .line 304
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/com/mapquest/android/maps/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 307
    :cond_76
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 308
    if-nez v2, :cond_8a

    move-object v0, v1

    .line 313
    :goto_80
    return-object v0

    .line 290
    :pswitch_81
    const-string v0, "_hdpi.png"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 298
    :catch_87
    move-exception v0

    move-object v0, v1

    goto :goto_55

    .line 312
    :cond_8a
    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v0, v2

    .line 313
    goto :goto_80

    :cond_91
    move-object v0, v1

    goto :goto_55

    .line 284
    nop

    :pswitch_data_94
    .packed-switch 0xf0
        :pswitch_81
    .end packed-switch
.end method

.method public static getDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 318
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v0, p0

    .line 319
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 322
    new-instance v2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 325
    :try_start_3a
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_67

    .line 330
    :goto_3f
    if-nez v0, :cond_5c

    .line 331
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/com/mapquest/android/maps/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 334
    :cond_5c
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    .line 335
    if-nez v2, :cond_6a

    move-object v0, v1

    .line 339
    :goto_66
    return-object v0

    .line 326
    :catch_67
    move-exception v0

    move-object v0, v1

    goto :goto_3f

    .line 338
    :cond_6a
    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    move-object v0, v2

    .line 339
    goto :goto_66

    :cond_71
    move-object v0, v1

    goto :goto_3f
.end method

.method private static getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    .line 396
    invoke-static {}, Lcom/mapquest/android/maps/Util;->hasFroyo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 397
    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_d

    .line 404
    :goto_c
    return-object v0

    .line 403
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 404
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static hasFroyo()Z
    .registers 2

    .prologue
    .line 391
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static hypotenuse(DD)D
    .registers 8

    .prologue
    .line 57
    mul-double v0, p0, p0

    mul-double v2, p2, p2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static hypotenuse(FF)F
    .registers 6

    .prologue
    .line 53
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/mapquest/android/maps/Util;->hypotenuse(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static hypotenuse(II)I
    .registers 6

    .prologue
    .line 49
    int-to-double v0, p0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/mapquest/android/maps/Util;->hypotenuse(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static log2(D)D
    .registers 6

    .prologue
    .line 81
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static to1E6(D)I
    .registers 4

    .prologue
    .line 45
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method
