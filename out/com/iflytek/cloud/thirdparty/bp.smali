.class public Lcom/iflytek/cloud/thirdparty/bp;
.super Ljava/lang/Object;


# static fields
.field public static a:[[Ljava/lang/String;

.field public static b:[[Ljava/lang/String;

.field private static c:[[Ljava/lang/String;

.field private static d:Lcom/iflytek/cloud/thirdparty/ce;

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v4

    const-string v2, ":"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, ","

    aput-object v2, v1, v4

    const-string v2, "_"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->a:[[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.manufact"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.model"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.product"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.display"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.host"

    aput-object v2, v1, v4

    sget-object v2, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.id"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.device"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.board"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.brand"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.user"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.type"

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.cpu"

    aput-object v2, v1, v4

    const-string v2, "CPU_ABI"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.cpu2"

    aput-object v2, v1, v4

    const-string v2, "CPU_ABI2"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.serial"

    aput-object v2, v1, v4

    const-string v2, "SERIAL"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.hardware"

    aput-object v2, v1, v4

    const-string v2, "HARDWARE"

    aput-object v2, v1, v5

    aput-object v1, v0, v7

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "os.bootloader"

    aput-object v2, v1, v4

    const-string v2, "BOOTLOADER"

    aput-object v2, v1, v5

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "os.radio"

    aput-object v3, v2, v4

    const-string v3, "RADIO"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->c:[[Ljava/lang/String;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    sput-boolean v4, Lcom/iflytek/cloud/thirdparty/bp;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->f:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;
    .registers 3

    const-class v1, Lcom/iflytek/cloud/thirdparty/bp;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/iflytek/cloud/thirdparty/bp;->e:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->g(Landroid/content/Context;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_9

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check and replace src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    if-eqz p0, :cond_34

    move v0, v1

    :goto_1b
    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->a:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_35

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->a:[[Ljava/lang/String;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    sget-object v3, Lcom/iflytek/cloud/thirdparty/bp;->a:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_34
    move-object p0, v0

    :cond_35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check and replace result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/iflytek/cloud/thirdparty/ce;Landroid/content/Context;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "app.ver.name"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app.ver.code"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.pkg"

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.path"

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app.name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    :goto_5a
    return-void

    :catch_5b
    move-exception v0

    goto :goto_5a
.end method

.method public static b(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;
    .registers 6

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->a(Landroid/content/Context;)Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v0

    new-instance v1, Lcom/iflytek/cloud/thirdparty/ce;

    invoke-direct {v1}, Lcom/iflytek/cloud/thirdparty/ce;-><init>()V

    const-string v2, "app.name"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "app.path"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "app.pkg"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "app.ver.name"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "app.ver.code"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.system"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.resolution"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.density"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "net.mac"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.imei"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.imsi"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.version"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.release"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.incremental"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "os.android_id"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    const-string v2, "carrier"

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    aget-object v2, v2, v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Lcom/iflytek/cloud/thirdparty/ce;Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/iflytek/cloud/thirdparty/bp;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v1, ""

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_11} :catch_15

    move-result v2

    if-nez v2, :cond_18

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    move-object v0, v1

    goto :goto_14

    :cond_18
    move-object v0, v1

    goto :goto_14
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    const-class v0, Landroid/os/Build;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_1a

    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    const-string v0, "unknown"

    goto :goto_15

    :cond_1a
    const-string v0, "unknown"

    goto :goto_15
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    const-string v1, ""

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_7a

    :try_start_9
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v4

    if-eqz v4, :cond_d

    array-length v0, v4

    if-eqz v0, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    move v0, v2

    :goto_29
    if-ge v0, v6, :cond_43

    aget-byte v7, v4, v0

    const-string v8, "%02X:"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_52

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_5b
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_5b} :catch_61

    move-result v4

    if-lez v4, :cond_d

    :goto_5e
    return-object v0

    :cond_5f
    move-object v0, v1

    goto :goto_5e

    :catch_61
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->e(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5e

    :cond_7a
    :try_start_7a
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_89} :catch_8b

    move-result-object v0

    goto :goto_5e

    :catch_8b
    move-exception v0

    const-string v0, "Failed to get mac Info"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_5e
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :try_start_8
    new-instance v0, Lcom/iflytek/cloud/thirdparty/bp$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/bp$1;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1a} :catch_35

    :cond_1a
    :goto_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get user agent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->f:Ljava/lang/String;

    return-object v0

    :catch_35
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_36

    const-string v0, "tablet"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_1b} :catch_40

    :cond_1b
    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get device type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;

    return-object v0

    :cond_36
    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-lt v0, v1, :cond_45

    :try_start_3b
    const-string v0, "handset"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3f} :catch_40

    goto :goto_1b

    :catch_40
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_45
    :try_start_45
    const-string v0, "unknow"

    sput-object v0, Lcom/iflytek/cloud/thirdparty/bp;->g:Ljava/lang/String;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_49} :catch_40

    goto :goto_1b
.end method

.method private static g(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->a()V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "os.system"

    const-string v3, "Android"

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-static {v0, p0}, Lcom/iflytek/cloud/thirdparty/bp;->a(Lcom/iflytek/cloud/thirdparty/ce;Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "os.resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "os.density"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_cd
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_62} :catch_dd

    :try_start_62
    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "os.imei"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_6d} :catch_c6
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6d} :catch_cd

    :goto_6d
    :try_start_6d
    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "os.imsi"

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_78} :catch_d6
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_78} :catch_cd

    :goto_78
    :try_start_78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8f

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v3, "os.android_id"

    invoke-virtual {v2, v3, v0}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "os.version"

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "os.release"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "os.incremental"

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_ab
    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_e6

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    sget-object v3, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Lcom/iflytek/cloud/thirdparty/bp;->b:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_ab

    :catch_c6
    move-exception v2

    const-string v2, "Failed to get did Info"

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_cc} :catch_cd
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_cc} :catch_dd

    goto :goto_6d

    :catch_cd
    move-exception v0

    const-string v0, "Failed to get prop Info"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sput-boolean v1, Lcom/iflytek/cloud/thirdparty/bp;->e:Z

    :goto_d5
    return-void

    :catch_d6
    move-exception v0

    :try_start_d7
    const-string v0, "Failed to get sbid Info"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_dc} :catch_cd
    .catch Ljava/lang/Throwable; {:try_start_d7 .. :try_end_dc} :catch_dd

    goto :goto_78

    :catch_dd
    move-exception v0

    const-string v0, "Failed to get property Info"

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;)V

    sput-boolean v1, Lcom/iflytek/cloud/thirdparty/bp;->e:Z

    goto :goto_d5

    :cond_e6
    move v0, v1

    :goto_e7
    :try_start_e7
    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->c:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_106

    sget-object v2, Lcom/iflytek/cloud/thirdparty/bp;->c:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/bp;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    sget-object v4, Lcom/iflytek/cloud/thirdparty/bp;->c:[[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v2}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e7

    :cond_106
    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "net.mac"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    const-string v2, "carrier"

    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/bp;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/cloud/thirdparty/ce;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/iflytek/cloud/thirdparty/bp;->d:Lcom/iflytek/cloud/thirdparty/ce;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ce;->d()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/iflytek/cloud/thirdparty/bp;->e:Z
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_124} :catch_cd
    .catch Ljava/lang/Throwable; {:try_start_e7 .. :try_end_124} :catch_dd

    goto :goto_d5
.end method
