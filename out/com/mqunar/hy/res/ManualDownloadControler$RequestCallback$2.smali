.class Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 163
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$300(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/model/HybridInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 164
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/hy/res/Listener/QpDownloadListener;->requestResultHasQp()V

    .line 169
    :cond_1f
    :goto_1f
    return-void

    .line 166
    :cond_20
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/hy/res/Listener/QpDownloadListener;->requestResultNoQp()V

    goto :goto_1f
.end method
