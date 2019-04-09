.class Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;


# direct methods
.method private constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;-><init>(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j()Lcom/baidu/mapapi/synchronization/DisplayOptions;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->j()Lcom/baidu/mapapi/synchronization/DisplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getPassengerIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    :cond_11
    if-nez v0, :cond_af

    new-instance v0, Lcom/baidu/mapapi/synchronization/DisplayOptions;

    invoke-direct {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;-><init>()V

    invoke-virtual {v0}, Lcom/baidu/mapapi/synchronization/DisplayOptions;->getPassengerIcon()Lcom/baidu/mapapi/map/BitmapDescriptor;

    move-result-object v0

    move-object v1, v0

    :goto_1d
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->l(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Z

    move-result v0

    if-nez v0, :cond_ae

    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/BaiduMap;->getLocationData()Lcom/baidu/mapapi/map/MyLocationData;

    move-result-object v0

    if-eqz v0, :cond_81

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/map/MyLocationData;)Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Get location data success"

    invoke-static {v2, v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v3, v0, Lcom/baidu/mapapi/map/MyLocationData;->latitude:D

    iget-wide v5, v0, Lcom/baidu/mapapi/map/MyLocationData;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/Marker;

    move-result-object v3

    if-nez v3, :cond_99

    new-instance v3, Lcom/baidu/mapapi/map/MarkerOptions;

    invoke-direct {v3}, Lcom/baidu/mapapi/map/MarkerOptions;-><init>()V

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->position(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/baidu/mapapi/map/MarkerOptions;->anchor(FF)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v2

    iget v0, v0, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/MarkerOptions;->rotate(F)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/MarkerOptions;->icon(Lcom/baidu/mapapi/map/BitmapDescriptor;)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/map/MarkerOptions;->zIndex(I)Lcom/baidu/mapapi/map/MarkerOptions;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->m(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/baidu/mapapi/map/BaiduMap;->addOverlay(Lcom/baidu/mapapi/map/OverlayOptions;)Lcom/baidu/mapapi/map/Overlay;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/map/Marker;

    invoke-static {v2, v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->a(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;Lcom/baidu/mapapi/map/Marker;)Lcom/baidu/mapapi/map/Marker;

    :cond_81
    :goto_81
    :try_start_81
    iget-object v0, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v0}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->o(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8d
    .catch Ljava/lang/InterruptedException; {:try_start_81 .. :try_end_8d} :catch_8e

    goto :goto_1d

    :catch_8e
    move-exception v0

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Sleep interrupt"

    invoke-static {v0, v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :cond_99
    iget-object v3, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v3}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/Marker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mapapi/map/Marker;->setPosition(Lcom/baidu/mapapi/model/LatLng;)V

    iget-object v2, p0, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b$c;->a:Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;

    invoke-static {v2}, Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;->n(Lcom/baidu/mapsdkplatform/comapi/synchronization/render/b;)Lcom/baidu/mapapi/map/Marker;

    move-result-object v2

    iget v0, v0, Lcom/baidu/mapapi/map/MyLocationData;->direction:F

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/map/Marker;->setRotate(F)V

    goto :goto_81

    :cond_ae
    return-void

    :cond_af
    move-object v1, v0

    goto/16 :goto_1d
.end method
