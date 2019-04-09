.class Lcom/mqunar/hy/res/libtask/NetConnChangeReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static wifi:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealNetworkInfo(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 42
    const/4 v3, 0x0

    .line 44
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_1b

    move-result-object v0

    .line 47
    :goto_f
    if-eqz v0, :cond_20

    .line 48
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_1e

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/mqunar/hy/res/libtask/NetConnChangeReceiver;->wifi:Z

    .line 52
    :goto_1a
    return-void

    .line 45
    :catch_1b
    move-exception v0

    move-object v0, v3

    goto :goto_f

    :cond_1e
    move v0, v2

    .line 48
    goto :goto_18

    .line 50
    :cond_20
    sput-boolean v2, Lcom/mqunar/hy/res/libtask/NetConnChangeReceiver;->wifi:Z

    goto :goto_1a
.end method

.method private static isNetwork2GClass(I)Z
    .registers 2

    .prologue
    .line 82
    packed-switch p0, :pswitch_data_8

    .line 90
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 88
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 82
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static isNetwork2GClass(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    const/4 v3, 0x0

    .line 58
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_2d

    move-result-object v0

    .line 61
    :goto_f
    if-eqz v0, :cond_32

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_32

    .line 63
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 64
    if-eqz v0, :cond_32

    .line 65
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/hy/res/libtask/NetConnChangeReceiver;->isNetwork2GClass(I)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    .line 73
    :goto_2c
    return v0

    .line 59
    :catch_2d
    move-exception v0

    move-object v0, v3

    goto :goto_f

    :cond_30
    move v0, v2

    .line 68
    goto :goto_2c

    :cond_32
    move v0, v2

    .line 73
    goto :goto_2c
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 23
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 24
    if-nez v0, :cond_c

    .line 36
    :cond_b
    :goto_b
    return v1

    .line 27
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 28
    if-eqz v2, :cond_b

    move v0, v1

    .line 29
    :goto_13
    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 30
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_22

    .line 31
    const/4 v1, 0x1

    goto :goto_b

    .line 29
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method
