.class Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask$1;->this$0:Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    # getter for: Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->downloadManager:Lcom/mqunar/hy/res/utils/DownloadManager;
    invoke-static {v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->access$100(Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;)Lcom/mqunar/hy/res/utils/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/hy/res/utils/DownloadManager;->clearDownloadTaskResult()V

    .line 215
    return-void
.end method
