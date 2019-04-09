.class public Lcom/mqunar/hy/res/utils/NetworkUtil;
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

.method public static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 12
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 13
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType()I
    .registers 3

    .prologue
    .line 28
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/mqunar/hy/res/utils/NetworkUtil;->isConnected(Landroid/net/NetworkInfo;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 31
    invoke-static {v1}, Lcom/mqunar/hy/res/utils/NetworkUtil;->isWifi(Landroid/net/NetworkInfo;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 32
    const/4 v0, 0x1

    .line 61
    :goto_15
    return v0

    .line 34
    :cond_16
    const-string v1, "phone"

    .line 35
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 37
    packed-switch v0, :pswitch_data_30

    .line 57
    const/4 v0, 0x0

    goto :goto_15

    .line 43
    :pswitch_27
    const/4 v0, 0x2

    goto :goto_15

    .line 53
    :pswitch_29
    const/4 v0, 0x3

    goto :goto_15

    .line 55
    :pswitch_2b
    const/4 v0, 0x4

    goto :goto_15

    .line 61
    :cond_2d
    const/4 v0, -0x1

    goto :goto_15

    .line 37
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_27
        :pswitch_29
        :pswitch_2b
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static isConnected(Landroid/net/NetworkInfo;)Z
    .registers 2

    .prologue
    .line 17
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isWifi(Landroid/net/NetworkInfo;)Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 21
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
