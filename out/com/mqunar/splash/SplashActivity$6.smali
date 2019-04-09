.class Lcom/mqunar/splash/SplashActivity$6;
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
    .line 467
    iput-object p1, p0, Lcom/mqunar/splash/SplashActivity$6;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lcom/mqunar/splash/SplashActivity$6;->this$0:Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {v0}, Lcom/mqunar/splash/SplashActivity;->finish()V

    .line 471
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 472
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 473
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 474
    return-void
.end method
