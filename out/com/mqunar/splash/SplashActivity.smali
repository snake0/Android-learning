.class public Lcom/mqunar/splash/SplashActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static LAUNCHER_ACTIVITY_DELAY:J = 0x0L

.field public static final MESSAGE_FINISH:I = 0x4

.field public static final MESSAGE_GO:I = 0x5

.field public static final MESSAGE_GOTO_HOME:I = 0x1

.field public static final MESSAGE_SHOW_LOADING:I = 0x6

.field public static final MESSAGE_WEBVIEW_LOAD:I = 0x0

.field public static final MESSAGE_WEBVIEW_LOAD_BY_CRASH:I = 0x2

.field public static final MESSAGE_WEBVIEW_LOAD_BY_CRASH_FINISH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SplashActivity"

.field private static WELCOME_TIME_DELAY:J

.field private static WELCOME_TIME_DELAY_AD:J

.field public static isDisplayed:Z

.field private static isShowNoticeOnce:Z


# instance fields
.field private currentMessage:I

.field private imgWelcome:Landroid/widget/ImageView;

.field private isGranted:Z

.field private isPreLoadDone:Z

.field private mAdSplash:Lcom/mqunar/splash/AdSplash;

.field private mHandler:Landroid/os/Handler;

.field private mNoticeDialog:Landroid/app/AlertDialog;

.field private mTimer:Lcom/mqunar/splash/CountDownTimerFromAPI26;

.field private rootLayout:Landroid/widget/FrameLayout;

.field private splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

.field private splashMonitor:Lcom/mqunar/splash/SplashMonitor;

.field private splashTime:J

.field private startDeatAdTime:J

.field private webView:Lcom/mqunar/splash/QWebView;

.field public webViewObserver:Lcom/mqunar/splash/IWebViewObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 67
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY:J

    .line 68
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J

    .line 69
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/mqunar/splash/SplashActivity;->LAUNCHER_ACTIVITY_DELAY:J

    .line 71
    sput-boolean v2, Lcom/mqunar/splash/SplashActivity;->isDisplayed:Z

    .line 161
    sput-boolean v2, Lcom/mqunar/splash/SplashActivity;->isShowNoticeOnce:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/mqunar/splash/SplashActivity;->currentMessage:I

    .line 88
    iput-boolean v1, p0, Lcom/mqunar/splash/SplashActivity;->isGranted:Z

    .line 89
    iput-boolean v1, p0, Lcom/mqunar/splash/SplashActivity;->isPreLoadDone:Z

    .line 162
    new-instance v0, Lcom/mqunar/splash/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/SplashActivity$1;-><init>(Lcom/mqunar/splash/SplashActivity;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 478
    new-instance v0, Lcom/mqunar/splash/SplashActivity$7;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/SplashActivity$7;-><init>(Lcom/mqunar/splash/SplashActivity;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->webViewObserver:Lcom/mqunar/splash/IWebViewObserver;

    return-void
.end method

.method private absolutelyFinish()V
    .registers 5

    .prologue
    .line 467
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mqunar/splash/SplashActivity$6;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashActivity$6;-><init>(Lcom/mqunar/splash/SplashActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/splash/SplashActivity;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/mqunar/splash/SplashActivity;->isGranted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashLoadingView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mqunar/splash/SplashActivity;)J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mqunar/splash/SplashActivity;->splashTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/mqunar/splash/SplashActivity;)J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/mqunar/splash/SplashActivity;->startDeatAdTime:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/mqunar/splash/SplashActivity;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->initSplashLoadingView()V

    return-void
.end method

.method static synthetic access$1300()J
    .registers 2

    .prologue
    .line 57
    sget-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/mqunar/splash/SplashActivity;J)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mqunar/splash/SplashActivity;->initCountdownTimer(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mqunar/splash/SplashActivity;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mqunar/splash/SplashActivity;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->showQunarWelcome()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/AdSplash;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mAdSplash:Lcom/mqunar/splash/AdSplash;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mqunar/splash/SplashActivity;)I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/mqunar/splash/SplashActivity;->currentMessage:I

    return v0
