.class Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)V
    .registers 2

    .prologue
    .line 157
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;->this$1:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;->this$1:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;

    # getter for: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->manualDownloadControler:Lcom/mqunar/hy/res/ManualDownloadControler;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->access$200(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)Lcom/mqunar/hy/res/ManualDownloadControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->unregister()V

    .line 161
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;->this$1:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;->this$1:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;

    # getter for: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    invoke-static {v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->access$300(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getQpCallBack()Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;

    move-result-object v1

    # invokes: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->callback(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V
    invoke-static {v0, v1, v3}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->access$400(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QPCallBack;Z)V

    .line 162
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl$1;->this$1:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;

    # getter for: Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->params:Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;
    invoke-static {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;->access$300(Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$QpDownloadImpl;)Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/FirstPageLoadUtil$PageLoadParams;->getHybridId()Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hyres FirstPage \u8bf7\u6c42\u8d85\u65f6 hybridid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-static {}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->getInstance()Lcom/mqunar/hy/res/utils/UpgradeInfoCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mqunar/hy/res/utils/UpgradeInfoCache;->getHybridInfo(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_5e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/mqunar/hy/res/model/HybridInfo;->version:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_5a
    invoke-static {v1, v0}, Lcom/mqunar/hy/res/utils/StatisticsUtil;->qpForceDownloadTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 165
    :cond_5e
    const-string v0, "0"

    goto :goto_5a
.end method
