.class Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$3;
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
    .line 177
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$3;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$3;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 181
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$3;->this$1:Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;

    iget-object v0, v0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/hy/res/Listener/QpDownloadListener;->onMessageError()V

    .line 183
    :cond_15
    return-void
.end method
