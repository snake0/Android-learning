.class public Lcom/baidu/mapapi/common/AppTools;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaiduMapToken()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/baidu/mapsdkplatform/comjni/tools/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
