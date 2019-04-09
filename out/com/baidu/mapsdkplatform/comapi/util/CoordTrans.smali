.class public Lcom/baidu/mapsdkplatform/comapi/util/CoordTrans;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baiduToGcj(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-wide v1, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->baiduToGcj(DD)[D

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_3
.end method

.method public static gcjToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-wide v1, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->gcjToBaidu(DD)[D

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_3
.end method

.method public static wgsToBaidu(Lcom/baidu/mapapi/model/LatLng;)Lcom/baidu/mapapi/model/LatLng;
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    iget-wide v1, p0, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/baidu/mapsdkplatform/comjni/tools/JNITools;->wgsToBaidu(DD)[D

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/baidu/mapapi/model/LatLng;

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    goto :goto_3
.end method
