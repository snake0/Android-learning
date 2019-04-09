.class Lcom/mqunar/core/basectx/activity/Proxy;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static finish(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 63
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityFinished(Landroid/app/Activity;)V

    .line 65
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/mqunar/core/basectx/application/QApplication;->setStackCount(I)V

    .line 66
    return-void
.end method

.method static onCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 22
    :try_start_0
    const-string v0, "com.mqunar.core.QunarApkLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "loadResource"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_31

    .line 26
    :goto_1e
    if-nez p1, :cond_29

    .line 27
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getStackCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mqunar/core/basectx/application/QApplication;->setStackCount(I)V

    .line 30
    :cond_29
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 31
    return-void

    .line 23
    :catch_31
    move-exception v0

    goto :goto_1e
.end method

.method static onDestroy(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 59
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityDestroyed(Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method static onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mqunar/core/basectx/application/QApplication;->setInStackName(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityPaused(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method static onResume(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 54
    invoke-static {p0}, Lcom/mqunar/core/basectx/activity/Util;->getInStackName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/basectx/application/QApplication;->setInStackName(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityResumed(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method static onSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method static onStart(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 34
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityStarted(Landroid/app/Activity;)V

    .line 35
    return-void
.end method

.method static onStop(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 38
    invoke-static {}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->getInstance()Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mqunar/core/basectx/application/ActivityLifecycleDispatcher;->dispatchActivityStopped(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    .prologue
    .line 42
    const-string v0, "_SPIDER_REQUESTCODE_"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    return-void
.end method
