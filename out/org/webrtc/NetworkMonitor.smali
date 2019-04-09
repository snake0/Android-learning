.class public Lorg/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"

.field private static instance:Lorg/webrtc/NetworkMonitor;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

.field private currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 70
    if-eqz p1, :cond_24

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lorg/webrtc/NetworkMonitor;->assertIsTrue(Z)V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_26

    :goto_13
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->applicationContext:Landroid/content/Context;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    .line 76
    return-void

    .line 70
    :cond_24
    const/4 v0, 0x0

    goto :goto_a

    .line 71
    :cond_26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_13
.end method

.method static synthetic access$000(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method public static addNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .registers 2

    .prologue
    .line 188
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 189
    return-void
.end method

.method private addNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method private static assertIsTrue(Z)V
    .registers 3

    .prologue
    .line 113
    if-nez p0, :cond_a

    .line 114
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected to be true"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 116
    :cond_a
    return-void
.end method

.method private destroyAutoDetector()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-eqz v0, :cond_c

    .line 142
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->destroy()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 145
    :cond_c
    return-void
.end method

.method public static getAutoDetectorForTest()Lorg/webrtc/NetworkMonitorAutoDetect;
    .registers 1

    .prologue
    .line 226
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    iget-object v0, v0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    return-object v0
.end method

.method private getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method private getCurrentDefaultNetId()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getDefaultNetId()I

    move-result v0

    goto :goto_5
.end method

.method public static getInstance()Lorg/webrtc/NetworkMonitor;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lorg/webrtc/NetworkMonitor;
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_d

    .line 84
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 86
    :cond_d
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    return-object v0
.end method

.method public static isInitialized()Z
    .registers 1

    .prologue
    .line 90
    sget-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isOnline()Z
    .registers 2

    .prologue
    .line 210
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0}, Lorg/webrtc/NetworkMonitor;->getCurrentConnectionType()Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 211
    sget-object v1, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_12

    sget-object v1, Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private native nativeCreateNetworkMonitor()J
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .registers 6

    .prologue
    .line 176
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 177
    invoke-direct {p0, v2, v3}, Lorg/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_6

    .line 179
    :cond_1a
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/NetworkMonitor$NetworkObserver;

    .line 180
    invoke-interface {v0, p1}, Lorg/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_20

    .line 182
    :cond_30
    return-void
.end method

.method public static removeNetworkObserver(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .registers 2

    .prologue
    .line 199
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V

    .line 200
    return-void
.end method

.method private removeNetworkObserverInternal(Lorg/webrtc/NetworkMonitor$NetworkObserver;)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method static resetInstanceForTests(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 221
    new-instance v0, Lorg/webrtc/NetworkMonitor;

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/webrtc/NetworkMonitor;->instance:Lorg/webrtc/NetworkMonitor;

    .line 222
    return-void
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .registers 2

    .prologue
    .line 109
    invoke-static {}, Lorg/webrtc/NetworkMonitor;->getInstance()Lorg/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 110
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(Z)V
    .registers 5

    .prologue
    .line 148
    if-nez p1, :cond_6

    .line 149
    invoke-direct {p0}, Lorg/webrtc/NetworkMonitor;->destroyAutoDetector()V

    .line 165
    :cond_5
    :goto_5
    return-void

    .line 152
    :cond_6
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    if-nez v0, :cond_5

    .line 153
    new-instance v0, Lorg/webrtc/NetworkMonitorAutoDetect;

    new-instance v1, Lorg/webrtc/NetworkMonitor$1;

    invoke-direct {v1, p0}, Lorg/webrtc/NetworkMonitor$1;-><init>(Lorg/webrtc/NetworkMonitor;)V

    iget-object v2, p0, Lorg/webrtc/NetworkMonitor;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lorg/webrtc/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    .line 161
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lorg/webrtc/NetworkMonitor;->autoDetector:Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-virtual {v1, v0}, Lorg/webrtc/NetworkMonitorAutoDetect;->getCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_5
.end method

.method private startMonitoring(J)V
    .registers 6

    .prologue
    .line 120
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start monitoring from native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 123
    return-void
.end method

.method private stopMonitoring(J)V
    .registers 6

    .prologue
    .line 127
    const-string v0, "NetworkMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop monitoring from native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/webrtc/NetworkMonitor;->setAutoDetectConnectivityStateInternal(Z)V

    .line 129
    iget-object v0, p0, Lorg/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method private updateCurrentConnectionType(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lorg/webrtc/NetworkMonitor;->currentConnectionType:Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 169
    invoke-direct {p0, p1}, Lorg/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lorg/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    .line 170
    return-void
.end method
