.class final Lcom/mapquest/android/maps/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static lastKnownNetworkState:Z


# instance fields
.field private context:Landroid/content/Context;

.field private listening:Z

.field private receiver:Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/mapquest/android/maps/NetworkConnectivityListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->LOG_TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/mapquest/android/maps/NetworkConnectivityListener;Lcom/mapquest/android/maps/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->receiver:Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 21
    return-void
.end method

.method static synthetic access$100(Lcom/mapquest/android/maps/NetworkConnectivityListener;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 11
    sput-boolean p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z

    return p0
.end method

.method public static getLastKnownNetworkState()Z
    .registers 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z

    return v0
.end method

.method static resetNetworkState(Z)V
    .registers 1

    .prologue
    .line 28
    sput-boolean p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z

    .line 29
    return-void
.end method


# virtual methods
.method public startListening()V
    .registers 4

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->listening:Z

    if-nez v0, :cond_15

    .line 34
    :try_start_4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->receiver:Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->listening:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    .line 42
    :cond_15
    :goto_15
    return-void

    .line 37
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method public stopListening()V
    .registers 3

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->listening:Z

    if-eqz v0, :cond_e

    .line 47
    :try_start_4
    iget-object v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->receiver:Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_f

    .line 52
    :goto_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener;->listening:Z

    .line 55
    :cond_e
    return-void

    .line 48
    :catch_f
    move-exception v0

    goto :goto_b
.end method
