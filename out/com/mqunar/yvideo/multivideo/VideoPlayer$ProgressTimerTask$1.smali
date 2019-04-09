.class Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;)V
    .registers 2

    .prologue
    .line 1195
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    .line 1199
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 1200
    const-wide/16 v0, 0x64

    mul-long v6, v2, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-nez v0, :cond_2e

    const-wide/16 v0, 0x1

    :goto_1c
    div-long v0, v6, v0

    long-to-int v1, v0

    .line 1201
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setProgressAndText(IJJ)V

    .line 1202
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;->this$1:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual/range {v0 .. v5}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->handleProgress(IJJ)V

    .line 1203
    return-void

    :cond_2e
    move-wide v0, v4

    .line 1200
    goto :goto_1c
.end method
