.class final Lcom/baidu/mapsdkvi/a;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {}, Lcom/baidu/mapsdkvi/VDeviceAPI;->onNetworkStateChanged()V

    return-void
.end method
