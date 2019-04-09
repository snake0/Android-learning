.class public Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;)V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->callbackOnMain(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private callbackOnMain(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V
    .registers 5

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v0

    .line 123
    if-eqz p2, :cond_10

    .line 124
    invoke-interface {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;->success()V

    .line 136
    :goto_f
    return-void

    .line 126
    :cond_10
    invoke-interface {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;->fail()V

    goto :goto_f

    .line 129
    :cond_14
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$2;-><init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f
.end method

.method public static getInstance()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;
    .registers 1

    .prologue
    .line 24
    # getter for: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$FirstPageLoadUtilHolder;->INSTANCE:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;
    invoke-static {}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$FirstPageLoadUtilHolder;->access$000()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    move-result-object v0

    return-object v0
.end method

.method private isMainThread()Z
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private isQPOffline(Lcom/mqunar/hy/res/model/HybridInfo;)Z
    .registers 4

    .prologue
    .line 115
    invoke-static {}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getInstance()Lcom/mqunar/hy/res/utils/CheckQpCompetence;

    move-result-object v0

    iget-object v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/utils/CheckQpCompetence;->getOfflineHybridVersion(Ljava/lang/String;)I

    move-result v0

    .line 116
    iget v1, p1, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private startManualDownload(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V
    .registers 5

    .prologue
    .line 110
    new-instance v0, Lcom/mqunar/hy/res/ManualDownloadControler;

    invoke-direct {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;

    invoke-direct {v2, p0, v0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;-><init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/ManualDownloadControler;->startUpdateRequest(Ljava/lang/String;Lcom/mqunar/hy/res/Listener/QpDownloadListener;)V

    .line 112
    return-void
.end method

.method private startMustUpdate(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->startManualDownload(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    .line 83
    return-void
.end method

.method private startUpdate(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/HybridManager;->getHybridInfoById(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v1

    .line 89
    if-nez v1, :cond_2b

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyres FirstPage \u6ca1\u6709qp\u5305\uff0c\u8fdb\u884c\u5355\u4e2a\u8bf7\u6c42 hybridid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->startManualDownload(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    .line 102
    :goto_2a
    return-void

    .line 92
    :cond_2b
    invoke-direct {p0, v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->isQPOffline(Lcom/mqunar/hy/res/model/HybridInfo;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyres FirstPage QP\u5df2\u7ecf\u4e0b\u7ebf hybridid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->startManualDownload(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    goto :goto_2a

    .line 95
    :cond_4d
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/hy/res/HybridManager;->isForceUpgrade(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyres FirstPage \u8fdb\u884c\u5f3a\u5236\u66f4\u65b0 hybridid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->startManualDownload(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    goto :goto_2a

    .line 99
    :cond_73
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->callbackOnMain(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyres FirstPage \u76f4\u63a5\u5f00\u542f\u9875\u9762 hybridid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2a
.end method


# virtual methods
.method public start(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V
    .registers 4

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v0

    if-nez v0, :cond_e

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "QPCallBack is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_e
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 72
    invoke-virtual {p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;->fail()V

    .line 79
    :goto_1f
    return-void

    .line 77
    :cond_20
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->startUpdate(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    goto :goto_1f
.end method

.method public start(Ljava/lang/String;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    if-nez p2, :cond_a

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "CallBack is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_a
    new-instance v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;

    invoke-direct {v0, p0, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$1;-><init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$CallBack;)V

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->start(Ljava/lang/String;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;)V

    .line 47
    return-void
.end method

.method public start(Ljava/lang/String;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;)V
    .registers 7

    .prologue
    .line 50
    new-instance v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-direct {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->setHybridId(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    move-result-object v1

    const-wide/16 v2, 0x1388

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->setTimeout(J)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    move-result-object v1

    .line 53
    invoke-virtual {v1, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->setQpCallBack(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    .line 54
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->start(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    .line 55
    return-void
.end method

.method public startForYis(Ljava/lang/String;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;)V
    .registers 6

    .prologue
    .line 58
    new-instance v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-direct {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->setHybridId(Ljava/lang/String;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v1, v2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->setNeedTimeout(Z)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    move-result-object v1

    .line 61
    invoke-virtual {v1, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->setQpCallBack(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    .line 62
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->start(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V

    .line 63
    return-void
.end method
