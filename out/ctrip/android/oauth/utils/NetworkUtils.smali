.class public Lctrip/android/oauth/utils/NetworkUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearCookies(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 70
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 71
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 73
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 74
    return-void
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 63
    const-string v0, "connectivity"

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 65
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static hasInternetPermission(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 14
    if-eqz p0, :cond_c

    .line 15
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    .line 18
    :cond_c
    :goto_c
    return v0

    .line 15
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 46
    if-eqz p0, :cond_9

    .line 47
    invoke-static {p0}, Lctrip/android/oauth/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 49
    if-nez v1, :cond_a

    .line 58
    :cond_9
    :goto_9
    return v0

    .line 53
    :cond_a
    if-eqz v1, :cond_9

    .line 54
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_9

    .line 55
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_10

    .line 24
    invoke-static {p0}, Lctrip/android/oauth/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 25
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x1

    .line 28
    :cond_10
    return v0
.end method

.method public static isWifiValid(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 33
    if-eqz p0, :cond_19

    .line 34
    invoke-static {p0}, Lctrip/android/oauth/utils/NetworkUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 36
    if-eqz v2, :cond_17

    .line 37
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v0, v3, :cond_17

    .line 38
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 41
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 38
    goto :goto_16

    :cond_19
    move v0, v1

    .line 41
    goto :goto_16
.end method