.end method

.method static synthetic access$1902(Lcom/mqunar/splash/SplashActivity;I)I
    .registers 2

    .prologue
    .line 57
    iput p1, p0, Lcom/mqunar/splash/SplashActivity;->currentMessage:I

    return p1
.end method

.method static synthetic access$200(Lcom/mqunar/splash/SplashActivity;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->dealLogicForJump()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mqunar/splash/SplashActivity;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mqunar/splash/SplashActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mqunar/splash/SplashActivity;)V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->absolutelyFinish()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2300()J
    .registers 2

    .prologue
    .line 57
    sget-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/QWebView;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mqunar/splash/SplashActivity;Lcom/mqunar/splash/QWebView;)Lcom/mqunar/splash/QWebView;
    .registers 2

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mqunar/splash/SplashActivity;)Z
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->isTransformForPush()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mqunar/splash/SplashActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/mqunar/splash/SplashActivity;->getRouteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/mqunar/splash/SplashActivity;->isShowNoticeOnce:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .registers 1

    .prologue
    .line 57
    sput-boolean p0, Lcom/mqunar/splash/SplashActivity;->isShowNoticeOnce:Z

    return p0
.end method

.method static synthetic access$900(Lcom/mqunar/splash/SplashActivity;)Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/mqunar/splash/SplashActivity;->isPreLoadDone:Z

    return v0
.end method

