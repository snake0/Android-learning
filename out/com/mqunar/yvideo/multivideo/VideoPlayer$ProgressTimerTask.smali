.class public Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V
    .registers 2

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_18

    .line 1195
    :cond_e
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    new-instance v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;

    invoke-direct {v1, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask$1;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->post(Ljava/lang/Runnable;)Z

    .line 1206
    :cond_18
    return-void
.end method
