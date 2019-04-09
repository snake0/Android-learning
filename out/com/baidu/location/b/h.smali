.class public Lcom/baidu/location/b/h;
.super Ljava/lang/Object;


# static fields
.field public static a:J

.field private static b:Lcom/baidu/location/b/h;


# instance fields
.field private c:Landroid/net/wifi/WifiManager;

.field private d:Lcom/baidu/location/b/h$a;

.field private e:Lcom/baidu/location/b/g;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Landroid/os/Handler;

.field private j:J

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/b/h;->b:Lcom/baidu/location/b/h;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/b/h;->a:J

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/b/h;->d:Lcom/baidu/location/b/h$a;

    iput-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    iput-wide v1, p0, Lcom/baidu/location/b/h;->f:J

    iput-wide v1, p0, Lcom/baidu/location/b/h;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/h;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/b/h;->i:Landroid/os/Handler;

    iput-wide v1, p0, Lcom/baidu/location/b/h;->j:J

    iput-wide v1, p0, Lcom/baidu/location/b/h;->k:J

    return-void
.end method

.method public static declared-synchronized a()Lcom/baidu/location/b/h;
    .registers 2

    const-class v1, Lcom/baidu/location/b/h;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/location/b/h;->b:Lcom/baidu/location/b/h;

    if-nez v0, :cond_e

    new-instance v0, Lcom/baidu/location/b/h;

    invoke-direct {v0}, Lcom/baidu/location/b/h;-><init>()V

    sput-object v0, Lcom/baidu/location/b/h;->b:Lcom/baidu/location/b/h;

    :cond_e
    sget-object v0, Lcom/baidu/location/b/h;->b:Lcom/baidu/location/b/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)Ljava/lang/String;
    .registers 9

    const/16 v5, 0x2e

    const-wide/16 v3, 0xff

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    and-long v1, p1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x8

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x10

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v1, 0x18

    shr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/location/b/h;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/location/b/h;->r()V

    return-void
.end method

.method public static a(Lcom/baidu/location/b/g;Lcom/baidu/location/b/g;)Z
    .registers 7

    const v0, 0x3f333333    # 0.7f

    invoke-static {p0, p1, v0}, Lcom/baidu/location/b/h;->a(Lcom/baidu/location/b/g;Lcom/baidu/location/b/g;F)Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/baidu/location/a/a;->c:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2c

    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_2c

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lcom/baidu/location/b/g;->f()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/baidu/location/b/g;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    const/4 v0, 0x0

    :cond_2c
    return v0
.end method

.method public static a(Lcom/baidu/location/b/g;Lcom/baidu/location/b/g;F)Z
    .registers 14

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_8

    :cond_6
    move v0, v3

    :goto_7
    return v0

    :cond_8
    iget-object v6, p0, Lcom/baidu/location/b/g;->a:Ljava/util/List;

    iget-object v7, p1, Lcom/baidu/location/b/g;->a:Ljava/util/List;

    if-ne v6, v7, :cond_10

    move v0, v2

    goto :goto_7

    :cond_10
    if-eqz v6, :cond_14

    if-nez v7, :cond_16

    :cond_14
    move v0, v3

    goto :goto_7

    :cond_16
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v8, :cond_24

    if-nez v9, :cond_24

    move v0, v2

    goto :goto_7

    :cond_24
    if-eqz v8, :cond_28

    if-nez v9, :cond_2a

    :cond_28
    move v0, v3

    goto :goto_7

    :cond_2a
    move v5, v3

    move v1, v3

    :goto_2c
    if-ge v5, v8, :cond_56

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v10, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v10, :cond_3e

    move v0, v1

    :goto_39
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_2c

    :cond_3e
    move v4, v3

    :goto_3f
    if-ge v4, v9, :cond_61

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    add-int/lit8 v0, v1, 0x1

    goto :goto_39

    :cond_52
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3f

    :cond_56
    int-to-float v0, v1

    int-to-float v1, v8

    mul-float/2addr v1, p2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5f

    move v0, v2

    goto :goto_7

    :cond_5f
    move v0, v3

    goto :goto_7

    :cond_61
    move v0, v1

    goto :goto_39
.end method

.method static synthetic b(Lcom/baidu/location/b/h;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/b/h;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static i()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1e

    move-result v0

    if-ne v0, v1, :cond_1c

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    move v0, v2

    goto :goto_1b

    :catch_1e
    move-exception v0

    move v0, v2

    goto :goto_1b
.end method

.method private r()V
    .registers 5

    iget-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_25

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/baidu/location/b/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v0, v2, v3}, Lcom/baidu/location/b/g;-><init>(Ljava/util/List;J)V

    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    invoke-virtual {v1, v0}, Lcom/baidu/location/b/g;->a(Lcom/baidu/location/b/g;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_22
    iput-object v1, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    goto :goto_4

    :catch_25
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public b()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/b/h;->j:J

    return-void
.end method

.method public declared-synchronized c()V
    .registers 5

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Lcom/baidu/location/b/h;->h:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_3a

    if-ne v0, v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    sget-boolean v0, Lcom/baidu/location/f;->isServing:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/baidu/location/b/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/location/b/h$a;-><init>(Lcom/baidu/location/b/h;Lcom/baidu/location/b/h$1;)V

    iput-object v0, p0, Lcom/baidu/location/b/h;->d:Lcom/baidu/location/b/h$a;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3a

    :try_start_26
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/h;->d:Lcom/baidu/location/b/h$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_36} :catch_3d
    .catchall {:try_start_26 .. :try_end_36} :catchall_3a

    :goto_36
    const/4 v0, 0x1

    :try_start_37
    iput-boolean v0, p0, Lcom/baidu/location/b/h;->h:Z
    :try_end_39
    .catchall {:try_start_37 .. :try_end_39} :catchall_3a

    goto :goto_6

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3d
    move-exception v0

    goto :goto_36
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/baidu/location/b/h;->h:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/b/h;->d:Lcom/baidu/location/b/h$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/location/b/h;->a:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_21
    .catchall {:try_start_7 .. :try_end_14} :catchall_1e

    :goto_14
    const/4 v0, 0x0

    :try_start_15
    iput-object v0, p0, Lcom/baidu/location/b/h;->d:Lcom/baidu/location/b/h$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/b/h;->h:Z
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_5

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_21
    move-exception v0

    goto :goto_14
