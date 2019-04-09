.class public Lcom/mqunar/core/QInstrumentation;
.super Landroid/app/Instrumentation;
.source "SourceFile"


# static fields
.field public static firstActivityName:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Instrumentation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 237
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/core/QInstrumentation;->firstActivityName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Instrumentation;)V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    .line 35
    return-void
.end method


# virtual methods
.method public addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;
    .registers 5

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->addMonitor(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)Landroid/app/Instrumentation$ActivityMonitor;

    move-result-object v0

    return-object v0
.end method

.method public addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->addMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 149
    return-void
.end method

.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 276
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/lang/ClassLoader;)V

    .line 277
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->checkClassLoader()V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_a} :catch_10

    .line 281
    :goto_a
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 282
    return-void

    .line 278
    :catch_10
    move-exception v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_a
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 287
    return-void
.end method

.method public callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnPause(Landroid/app/Activity;)V

    .line 332
    return-void
.end method

.method public callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnPostCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 297
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method public callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 291
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnRestoreInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 292
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnResume(Landroid/app/Activity;)V

    .line 317
    return-void
.end method

.method public callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->callActivityOnSaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStart(Landroid/app/Activity;)V

    .line 307
    return-void
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnStop(Landroid/app/Activity;)V

    .line 322
    return-void
.end method

.method public callActivityOnUserLeaving(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callActivityOnUserLeaving(Landroid/app/Activity;)V

    .line 337
    return-void
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 229
    return-void
.end method

.method public checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z
    .registers 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->checkMonitorHit(Landroid/app/Instrumentation$ActivityMonitor;I)Z

    move-result v0

    return v0
.end method

.method public endPerformanceSnapshot()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->endPerformanceSnapshot()V

    .line 84
    return-void
.end method

.method public finish(ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->finish(ILandroid/os/Bundle;)V

    .line 69
    return-void
.end method

.method public getAllocCounts()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getAllocCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getBinderCounts()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getBinderCounts()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTargetContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiAutomation()Landroid/app/UiAutomation;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v0

    return-object v0
.end method

.method public invokeContextMenuAction(Landroid/app/Activity;II)Z
    .registers 5

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeContextMenuAction(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public invokeMenuActionSync(Landroid/app/Activity;II)Z
    .registers 5

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->invokeMenuActionSync(Landroid/app/Activity;II)Z

    move-result v0

    return v0
.end method

.method public isProfiling()Z
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->isProfiling()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 6

    .prologue
    .line 241
    sget-object v0, Lcom/mqunar/core/QInstrumentation;->firstActivityName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 242
    sput-object p2, Lcom/mqunar/core/QInstrumentation;->firstActivityName:Ljava/lang/String;

    .line 245
    :cond_6
    :try_start_6
    invoke-static {p1}, Lcom/mqunar/core/QunarApkLoader;->a(Ljava/lang/ClassLoader;)V

    .line 246
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->checkClassLoader()V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_c} :catch_5f

    .line 250
    :goto_c
    sget-boolean v0, Lcom/mqunar/core/QSpider;->loadDone:Z

    if-nez v0, :cond_58

    const-class v0, Lcom/mqunar/dispatcher/DispatcherActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-class v0, Lcom/mqunar/splash/SplashActivity;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-class v0, Lcom/mqunar/dispatcher/DispatcherProxyActivity;

    .line 252
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-class v0, Lcom/mqunar/dispatcher/WebActivity;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-class v0, Lcom/mqunar/dispatcher/DispatcherProxyHomeActivity;

    .line 254
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-class v0, Lcom/baidu/techain/TechainActivity;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 270
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 247
    :catch_5f
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_c

    .line 258
    :cond_64
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 259
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/mqunar/splash/SplashActivity;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    const v0, 0x8000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const/high16 v0, 0x10000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    const/high16 v0, 0x4000000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const/high16 v0, 0x10000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const/high16 v0, 0x800000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 267
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 268
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_58
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .registers 5

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onDestroy()V

    .line 89
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->onStart()V

    .line 54
    return-void
.end method

.method public removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->removeMonitor(Landroid/app/Instrumentation$ActivityMonitor;)V

    .line 179
    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public sendCharacterSync(I)V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendCharacterSync(I)V

    .line 209
    return-void
.end method

.method public sendKeyDownUpSync(I)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V

    .line 204
    return-void
.end method

.method public sendKeySync(Landroid/view/KeyEvent;)V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 199
    return-void
.end method

.method public sendPointerSync(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 214
    return-void
.end method

.method public sendStatus(ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2}, Landroid/app/Instrumentation;->sendStatus(ILandroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public sendStringSync(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendStringSync(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public sendTrackballEventSync(Landroid/view/MotionEvent;)V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->sendTrackballEventSync(Landroid/view/MotionEvent;)V

    .line 219
    return-void
.end method

.method public setAutomaticPerformanceSnapshots()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->setAutomaticPerformanceSnapshots()V

    .line 74
    return-void
.end method

.method public setInTouchMode(Z)V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    .line 124
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->start()V

    .line 49
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public startAllocCounting()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startAllocCounting()V

    .line 342
    return-void
.end method

.method public startPerformanceSnapshot()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startPerformanceSnapshot()V

    .line 79
    return-void
.end method

.method public startProfiling()V
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->startProfiling()V

    .line 114
    return-void
.end method

.method public stopAllocCounting()V
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopAllocCounting()V

    .line 347
    return-void
.end method

.method public stopProfiling()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->stopProfiling()V

    .line 119
    return-void
.end method

.method public waitForIdle(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForIdle(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public waitForIdleSync()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0}, Landroid/app/Instrumentation;->waitForIdleSync()V

    .line 134
    return-void
.end method

.method public waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1}, Landroid/app/Instrumentation;->waitForMonitor(Landroid/app/Instrumentation$ActivityMonitor;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;
    .registers 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mqunar/core/QInstrumentation;->a:Landroid/app/Instrumentation;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Instrumentation;->waitForMonitorWithTimeout(Landroid/app/Instrumentation$ActivityMonitor;J)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method
