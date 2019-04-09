.class Lcom/mqunar/splash/SplashLoadingView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashLoadingView;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashLoadingView;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/mqunar/splash/SplashLoadingView$3;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 255
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView$3;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/mqunar/splash/SplashLoadingView;->access$400(Lcom/mqunar/splash/SplashLoadingView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 256
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$3;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/mqunar/splash/SplashLoadingView;->access$400(Lcom/mqunar/splash/SplashLoadingView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 257
    return-void
.end method
