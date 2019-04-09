.class public Lqunar/sdk/mapapi/entity/QMarker;
.super Lqunar/sdk/mapapi/entity/QOverlay;
.source "SourceFile"


# static fields
.field public static final DATA:Ljava/lang/String; = "myData"

.field public static final MARKER_HEIGHT:Ljava/lang/String; = "height"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private anchorX:F

.field private anchorY:F

.field public bitmap:Landroid/graphics/Bitmap;

.field private bitmapDescriptor:Ljava/lang/Object;

.field public imagePath:Ljava/lang/String;

.field public paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

.field private perspective:Z

.field public position:Lqunar/sdk/location/QLocation;

.field public resourceId:I

.field private rotate:F

.field private title:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lqunar/sdk/mapapi/entity/QOverlay;-><init>()V

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Lqunar/sdk/location/QLocation;I)V
    .registers 4

    .prologue
    .line 132
    invoke-direct {p0}, Lqunar/sdk/mapapi/entity/QOverlay;-><init>()V

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 134
    iput p2, p0, Lqunar/sdk/mapapi/entity/QMarker;->resourceId:I

    .line 135
    sget-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->RESOURCEID_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 136
    return-void
.end method

.method public constructor <init>(Lqunar/sdk/location/QLocation;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 123
    invoke-direct {p0}, Lqunar/sdk/mapapi/entity/QOverlay;-><init>()V

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 125
    iput-object p2, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    .line 126
    sget-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->IMAGE_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 127
    return-void
.end method

.method public constructor <init>(Lqunar/sdk/location/QLocation;Landroid/view/View;)V
    .registers 4

    .prologue
    .line 141
    invoke-direct {p0}, Lqunar/sdk/mapapi/entity/QOverlay;-><init>()V

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    .line 142
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 143
    iput-object p2, p0, Lqunar/sdk/mapapi/entity/QMarker;->view:Landroid/view/View;

    .line 144
    sget-object v0, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->VIEW_TYPE:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 145
    return-void
.end method

.method public constructor <init>(Lqunar/sdk/location/QLocation;Ljava/lang/String;Lqunar/sdk/mapapi/utils/MarkerParamerCase;Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 79
    invoke-direct {p0}, Lqunar/sdk/mapapi/entity/QOverlay;-><init>()V

    .line 36
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    .line 81
    iput-object p2, p0, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    .line 84
    sget-object v0, Lqunar/sdk/mapapi/entity/QMarker$1;->$SwitchMap$qunar$sdk$mapapi$utils$MarkerParamerCase:[I

    invoke-virtual {p3}, Lqunar/sdk/mapapi/utils/MarkerParamerCase;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_88

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 86
    :pswitch_2c
    const/4 v1, 0x0

    .line 88
    :try_start_2d
    invoke-virtual {p4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_46
    .catchall {:try_start_2d .. :try_end_34} :catchall_4f

    move-result-object v0

    .line 92
    if-eqz v0, :cond_3a

    .line 94
    :try_start_37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_44

    .line 118
    :cond_3a
    return-void

    .line 95
    :catch_3b
    move-exception v0

    .line 96
    :try_start_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path of the unreasonable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_44

    .line 98
    :catchall_44
    move-exception v0

    throw v0

    .line 89
    :catch_46
    move-exception v0

    .line 90
    :try_start_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The path of the unreasonable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4f

    .line 92
    :catchall_4f
    move-exception v0

    if-eqz v1, :cond_55

    .line 94
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56
    .catchall {:try_start_52 .. :try_end_55} :catchall_5f

    .line 98
    :cond_55
    throw v0

    .line 95
    :catch_56
    move-exception v0

    .line 96
    :try_start_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path of the unreasonable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_5f

    .line 98
    :catchall_5f
    move-exception v0

    throw v0

    .line 104
    :pswitch_61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path of the unreasonable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_74
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path of the unreasonable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    nop

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_61
        :pswitch_74
    .end packed-switch
.end method


# virtual methods
.method public getAnchorX()F
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    return v0
.end method

.method public getAnchorY()F
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    return v0
.end method

.method public getBitmapDescriptor()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    return-object v0
.end method

.method public getData()Ljava/io/Serializable;
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    .line 197
    const/4 v0, 0x0

    .line 199
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "myData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_7
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMarkerHeight()I
    .registers 3

    .prologue
    .line 210
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public getRotate()F
    .registers 2

    .prologue
    .line 172
    iget v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isPerspective()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    return v0
.end method

.method public recycle()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    if-eqz v0, :cond_17

    .line 48
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->BAIDU:Lqunar/sdk/mapapi/QunarMapType;

    if-ne v0, v1, :cond_24

    .line 49
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    instance-of v0, v0, Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_17

    .line 50
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/mapapi/map/BitmapDescriptor;

    .line 51
    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->recycle()V

    .line 64
    :cond_17
    :goto_17
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_23

    .line 65
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    .line 68
    :cond_23
    return-void

    .line 54
    :cond_24
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->GAODE:Lqunar/sdk/mapapi/QunarMapType;

    if-eq v0, v1, :cond_17

    .line 56
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->mapType:Lqunar/sdk/mapapi/QunarMapType;

    sget-object v1, Lqunar/sdk/mapapi/QunarMapType;->MAPQUEST:Lqunar/sdk/mapapi/QunarMapType;

    if-ne v0, v1, :cond_17

    .line 57
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    instance-of v0, v0, Lcom/mapquest/android/maps/OverlayItem;

    if-eqz v0, :cond_17

    .line 58
    iget-object v0, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    check-cast v0, Lcom/mapquest/android/maps/OverlayItem;

    .line 59
    invoke-virtual {v0}, Lcom/mapquest/android/maps/OverlayItem;->recycle()V

    goto :goto_17
.end method

.method public setAnchorX(F)V
    .registers 2

    .prologue
    .line 152
    iput p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    .line 153
    return-void
.end method

.method public setAnchorY(F)V
    .registers 2

    .prologue
    .line 160
    iput p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    .line 161
    return-void
.end method

.method public setBitmapDescriptor(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 192
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmapDescriptor:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setData(Ljava/io/Serializable;)V
    .registers 4

    .prologue
    .line 204
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    :goto_b
    const-string v1, "myData"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 206
    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/entity/QMarker;->setExtraInfo(Landroid/os/Bundle;)V

    .line 207
    return-void

    .line 204
    :cond_14
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_b
.end method

.method public setMarkerHeight(I)V
    .registers 4

    .prologue
    .line 218
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    :goto_b
    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/entity/QMarker;->setExtraInfo(Landroid/os/Bundle;)V

    .line 221
    return-void

    .line 218
    :cond_14
    invoke-virtual {p0}, Lqunar/sdk/mapapi/entity/QMarker;->getExtraInfo()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_b
.end method

.method public setPerspective(Z)V
    .registers 2

    .prologue
    .line 168
    iput-boolean p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    .line 169
    return-void
.end method

.method public setRotate(F)V
    .registers 2

    .prologue
    .line 176
    iput p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    .line 177
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 184
    iput-object p1, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QMarker [position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->position:Lqunar/sdk/location/QLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imagePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "resourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->resourceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paramerCase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->paramerCase:Lqunar/sdk/mapapi/utils/MarkerParamerCase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "anchorX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", anchorY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->anchorY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perspective="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->perspective:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "rotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->rotate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lqunar/sdk/mapapi/entity/QMarker;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
