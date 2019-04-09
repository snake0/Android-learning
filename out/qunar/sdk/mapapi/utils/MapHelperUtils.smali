.class public Lqunar/sdk/mapapi/utils/MapHelperUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static checkOverlap(Landroid/view/ViewGroup;Lqunar/sdk/mapapi/entity/QMarker;Ljava/util/List;IILqunar/sdk/mapapi/QunarMapType;)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;II",
            "Lqunar/sdk/mapapi/QunarMapType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lqunar/sdk/mapapi/entity/QMarker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_c

    .line 200
    :cond_b
    :goto_b
    return-object v1

    .line 170
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 173
    sget-object v3, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    move-object/from16 v0, p5

    if-ne v0, v3, :cond_89

    .line 174
    instance-of v3, p0, Lcom/baidu/mapapi/map/MapView;

    if-eqz v3, :cond_8f

    .line 175
    check-cast p0, Lcom/baidu/mapapi/map/MapView;

    .line 176
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v1}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 178
    invoke-virtual {p0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BaiduMap;->getProjection()Lcom/baidu/mapapi/map/Projection;

    move-result-object v4

    .line 179
    invoke-virtual {v4, v3}, Lcom/baidu/mapapi/map/Projection;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;)Landroid/graphics/Point;

    move-result-object v3

    .line 180
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3c
    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqunar/sdk/mapapi/entity/QMarker;

    .line 181
    iget-object v6, v1, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 182
    new-instance v7, Lcom/baidu/mapapi/model/LatLng;

    invoke-virtual {v6}, Lqunar/sdk/location/QLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6}, Lqunar/sdk/location/QLocation;->getLongitude()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 184
    invoke-virtual {v4, v7}, Lcom/baidu/mapapi/map/Projection;->toScreenLocation(Lcom/baidu/mapapi/model/LatLng;)Landroid/graphics/Point;

    move-result-object v6

    .line 186
    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-ne v7, v8, :cond_67

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-eq v7, v8, :cond_3c

    .line 187
    :cond_67
    iget v7, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v7, p3

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-le v7, v8, :cond_3c

    iget v7, v3, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v8, p3

    if-ge v7, v8, :cond_3c

    iget v7, v3, Landroid/graphics/Point;->y:I

    add-int v7, v7, p4

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-le v7, v8, :cond_3c

    iget v7, v3, Landroid/graphics/Point;->y:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int v6, v6, p4

    if-ge v7, v6, :cond_3c

    .line 191
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 196
    :cond_89
    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->GAODE:Lqunar/sdk/mapapi/QunarMapType;

    move-object/from16 v0, p5

    if-ne v0, v1, :cond_8f

    :cond_8f
    move-object v1, v2

    .line 200
    goto/16 :goto_b
.end method

.method public static createBitmapDescriptor(Lqunar/sdk/mapapi/entity/QMarker;)Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 4

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 39
    sget-object v2, Lqunar/sdk/mapapi/utils/MapHelperUtils$1;->$SwitchMap$qunar$sdk$mapapi$utils$MarkerParamerCase:[I

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_3e

    .line 69
    :cond_e
    :goto_e
    return-object v0

    .line 41
    :pswitch_f
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e

    .line 45
    :pswitch_16
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromFile(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e

    .line 49
    :pswitch_1d
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromPath(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e

    .line 53
    :pswitch_24
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e

    .line 57
    :pswitch_2b
    iget v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->resourceId:I

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromResource(I)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e

    .line 61
    :pswitch_32
    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->view:Landroid/view/View;

    if-eqz v1, :cond_e

    .line 62
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->view:Landroid/view/View;

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    goto :goto_e

    .line 39
    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_f
        :pswitch_16
        :pswitch_1d
        :pswitch_24
        :pswitch_2b
        :pswitch_32
    .end packed-switch
.end method

.method public static createDrawable(Landroid/content/Context;Lqunar/sdk/mapapi/entity/QMarker;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 76
    if-nez p1, :cond_4

    .line 147
    :cond_3
    :goto_3
    return-object v0

    .line 80
    :cond_4
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 81
    sget-object v2, Lqunar/sdk/mapapi/utils/MapHelperUtils$1;->$SwitchMap$qunar$sdk$mapapi$utils$MarkerParamerCase:[I

    invoke-virtual {v1}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_a0

    goto :goto_3

    .line 84
    :pswitch_12
    if-eqz p0, :cond_3

    .line 85
    :try_start_14
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p1, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 86
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_27

    goto :goto_3

    .line 89
    :catch_27
    move-exception v1

    goto :goto_3

    .line 94
    :pswitch_29
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p0, :cond_3

    .line 99
    if-eqz p0, :cond_3

    .line 100
    :try_start_3b
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 101
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_49} :catch_4a

    goto :goto_3

    .line 104
    :catch_4a
    move-exception v1

    goto :goto_3

    .line 110
    :pswitch_4c
    :try_start_4c
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 111
    if-eqz v2, :cond_3

    if-eqz v2, :cond_3

    .line 113
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_5f} :catch_99

    .line 114
    :try_start_5f
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_9c

    move-object v0, v1

    goto :goto_3

    .line 122
    :pswitch_64
    :try_start_64
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p1, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6f} :catch_96

    move-object v0, v1

    .line 125
    goto :goto_3

    .line 129
    :pswitch_71
    :try_start_71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lqunar/sdk/mapapi/entity/QMarker;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_7a} :catch_93

    move-result-object v0

    goto :goto_3

    .line 136
    :pswitch_7c
    :try_start_7c
    iget-object v1, p1, Lqunar/sdk/mapapi/entity/QMarker;->view:Landroid/view/View;

    invoke-static {v1}, Lqunar/sdk/mapapi/utils/MapHelperUtils;->view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 137
    if-eqz v2, :cond_3

    .line 138
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8d} :catch_90

    move-object v0, v1

    goto/16 :goto_3

    .line 140
    :catch_90
    move-exception v1

    goto/16 :goto_3

    .line 130
    :catch_93
    move-exception v1

    goto/16 :goto_3

    .line 123
    :catch_96
    move-exception v1

    goto/16 :goto_3

    .line 116
    :catch_99
    move-exception v1

    goto/16 :goto_3

    :catch_9c
    move-exception v0

    move-object v0, v1

    goto/16 :goto_3

    .line 81
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_29
        :pswitch_4c
        :pswitch_64
        :pswitch_71
        :pswitch_7c
    .end packed-switch
.end method

.method public static view2Bitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 151
    const/4 v0, 0x0

    .line 152
    if-eqz p0, :cond_25

    .line 153
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 154
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 156
    invoke-virtual {p0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 157
    invoke-virtual {p0, v3}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    :cond_25
    return-object v0
.end method
