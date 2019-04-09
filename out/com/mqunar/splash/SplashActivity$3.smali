.class Lcom/mqunar/splash/SplashActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/splash/AgreeListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;

.field final synthetic val$splashUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 301
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$3;->this$0:Lcom/mqunar/splash/SplashActivity;

    iput-object p2, p0, Lcom/mqunar/splash/SplashActivity$3;->val$splashUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agreeClick()V
    .registers 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$3;->val$splashUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isCloseAd()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 305
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$3;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$1300()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 306
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$3;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$1300()J

    move-result-wide v1

    # invokes: Lcom/mqunar/splash/SplashActivity;->initCountdownTimer(J)V
    invoke-static {v0, v1, v2}, Lcom/mqunar/splash/SplashActivity;->access$1400(Lcom/mqunar/splash/SplashActivity;J)V

    .line 307
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$3;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1500(Lcom/mqunar/splash/SplashActivity;)V

    .line 311
    :goto_2e
    return-void

    .line 309
    :cond_2f
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$3;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->showQunarWelcome()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1600(Lcom/mqunar/splash/SplashActivity;)V

    goto :goto_2e
.end method
