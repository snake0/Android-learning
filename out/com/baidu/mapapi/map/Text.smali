.class public final Lcom/baidu/mapapi/map/Text;
.super Lcom/baidu/mapapi/map/Overlay;


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/baidu/mapapi/model/LatLng;

.field c:I

.field d:I

.field e:I

.field f:Landroid/graphics/Typeface;

.field g:I

.field h:I

.field i:F

.field j:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/mapapi/map/Text;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/map/Text;->k:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/baidu/mapapi/map/Overlay;-><init>()V

    sget-object v0, Lcom/baidu/mapsdkplatform/comapi/map/h;->e:Lcom/baidu/mapsdkplatform/comapi/map/h;

    iput-object v0, p0, Lcom/baidu/mapapi/map/Text;->type:Lcom/baidu/mapsdkplatform/comapi/map/h;

    return-void
.end method


# virtual methods
.method a()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    invoke-static {v0}, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->removeFontCache(I)V

    :cond_d
    invoke-super {p0}, Lcom/baidu/mapapi/map/Overlay;->a()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-super {p0, p1}, Lcom/baidu/mapapi/map/Overlay;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "when you add a text overlay, you must provide text and the position info."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string v0, "text"

    iget-object v4, p0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    invoke-static {v0}, Lcom/baidu/mapapi/model/CoordUtil;->ll2mc(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/inner/GeoPoint;

    move-result-object v0

    const-string v4, "location_x"

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v4, "location_y"

    invoke-virtual {v0}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->d:I

    ushr-int/lit8 v0, v0, 0x18

    iget v4, p0, Lcom/baidu/mapapi/map/Text;->d:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/baidu/mapapi/map/Text;->d:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/baidu/mapapi/map/Text;->d:I

    and-int/lit16 v6, v6, 0xff

    invoke-static {v0, v6, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const-string v4, "font_color"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->c:I

    ushr-int/lit8 v0, v0, 0x18

    iget v4, p0, Lcom/baidu/mapapi/map/Text;->c:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    iget v5, p0, Lcom/baidu/mapapi/map/Text;->c:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    iget v6, p0, Lcom/baidu/mapapi/map/Text;->c:I

    and-int/lit16 v6, v6, 0xff

    invoke-static {v0, v6, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const-string v4, "bg_color"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "font_size"

    iget v4, p0, Lcom/baidu/mapapi/map/Text;->e:I

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    invoke-virtual {v0}, Landroid/graphics/Typeface;->hashCode()I

    move-result v0

    iget-object v4, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    invoke-static {v0, v4}, Lmapsdkvi/com/gdi/bgl/android/java/EnvDrawText;->registFontCache(ILandroid/graphics/Typeface;)V

    const-string v0, "type_face"

    iget-object v4, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    invoke-virtual {v4}, Landroid/graphics/Typeface;->hashCode()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_8e
    iget v0, p0, Lcom/baidu/mapapi/map/Text;->g:I

    packed-switch v0, :pswitch_data_bc

    :pswitch_93
    move v0, v1

    :goto_94
    const-string v4, "align_x"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->h:I

    sparse-switch v0, :sswitch_data_c8

    :goto_9e
    :sswitch_9e
    const-string v0, "align_y"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "rotate"

    iget v1, p0, Lcom/baidu/mapapi/map/Text;->i:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v0, "update"

    iget v1, p0, Lcom/baidu/mapapi/map/Text;->j:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1

    :pswitch_b2
    move v0, v1

    goto :goto_94

    :pswitch_b4
    move v0, v2

    goto :goto_94

    :pswitch_b6
    move v0, v3

    goto :goto_94

    :sswitch_b8
    move v1, v2

    goto :goto_9e

    :sswitch_ba
    move v1, v3

    goto :goto_9e

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_b6
        :pswitch_93
        :pswitch_b2
    .end packed-switch

    :sswitch_data_c8
    .sparse-switch
        0x8 -> :sswitch_b8
        0x10 -> :sswitch_ba
        0x20 -> :sswitch_9e
    .end sparse-switch
.end method

.method public getAlignX()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->g:I

    int-to-float v0, v0

    return v0
.end method

.method public getAlignY()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->h:I

    int-to-float v0, v0

    return v0
.end method

.method public getBgColor()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->c:I

    return v0
.end method

.method public getFontColor()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->d:I

    return v0
.end method

.method public getFontSize()I
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->e:I

    return v0
.end method

.method public getPosition()Lcom/baidu/mapapi/model/LatLng;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    return-object v0
.end method

.method public getRotate()F
    .registers 2

    iget v0, p0, Lcom/baidu/mapapi/map/Text;->i:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public setAlign(II)V
    .registers 4

    iput p1, p0, Lcom/baidu/mapapi/map/Text;->g:I

    iput p2, p0, Lcom/baidu/mapapi/map/Text;->h:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setBgColor(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapapi/map/Text;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFontColor(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapapi/map/Text;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setFontSize(I)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapapi/map/Text;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

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
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->b:Lcom/baidu/mapapi/model/LatLng;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setRotate(F)V
    .registers 3

    iput p1, p0, Lcom/baidu/mapapi/map/Text;->i:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_a

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text can not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    iput-object p1, p0, Lcom/baidu/mapapi/map/Text;->f:Landroid/graphics/Typeface;

    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/mapapi/map/Text;->j:I

    iget-object v0, p0, Lcom/baidu/mapapi/map/Text;->listener:Lcom/baidu/mapapi/map/Overlay$a;

    invoke-interface {v0, p0}, Lcom/baidu/mapapi/map/Overlay$a;->b(Lcom/baidu/mapapi/map/Overlay;)V

    return-void
.end method
