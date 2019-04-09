.class public Lorg/acra/collector/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    new-instance v0, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v0, p0}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 32
    invoke-static {p0}, Lorg/acra/collector/l;->b(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    .line 46
    const-string v0, "\u83b7\u53d6\u5931\u8d25"

    .line 50
    :goto_16
    return-object v0

    .line 34
    :pswitch_17
    const-string v0, "\u65e0\u7f51\u7edc"

    goto :goto_16

    .line 36
    :pswitch_1a
    const-string v0, "wifi"

    goto :goto_16

    .line 38
    :pswitch_1d
    const-string v0, "2G"

    goto :goto_16

    .line 40
    :pswitch_20
    const-string v0, "3G"

    goto :goto_16

    .line 42
    :pswitch_23
    const-string v0, "4G"

    goto :goto_16

    .line 44
    :pswitch_26
    const-string v0, "\u5176\u4ed6\u79fb\u52a8\u7f51\u7edc"

    goto :goto_16

    .line 50
    :cond_29
    const-string v0, ""

    goto :goto_16

    .line 32
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;)I
    .registers 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    if-nez v0, :cond_f

    move v0, v1

    .line 116
    :goto_e
    return v0

    .line 65
    :cond_f
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 66
    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_1d

    :cond_1b
    move v0, v1

    .line 67
    goto :goto_e

    .line 70
    :cond_1d
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 71
    if-eqz v5, :cond_33

    .line 72
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    .line 73
    if-eqz v5, :cond_33

    .line 74
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v5, v6, :cond_31

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v5, v6, :cond_33

    :cond_31
    move v0, v2

    .line 75
    goto :goto_e

    .line 79
    :cond_33
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_74

    .line 81
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 82
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 83
    if-eqz v2, :cond_74

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v5, :cond_4b

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v2, v5, :cond_74

    .line 84
    :cond_4b
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    packed-switch v1, :pswitch_data_76

    .line 108
    const-string v1, "TD-SCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "WCDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_6a
    move v0, v3

    .line 109
    goto :goto_e

    .line 91
    :pswitch_6c
    const/4 v0, 0x2

    goto :goto_e

    :pswitch_6e
    move v0, v3

    .line 102
    goto :goto_e

    .line 105
    :pswitch_70
    const/4 v0, 0x4

    goto :goto_e

    .line 111
    :cond_72
    const/4 v0, 0x5

    goto :goto_e

    :cond_74
    move v0, v1

    .line 116
    goto :goto_e

    .line 84
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_6c
        :pswitch_6e
        :pswitch_6c
        :pswitch_6e
        :pswitch_6e
        :pswitch_6c
        :pswitch_6e
        :pswitch_6e
        :pswitch_6e
        :pswitch_6c
        :pswitch_6e
        :pswitch_70
        :pswitch_6e
        :pswitch_6e
    .end packed-switch
.end method
