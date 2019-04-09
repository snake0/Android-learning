.class Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/hy/res/TaskResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mqunar/hy/res/TaskResult",
        "<",
        "Lcom/mqunar/hy/res/model/HybridResult;",
        ">;"
    }
.end annotation


# instance fields
.field private info:Lcom/mqunar/hy/res/model/HybridInfo;

.field final synthetic this$0:Lcom/mqunar/hy/res/AutoDownloadControler;


# direct methods
.method public constructor <init>(Lcom/mqunar/hy/res/AutoDownloadControler;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/AutoDownloadControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 42
    iput-object p2, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 43
    return-void
.end method


# virtual methods
.method public error(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres AutoDownloadControler errorcode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public sucess(Lcom/mqunar/hy/res/model/HybridResult;)V
    .registers 7

    .prologue
    .line 47
    if-nez p1, :cond_3

    .line 70
    :cond_2
    :goto_2
    return-void

    .line 50
    :cond_3
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    .line 51
    if-eqz v0, :cond_2

    .line 54
    iget-object v1, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    .line 55
    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    if-eqz v0, :cond_2c

    .line 62
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 63
    iget-object v3, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v3, v3, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    iput v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    goto :goto_19

    .line 66
    :cond_2c
    new-instance v0, Lcom/mqunar/hy/res/model/HybridParam;

    iget-object v2, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/AutoDownloadControler;

    # getter for: Lcom/mqunar/hy/res/AutoDownloadControler;->infoList:Ljava/util/List;
    invoke-static {v2}, Lcom/mqunar/hy/res/AutoDownloadControler;->access$000(Lcom/mqunar/hy/res/AutoDownloadControler;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mqunar/hy/res/model/HybridParam;-><init>(Ljava/util/List;)V

    .line 67
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 68
    new-instance v2, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getContext()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;-><init>(Landroid/content/Context;Lcom/mqunar/hy/res/model/HybridParam;)V

    new-instance v0, Lcom/mqunar/hy/res/AutoDownloadControler$DownloadCallback;

    iget-object v3, p0, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/AutoDownloadControler;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/mqunar/hy/res/AutoDownloadControler$DownloadCallback;-><init>(Lcom/mqunar/hy/res/AutoDownloadControler;Lcom/mqunar/hy/res/AutoDownloadControler$1;)V

    invoke-virtual {v2, v1, v0}, Lcom/mqunar/hy/res/upgrade/HyResDownloadTask;->run(Ljava/util/List;Lcom/mqunar/hy/res/DownloadTaskResult;)V

    goto :goto_2
.end method

.method public bridge synthetic sucess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 38
    check-cast p1, Lcom/mqunar/hy/res/model/HybridResult;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/AutoDownloadControler$RequestCallback;->sucess(Lcom/mqunar/hy/res/model/HybridResult;)V

    return-void
.end method
