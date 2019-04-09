.class Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V
    .registers 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 308
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 309
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 310
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->backPress()Z

    .line 313
    :cond_24
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 317
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    if-ne v0, v1, :cond_25

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    .line 318
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->isSupportTingWindow()Z

    move-result v0

    if-nez v0, :cond_26

    .line 319
    :cond_22
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->releaseAllVideos()V

    .line 324
    :cond_25
    :goto_25
    return-void

    .line 321
    :cond_26
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startWindowTiny()V

    goto :goto_25
.end method
