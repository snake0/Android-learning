.class Lcom/mqunar/splash/SplashActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;

.field final synthetic val$splashUrl:Ljava/lang/String;

.field final synthetic val$storage:Lcom/mqunar/storage/Storage;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;Lcom/mqunar/storage/Storage;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 265
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    iput-object p2, p0, Lcom/mqunar/splash/SplashActivity$2;->val$storage:Lcom/mqunar/storage/Storage;

    iput-object p3, p0, Lcom/mqunar/splash/SplashActivity$2;->val$splashUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2;->val$storage:Lcom/mqunar/storage/Storage;

    const-string v1, "isPrivacyShow"

    invoke-virtual {v0, v1, v3}, Lcom/mqunar/storage/Storage;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 269
    if-eqz v0, :cond_21

    .line 271
    new-instance v0, Lcom/mqunar/splash/PrivacyDialogFragment;

    new-instance v1, Lcom/mqunar/splash/SplashActivity$2$1;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashActivity$2$1;-><init>(Lcom/mqunar/splash/SplashActivity$2;)V

    invoke-direct {v0, v1}, Lcom/mqunar/splash/PrivacyDialogFragment;-><init>(Lcom/mqunar/splash/AgreeListener;)V

    .line 283
    iget-object v1, p0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v1}, Lcom/mqunar/splash/SplashActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Privacy"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 294
    :goto_20
    return-void

    .line 285
    :cond_21
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2;->val$splashUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isCloseAd()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 286
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$300(Lcom/mqunar/splash/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$1300()J

    move-result-wide v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 287
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->WELCOME_TIME_DELAY_AD:J
    invoke-static {}, Lcom/mqunar/splash/SplashActivity;->access$1300()J

    move-result-wide v1

    # invokes: Lcom/mqunar/splash/SplashActivity;->initCountdownTimer(J)V
    invoke-static {v0, v1, v2}, Lcom/mqunar/splash/SplashActivity;->access$1400(Lcom/mqunar/splash/SplashActivity;J)V

    .line 288
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->sendBroadcast()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1500(Lcom/mqunar/splash/SplashActivity;)V

    goto :goto_20

    .line 290
    :cond_4f
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$2;->this$0:Lcom/mqunar/splash/SplashActivity;

    # invokes: Lcom/mqunar/splash/SplashActivity;->showQunarWelcome()V
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1600(Lcom/mqunar/splash/SplashActivity;)V

    goto :goto_20
.end method
