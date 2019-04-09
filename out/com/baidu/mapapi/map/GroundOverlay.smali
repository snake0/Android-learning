.class public final Lcom/baidu/mapapi/map/GroundOverlay;
.super Lcom/baidu/mapapi/map/Overlay;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field a:I

.field b:Lcom/baidu/mapapi/map/BitmapDescriptor;

.field c:Lcom/baidu/mapapi/model/LatLng;

.field d:D

.field e:D

.field f:F

.field g:F

.field h:Lcom/baidu/mapapi/model/LatLngBounds;

.field i:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapapi/map/GroundOverlay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/GroundOverlay;->j:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->d:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16

    const/high16 v13, 0x3f000000    # 0.5f

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/16 v9, 0x0

    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "image_info"

    iget-object v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/BitmapDescriptor;->b()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->southwest:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, v0, Lcom/baidu/mapapi/model/LatLngBounds;->northeast:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v7

    sub-double/2addr v5, v1

    iput-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    sub-double v5, v7, v3

    iput-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    new-instance v0, Lcom/baidu/mapapi/model/inner/GeoPoint;

    iget-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    div-double/2addr v5, v11

    add-double/2addr v3, v5

    iget-wide v5, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    div-double/2addr v5, v11

    add-double/2addr v1, v5

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->mc2ll(Lcom/baidu/mapapi/model/inner/GeoPoint;)Lcom/baidu/mapapi/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    iput v13, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    iput v13, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    :cond_57
    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    cmpg-double v0, v0, v9

    if-lez v0, :cond_63

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    cmpg-double v0, v0, v9

    if-gtz v0, :cond_6b

    :cond_63
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "when you add ground overlay, the width and height must greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6b
    const-string v0, "x_distance"

    iget-wide v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, v0, v2

    if-nez v0, :cond_98

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget-object v2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v2, v2, Lcom/baidu/mapapi/map/BitmapDescriptor;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    :cond_98
    const-string v0, "y_distance"

    iget-wide v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    const-string v1, "location_x"

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "location_y"

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "anchor_x"

    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "anchor_y"

    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "transparency"

    iget v1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object p1
.end method

.method public getAnchorX()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    return v0
.end method

.method public getAnchorY()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    return v0
.end method

.method public getBounds()Lcom/baidu/mapapi/model/LatLngBounds;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    return-object v0
.end method

.method public getHeight()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    return-wide v0
.end method

.method public getImage()Lcom/baidu/mapapi/map/BitmapDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    return-object v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getTransparency()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    return v0
.end method

.method public getWidth()D
    .registers 3

    iget-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    return-wide v0
.end method

.method public setAnchor(FF)V
    .registers 6

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_b

    cmpl-float v0, p1, v2

    if-lez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_b

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_b

    iput p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->f:F

    iput p2, p0, Lcom/baidu/mapapi/map/GroundOverlay;->g:F

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    goto :goto_b
.end method

.method public setDimensions(I)V
    .registers 4

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setDimensions(II)V
    .registers 5

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->d:D

    int-to-double v0, p2

    iput-wide v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->e:D

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setImage(Lcom/baidu/mapapi/map/BitmapDescriptor;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->b:Lcom/baidu/mapapi/map/BitmapDescriptor;

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPosition(Lcom/baidu/mapapi/model/LatLng;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "position can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->c:Lcom/baidu/mapapi/model/LatLng;

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setPositionFromBounds(Lcom/baidu/mapapi/model/LatLngBounds;)V
    .registers 4

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bounds can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->a:I

    iput-object p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->h:Lcom/baidu/mapapi/model/LatLngBounds;

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTransparency(F)V
    .registers 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_b

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iput p1, p0, Lcom/baidu/mapapi/map/GroundOverlay;->i:F

    iget-object v0, p0, Lcom/baidu/mapapi/map/GroundOverlay;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    goto :goto_b
.end method
