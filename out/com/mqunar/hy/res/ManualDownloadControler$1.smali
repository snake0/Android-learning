.class Lcom/mqunar/hy/res/ManualDownloadControler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/ManualDownloadControler;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/ManualDownloadControler;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$1;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$1;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 55
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$1;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->qpDownloadListener:Lcom/mqunar/hy/res/Listener/QpDownloadListener;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$000(Lcom/mqunar/hy/res/ManualDownloadControler;)Lcom/mqunar/hy/res/Listener/QpDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/hy/res/Listener/QpDownloadListener;->onMessageError()V

    .line 57
    :cond_11
    return-void
.end method
