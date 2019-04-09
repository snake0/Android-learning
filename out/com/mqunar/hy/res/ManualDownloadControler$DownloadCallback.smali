.class Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/DownloadTaskResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mqunar/hy/res/DownloadTaskResult",
        "<",
        "Lcom/mqunar/hy/res/model/HybridInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/ManualDownloadControler;


# direct methods
.method private constructor <init>(Lcom/mqunar/hy/res/ManualDownloadControler;)V
    .registers 2

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/ManualDownloadControler$1;)V
    .registers 3

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler;)V

    return-void
.end method


# virtual methods
.method public error(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres ManualDownloadControler HybridInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errorcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$200(Lcom/mqunar/hy/res/ManualDownloadControler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$2;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$2;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public sucess(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres ManualDownloadControler sucess = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mqunar/hy/res/model/HybridInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$200(Lcom/mqunar/hy/res/ManualDownloadControler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback$1;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method public bridge synthetic sucess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 190
    check-cast p1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/ManualDownloadControler$DownloadCallback;->sucess(Lcom/mqunar/hy/res/model/HybridInfo;)V

    return-void
.end method
