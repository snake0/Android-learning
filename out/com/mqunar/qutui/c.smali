.class Lcom/mqunar/qutui/c;
.super Lcom/mqunar/qutui/IQutuiInterface$Stub;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/NetService;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/NetService;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/mqunar/qutui/c;->a:Lcom/mqunar/qutui/NetService;

    invoke-direct {p0}, Lcom/mqunar/qutui/IQutuiInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public oneKeyCremation()Z
    .registers 4

    .prologue
    .line 59
    const-string v0, "NetService"

    const-string v1, "IQutuiInterface oneKeyCremation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/mqunar/cock/network/OneKeyCremation;->getInstance()Lcom/mqunar/cock/network/OneKeyCremation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/cock/network/OneKeyCremation;->oneKeyCremation()Z

    move-result v0

    return v0
.end method

.method public registerCallBack(Lcom/mqunar/qutui/OnIMMessage;)V
    .registers 5

    .prologue
    .line 41
    const-string v0, "NetService"

    const-string v1, "IQutuiInterface registerCallBack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mqunar/qutui/c;->a:Lcom/mqunar/qutui/NetService;

    invoke-static {v0}, Lcom/mqunar/qutui/NetService;->a(Lcom/mqunar/qutui/NetService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 43
    return-void
.end method

.method public sendImMessage([B)V
    .registers 5

    .prologue
    .line 53
    const-string v0, "NetService"

    const-string v1, "IQutuiInterface sendImMessage"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lcom/mqunar/cock/network/CockHandler;->getInstance()Lcom/mqunar/cock/network/CockHandler;

    move-result-object v0

    const-string v1, "OChat"

    invoke-virtual {v0, p1, v1}, Lcom/mqunar/cock/network/CockHandler;->sendRequest([BLjava/lang/String;)V

    .line 55
    return-void
.end method

.method public unregisterCallBack(Lcom/mqunar/qutui/OnIMMessage;)V
    .registers 5

    .prologue
    .line 47
    const-string v0, "NetService"

    const-string v1, "IQutuiInterface unregisterCallBack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mqunar/qutui/c;->a:Lcom/mqunar/qutui/NetService;

    invoke-static {v0}, Lcom/mqunar/qutui/NetService;->a(Lcom/mqunar/qutui/NetService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 49
    return-void
.end method
