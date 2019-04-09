.class public Lcom/baidu/mapsdkplatform/comapi/map/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;


# direct methods
.method public constructor <init>(Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/map/af;->a:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mapapi/model/inner/GeoPoint;)Landroid/graphics/Point;
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_5

    const/4 v0, 0x0

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/baidu/mapsdkplatform/comapi/map/af;->a:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLongitudeE6()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Lcom/baidu/mapapi/model/inner/GeoPoint;->getLatitudeE6()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->b(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "scrx"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    const-string v1, "scry"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_31} :catch_32

    goto :goto_4

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4
.end method

.method public a(II)Lcom/baidu/mapapi/model/inner/GeoPoint;
    .registers 8

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/map/af;->a:Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapsdkplatform/comjni/map/basemap/a;->a(II)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/baidu/mapapi/model/inner/GeoPoint;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/baidu/mapapi/model/inner/GeoPoint;-><init>(DD)V

    if-eqz v1, :cond_2d

    :try_start_f
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "geox"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLongitudeE6(D)V

    const-string v1, "geoy"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/model/inner/GeoPoint;->setLatitudeE6(D)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_28} :catch_29

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2d
    const/4 v0, 0x0

    goto :goto_28
.end method
