.class public Lcom/baidu/mapapi/common/Logger;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugEnable()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method
