.class public Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;


# direct methods
.method public constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V
    .registers 2

    .prologue
    .line 980
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dismissControlView()V

    .line 985
    return-void
.end method
