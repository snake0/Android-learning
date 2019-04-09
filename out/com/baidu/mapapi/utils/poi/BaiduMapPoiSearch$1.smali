.class synthetic Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->values()[Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->b:[I

    :try_start_9
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->b:[I

    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->NETWORK_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    invoke-virtual {v1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_5f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->b:[I

    sget-object v1, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->INNER_ERROR:Lcom/baidu/mapapi/http/HttpClient$HttpStateError;

    invoke-virtual {v1}, Lcom/baidu/mapapi/http/HttpClient$HttpStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_5d

    :goto_1f
    invoke-static {}, Lcom/baidu/platform/comapi/pano/PanoStateError;->values()[Lcom/baidu/platform/comapi/pano/PanoStateError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    :try_start_28
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->b:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/pano/PanoStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_5b

    :goto_33
    :try_start_33
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->c:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/pano/PanoStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_59

    :goto_3e
    :try_start_3e
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->d:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/pano/PanoStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_57

    :goto_49
    :try_start_49
    sget-object v0, Lcom/baidu/mapapi/utils/poi/BaiduMapPoiSearch$1;->a:[I

    sget-object v1, Lcom/baidu/platform/comapi/pano/PanoStateError;->a:Lcom/baidu/platform/comapi/pano/PanoStateError;

    invoke-virtual {v1}, Lcom/baidu/platform/comapi/pano/PanoStateError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_55

    :goto_54
    return-void

    :catch_55
    move-exception v0

    goto :goto_54

    :catch_57
    move-exception v0

    goto :goto_49

    :catch_59
    move-exception v0

    goto :goto_3e

    :catch_5b
    move-exception v0

    goto :goto_33

    :catch_5d
    move-exception v0

    goto :goto_1f

    :catch_5f
    move-exception v0

    goto :goto_14
.end method
