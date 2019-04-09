.class Lcom/mqunar/splash/SplashLoadingView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$1:Lcom/mqunar/splash/SplashLoadingView$1;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashLoadingView$1;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mqunar/splash/SplashLoadingView$1$1;->this$1:Lcom/mqunar/splash/SplashLoadingView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$1$1;->this$1:Lcom/mqunar/splash/SplashLoadingView$1;

    iget-object v0, v0, Lcom/mqunar/splash/SplashLoadingView$1;->val$icon:Landroid/view/View;

    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView$1$1;->this$1:Lcom/mqunar/splash/SplashLoadingView$1;

    iget-object v1, v1, Lcom/mqunar/splash/SplashLoadingView$1;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/mqunar/splash/SplashLoadingView;->access$000(Lcom/mqunar/splash/SplashLoadingView;)[Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView$1$1;->this$1:Lcom/mqunar/splash/SplashLoadingView$1;

    iget-object v2, v2, Lcom/mqunar/splash/SplashLoadingView$1;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/mqunar/splash/SplashLoadingView;->access$000(Lcom/mqunar/splash/SplashLoadingView;)[Landroid/widget/ImageView;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-ne v0, v1, :cond_23

    .line 196
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$1$1;->this$1:Lcom/mqunar/splash/SplashLoadingView$1;

    iget-object v0, v0, Lcom/mqunar/splash/SplashLoadingView$1;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    const/4 v1, 0x0

    # setter for: Lcom/mqunar/splash/SplashLoadingView;->mCurState:I
    invoke-static {v0, v1}, Lcom/mqunar/splash/SplashLoadingView;->access$102(Lcom/mqunar/splash/SplashLoadingView;I)I

    .line 198
    :cond_23
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 203
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 191
    return-void
.end method
