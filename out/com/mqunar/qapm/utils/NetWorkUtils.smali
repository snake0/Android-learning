.class public Lcom/mqunar/qapm/utils/NetWorkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 15
    if-eqz p0, :cond_16

    .line 17
    :try_start_2
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 19
    if-eqz v0, :cond_16

    .line 20
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_15

    move-result v0

    .line 26
    :goto_14
    return v0

    .line 22
    :catch_15
    move-exception v0

    .line 26
    :cond_16
    const/4 v0, 0x0

    goto :goto_14
.end method
