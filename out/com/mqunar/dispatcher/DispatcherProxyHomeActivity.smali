.class public Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    new-instance v0, Lcom/mqunar/dispatcher/k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mqunar/dispatcher/k;-><init>(Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    const/high16 v3, 0x2000000

    .line 36
    sget-object v0, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init fail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_12
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 41
    const-string v2, "com.mqunar.atom.alexhome.ui.activity.MainActivity"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_31

    .line 43
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->finish()V

    .line 45
    invoke-virtual {p0, v1}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 49
    :goto_30
    return-void

    .line 47
    :cond_31
    const/16 v0, 0x378

    invoke-virtual {p0, v1, v0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_30
.end method

.method static synthetic a(Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;)V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0, p2, p3}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 55
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->finish()V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->loadResourceWithoutBroadcast(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->requestWindowFeature(I)Z

    .line 65
    sget-boolean v0, Lcom/mqunar/core/QSpider;->loadDone:Z

    if-eqz v0, :cond_12

    .line 66
    invoke-direct {p0}, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->a()V

    .line 70
    :goto_11
    return-void

    .line 68
    :cond_12
    iget-object v0, p0, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_11
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method
