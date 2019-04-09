.class Lqunar/lego/utils/GetInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static DEFAULT_VALUE:Ljava/lang/String; = null

.field private static final GLOBALENV_CLASS_STR:Ljava/lang/String; = "com.mqunar.atomenv.GlobalEnv"

.field private static final PREFERRED_APN_URI:Landroid/net/Uri;

.field private static batteryData:Ljava/lang/String;

.field private static batteryReceiver:Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;

.field private static gyroscopeListener:Landroid/hardware/SensorEventListener;

.field private static gyroscopeSensorData:Ljava/lang/String;

.field private static lightListener:Landroid/hardware/SensorEventListener;

.field private static lightSensorData:Ljava/lang/String;

.field private static mGlobalEnv:Ljava/lang/Object;

.field private static orientationListener:Landroid/hardware/SensorEventListener;

.field private static orientationSensorData:Ljava/lang/String;

.field private static sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

.field private static sSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, ""

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    .line 60
    sput-object v1, Lqunar/lego/utils/GetInfoUtils;->sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

    .line 256
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 610
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->gyroscopeSensorData:Ljava/lang/String;

    .line 611
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->lightSensorData:Ljava/lang/String;

    .line 612
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->orientationSensorData:Ljava/lang/String;

    .line 613
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->batteryData:Ljava/lang/String;

    .line 627
    sput-object v1, Lqunar/lego/utils/GetInfoUtils;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 658
    sput-object v1, Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;

    .line 689
    sput-object v1, Lqunar/lego/utils/GetInfoUtils;->orientationListener:Landroid/hardware/SensorEventListener;

    .line 721
    new-instance v0, Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;

    invoke-direct {v0, v1}, Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;-><init>(Lqunar/lego/utils/GetInfoUtils$1;)V

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->batteryReceiver:Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;

    .line 741
    sput-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lqunar/lego/utils/GetInfoUtils;->gyroscopeSensorData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Landroid/hardware/SensorEventListener;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lqunar/lego/utils/GetInfoUtils;->lightSensorData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Landroid/hardware/SensorEventListener;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lqunar/lego/utils/GetInfoUtils;->orientationSensorData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500()Landroid/hardware/SensorEventListener;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->orientationListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lqunar/lego/utils/GetInfoUtils;->batteryData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800()Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->batteryReceiver:Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;

    return-object v0
.end method

.method private static getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;
    .registers 5

    .prologue
    .line 744
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    if-nez v0, :cond_1c

    .line 745
    const-class v1, Lqunar/lego/utils/GetInfoUtils;

    monitor-enter v1

    .line 746
    :try_start_7
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    if-nez v0, :cond_1b

    .line 747
    const-string v0, "com.mqunar.atomenv.GlobalEnv"

    const-string v2, "getInstance"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lqunar/lego/utils/GetInfoUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    .line 749
    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1f

    .line 751
    :cond_1c
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

    return-object v0

    .line 749
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method static getInstance()Lqunar/lego/utils/GetInfoUtils;
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

    if-nez v0, :cond_13

    .line 64
    const-class v1, Lqunar/lego/utils/GetInfoUtils;

    monitor-enter v1

    .line 65
    :try_start_7
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

    if-nez v0, :cond_12

    .line 66
    new-instance v0, Lqunar/lego/utils/GetInfoUtils;

    invoke-direct {v0}, Lqunar/lego/utils/GetInfoUtils;-><init>()V

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

    .line 68
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 70
    :cond_13
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->sGetInfoUtils:Lqunar/lego/utils/GetInfoUtils;

    return-object v0

    .line 68
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 783
    const/4 v0, 0x0

    .line 784
    :goto_1
    if-eqz p0, :cond_d

    .line 786
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_13

    move-result-object v0

    .line 789
    :goto_7
    if-eqz v0, :cond_e

    .line 790
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 795
    :cond_d
    return-object v0

    .line 793
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    .line 787
    :catch_13
    move-exception v1

    goto :goto_7