.method private buildDialogForShortcut()Landroid/app/AlertDialog;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 558
    .line 559
    const-string v1, "qunar_sys"

    invoke-static {p0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v1

    .line 560
    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/SwitchEnv;->isNoShortCut()Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "is_create_shortcut"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_46

    .line 561
    const-string v2, "is_create_shortcut"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    .line 562
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u662f\u5426\u521b\u5efa\u684c\u9762\u5feb\u6377\u65b9\u5f0f\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u662f"

    new-instance v3, Lcom/mqunar/splash/SplashActivity$8;

    invoke-direct {v3, p0}, Lcom/mqunar/splash/SplashActivity$8;-><init>(Lcom/mqunar/splash/SplashActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u5426"

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 570
    :cond_46
    return-object v0
.end method

.method private dealLogicForJump()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 239
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

    if-eqz v0, :cond_10

    .line 241
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->cancleAnimation()V

    .line 246
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->buildDialogForShortcut()Landroid/app/AlertDialog;

    move-result-object v1

    .line 248
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getSplashAdUrl()Ljava/lang/String;

    move-result-object v2

    .line 250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mqunar/splash/SplashActivity;->startDeatAdTime:J

    .line 252
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isCloseAd()Z
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2f} :catch_79

    move-result v0

    if-nez v0, :cond_4c

    .line 255
    :try_start_32
    new-instance v0, Lcom/mqunar/splash/AdSplash;

    invoke-direct {v0, p0, v2}, Lcom/mqunar/splash/AdSplash;-><init>(Lcom/mqunar/splash/SplashActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mAdSplash:Lcom/mqunar/splash/AdSplash;

    .line 256
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mAdSplash:Lcom/mqunar/splash/AdSplash;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/mqunar/splash/AdSplash;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/mqunar/splash/SplashActivity;->mAdSplash:Lcom/mqunar/splash/AdSplash;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_4c} :catch_67

    .line 263
    :cond_4c
    :goto_4c
    :try_start_4c
    const-string v0, "qunar_sys"

    invoke-static {p0, v0}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 264
    if-eqz v1, :cond_8a

    .line 265
    new-instance v3, Lcom/mqunar/splash/SplashActivity$2;

    invoke-direct {v3, p0, v0, v2}, Lcom/mqunar/splash/SplashActivity$2;-><init>(Lcom/mqunar/splash/SplashActivity;Lcom/mqunar/storage/Storage;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_5f} :catch_79

    .line 329
    :goto_5f
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/splash/SplashActivity;->sendGoIntentEvent(Landroid/content/Intent;)V

    .line 330
    return-void

    .line 258
    :catch_67
    move-exception v0

    .line 259
    :try_start_68
    const-class v3, Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_78} :catch_79

    goto :goto_4c

    .line 325
    :catch_79
    move-exception v0

    .line 326
    const-class v1, Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5f

    .line 298
    :cond_8a
    :try_start_8a
    const-string v1, "isPrivacyShow"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 299
    if-eqz v0, :cond_a7

    .line 301
    new-instance v0, Lcom/mqunar/splash/PrivacyDialogFragment;

    new-instance v1, Lcom/mqunar/splash/SplashActivity$3;

    invoke-direct {v1, p0, v2}, Lcom/mqunar/splash/SplashActivity$3;-><init>(Lcom/mqunar/splash/SplashActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/mqunar/splash/PrivacyDialogFragment;-><init>(Lcom/mqunar/splash/AgreeListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Privacy"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_5f

    .line 316
    :cond_a7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c8

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isCloseAd()Z

    move-result v0

    if-nez v0, :cond_c8

    .line 317
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-wide v2, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 318
    sget-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J

    invoke-direct {p0, v0, v1}, Lcom/mqunar/splash/SplashActivity;->initCountdownTimer(J)V

    .line 319
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V

    goto :goto_5f

    .line 321
    :cond_c8
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->showQunarWelcome()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_cb} :catch_79

    goto :goto_5f
.end method

.method private static getNetTipSwitch()Z
    .registers 3

    .prologue
    .line 781
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 782
    const-string v1, "isNotice"

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result v0

    .line 784
    :goto_18
    return v0

    .line 783
    :catch_19
    move-exception v0

    .line 784
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getRouteUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    if-nez v0, :cond_7

    .line 158
    :cond_6
    :goto_6
    return-object p1

    .line 153
    :cond_7
    const-string v1, "route_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    move-object p1, v0

    .line 158
    goto :goto_6
.end method

.method private static hasNetworkPermission()Z
    .registers 1

    .prologue
    .line 789
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->getNetTipSwitch()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private initCountdownTimer(J)V
    .registers 9

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mAdSplash:Lcom/mqunar/splash/AdSplash;

    if-eqz v0, :cond_a

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_b

    .line 348
    :cond_a
    :goto_a
    return-void

    .line 336
    :cond_b
    new-instance v0, Lcom/mqunar/splash/SplashActivity$4;

    sget-wide v1, Lcom/mqunar/splash/SplashActivity;->LAUNCHER_ACTIVITY_DELAY:J

    add-long v2, p1, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mqunar/splash/SplashActivity$4;-><init>(Lcom/mqunar/splash/SplashActivity;JJ)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mTimer:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    .line 347
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mTimer:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    invoke-virtual {v0}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->start()Lcom/mqunar/splash/CountDownTimerFromAPI26;

    goto :goto_a
.end method

.method private initSplashLoadingView()V
    .registers 4

    .prologue
    .line 626
    new-instance v0, Lcom/mqunar/splash/SplashLoadingView;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/SplashLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

    .line 627
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 628
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashLoadingView:Lcom/mqunar/splash/SplashLoadingView;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 629
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 630
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit16 v2, v2, 0x44c

    div-int/lit16 v2, v2, 0x527

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 631
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v1, v1, 0x216

    div-int/lit16 v1, v1, 0x4da

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 632
    return-void
.end method

.method private intentToHome()V
    .registers 4

    .prologue
    .line 230
    invoke-static {p0}, Lcom/mqunar/core/basectx/SchemeDispatcher;->getHomeScheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const/high16 v0, 0x20000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0, v1}, Lcom/mqunar/splash/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method private isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 692
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 693
    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isGranterPermissionForApp()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 656
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 657
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {p0, p0, v3}, Lcom/mqunar/splash/SplashActivity;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 658
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_14
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-direct {p0, p0, v3}, Lcom/mqunar/splash/SplashActivity;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 661
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_21
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, p0, v3}, Lcom/mqunar/splash/SplashActivity;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 664
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_2e
    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 667
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_44} :catch_48

    move v0, v1

    .line 674
    :goto_45
    return v0

    :cond_46
    move v0, v2

    .line 670
    goto :goto_45

    .line 672
    :catch_48
    move-exception v0

    .line 673
    const-string v0, "splash"

    const-string v3, "meet exception when permission check."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    .line 674
    goto :goto_45
