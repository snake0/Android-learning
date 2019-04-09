.class public final Lcom/baidu/mapapi/map/Polyline;
.super Lcom/baidu/mapapi/map/Overlay;


# instance fields
.field a:I

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field c:[I

.field d:[I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->i:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method

.method private a(Z)Landroid/os/Bundle;
    .registers 3

    if-eqz p1, :cond_d

    const-string v0, "lineDashTexture.png"

    invoke-static {v0}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_c
.end method

.method static a([ILandroid/os/Bundle;)V
    .registers 3

    if-eqz p0, :cond_a

    array-length v0, p0

    if-lez v0, :cond_a

    const-string v0, "traffic_array"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_a
    return-void
.end method

.method private b(Z)Landroid/os/Bundle;
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "total"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "texture_0"

    const-string v2, "lineDashTexture.png"

    invoke-static {v2}, Lcom/baidu/mapapi/map/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1d
    return-object v0

    :cond_1e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move v1, v0

    move v2, v0

    :goto_25
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_61

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "texture_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    :cond_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_61
    const-string v0, "total"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v3

    goto :goto_1d
.end method

.method static b([ILandroid/os/Bundle;)V
    .registers 4

    if-eqz p0, :cond_10

    array-length v0, p0

    if-lez v0, :cond_10

    const-string v0, "color_array"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "total"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_10
    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    const-string v3, "location_x"

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "location_y"

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "width"

    iget v3, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Ljava/util/List;Landroid/os/Bundle;)V

    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->a([ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    invoke-static {v0, p1}, Lcom/baidu/mapapi/map/Polyline;->b([ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    array-length v0, v0

    if-lez v0, :cond_5b

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    array-length v0, v0

    iget-object v3, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_5b

    const-string v0, "baidumapsdk"

    const-string v3, "the size of textureIndexs is larger than the size of points"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5b
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    if-eqz v0, :cond_a0

    const-string v0, "dotline"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_64
    const-string v3, "focus"

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    if-ne v0, v1, :cond_a6

    move v0, v1

    :goto_6b
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_6e
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->i:Lcom/baidu/mapapi/map/BitmapDescriptor;

    if-eqz v0, :cond_a8

    const-string v0, "custom"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "image_info"

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/baidu/mapapi/map/Polyline;->a(Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_82
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->j:Ljava/util/List;

    if-eqz v0, :cond_cb

    const-string v0, "customlist"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "image_info_list"

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/baidu/mapapi/map/Polyline;->b(Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_96
    const-string v0, "keep"

    iget-boolean v3, p0, Lcom/baidu/mapapi/map/Polyline;->h:Z

    if-ne v3, v1, :cond_f2

    :goto_9c
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_9f} :catch_bd

    :goto_9f
    return-object p1

    :cond_a0
    const-string v0, "dotline"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_64

    :cond_a6
    move v0, v2

    goto :goto_6b

    :cond_a8
    :try_start_a8
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    if-eqz v0, :cond_b6

    const-string v0, "image_info"

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/baidu/mapapi/map/Polyline;->a(Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_b6
    const-string v0, "custom"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_bc} :catch_bd

    goto :goto_82

    :catch_bd
    move-exception v0

    const-string v0, "baidumapsdk"

    const-string v1, "load texture resource failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dotline"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9f

    :cond_cb
    :try_start_cb
    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    if-eqz v0, :cond_d8

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    array-length v0, v0

    if-gtz v0, :cond_e1

    :cond_d8
    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    if-eqz v0, :cond_eb

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->d:[I

    array-length v0, v0

    if-lez v0, :cond_eb

    :cond_e1
    const-string v0, "image_info_list"

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/baidu/mapapi/map/Polyline;->b(Z)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_eb
    const-string v0, "customlist"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_f1} :catch_bd

    goto :goto_96

    :cond_f2
    move v1, v2

    goto :goto_9c
.end method

.method public getColor()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    return v0
.end method

.method public isDottedLine()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    return v0
.end method

.method public isFocus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    return v0
.end method

.method public setColor(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->a:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDottedLine(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->f:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFocus(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/baidu/mapapi/map/Polyline;->g:Z

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setIndexs([I)V
    .registers 4

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "indexList can not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->c:[I

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "points list can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "points count can not less than 2 or more than 10000"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "points list can not contains null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTextureList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/map/BitmapDescriptor;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "textureList can not empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lcom/baidu/mapapi/map/Polyline;->j:Ljava/util/List;

    return-void
.end method

.method public setWidth(I)V
    .registers 3

    if-lez p1, :cond_9

    iput p1, p0, Lcom/baidu/mapapi/map/Polyline;->e:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Polyline;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    :cond_9
    return-void
.end method
