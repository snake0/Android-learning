.class Lcom/mqunar/yvideo/multivideo/MediaSystem$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;I)V
    .registers 3

    .prologue
    .line 183
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$3;->this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;

    iput p2, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$3;->val$percent:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 186
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 187
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$3;->val$percent:I

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setBufferProgress(I)V

    .line 189
    :cond_f
    return-void
.end method
