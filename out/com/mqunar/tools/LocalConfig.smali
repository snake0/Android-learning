.class public Lcom/mqunar/tools/LocalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowdSchemes()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "weixin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "cmblife"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.qunar.gonglue"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "alipay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alipays"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "alipayqr"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "alipayauth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alipayre"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
