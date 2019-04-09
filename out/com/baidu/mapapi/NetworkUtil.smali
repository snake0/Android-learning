.class public Lcom/baidu/mapapi/NetworkUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    :try_start_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v0

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    move-object v0, v1

    goto :goto_d
.end method

.method public static getCurrentNetMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/baidu/mapapi/NetworkUtil;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :cond_22
    move v0, v1

    goto :goto_e

    :pswitch_24
    const/4 v0, 0x2

    goto :goto_e

    :pswitch_26
    const/4 v0, 0x4

    goto :goto_e

    :pswitch_28
    const/4 v0, 0x5

    goto :goto_e

    :pswitch_2a
    const/4 v0, 0x6

    goto :goto_e

    :pswitch_2c
    const/4 v0, 0x7

    goto :goto_e

    :pswitch_2e
    const/16 v0, 0x8

    goto :goto_e

    :pswitch_31
    const/16 v0, 0x9

    goto :goto_e

    :pswitch_34
    const/16 v0, 0xa

    goto :goto_e

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_31
        :pswitch_28
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_2e
        :pswitch_31
        :pswitch_31
        :pswitch_24
        :pswitch_2c
        :pswitch_26
        :pswitch_34
        :pswitch_31
    .end packed-switch
.end method

.method public static initConnectState()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isWifiConnected(Landroid/net/NetworkInfo;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_19

    :try_start_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v0, v2, :cond_12

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_14

    move-result v2

    if-eqz v2, :cond_12

    :goto_10
    move v1, v0

    :goto_11
    return v1

    :cond_12
    move v0, v1

    goto :goto_10

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_19
    move v0, v1

    goto :goto_10
.end method

.method public static updateNetworkProxy(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->getInstance()Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mapsdkplatform/comapi/util/SysUpdateObservable;->updateNetworkProxy(Landroid/content/Context;)V

    return-void
.end method