.end method

.method public e()Z
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/location/b/h;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    iget-wide v2, p0, Lcom/baidu/location/b/h;->g:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    iput-wide v0, p0, Lcom/baidu/location/b/h;->g:J

    invoke-virtual {p0}, Lcom/baidu/location/b/h;->b()V

    invoke-virtual {p0}, Lcom/baidu/location/b/h;->f()Z

    move-result v0

    goto :goto_19
.end method

.method public f()Z
    .registers 10

    const-wide/16 v7, 0x1388

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/b/h;->f:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_41

    iget-wide v3, p0, Lcom/baidu/location/b/h;->f:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/baidu/location/b/h;->j:J

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    sget-wide v3, Lcom/baidu/location/b/h;->a:J

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/baidu/location/b/h;->j:J

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_7

    invoke-static {}, Lcom/baidu/location/b/h;->i()Z

    move-result v3

    if-eqz v3, :cond_41

    iget-wide v3, p0, Lcom/baidu/location/b/h;->f:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    iget-wide v5, p0, Lcom/baidu/location/b/h;->j:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    :cond_41
    invoke-virtual {p0}, Lcom/baidu/location/b/h;->h()Z

    move-result v0

    goto :goto_7
.end method

.method public g()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1e

    :try_start_6
    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_1c

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1e

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1c
    const-string v0, "&wifio=1"
    :try_end_1e
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_1e} :catch_21
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-object v0

    :catch_1f
    move-exception v1

    goto :goto_1e

    :catch_21
    move-exception v1

    goto :goto_1e
.end method

.method public h()Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/baidu/location/b/h;->k:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_15

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/b/h;->k:J

    :try_start_1b
    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_31

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_14

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_31
    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/location/b/h;->f:J
    :try_end_3c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_3c} :catch_40
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3c} :catch_3e

    const/4 v0, 0x1

    goto :goto_14

    :catch_3e
    move-exception v1

    goto :goto_14

    :catch_40
    move-exception v1

    goto :goto_14
.end method

.method public j()Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1d

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_17
    invoke-static {}, Lcom/baidu/location/b/h;->i()Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    new-instance v1, Lcom/baidu/location/b/g;

    iget-object v2, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/baidu/location/b/g;-><init>(Ljava/util/List;J)V

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/baidu/location/b/g;->e()Z
    :try_end_30
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_30} :catch_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_35

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d

    :catch_35
    move-exception v1

    goto :goto_1d

    :catch_37
    move-exception v1

    goto :goto_1d
.end method

.method public k()Landroid/net/wifi/WifiInfo;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const/16 v3, -0x64

    if-le v2, v3, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000000000"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_37} :catch_3e
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_37} :catch_3c

    move-result v2

    if-nez v2, :cond_5

    :cond_3a
    move-object v0, v1

    goto :goto_5

    :catch_3c
    move-exception v1

    goto :goto_5

    :catch_3e
    move-exception v1

    goto :goto_5
.end method

.method public l()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/h;->k()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_94

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/location/b/h;->m()Ljava/lang/String;

    move-result-object v5

    if-gez v1, :cond_31

    neg-int v1, v1

    :cond_31
    if-eqz v4, :cond_94

    const/16 v6, 0x64

    if-ge v1, v6, :cond_94

    const-string v0, "&wf="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ";"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    :cond_76
    const-string v1, "&"

    const-string v3, "_"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "&wf_n=1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v5, :cond_90

    const-string v0, "&wf_gw="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_90
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_94
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    if-eqz v1, :cond_14

    iget v0, v1, Landroid/net/DhcpInfo;->gateway:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/baidu/location/b/h;->a(J)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public n()Lcom/baidu/location/b/g;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->i()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-virtual {p0}, Lcom/baidu/location/b/h;->p()Lcom/baidu/location/b/g;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    goto :goto_10
.end method

.method public o()Lcom/baidu/location/b/g;
    .registers 2

    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    invoke-virtual {v0}, Lcom/baidu/location/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-virtual {p0}, Lcom/baidu/location/b/h;->p()Lcom/baidu/location/b/g;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/baidu/location/b/h;->e:Lcom/baidu/location/b/g;

    goto :goto_10
.end method

.method public p()Lcom/baidu/location/b/g;
    .registers 5

    iget-object v0, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_13

    :try_start_4
    new-instance v0, Lcom/baidu/location/b/g;

    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/location/b/h;->f:J

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/b/g;-><init>(Ljava/util/List;J)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_12

    :goto_11
    return-object v0

    :catch_12
    move-exception v0

    :cond_13
    new-instance v0, Lcom/baidu/location/b/g;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/location/b/g;-><init>(Ljava/util/List;J)V

    goto :goto_11
.end method

.method public q()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/location/b/h;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c} :catch_10
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    :cond_d
    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d

    :catch_10
    move-exception v1

    goto :goto_d
.end method
