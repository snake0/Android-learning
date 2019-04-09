.class Lcom/mqunar/splash/SplashActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/splash/IWebViewObserver;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;)V
    .registers 2

    .prologue
    .line 478
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 515
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    if-nez v0, :cond_21

    .line 516
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$2300()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 522
    :cond_20
    :goto_20
    return-void

    .line 518
    :cond_21
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 519
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_20
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8

    .prologue
    .line 506
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    if-nez v0, :cond_17

    .line 507
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$2300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    :cond_16
    :goto_16
    return-void

    .line 508
    :cond_17
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 509
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_16
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 6

    .prologue
    const/16 v2, 0x8

    .line 481
    const/16 v0, 0x50

    if-le p2, v0, :cond_2e

    .line 482
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2200(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2d

    .line 483
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 484
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/mqunar/splash/SplashActivity;->access$2200(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->imgWelcome:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$2200(Lcom/mqunar/splash/SplashActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    :cond_2d
    :goto_2d
    return-void

    .line 487
    :cond_2e
    const/16 v0, 0x28

    if-le p2, v0, :cond_2d

    .line 488
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->currentMessage:I
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1900(Lcom/mqunar/splash/SplashActivity;)I

    move-result v0

    if-nez v0, :cond_2d

    .line 489
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$7;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2d
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 527
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    .prologue
    .line 532
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 497
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 501
    const/4 v0, 0x0

    return v0
.end method
