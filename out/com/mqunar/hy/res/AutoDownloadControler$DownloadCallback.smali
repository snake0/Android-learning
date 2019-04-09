.class Lcom/mqunar/hy/res/AutoDownloadControler$DownloadCallback;
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
.field final synthetic this$0:Lcom/mqunar/hy/res/AutoDownloadControler;


# direct methods
.method private constructor <init>(Lcom/mqunar/hy/res/AutoDownloadControler;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mqunar/hy/res/AutoDownloadControler$DownloadCallback;->this$0:Lcom/mqunar/hy/res/AutoDownloadControler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/hy/res/AutoDownloadControler;Lcom/mqunar/hy/res/AutoDownloadControler$1;)V
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/AutoDownloadControler$DownloadCallback;-><init>(Lcom/mqunar/hy/res/AutoDownloadControler;)V

    return-void
.end method


# virtual methods
.method public error(Lcom/mqunar/hy/res/model/HybridInfo;ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres AutoDownloadControler HybridInfo = "

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

    .line 88
    return-void
.end method

.method public sucess(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 4

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hyres AutoDownloadControler sucess = "

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

    .line 83
    return-void
.end method

.method public bridge synthetic sucess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 78
    check-cast p1, Lcom/mqunar/hy/res/model/HybridInfo;

    invoke-virtual {p0, p1}, Lcom/mqunar/hy/res/AutoDownloadControler$DownloadCallback;->sucess(Lcom/mqunar/hy/res/model/HybridInfo;)V

    return-void
.end method
