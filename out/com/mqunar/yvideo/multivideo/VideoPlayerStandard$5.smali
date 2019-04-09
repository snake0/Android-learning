.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V
    .registers 2

    .prologue
    .line 953
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 956
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_23

    .line 960
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 962
    :cond_23
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_32

    .line 963
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 965
    :cond_32
    return-void
.end method
