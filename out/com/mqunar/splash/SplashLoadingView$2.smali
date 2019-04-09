.class Lcom/mqunar/splash/SplashLoadingView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashLoadingView;

.field final synthetic val$icon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashLoadingView;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mqunar/splash/SplashLoadingView$2;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    iput-object p2, p0, Lcom/mqunar/splash/SplashLoadingView$2;->val$icon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$2;->val$icon:Landroid/view/View;

    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView$2;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/mqunar/splash/SplashLoadingView;->access$000(Lcom/mqunar/splash/SplashLoadingView;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView$2;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/mqunar/splash/SplashLoadingView;->access$000(Lcom/mqunar/splash/SplashLoadingView;)[Landroid/widget/ImageView;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_2d

    .line 231
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$2;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # setter for: Lcom/mqunar/splash/SplashLoadingView;->index:I
    invoke-static {v0, v3}, Lcom/mqunar/splash/SplashLoadingView;->access$202(Lcom/mqunar/splash/SplashLoadingView;I)I

    .line 232
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$2;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # setter for: Lcom/mqunar/splash/SplashLoadingView;->mCurState:I
    invoke-static {v0, v3}, Lcom/mqunar/splash/SplashLoadingView;->access$102(Lcom/mqunar/splash/SplashLoadingView;I)I

    .line 233
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$2;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashLoadingView;->access$300(Lcom/mqunar/splash/SplashLoadingView;)Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    move-result-object v0

    const/high16 v1, 0x10000

    const-wide/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    :cond_2d
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 240
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 226
    return-void
.end method
