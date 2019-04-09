.class synthetic Lcom/baidu/mapapi/map/BaiduMap$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/map/aa;->values()[Lcom/baidu/mapsdkplatform/comapi/map/aa;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->b:[I

    :try_start_9
    sget-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->b:[I

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->b:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_52

    :goto_14
    :try_start_14
    sget-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->b:[I

    sget-object v1, Lcom/baidu/mapsdkplatform/comapi/map/aa;->a:Lcom/baidu/mapsdkplatform/comapi/map/aa;

    invoke-virtual {v1}, Lcom/baidu/mapsdkplatform/comapi/map/aa;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_50

    :goto_1f
    invoke-static {}, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->values()[Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->a:[I

    :try_start_28
    sget-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->a:[I

    sget-object v1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->COMPASS:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_4e

    :goto_33
    :try_start_33
    sget-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->a:[I

    sget-object v1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->FOLLOWING:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_4c

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/baidu/mapapi/map/BaiduMap$1;->a:[I

    sget-object v1, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->NORMAL:Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MyLocationConfiguration$LocationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    goto :goto_49

    :catch_4c
    move-exception v0

    goto :goto_3e

    :catch_4e
    move-exception v0

    goto :goto_33

    :catch_50
    move-exception v0

    goto :goto_1f

    :catch_52
    move-exception v0

    goto :goto_14
.end method
