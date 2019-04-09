.class public Lcom/mqunar/qutui/QuTuiApplication;
.super Lcom/mqunar/core/basectx/application/QApplication;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mqunar/core/basectx/application/QApplication;-><init>()V

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 20
    new-instance v0, Lcom/mqunar/qutui/QutuiReceiver;

    invoke-direct {v0}, Lcom/mqunar/qutui/QutuiReceiver;-><init>()V

    .line 21
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    const-string v2, "com.mqunar.atom.qutui.ACTION_MESSAGE_TRANSPARENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/mqunar/qutui/QuTuiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/mqunar/qutui/QuTuiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    .prologue
    .line 13
    invoke-super {p0}, Lcom/mqunar/core/basectx/application/QApplication;->onCreate()V

    .line 14
    const/16 v0, 0x1a

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_c

    .line 15
    invoke-direct {p0}, Lcom/mqunar/qutui/QuTuiApplication;->a()V

    .line 17
    :cond_c
    return-void
.end method
