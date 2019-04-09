.class Lcom/mqunar/yvideo/multivideo/MediaSystem$6;
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
    .line 221
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;->this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;

    iput p2, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;->val$what:I

    iput p3, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 224
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 225
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;->val$what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    .line 226
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 227
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onPrepared()V

    .line 233
    :cond_1b
    :goto_1b
    return-void

    .line 230
    :cond_1c
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;->val$what:I

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$6;->val$extra:I

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onInfo(II)V

    goto :goto_1b
.end method