.end method

.method private static getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .registers 3

    .prologue
    .line 618
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->sSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_12

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lqunar/lego/utils/GetInfoUtils;->sSensorManager:Landroid/hardware/SensorManager;

    .line 621
    :cond_12
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->sSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method static invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 773
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 774
    invoke-static {v0, p0, p2}, Lqunar/lego/utils/GetInfoUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 775
    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 778
    :goto_c
    return-object v0

    .line 776
    :catch_d
    move-exception v0

    .line 778
    const/4 v0, 0x0

    goto :goto_c
.end method

.method static invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 761
    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 762
    invoke-static {v1, p1, p2}, Lqunar/lego/utils/GetInfoUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 763
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    .line 767
    :goto_e
    return-object v0

    .line 764
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method private static declared-synchronized registerBattery(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 724
    const-class v1, Lqunar/lego/utils/GetInfoUtils;

    monitor-enter v1

    :try_start_3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->batteryReceiver:Lqunar/lego/utils/GetInfoUtils$BatteryReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    .line 726
    monitor-exit v1

    return-void

    .line 724
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized registerGyroscopeSensor(Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 634
    const-class v1, Lqunar/lego/utils/GetInfoUtils;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lqunar/lego/utils/GetInfoUtils;->getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 635
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 636
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    if-eqz v3, :cond_15

    .line 637
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 639
    :cond_15
    new-instance v3, Lqunar/lego/utils/GetInfoUtils$2;

    invoke-direct {v3, v0}, Lqunar/lego/utils/GetInfoUtils$2;-><init>(Landroid/hardware/SensorManager;)V

    sput-object v3, Lqunar/lego/utils/GetInfoUtils;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 652
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->gyroscopeListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 653
    monitor-exit v1

    return-void

    .line 634
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized registerLightSensor(Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 665
    const-class v1, Lqunar/lego/utils/GetInfoUtils;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lqunar/lego/utils/GetInfoUtils;->getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 666
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 667
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;

    if-eqz v3, :cond_15

    .line 668
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 670
    :cond_15
    new-instance v3, Lqunar/lego/utils/GetInfoUtils$3;

    invoke-direct {v3, v0}, Lqunar/lego/utils/GetInfoUtils$3;-><init>(Landroid/hardware/SensorManager;)V

    sput-object v3, Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;

    .line 683
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 684
    monitor-exit v1

    return-void

    .line 665
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized registerOrientationSensor(Landroid/content/Context;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 697
    const-class v1, Lqunar/lego/utils/GetInfoUtils;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lqunar/lego/utils/GetInfoUtils;->getSensorManager(Landroid/content/Context;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 698
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 699
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->orientationListener:Landroid/hardware/SensorEventListener;

    if-eqz v3, :cond_15

    .line 700
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->orientationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 702
    :cond_15
    new-instance v3, Lqunar/lego/utils/GetInfoUtils$4;

    invoke-direct {v3, v0}, Lqunar/lego/utils/GetInfoUtils$4;-><init>(Landroid/hardware/SensorManager;)V

    sput-object v3, Lqunar/lego/utils/GetInfoUtils;->orientationListener:Landroid/hardware/SensorEventListener;

    .line 715
    sget-object v3, Lqunar/lego/utils/GetInfoUtils;->orientationListener:Landroid/hardware/SensorEventListener;

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 716
    monitor-exit v1

    return-void

    .line 697
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static safeCloseIO(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 802
    if-eqz p0, :cond_5

    .line 804
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 809
    :cond_5
    :goto_5
    return-void

    .line 805
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method getADID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .prologue
    .line 204
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    .line 206
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 209
    :cond_1a
    invoke-virtual {p0}, Lqunar/lego/utils/GetInfoUtils;->getUid()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 213
    :cond_1e
    :goto_1e
    return-object v0

    .line 211
    :catch_1f
    move-exception v1

    goto :goto_1e
.end method

.method getApn(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 259
    sget-object v6, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    .line 261
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_49

    .line 264
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 266
    if-eqz v0, :cond_93

    .line 267
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_93

    .line 268
    const-string v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 271
    :goto_41
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_6e

    .line 292
    :goto_44
    if-nez v0, :cond_88

    .line 293
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    .line 296
    :goto_48
    return-object v0

    .line 274
    :cond_49
    :try_start_49
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_91

    .line 276
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 277
    const-string v0, "user"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_6d} :catch_6e

    goto :goto_44

    .line 281
    :catch_6e
    move-exception v0

    .line 283
    :try_start_6f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 285
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_82} :catch_84

    move-result-object v0

    goto :goto_44

    .line 287
    :catch_84
    move-exception v0

    .line 288
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_44

    .line 296
    :cond_88
    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_91
    move-object v0, v6

    goto :goto_44

    :cond_93
    move-object v0, v6

    goto :goto_41
.end method

.method getBaseStationId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 460
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 461
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 464
    :goto_14
    return-object v0

    .line 462
    :catch_15
    move-exception v0

    .line 464
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_14
.end method

.method getBattery(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 602
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/GetInfoUtils;->registerBattery(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 605
    :goto_3
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->batteryData:Ljava/lang/String;

    return-object v0

    .line 603
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method getBuild()Lorg/json/JSONObject;
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 233
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 235
    :try_start_6
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 236
    array-length v4, v3

    move v1, v0

    :goto_e
    if-ge v1, v4, :cond_2a

    aget-object v5, v3, v1

    .line 237
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 238
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_26} :catch_29

    .line 236
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 240
    :catch_29
    move-exception v1

    .line 243
    :cond_2a
    :try_start_2a
    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 244
    array-length v3, v1

    :goto_31
    if-ge v0, v3, :cond_4d

    aget-object v4, v1, v0

    .line 245
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 246
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_49} :catch_4c

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 248
    :catch_4c
    move-exception v0

    .line 250
    :cond_4d
    return-object v2
.end method

.method getCid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 157
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getRCid"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 163
    :goto_19
    return-object v0

    .line 161
    :catch_1a
    move-exception v0

    .line 163
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getCpuName()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 474
    .line 478
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_2a
    .catchall {:try_start_1 .. :try_end_d} :catchall_30

    .line 480
    :cond_d
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 481
    const-string v3, "Hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 482
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_24} :catch_3d
    .catchall {:try_start_d .. :try_end_24} :catchall_3b

    .line 488
    :cond_24
    invoke-static {v1}, Lqunar/lego/utils/GetInfoUtils;->safeCloseIO(Ljava/io/Closeable;)V

    .line 490
    :goto_27
    if-eqz v0, :cond_38

    :goto_29
    return-object v0

    .line 486
    :catch_2a
    move-exception v1

    move-object v1, v0

    .line 488
    :goto_2c
    invoke-static {v1}, Lqunar/lego/utils/GetInfoUtils;->safeCloseIO(Ljava/io/Closeable;)V

    goto :goto_27

    :catchall_30
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_34
    invoke-static {v1}, Lqunar/lego/utils/GetInfoUtils;->safeCloseIO(Ljava/io/Closeable;)V

    throw v0

    .line 490
    :cond_38
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_29

    .line 488
    :catchall_3b
    move-exception v0

    goto :goto_34

    .line 486
    :catch_3d
    move-exception v2

    goto :goto_2c
.end method

.method getGid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getGid"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 105
    :goto_19
    return-object v0

    .line 103
    :catch_1a
    move-exception v0

    .line 105
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getGyroscopeSensorData(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 567
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/GetInfoUtils;->registerGyroscopeSensor(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 570
    :goto_3
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->gyroscopeSensorData:Ljava/lang/String;

    return-object v0

    .line 568
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method getImageCount(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 497
    .line 499
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_2b
    .catchall {:try_start_1 .. :try_end_12} :catchall_33

    move-result-object v1

    .line 500
    if-eqz v1, :cond_23

    .line 501
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_3d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3a

    move-result-object v0

    .line 505
    if-eqz v1, :cond_22

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_22
    :goto_22
    return-object v0

    .line 505
    :cond_23
    if-eqz v1, :cond_28

    .line 506
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 509
    :cond_28
    :goto_28
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_22

    .line 503
    :catch_2b
    move-exception v0

    move-object v0, v6

    .line 505
    :goto_2d
    if-eqz v0, :cond_28

    .line 506
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_28

    .line 505
    :catchall_33
    move-exception v0

    :goto_34
    if-eqz v6, :cond_39

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_39
    throw v0

    .line 505
    :catchall_3a
    move-exception v0

    move-object v6, v1

    goto :goto_34

    .line 503
    :catch_3d
    move-exception v0

    move-object v0, v1

    goto :goto_2d
.end method

.method getImsi(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 304
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 305
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 308
    :goto_10
    return-object v0

    .line 306
    :catch_11
    move-exception v0

    .line 308
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_10
.end method

.method getIp()Ljava/lang/String;
    .registers 7

    .prologue
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const/4 v1, 0x1

    .line 320
    :try_start_6
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 321
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 322
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1a
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 323
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 324
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_4a

    instance-of v5, v0, Ljava/net/Inet6Address;

    if-nez v5, :cond_4a

    .line 325
    if-nez v1, :cond_37

    .line 326
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_37
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const/4 v0, 0x0

    :goto_3f
    move v1, v0

    .line 331
    goto :goto_1a

    .line 333
    :cond_41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_44} :catch_46

    move-result-object v0

    .line 336
    :goto_45
    return-object v0

    .line 334
    :catch_46
    move-exception v0

    .line 336
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_45

    :cond_4a
    move v0, v1

    goto :goto_3f
.end method

.method getLightSensorData(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 578
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/GetInfoUtils;->registerLightSensor(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 581
    :goto_3
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->lightSensorData:Ljava/lang/String;

    return-object v0

    .line 579
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method getLinkedWifi(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 441
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 442
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v1}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    .line 443
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 444
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 445
    const-string v2, "ssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 446
    const-string v2, "bssid"

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 452
    :goto_3e
    return-object v0

    .line 450
    :catch_3f
    move-exception v0

    .line 452
    :cond_40
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method getLocation()Ljava/lang/String;
    .registers 5

    .prologue
    .line 344
    :try_start_0
    const-string v0, "qunar.sdk.location.LocationFacade"

    const-string v1, "getNewestCacheLocation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 345
    if-eqz v0, :cond_33

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_30} :catch_32

    move-result-object v0

    .line 350
    :goto_31
    return-object v0

    .line 348
    :catch_32
    move-exception v0

    .line 350
    :cond_33
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_31
.end method

.method getMacAddress()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    :try_start_6
    const-string v1, "eth1"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 362
    if-nez v1, :cond_14

    .line 363
    const-string v1, "wlan0"

    invoke-static {v1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 365
    :cond_14
    if-nez v1, :cond_19

    .line 366
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    .line 378
    :goto_18
    return-object v0

    .line 368
    :cond_19
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    .line 369
    array-length v3, v1

    :goto_1e
    if-ge v0, v3, :cond_38

    aget-byte v4, v1, v0

    .line 370
    const-string v5, "%02X:"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 372
    :cond_38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_47

    .line 373
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 375
    :cond_47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_4a} :catch_4c

    move-result-object v0

    goto :goto_18

    .line 376
    :catch_4c
    move-exception v0

    .line 378
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_18
.end method

.method getMno(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 386
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 387
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 390
    :goto_10
    return-object v0

    .line 388
    :catch_11
    move-exception v0

    .line 390
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_10
.end method

.method getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 398
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method getNetwork(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 406
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 407
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 409
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 413
    :goto_1c
    return-object v0

    .line 411
    :catch_1d
    move-exception v0

    .line 413
    :cond_1e
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_1c
.end method

.method getOrientationSensorData(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 589
    :try_start_0
    invoke-static {p1}, Lqunar/lego/utils/GetInfoUtils;->registerOrientationSensor(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 593
    :goto_3
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->orientationSensorData:Ljava/lang/String;

    return-object v0

    .line 590
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method getOsVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 420
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method getPid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 127
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getPid"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 133
    :goto_19
    return-object v0

    .line 131
    :catch_1a
    move-exception v0

    .line 133
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getSid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getSid"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 119
    :goto_19
    return-object v0

    .line 117
    :catch_1a
    move-exception v0

    .line 119
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getSsn(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 222
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 223
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 226
    :goto_10
    return-object v0

    .line 224
    :catch_11
    move-exception v0

    .line 226
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_10
.end method

.method getTel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 519
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 521
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    .line 524
    :goto_10
    return-object v0

    .line 522
    :catch_11
    move-exception v0

    .line 524
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_10
.end method

.method getUSid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 187
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getUserId"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 193
    :goto_19
    return-object v0

    .line 191
    :catch_1a
    move-exception v0

    .line 193
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getUid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getUid"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 178
    :goto_19
    return-object v0

    .line 176
    :catch_1a
    move-exception v0

    .line 178
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getVid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 142
    :try_start_0
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->getGlobalRnvInstance()Lqunar/lego/utils/GetInfoUtils;

    const-string v0, "getVid"

    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->mGlobalEnv:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lqunar/lego/utils/GetInfoUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_1a

    move-result v1

    if-nez v1, :cond_1b

    .line 148
    :goto_19
    return-object v0

    .line 146
    :catch_1a
    move-exception v0

    .line 148
    :cond_1b
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_19
.end method

.method getVolume(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 428
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 433
    :goto_2d
    return-object v0

    .line 431
    :catch_2e
    move-exception v0

    .line 433
    sget-object v0, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    goto :goto_2d
.end method

.method getWh(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 81
    sget-object v1, Lqunar/lego/utils/GetInfoUtils;->DEFAULT_VALUE:Ljava/lang/String;

    .line 83
    :try_start_2
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 85
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 86
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3c} :catch_3e

    move-result-object v0

    .line 90
    :goto_3d
    return-object v0

    .line 88
    :catch_3e
    move-exception v0

    move-object v0, v1

    goto :goto_3d
.end method

.method getWifiList(Landroid/content/Context;I)Lorg/json/JSONArray;
    .registers 11

    .prologue
    .line 532
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 534
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p1, v1}, Lqunar/lego/utils/GetInfoUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_82

    .line 535
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 537
    new-instance v0, Lqunar/lego/utils/GetInfoUtils$1;

    invoke-direct {v0, p0}, Lqunar/lego/utils/GetInfoUtils$1;-><init>(Lqunar/lego/utils/GetInfoUtils;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 543
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 544
    const/4 v0, 0x0

    move v2, v0

    :goto_2e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7f

    if-ge v2, p2, :cond_7f

    .line 545
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 546
    const-string v5, "ssid"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string v5, "bssid"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v6, "2"

    const-string v7, "1"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "a"

    const-string v7, "b"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    const-string v5, "level"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const/16 v6, 0x3e9

    invoke-static {v0, v6}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 549
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_7b} :catch_81

    .line 544
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e

    :cond_7f
    move-object v0, v1

    .line 556
    :goto_80
    return-object v0

    .line 553
    :catch_81
    move-exception v0

    .line 556
    :cond_82
    const/4 v0, 0x0

    goto :goto_80
.end method
