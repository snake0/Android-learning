.class public Lcom/mqunar/dispatcher/DispatcherActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Lcom/mqunar/dispatcher/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mqunar/dispatcher/a;-><init>(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/dispatcher/DispatcherActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/mqunar/dispatcher/DispatcherActivity;->setIntent(Landroid/content/Intent;)V

    .line 124
    const-string v0, "qn24bql60fz2ql"

    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "qn4136854c1659"

    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 125
    :cond_23
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 128
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, p1}, Lcom/mqunar/dispatcher/DispatcherActivity;->setIntent(Landroid/content/Intent;)V

    .line 134
    :cond_52
    return-object p1
.end method

.method private a()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 53
    sget-object v0, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init fail!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_11
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/dispatcher/DispatcherActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 59
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->finish()V

    .line 118
    :goto_26
    return-void

    .line 62
    :cond_27
    const-string v1, "from=meizu_3dtouch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 63
    const-string v0, "qunar_sys"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v3

    .line 64
    const-string v0, "isNotice"

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_98

    .line 66
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 67
    const v1, 0x7f09009e

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 68
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u63d0\u793a"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 69
    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v4, "\u9000\u51fa"

    new-instance v5, Lcom/mqunar/dispatcher/c;

    invoke-direct {v5, p0}, Lcom/mqunar/dispatcher/c;-><init>(Lcom/mqunar/dispatcher/DispatcherActivity;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x104000a

    new-instance v5, Lcom/mqunar/dispatcher/b;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/mqunar/dispatcher/b;-><init>(Lcom/mqunar/dispatcher/DispatcherActivity;Lcom/mqunar/storage/Storage;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    .line 75
    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/mqunar/dispatcher/d;

    invoke-direct {v1, p0}, Lcom/mqunar/dispatcher/d;-><init>(Lcom/mqunar/dispatcher/DispatcherActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 95
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 96
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_26

    .line 99
    :cond_98
    invoke-direct {p0, v2}, Lcom/mqunar/dispatcher/DispatcherActivity;->b(Landroid/content/Intent;)V

    goto :goto_26

    .line 102
    :cond_9c
    const-string v0, "qunar_sys"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 103
    const-string v1, "isPrivacyShow"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 104
    if-eqz v0, :cond_ca

    .line 105
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    new-instance v0, Lcom/mqunar/splash/PrivacyDialogFragment;

    new-instance v1, Lcom/mqunar/dispatcher/e;

    invoke-direct {v1, p0, v2}, Lcom/mqunar/dispatcher/e;-><init>(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Lcom/mqunar/splash/PrivacyDialogFragment;-><init>(Lcom/mqunar/splash/AgreeListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Privacy"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_26

    .line 115
    :cond_ca
    invoke-direct {p0, v2}, Lcom/mqunar/dispatcher/DispatcherActivity;->b(Landroid/content/Intent;)V

    goto/16 :goto_26
.end method

.method static synthetic a(Lcom/mqunar/dispatcher/DispatcherActivity;)V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mqunar/dispatcher/DispatcherActivity;Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mqunar/dispatcher/DispatcherActivity;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 141
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 143
    if-eqz v1, :cond_21

    const-string v2, "scrimmage.qunar.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 146
    const-string v1, "_SPIDER_REQUESTCODE_"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 147
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    :cond_21
    invoke-direct {p0, p1}, Lcom/mqunar/dispatcher/DispatcherActivity;->c(Landroid/content/Intent;)V

    .line 153
    invoke-static {p0, v0}, Lcom/mqunar/dispatcher/DispatcherLogic;->processIntent(Ljava/lang/Object;Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method private b()Z
    .registers 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_e

    sget-boolean v1, Lcom/mqunar/splash/SplashActivity;->isDisplayed:Z

    if-eqz v1, :cond_10

    .line 198
    :cond_e
    const/4 v0, 0x0

    .line 207
    :goto_f
    return v0

    .line 201
    :cond_10
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mqunar/splash/SplashActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    const-string v2, "route_uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v1}, Lcom/mqunar/dispatcher/DispatcherActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->finish()V

    .line 207
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private c(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 161
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GO_INTENT_EVENT_FROM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    .line 167
    :goto_28
    return-void

    .line 164
    :catch_29
    move-exception v0

    .line 165
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method


# virtual methods
.method public finish()V
    .registers 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 213
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    invoke-virtual {p0, p2, p3}, Lcom/mqunar/dispatcher/DispatcherActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->finish()V

    .line 220
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 173
    invoke-static {p0}, Lcom/mqunar/core/QunarApkLoader;->loadResourceWithoutBroadcast(Landroid/content/Context;)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mqunar/dispatcher/DispatcherActivity;->requestWindowFeature(I)Z

    .line 177
    invoke-direct {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 184
    :cond_10
    :goto_10
    return-void

    .line 181
    :cond_11
    if-nez p1, :cond_10

    .line 182
    iget-object v0, p0, Lcom/mqunar/dispatcher/DispatcherActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_10
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mqunar/dispatcher/DispatcherActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 189
    invoke-direct {p0}, Lcom/mqunar/dispatcher/DispatcherActivity;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 193
    :goto_9
    return-void

    .line 192
    :cond_a
    invoke-direct {p0, p1}, Lcom/mqunar/dispatcher/DispatcherActivity;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/dispatcher/DispatcherActivity;->c(Landroid/content/Intent;)V

    goto :goto_9
.end method
