.class Lcom/baidu/mapapi/map/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapsdkplatform/comapi/map/l;


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/map/TextureMapView;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/map/TextureMapView;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    iget-object v1, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/e;->b:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_bd

    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->b:F

    move v1, v0

    :goto_44
    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->b(Lcom/baidu/mapapi/map/TextureMapView;)F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b1

    invoke-static {}, Lcom/baidu/mapapi/map/TextureMapView;->a()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v2, v0

    iget-object v4, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v4}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v4

    iget-wide v4, v4, Lcom/baidu/mapsdkplatform/comapi/map/ab;->m:D

    div-double/2addr v2, v4

    double-to-int v2, v2

    iget-object v3, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v3}, Lcom/baidu/mapapi/map/TextureMapView;->c(Lcom/baidu/mapapi/map/TextureMapView;)Landroid/widget/ImageView;

    move-result-object v3

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v3, v4, v6, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_df

    const-string v2, " %d\u516c\u91cc "

    new-array v3, v7, [Ljava/lang/Object;

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_9a
    iget-object v2, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v2}, Lcom/baidu/mapapi/map/TextureMapView;->d(Lcom/baidu/mapapi/map/TextureMapView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v2}, Lcom/baidu/mapapi/map/TextureMapView;->e(Lcom/baidu/mapapi/map/TextureMapView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;F)F

    :cond_b1
    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->f(Lcom/baidu/mapapi/map/TextureMapView;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/TextureMapView;->requestLayout()V

    goto/16 :goto_16

    :cond_bd
    iget-object v1, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v1}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v1

    iget v1, v1, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_dc

    iget-object v0, p0, Lcom/baidu/mapapi/map/q;->a:Lcom/baidu/mapapi/map/TextureMapView;

    invoke-static {v0}, Lcom/baidu/mapapi/map/TextureMapView;->a(Lcom/baidu/mapapi/map/TextureMapView;)Lcom/baidu/mapsdkplatform/comapi/map/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b()Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->a:F

    move v1, v0

    goto/16 :goto_44

    :cond_dc
    move v1, v0

    goto/16 :goto_44

    :cond_df
    const-string v2, " %d\u7c73 "

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9a
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/baidu/mapapi/model/inner/GeoPoint;)V
    .registers 2

    return-void
.end method

.method public a(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .registers 3

    return-void
.end method

.method public a(Z)V
    .registers 2

    return-void
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public b(Lcom/baidu/mapapi/model/inner/GeoPoint;)V
    .registers 2

    return-void
.end method

.method public b(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .registers 2

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(Lcom/baidu/mapapi/model/inner/GeoPoint;)V
    .registers 2

    return-void
.end method

.method public c(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public d(Lcom/baidu/mapapi/model/inner/GeoPoint;)V
    .registers 2

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public e(Lcom/baidu/mapapi/model/inner/GeoPoint;)V
    .registers 2

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method
