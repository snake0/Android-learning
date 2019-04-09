.class Lcom/mqunar/yvideo/multivideo/MediaSystem$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;II)V
    .registers 4

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;->this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;

    iput p2, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;->val$what:I

    iput p3, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 210
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 211
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;->val$what:I

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$5;->val$extra:I

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onError(II)V

    .line 213
    :cond_11
    return-void
.end method
