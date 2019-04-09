.class public Lcom/mqunar/network/NetConnChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static netGetted:Z

.field public static wifi:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(I)Z
    .registers 2

    .prologue
    .line 90
    packed-switch p0, :pswitch_data_8

    .line 98
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 96
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 90
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

.method public static dealNetworkInfo(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 48
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 49
    const/4 v3, 0x0

    .line 51
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_1d

    move-result-object v0

    .line 54
    :goto_f
    if-eqz v0, :cond_22

    .line 55
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_20

    move v0, v1

    :goto_18
    sput-boolean v0, Lcom/mqunar/network/NetConnChangeReceiver;->wifi:Z

    .line 59
    :goto_1a
    sput-boolean v1, Lcom/mqunar/network/NetConnChangeReceiver;->netGetted:Z

    .line 60
    return-void

    .line 52
    :catch_1d
    move-exception v0

    move-object v0, v3

    goto :goto_f

    :cond_20
    move v0, v2

    .line 55
    goto :goto_18

    .line 57
    :cond_22
    sput-boolean v2, Lcom/mqunar/network/NetConnChangeReceiver;->wifi:Z

    goto :goto_1a
.end method

.method public static isNetwork2GClass(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    const/4 v3, 0x0

    .line 66
    :try_start_b
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_2d

    move-result-object v0

    .line 69
    :goto_f
    if-eqz v0, :cond_32

    .line 70
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-eq v0, v1, :cond_32

    .line 71
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 72
    if-eqz v0, :cond_32

    .line 73
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Lcom/mqunar/network/NetConnChangeReceiver;->a(I)Z

    move-result v0

    if-eqz v0, :cond_30

    move v0, v1

    .line 81
    :goto_2c
    return v0

    .line 67
    :catch_2d
    move-exception v0

    move-object v0, v3

    goto :goto_f

    :cond_30
    move v0, v2

    .line 76
    goto :goto_2c

    :cond_32
    move v0, v2

    .line 81
    goto :goto_2c
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 30
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    if-nez v0, :cond_c

    .line 43
    :cond_b
    :goto_b
    return v1

    .line 34
    :cond_c
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 35
    if-eqz v2, :cond_b

    move v0, v1

    .line 36
    :goto_13
    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 37
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_22

    .line 38
    const/4 v1, 0x1

    goto :goto_b

    .line 36
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-static {p1}, Lcom/mqunar/network/NetConnChangeReceiver;->dealNetworkInfo(Landroid/content/Context;)V

    .line 107
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 108
    if-nez v0, :cond_10

    .line 139
    :cond_f
    :goto_f
    return-void

    .line 111
    :cond_10
    const/4 v3, 0x0

    .line 113
    const/4 v4, 0x1

    :try_start_12
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_15} :catch_5f

    move-result-object v0

    .line 118
    :goto_16
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 123
    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_4e
    move v0, v1

    .line 130
    :goto_4f
    if-eqz v0, :cond_f

    .line 134
    sget-boolean v0, Lcom/mqunar/network/NetConnChangeReceiver;->wifi:Z

    if-eqz v0, :cond_62

    .line 135
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u5df2\u5207\u6362\u81f3wlan\u6a21\u5f0f"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f

    .line 114
    :catch_5f
    move-exception v0

    move-object v0, v3

    goto :goto_16

    .line 137
    :cond_62
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u5df2\u5207\u6362\u81f3GPRS/3G\u6a21\u5f0f"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_f

    :cond_6c
    move v0, v2

    goto :goto_4f
.end method
