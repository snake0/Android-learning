.class Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mapquest/android/maps/NetworkConnectivityListener;


# direct methods
.method private constructor <init>(Lcom/mapquest/android/maps/NetworkConnectivityListener;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/mapquest/android/maps/NetworkConnectivityListener;Lcom/mapquest/android/maps/NetworkConnectivityListener$1;)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/mapquest/android/maps/NetworkConnectivityListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .prologue
    const/16 v7, 0x3e

    const/4 v6, 0x0

    const/16 v5, 0x3d

    const/4 v4, 0x1

    .line 62
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 63
    iget-object v1, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    # getter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$100(Lcom/mapquest/android/maps/NetworkConnectivityListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v3, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    # getter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$100(Lcom/mapquest/android/maps/NetworkConnectivityListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 64
    if-gez v1, :cond_40

    if-eqz v0, :cond_40

    .line 65
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 66
    # setter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z
    invoke-static {v4}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$202(Z)Z

    .line 67
    invoke-static {v5}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 91
    :goto_38
    return-void

    .line 69
    :cond_39
    # setter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z
    invoke-static {v6}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$202(Z)Z

    .line 70
    invoke-static {v7}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_38

    .line 72
    :cond_40
    if-gez v1, :cond_49

    .line 73
    # setter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z
    invoke-static {v4}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$202(Z)Z

    .line 74
    invoke-static {v5}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_38

    .line 77
    :cond_49
    :try_start_49
    iget-object v0, p0, Lcom/mapquest/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;->this$0:Lcom/mapquest/android/maps/NetworkConnectivityListener;

    # getter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$100(Lcom/mapquest/android/maps/NetworkConnectivityListener;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 78
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 80
    const/4 v0, 0x1

    # setter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$202(Z)Z

    .line 81
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    goto :goto_38

    .line 86
    :catch_6b
    move-exception v0

    goto :goto_38

    .line 83
    :cond_6d
    const/4 v0, 0x0

    # setter for: Lcom/mapquest/android/maps/NetworkConnectivityListener;->lastKnownNetworkState:Z
    invoke-static {v0}, Lcom/mapquest/android/maps/NetworkConnectivityListener;->access$202(Z)Z

    .line 84
    const/16 v0, 0x3e

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_76} :catch_6b

    goto :goto_38
.end method
