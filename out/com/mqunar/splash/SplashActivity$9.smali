.class Lcom/mqunar/splash/SplashActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/SplashActivity;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/SplashActivity;)V
    .registers 2

    .prologue
    .line 638
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$9;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$9;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 642
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$9;->this$0:Lcom/mqunar/splash/SplashActivity;

    # getter for: Lcom/mqunar/splash/SplashActivity;->splashMonitor:Lcom/mqunar/splash/SplashMonitor;
    invoke-static {v0}, Lcom/mqunar/splash/SplashActivity;->access$500(Lcom/mqunar/splash/SplashActivity;)Lcom/mqunar/splash/SplashMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashMonitor;->monitorShowTime()V

    .line 644
    :cond_11
    return-void
.end method
