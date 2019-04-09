.class public Lcom/mqunar/qutui/QutuiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    const-string v0, "com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT"

    iput-object v0, p0, Lcom/mqunar/qutui/QutuiReceiver;->a:Ljava/lang/String;

    .line 17
    const-string v0, "com.mqunar.atom.qutui.OBJ_MESSAGE"

    iput-object v0, p0, Lcom/mqunar/qutui/QutuiReceiver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.mqunar.qutui.QutuiReceiver#onReceive Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const-string v1, "com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    if-nez v0, :cond_30

    .line 35
    :cond_2f
    :goto_2f
    return-void

    .line 30
    :cond_30
    const-string v1, "com.mqunar.atom.qutui.OBJ_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 32
    invoke-static {}, Lcom/mqunar/qutui/PushManager;->getInstance()Lcom/mqunar/qutui/PushManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/qutui/PushManager;->dispatchMessage(Ljava/lang/String;)V

    goto :goto_2f
.end method
