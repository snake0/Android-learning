.class Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;
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

.field final synthetic this$0:Lcom/mqunar/hy/res/ManualDownloadControler;


# direct methods
.method public constructor <init>(Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 122
    iput-object p2, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    .line 123
    return-void
.end method


# virtual methods
.method public error(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$200(Lcom/mqunar/hy/res/ManualDownloadControler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$3;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$3;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres ManualDownloadControler errorcode = "

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

    .line 187
    return-void
.end method

.method public sucess(Lcom/mqunar/hy/res/model/HybridResult;)V
    .registers 6

    .prologue
    .line 127
    if-nez p1, :cond_3

    .line 173
    :cond_2
    :goto_2
    return-void

    .line 130
    :cond_3
    iget-object v0, p1, Lcom/mqunar/hy/res/model/HybridResult;->data:Lcom/mqunar/hy/res/model/HybridResult$MgData;

    .line 131
    if-eqz v0, :cond_2

    .line 134
    iget-object v0, v0, Lcom/mqunar/hy/res/model/HybridResult$MgData;->hlist:Ljava/util/ArrayList;

    .line 135
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_20

    .line 139
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$200(Lcom/mqunar/hy/res/ManualDownloadControler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$1;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$1;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 150
    :cond_20
    iget-object v1, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    if-eqz v1, :cond_4c

    .line 151
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/model/HybridInfo;

    .line 152
    iget-object v2, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    iget v2, v2, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    iput v2, v0, Lcom/mqunar/hy/res/model/HybridInfo;->QpRequestType:I

    .line 153
    iget-object v2, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->info:Lcom/mqunar/hy/res/model/HybridInfo;

    iget-object v2, v2, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    iget-object v3, v0, Lcom/mqunar/hy/res/model/HybridInfo;->hybridId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 154
    iget-object v2, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # setter for: Lcom/mqunar/hy/res/ManualDownloadControler;->newHybridInfo:Lcom/mqunar/hy/res/model/HybridInfo;
    invoke-static {v2, v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$302(Lcom/mqunar/hy/res/ManualDownloadControler;Lcom/mqunar/hy/res/model/HybridInfo;)Lcom/mqunar/hy/res/model/HybridInfo;

    goto :goto_28

    .line 159
    :cond_4c
    iget-object v0, p0, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->this$0:Lcom/mqunar/hy/res/ManualDownloadControler;

    # getter for: Lcom/mqunar/hy/res/ManualDownloadControler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/hy/res/ManualDownloadControler;->access$200(Lcom/mqunar/hy/res/ManualDownloadControler;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;

    invoke-direct {v1, p0}, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback$2;-><init>(Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public bridge synthetic sucess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 118
    check-cast p1, Lcom/mqunar/hy/res/model/HybridResult;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/ManualDownloadControler$RequestCallback;->sucess(Lcom/mqunar/hy/res/model/HybridResult;)V

    return-void
.end method
