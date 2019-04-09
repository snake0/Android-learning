.class Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final context:Landroid/content/Context;

.field private final hasWifiPermission:Z

.field private final wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->context:Landroid/content/Context;

    .line 236
    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->hasWifiPermission:Z

    .line 238
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->context:Landroid/content/Context;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_16
    iput-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->hasWifiPermission:Z

    .line 228
    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->hasWifiPermission:Z

    if-eqz v0, :cond_29

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    :goto_24
    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 230
    return-void

    .line 225
    :cond_27
    const/4 v0, 0x0

    goto :goto_16

    .line 228
    :cond_29
    const/4 v0, 0x0

    goto :goto_24
.end method


# virtual methods
.method getHasWifiPermission()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->hasWifiPermission:Z

    return v0
.end method

.method getWifiSSID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 241
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_21

    .line 244
    const-string v1, "wifiInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    .line 245
    if-eqz v0, :cond_21

    .line 246
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_21

    .line 252
    :goto_20
    return-object v0

    :cond_21
    const-string v0, ""

    goto :goto_20
.end method
