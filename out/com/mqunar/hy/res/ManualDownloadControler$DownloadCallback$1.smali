.class Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 199
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/hy/res/Listener/QpDownloadListener;->onQpDownLoaded()V

    .line 202
    :cond_15
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    invoke-virtual {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->unregister()V

    .line 203
    return-void
.end method
