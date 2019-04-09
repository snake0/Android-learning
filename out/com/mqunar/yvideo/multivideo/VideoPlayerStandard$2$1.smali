.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;

    iget-object v2, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;->val$outPutPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->downloadBitmap(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->access$100(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;Ljava/lang/String;)V

    .line 231
    return-void
.end method
