.class Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

.field final synthetic val$layout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;Landroid/widget/LinearLayout;)V
    .registers 3

    .prologue
    .line 408
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iput-object p2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 411
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onStatePreparingChangingUrl(IJ)V

    .line 412
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v1, v1, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getKeyFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    const/4 v0, 0x0

    move v1, v0

    :goto_26
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5f

    .line 414
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getDefaultUrlMapIndex()I

    move-result v0

    if-ne v1, v0, :cond_4d

    .line 415
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "#fff85959"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 413
    :goto_49
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 417
    :cond_4d
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->val$layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_49

    .line 420
    :cond_5f
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_6c

    .line 421
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;->this$0:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 423
    :cond_6c
    return-void
.end method
