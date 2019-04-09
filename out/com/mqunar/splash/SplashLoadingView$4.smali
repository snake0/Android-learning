.class Lcom/mqunar/splash/SplashLoadingView$4;
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
    .line 271
    iput-object p1, p0, Lcom/mqunar/splash/SplashLoadingView$4;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 275
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView$4;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;
    invoke-static {v1}, Lcom/mqunar/splash/SplashLoadingView;->access$500(Lcom/mqunar/splash/SplashLoadingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 276
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$4;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    # getter for: Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;
    invoke-static {v0}, Lcom/mqunar/splash/SplashLoadingView;->access$500(Lcom/mqunar/splash/SplashLoadingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 277
    return-void
.end method
