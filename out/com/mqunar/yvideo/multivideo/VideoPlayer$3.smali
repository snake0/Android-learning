.class Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V
    .registers 2

    .prologue
    .line 634
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 637
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getWidth()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getHeight()I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->measure(II)V

    .line 639
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v3}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    invoke-virtual {v4}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->layout(IIII)V

    .line 640
    return-void
.end method
