.class final Lcom/mqunar/core/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 186
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 187
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/module/ModuleInfoController;->loadApk(Landroid/content/Context;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 189
    const-string v4, "SPIDER-WASTE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadApk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-static {}, Lcom/mqunar/tools/QPreExecuteTaskUtils;->runAllTask()V

    .line 193
    const-string v0, "SPIDER-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runAllTask:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_61} :catch_121
    .catchall {:try_start_2 .. :try_end_61} :catchall_176

    move-result-wide v0

    .line 196
    :try_start_62
    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v2

    if-nez v2, :cond_77

    .line 197
    invoke-static {}, Lcom/mqunar/network/NetRequestManager;->getInstance()Lcom/mqunar/network/NetRequestManager;

    move-result-object v2

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mqunar/network/NetRequestManager;->requestIpList(Landroid/content/Context;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_77} :catch_1c8
    .catchall {:try_start_62 .. :try_end_77} :catchall_176

    .line 202
    :cond_77
    :goto_77
    :try_start_77
    const-string v2, "com.mqunar.imagecache.ImageLoader"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 203
    const-string v3, "getInstance"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 204
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/mqunar/dispatcher/GlobalConnectChangedReceiver;

    invoke-direct {v4}, Lcom/mqunar/dispatcher/GlobalConnectChangedReceiver;-><init>()V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 210
    const-string v2, "SPIDER-WASTE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageCache:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_d6} :catch_121
    .catchall {:try_start_77 .. :try_end_d6} :catchall_176

    .line 215
    sput-boolean v8, Lcom/mqunar/core/QSpider;->loadDone:Z

    .line 216
    invoke-static {v8}, Lcom/mqunar/splash/SplashUtils;->setLoadDone(Z)V

    .line 217
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/spider/GPushReceiver;->check(Landroid/content/Context;)V

    .line 219
    const-string v0, "SPIDER-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qspider init cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mqunar/core/QSpider;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const-wide/16 v0, 0x1f40

    :try_start_10b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_10b .. :try_end_10e} :catch_11c

    .line 228
    :goto_10e
    :try_start_10e
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    const-string v1, "com.mqunar.atom.im"

    invoke-virtual {v0, v1}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->checkAndInstallModuleDependency(Lcom/mqunar/module/ModuleInfo;)V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_10e .. :try_end_11b} :catch_1c5

    .line 252
    :goto_11b
    return-void

    .line 223
    :catch_11c
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10e

    .line 212
    :catch_121
    move-exception v0

    .line 213
    :try_start_122
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/core/QSpider;->a(Ljava/lang/Throwable;Landroid/content/Context;)V
    :try_end_129
    .catchall {:try_start_122 .. :try_end_129} :catchall_176

    .line 215
    sput-boolean v8, Lcom/mqunar/core/QSpider;->loadDone:Z

    .line 216
    invoke-static {v8}, Lcom/mqunar/splash/SplashUtils;->setLoadDone(Z)V

    .line 217
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/spider/GPushReceiver;->check(Landroid/content/Context;)V

    .line 219
    const-string v0, "SPIDER-WASTE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "qspider init cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mqunar/core/QSpider;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const-wide/16 v0, 0x1f40

    :try_start_15e
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_161
    .catch Ljava/lang/Throwable; {:try_start_15e .. :try_end_161} :catch_171

    .line 228
    :goto_161
    :try_start_161
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    const-string v1, "com.mqunar.atom.im"

    invoke-virtual {v0, v1}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->checkAndInstallModuleDependency(Lcom/mqunar/module/ModuleInfo;)V
    :try_end_16e
    .catch Ljava/lang/Throwable; {:try_start_161 .. :try_end_16e} :catch_16f

    goto :goto_11b

    .line 230
    :catch_16f
    move-exception v0

    goto :goto_11b

    .line 223
    :catch_171
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_161

    .line 215
    :catchall_176
    move-exception v0

    move-object v1, v0

    sput-boolean v8, Lcom/mqunar/core/QSpider;->loadDone:Z

    .line 216
    invoke-static {v8}, Lcom/mqunar/splash/SplashUtils;->setLoadDone(Z)V

    .line 217
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/spider/GPushReceiver;->check(Landroid/content/Context;)V

    .line 219
    const-string v0, "SPIDER-WASTE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qspider init cost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/mqunar/core/QSpider;->startTime:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const-wide/16 v2, 0x1f40

    :try_start_1ad
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b0
    .catch Ljava/lang/Throwable; {:try_start_1ad .. :try_end_1b0} :catch_1be

    .line 228
    :goto_1b0
    :try_start_1b0
    sget-object v0, Lcom/mqunar/module/ModuleInfoController;->modules:Lcom/mqunar/module/Modules;

    const-string v2, "com.mqunar.atom.im"

    invoke-virtual {v0, v2}, Lcom/mqunar/module/Modules;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/module/ModuleInfo;

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->checkAndInstallModuleDependency(Lcom/mqunar/module/ModuleInfo;)V
    :try_end_1bd
    .catch Ljava/lang/Throwable; {:try_start_1b0 .. :try_end_1bd} :catch_1c3

    .line 231
    :goto_1bd
    throw v1

    .line 223
    :catch_1be
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1b0

    .line 230
    :catch_1c3
    move-exception v0

    goto :goto_1bd

    :catch_1c5
    move-exception v0

    goto/16 :goto_11b

    .line 199
    :catch_1c8
    move-exception v2

    goto/16 :goto_77
.end method
