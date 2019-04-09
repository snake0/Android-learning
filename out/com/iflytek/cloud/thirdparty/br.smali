.class public Lcom/iflytek/cloud/thirdparty/br;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/iflytek/cloud/thirdparty/br;


# instance fields
.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/br;->a:Lcom/iflytek/cloud/thirdparty/br;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->c:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/br;->d:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/cloud/thirdparty/br;->e:J

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/br;->c:Landroid/content/Context;

    const-string v0, "com.iflytek.msc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->b:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/br;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/br;->d:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;
    .registers 2

    sget-object v0, Lcom/iflytek/cloud/thirdparty/br;->a:Lcom/iflytek/cloud/thirdparty/br;

    if-nez v0, :cond_9

    if-eqz p0, :cond_9

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/br;->c(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;

    :cond_9
    sget-object v0, Lcom/iflytek/cloud/thirdparty/br;->a:Lcom/iflytek/cloud/thirdparty/br;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/iflytek/cloud/Setting;->getLocationEnable()Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v1, v0

    :goto_1b
    array-length v3, v2

    if-ge v1, v3, :cond_7

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_37

    move-result v3

    if-eqz v3, :cond_34

    :cond_32
    const/4 v0, 0x1

    goto :goto_7

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :catch_37
    move-exception v1

    goto :goto_7
.end method

.method private static declared-synchronized c(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/br;
    .registers 3

    const-class v1, Lcom/iflytek/cloud/thirdparty/br;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/iflytek/cloud/thirdparty/br;->a:Lcom/iflytek/cloud/thirdparty/br;

    if-nez v0, :cond_e

    new-instance v0, Lcom/iflytek/cloud/thirdparty/br;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/br;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/br;->a:Lcom/iflytek/cloud/thirdparty/br;

    :cond_e
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bv;->a(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    sget-object v0, Lcom/iflytek/cloud/thirdparty/br;->a:Lcom/iflytek/cloud/thirdparty/br;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v1

    return-object v0

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)F
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/br;->d:Z

    if-eqz v0, :cond_98

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/br;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x34bc0

    cmp-long v0, v0, v2

    if-lez v0, :cond_98

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/iflytek/cloud/thirdparty/br;->e:J

    const-string v1, "loction_last_update"

    iget-wide v2, p0, Lcom/iflytek/cloud/thirdparty/br;->e:J

    invoke-virtual {p0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/br;->a(Ljava/lang/String;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocation begin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bestProvider:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_a3

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/location/Location;)V

    :cond_7e
    :goto_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLocation end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_98} :catch_b6
    .catchall {:try_start_1 .. :try_end_98} :catchall_b8

    :cond_98
    :goto_98
    :try_start_98
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->b:Landroid/content/SharedPreferences;

    const v1, -0x42333333    # -0.1f

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
    :try_end_a0
    .catchall {:try_start_98 .. :try_end_a0} :catchall_b8

    move-result v0

    monitor-exit p0

    return v0

    :cond_a3
    :try_start_a3
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/br;->a(Landroid/location/Location;)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b5} :catch_b6
    .catchall {:try_start_a3 .. :try_end_b5} :catchall_b8

    goto :goto_7e

    :catch_b6
    move-exception v0

    goto :goto_98

    :catchall_b8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/location/Location;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "msc.lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const-string v1, "msc.lng"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method public a(Ljava/lang/String;J)V
    .registers 5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/br;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
