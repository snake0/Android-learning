.class Lcom/mqunar/qutui/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/mqunar/qutui/PushManager;


# direct methods
.method constructor <init>(Lcom/mqunar/qutui/PushManager;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .prologue
    .line 153
    const-string v0, "PushManager"

    const-string v1, "onServiceConnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {p2}, Lcom/mqunar/qutui/IQutuiInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mqunar/qutui/IQutuiInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/qutui/PushManager;->a(Lcom/mqunar/qutui/PushManager;Lcom/mqunar/qutui/IQutuiInterface;)Lcom/mqunar/qutui/IQutuiInterface;

    .line 157
    :try_start_13
    iget-object v0, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v0}, Lcom/mqunar/qutui/PushManager;->b(Lcom/mqunar/qutui/PushManager;)Lcom/mqunar/qutui/IQutuiInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v1}, Lcom/mqunar/qutui/PushManager;->a(Lcom/mqunar/qutui/PushManager;)Lcom/mqunar/qutui/OnIMMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qutui/IQutuiInterface;->registerCallBack(Lcom/mqunar/qutui/OnIMMessage;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_22} :catch_23

    .line 162
    :goto_22
    return-void

    .line 158
    :catch_23
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .prologue
    .line 166
    const-string v0, "PushManager"

    const-string v1, "onServiceDisconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v0}, Lcom/mqunar/qutui/PushManager;->b(Lcom/mqunar/qutui/PushManager;)Lcom/mqunar/qutui/IQutuiInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    invoke-static {v1}, Lcom/mqunar/qutui/PushManager;->a(Lcom/mqunar/qutui/PushManager;)Lcom/mqunar/qutui/OnIMMessage;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/qutui/IQutuiInterface;->unregisterCallBack(Lcom/mqunar/qutui/OnIMMessage;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_20

    .line 173
    :goto_19
    iget-object v0, p0, Lcom/mqunar/qutui/g;->a:Lcom/mqunar/qutui/PushManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mqunar/qutui/PushManager;->a(Lcom/mqunar/qutui/PushManager;Lcom/mqunar/qutui/IQutuiInterface;)Lcom/mqunar/qutui/IQutuiInterface;

    .line 174
    return-void

    .line 170
    :catch_20
    move-exception v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method
