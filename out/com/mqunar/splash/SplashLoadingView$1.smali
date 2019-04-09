.class Lcom/mqunar/splash/SplashLoadingView$1;
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
    .line 176
    iput-object p1, p0, Lcom/mqunar/splash/SplashLoadingView$1;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    iput-object p2, p0, Lcom/mqunar/splash/SplashLoadingView$1;->val$icon:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView$1;->this$0:Lcom/mqunar/splash/SplashLoadingView;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mqunar/splash/R$anim;->spider_splash_icon_show_anim_end:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 185
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 186
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView$1;->val$icon:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    new-instance v1, Lcom/mqunar/splash/SplashLoadingView$1$1;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashLoadingView$1$1;-><init>(Lcom/mqunar/splash/SplashLoadingView$1;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 210
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 180
    return-void
.end method
