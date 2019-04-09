.class Lcom/mqunar/splash/SplashActivity$4;
.super Lcom/mqunar/splash/CountDownTimerFromAPI26;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;JJ)V
    .registers 6

    .prologue
    .line 336
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$4;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mqunar/splash/CountDownTimerFromAPI26;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 1

    .prologue
    .line 345
    return-void
.end method

.method public onTick(J)V
    .registers 5

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$4;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->mAdSplash:Lcom/mqunar/splash/AdSplash;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$1700(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/AdSplash;

    move-result-object v0

    long-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/mqunar/splash/AdSplash;->setSkipText(F)V

    .line 340
    return-void
.end method
