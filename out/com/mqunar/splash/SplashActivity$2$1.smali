.class Lcom/mqunar/splash/SplashActivity$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/splash/AgreeListener;


# instance fields
.field final synthetic this$1:Lcom/mqunar/splash/SplashActivity$2;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity$2;)V
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$2$1;->this$1:Lcom/mqunar/splash/SplashActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agreeClick()V
    .registers 5

    .prologue
    .line 274
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2$1;->this$1:Lcom/mqunar/splash/SplashActivity$2;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$2;->val$splashUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isCloseAd()Z

    move-result v0

    if-nez v0, :cond_37

    .line 275
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2$1;->this$1:Lcom/mqunar/splash/SplashActivity$2;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$1300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2$1;->this$1:Lcom/mqunar/splash/SplashActivity$2;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$1300()J

    move-result-wide v1

    # invokes: Lcom/mqunar/splash/SplashActivity;->initCountdownTimer(J)V
    invoke-static {v0, v1, v2}, Lcom/mqunar/splash/SplashActivity;->access$1400(Lcom/mqunar/splash/SplashActivity;J)V

    .line 277
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2$1;->this$1:Lcom/mqunar/splash/SplashActivity$2;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1500(Lcom/mqunar/splash/SplashActivity;)V

    .line 281
    :goto_36
    return-void

    .line 279
    :cond_37
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2$1;->this$1:Lcom/mqunar/splash/SplashActivity$2;

    iget-object v0, v0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->showQunarWelcome()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1600(Lcom/mqunar/splash/SplashActivity;)V

    goto :goto_36
.end method
