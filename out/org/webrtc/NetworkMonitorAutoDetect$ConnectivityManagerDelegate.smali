.class Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const-class v0, Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 108
    return-void
.end method


# virtual methods
.method getAllNetworks()[Landroid/net/Network;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_8

    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/Network;

    .line 158
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    goto :goto_7
.end method

.method getDefaultNetId()I
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 168
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_7

    move v0, v1

    .line 198
    :cond_6
    :goto_6
    return v0

    .line 175
    :cond_7
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 176
    if-nez v3, :cond_11

    move v0, v1

    .line 177
    goto :goto_6

    .line 179
    :cond_11
    invoke-virtual {p0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    .line 181
    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_19
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    .line 182
    invoke-virtual {p0, v6}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->hasInternetCapability(Landroid/net/Network;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 181
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 185
    :cond_26
    iget-object v7, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 186
    if-eqz v7, :cond_23

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    if-ne v7, v8, :cond_23

    .line 194
    sget-boolean v7, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->$assertionsDisabled:Z

    if-nez v7, :cond_44

    if-eq v0, v1, :cond_44

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_44
    # invokes: Lorg/webrtc/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)I
    invoke-static {v6}, Lorg/webrtc/NetworkMonitorAutoDetect;->access$000(Landroid/net/Network;)I

    move-result v0

    goto :goto_23
.end method

.method getNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 121
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_c

    .line 122
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 124
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    goto :goto_b
.end method

.method getNetworkState(Landroid/net/Network;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 133
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_c

    .line 134
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 136
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    goto :goto_b
.end method

.method getNetworkState(Landroid/net/NetworkInfo;)Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .registers 6

    .prologue
    const/4 v2, -0x1

    .line 143
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_10

    .line 144
    :cond_9
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    .line 146
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;-><init>(ZII)V

    goto :goto_f
.end method

.method hasInternetCapability(Landroid/net/Network;)Z
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_6

    .line 212
    :cond_5
    :goto_5
    return v0

    .line 210
    :cond_6
    iget-object v1, p0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_5

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method
