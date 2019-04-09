.class Lcom/mqunar/yvideo/multivideo/MediaSystem$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/MediaSystem;)V
    .registers 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/MediaSystem$7;->this$0:Lcom/mqunar/yvideo/multivideo/MediaSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 245
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 246
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onVideoSizeChanged()V

    .line 248
    :cond_d
    return-void
.end method