.end method

.method private isTransformForPush()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 141
    if-nez v1, :cond_8

    .line 144
    :goto_7
    return v0

    :cond_8
    const-string v2, "isTransformForPush"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_7
.end method

.method private loggerForSplashShowTime()V
    .registers 3

    .prologue
    .line 638
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mqunar/splash/SplashActivity$9;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashActivity$9;-><init>(Lcom/mqunar/splash/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 646
    return-void
.end method

.method private sendBroadcast()V
    .registers 2

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->sendNoticeBroadcast()V

    .line 610
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;

    if-eqz v0, :cond_c

    .line 611
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashMonitor;->initMonitor()V

    .line 613
    :cond_c
    return-void
.end method

.method private sendGoIntentEvent(Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 355
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GO_INTENT_EVENT_FROM_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mqunar/splash/SplashActivity;->getRouteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 357
    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 358
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_34} :catch_35

    .line 362
    :goto_34
    return-void

    .line 359
    :catch_35
    move-exception v0

    .line 360
    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method

.method private sendNoticeBroadcast()V
    .registers 3

    .prologue
    .line 617
    const-string v0, "com.mqunar.spider.MESSAGE_USER_NOTICE_CONFIRMED"

    .line 618
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 620
    return-void
.end method

.method private static setNetTipSwitch(Ljava/lang/Boolean;)Z
    .registers 4

    .prologue
    .line 794
    :try_start_0
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 795
    const-string v1, "isNotice"

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    .line 796
    const/4 v0, 0x1

    .line 798
    :goto_14
    return v0

    .line 797
    :catch_15
    move-exception v0

    .line 798
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private showQunarWelcome()V
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/splash/SplashActivity$5;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashActivity$5;-><init>(Lcom/mqunar/splash/SplashActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 463
    return-void
.end method


# virtual methods
.method public createShortCut()V
    .registers 7

    .prologue
    .line 578
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    const-string v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    :try_start_d
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "spider_app_name"

    const-string v4, "string"

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mqunar/splash/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "spider_ic_launcher"

    const-string v4, "drawable"

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 586
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_43} :catch_66

    .line 591
    :goto_43
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 592
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 593
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    return-void

    .line 587
    :catch_66
    move-exception v1

    goto :goto_43
.end method

.method protected needOnCreateSendBroadcast()Z
    .registers 2

    .prologue
    .line 602
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/mqunar/splash/R$id;->ll_splash_ignore:I

    if-ne v0, v1, :cond_73

    .line 703
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 705
    :try_start_e
    const-string v1, ""

    .line 706
    const-string v2, ""

    .line 707
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->getSplashAdUrl()Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_87

    move-result v3

    if-nez v3, :cond_91

    .line 710
    :try_start_20
    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 711
    const-string v0, "gifUrl"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 713
    const-string v0, "imgUrl"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_35} :catch_74
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_87

    move-result-object v0

    .line 715
    :goto_36
    :try_start_36
    const-string v1, "activityName"

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 717
    const-string v2, "null"

    .line 719
    :cond_44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 720
    const-string v0, "null"
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4c} :catch_89
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_87

    .line 726
    :cond_4c
    :goto_4c
    :try_start_4c
    new-instance v1, Lcom/mqunar/tools/log/UELog;

    invoke-direct {v1, p0}, Lcom/mqunar/tools/log/UELog;-><init>(Landroid/content/Context;)V

    const-string v3, "AdSplash"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelAd_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",activityname_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/mqunar/tools/log/UELog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_73
    :goto_73
    return-void

    .line 722
    :catch_74
    move-exception v0

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 723
    :goto_78
    const-string v3, "AdSplash"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_84} :catch_87

    move-object v0, v2

    move-object v2, v1

    goto :goto_4c

    .line 727
    :catch_87
    move-exception v0

    goto :goto_73

    .line 722
    :catch_89
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_78

    :cond_8f
    move-object v0, v1

    goto :goto_36

    :cond_91
    move-object v0, v1

    goto :goto_4c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v8, 0x64

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "SplashActivity"

    const-string v1, "oncreate"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/splash/SplashActivity;->splashTime:J

    .line 102
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_39

    .line 103
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->finish()V

    .line 104
    const-string v0, "SplashActivity"

    const-string v1, "finish flag..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_38
    return-void

    .line 107
    :cond_39
    sget v0, Lcom/mqunar/splash/R$layout;->spider_splash_page:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    sget v0, Lcom/mqunar/splash/R$id;->spider_fl_splash_root:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;

    .line 110
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/splash/R$drawable;->spider_home_welcome_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->rootLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-static {}, Lcom/mqunar/splash/SplashUtils;->getSplashMonitor()Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;

    .line 117
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->loggerForSplashShowTime()V

    .line 119
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->isGranterPermissionForApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mqunar/splash/SplashActivity;->isGranted:Z

    .line 121
    invoke-direct {p0, v5}, Lcom/mqunar/splash/SplashActivity;->getRouteUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->isTransformForPush()Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 122
    :cond_8d
    sput-wide v6, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY:J

    .line 123
    sput-wide v6, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J

    .line 130
    :goto_91
    invoke-static {}, Lcom/mqunar/splash/SplashUtils;->isLoadDone()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 131
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    :goto_9d
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/splash/SplashActivity;->isDisplayed:Z

    goto :goto_38

    .line 125
    :cond_a1
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY:J

    .line 126
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J

    goto :goto_91

    .line 133
    :cond_aa
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9d
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 735
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 736
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 737
    iput-object v2, p0, Lcom/mqunar/splash/SplashActivity;->mNoticeDialog:Landroid/app/AlertDialog;

    .line 739
    :cond_14
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_52

    .line 740
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    if-eqz v0, :cond_26

    .line 741
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0, v2}, Lcom/mqunar/splash/QWebView;->setObserver(Lcom/mqunar/splash/IWebViewObserver;)V

    .line 742
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->destroy()V

    .line 744
    :cond_26
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 748
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 750
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 751
    iput-object v2, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    .line 753
    :cond_52
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mTimer:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    if-eqz v0, :cond_5b

    .line 754
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mTimer:Lcom/mqunar/splash/CountDownTimerFromAPI26;

    invoke-virtual {v0}, Lcom/mqunar/splash/CountDownTimerFromAPI26;->cancel()V

    .line 756
    :cond_5b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 757
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 761
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1b

    .line 762
    iget v1, p0, Lcom/mqunar/splash/SplashActivity;->currentMessage:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 763
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v1}, Lcom/mqunar/splash/QWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 764
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity;->webView:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v1}, Lcom/mqunar/splash/QWebView;->goBack()V

    .line 775
    :cond_16
    :goto_16
    return v0

    .line 767
    :cond_17
    invoke-direct {p0}, Lcom/mqunar/splash/SplashActivity;->absolutelyFinish()V

    goto :goto_16

    .line 775
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_16
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 5

    .prologue
    .line 680
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/splash/SplashActivity;->isGranted:Z

    .line 682
    return-void
.end method

.method public removeGoHomeMessage()V
    .registers 3

    .prologue
    .line 697
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    return-void
.end method
