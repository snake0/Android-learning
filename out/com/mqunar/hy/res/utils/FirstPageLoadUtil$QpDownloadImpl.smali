.class Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/Listener/QpDownloadListener;


# instance fields
.field private hasCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private manualDownloadControler:Lcom/mqunar/hy/res/ManualDownloadControler;

.field private params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

.field private runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;


# direct methods
.method public constructor <init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;)V
    .registers 6

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->manualDownloadControler:Lcom/mqunar/hy/res/ManualDownloadControler;

    .line 146
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->hasCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    iput-object p3, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    .line 150
    iput-object p2, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->manualDownloadControler:Lcom/mqunar/hy/res/ManualDownloadControler;

    .line 151
    invoke-virtual {p3}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->isNeedTimeout()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 152
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->initTimeout()V

    .line 154
    :cond_1d
    return-void
.end method

.method static synthetic access$200(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)Lcom/mqunar/hy/res/ManualDownloadControler;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->manualDownloadControler:Lcom/mqunar/hy/res/ManualDownloadControler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V
    .registers 3

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->callback(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V

    return-void
.end method

.method private callback(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V
    .registers 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->hasCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 214
    :goto_8
    return-void

    .line 212
    :cond_9
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->hasCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    # invokes: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->callbackOnMain(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V
    invoke-static {v0, v1, p2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->access$100(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;Z)V

    goto :goto_8
.end method

.method private initTimeout()V
    .registers 5

    .prologue
    .line 157
    new-instance v0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;

    invoke-direct {v0, p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;-><init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->runnable:Ljava/lang/Runnable;

    .line 169
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    # getter for: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->access$500(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->runnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    return-void
.end method

.method private removeDelayCallback()V
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_f

    .line 182
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->this$0:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;

    # getter for: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;->access$500(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 184
    :cond_f
    return-void
.end method


# virtual methods
.method public onMessageError()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->removeDelayCallback()V

    .line 197
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->callback(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hyres FirstPage \u8bf7\u6c42\u5931\u8d25 hybridid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-void
.end method

.method public onQpDownLoaded()V
    .registers 3

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->removeDelayCallback()V

    .line 204
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->callback(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hyres FirstPage \u4e0b\u8f7d\u6210\u529f hybridid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public requestResultHasQp()V
    .registers 3

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hyres FirstPage \u6709qp\u5305 hybridid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->manualDownloadControler:Lcom/mqunar/hy/res/ManualDownloadControler;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->startDownload()V

    .line 192
    return-void
.end method

.method public requestResultNoQp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hyres FirstPage \u6ca1\u6709qp\u5305 hybridid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-direct {p0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->removeDelayCallback()V

    .line 177
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->callback(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V

    .line 178
    return-void
.end method
