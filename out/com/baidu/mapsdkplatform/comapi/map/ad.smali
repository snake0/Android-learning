.class Lcom/baidu/mapsdkplatform/comapi/map/ad;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/map/ac;


# direct methods
.method constructor <init>(Lcom/baidu/mapsdkplatform/comapi/map/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v11, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-nez v0, :cond_1a

    :cond_19
    return-void

    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    iget-wide v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/e;->i:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_19

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-ne v0, v1, :cond_b7

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_40
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    const/4 v1, 0x0

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v11, :cond_b3

    sget v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    sget v3, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    sget v3, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    sget v5, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    mul-int/2addr v3, v5

    new-array v5, v3, [I

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/e;->h:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    sget v6, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    sget v7, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    invoke-virtual {v3, v1, v6, v7}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a([III)[I

    move-result-object v6

    move v1, v2

    :goto_7a
    sget v3, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    if-ge v1, v3, :cond_a9

    move v3, v2

    :goto_7f
    sget v7, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    if-ge v3, v7, :cond_a6

    sget v7, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    aget v7, v6, v7

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v7, 0x10

    const/high16 v10, 0xff0000

    and-int/2addr v9, v10

    const v10, -0xff0100

    and-int/2addr v7, v10

    or-int/2addr v7, v9

    or-int/2addr v7, v8

    sget v8, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    sub-int/2addr v8, v1

    add-int/lit8 v8, v8, -0x1

    sget v9, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v3

    aput v7, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    :cond_a6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    :cond_a9
    sget v1, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    sget v3, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v3, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_b3
    invoke-interface {v0, v1}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Landroid/graphics/Bitmap;)V

    goto :goto_40

    :cond_b7
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1cb

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_19

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_116

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->B()V

    :cond_d4
    :goto_d4
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->j:Z

    if-nez v0, :cond_173

    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b:I

    if-lez v0, :cond_173

    sget v0, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a:I

    if-lez v0, :cond_173

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/baidu/mapsdkplatform/comapi/map/e;->b(II)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iput-boolean v11, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->j:Z

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_106
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_173

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/map/l;->b()V

    goto :goto_106

    :cond_116
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_126

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->K()V

    goto :goto_d4

    :cond_126
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_13c

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/m;

    move-result-object v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/m;->a()V

    goto :goto_d4

    :cond_13c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_152

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/m;

    move-result-object v0

    if-eqz v0, :cond_d4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->b(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/m;->a()V

    goto :goto_d4

    :cond_152
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d4

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_163
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/map/l;->c()V

    goto :goto_163

    :cond_173
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a()V

    goto :goto_17f

    :cond_18f
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapsdkplatform/comapi/map/e;->q()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v3

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1c7

    invoke-interface {v0, v11}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_1a7

    :cond_1c7
    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_1a7

    :cond_1cb
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_236

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->m:Z

    if-nez v0, :cond_1ed

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-boolean v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->n:Z

    if-eqz v0, :cond_19

    :cond_1ed
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f9
    :goto_1f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/baidu/mapsdkplatform/comapi/map/l;->b(Lcom/baidu/mapsdkplatform/comapi/map/ab;)V

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->q()Z

    move-result v3

    if-eqz v3, :cond_1f9

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v3

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_232

    invoke-interface {v0, v11}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_1f9

    :cond_232
    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_1f9

    :cond_236
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_258

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_248
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    invoke-interface {v0}, Lcom/baidu/mapsdkplatform/comapi/map/l;->e()V

    goto :goto_248

    :cond_258
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/mapsdkplatform/comapi/map/e;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_26a
    :goto_26a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapsdkplatform/comapi/map/l;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_27e

    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_26a

    :cond_27e
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v11, :cond_26a

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/map/ad;->a:Lcom/baidu/mapsdkplatform/comapi/map/ac;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/map/ac;->a(Lcom/baidu/mapsdkplatform/comapi/map/ac;)Lcom/baidu/mapsdkplatform/comapi/map/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mapsdkplatform/comapi/map/e;->E()Lcom/baidu/mapsdkplatform/comapi/map/ab;

    move-result-object v3

    iget v3, v3, Lcom/baidu/mapsdkplatform/comapi/map/ab;->a:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_296

    invoke-interface {v0, v11}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_26a

    :cond_296
    invoke-interface {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/map/l;->a(Z)V

    goto :goto_26a
.end method
