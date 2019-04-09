.class public Lcom/mqunar/qutui/KActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string v0, "KActivity"

    iput-object v0, p0, Lcom/mqunar/qutui/KActivity;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 55
    const-string v0, "KActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------from call method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/mqunar/qutui/KActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 58
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 59
    const-string v1, "KActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------isScreenOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    if-eqz v0, :cond_46

    .line 61
    invoke-virtual {p0}, Lcom/mqunar/qutui/KActivity;->finish()V

    .line 64
    :cond_46
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "KActivity"

    const-string v1, "start acitivity"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lcom/mqunar/qutui/KActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 30
    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 32
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 33
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    new-instance v0, Lcom/mqunar/qutui/b;

    invoke-direct {v0, p0}, Lcom/mqunar/qutui/b;-><init>(Lcom/mqunar/qutui/KActivity;)V

    iput-object v0, p0, Lcom/mqunar/qutui/KActivity;->b:Landroid/content/BroadcastReceiver;

    .line 49
    iget-object v0, p0, Lcom/mqunar/qutui/KActivity;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "finish activity"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/qutui/KActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/mqunar/qutui/KActivity;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 68
    const-string v0, "KActivity"

    const-string v1, "--------KActivity onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/qutui/KActivity;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mqunar/qutui/KActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_13

    .line 74
    :goto_f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 75
    return-void

    .line 71
    :catch_13
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/mqunar/qutui/KActivity;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method
