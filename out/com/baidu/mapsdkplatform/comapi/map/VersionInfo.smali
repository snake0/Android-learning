.class public Lcom/baidu/mapsdkplatform/comapi/map/VersionInfo;
.super Ljava/lang/Object;


# static fields
.field public static final KIT_NAME:Ljava/lang/String; = "BaiduMapSDK_map_v"

.field public static final VERSION_DESC:Ljava/lang/String; = "baidumapapi_map"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApiVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "5_1_0"

    return-object v0
.end method

.method public static getKitName()Ljava/lang/String;
    .registers 1

    const-string v0, "BaiduMapSDK_map_v5_1_0"

    return-object v0
.end method

.method public static getVersionDesc()Ljava/lang/String;
    .registers 1

    const-string v0, "baidumapapi_map"

    return-object v0
.end method
