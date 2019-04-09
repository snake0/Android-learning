.class public Lcom/mqunar/splash/SplashJavascriptObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private activity:Landroid/app/Activity;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mqunar/splash/SplashJavascriptObject;->activity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/mqunar/splash/SplashJavascriptObject;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/splash/SplashJavascriptObject;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 28
    return-void
.end method

.method public removeToHomeAction()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 33
    const-string v0, "SplashJavascriptObject"

    const-string v1, "removeToHomeAction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/mqunar/splash/SplashJavascriptObject;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    return-void
.end method
