.class public Lcom/mqunar/core/QSpider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;

.field public static crashTouchUrl:Ljava/lang/String;

.field public static initThrowable:Ljava/lang/Throwable;

.field public static volatile loadDone:Z

.field public static startTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 287
    invoke-static {p0}, Lcom/mqunar/module/ModuleInfoController;->clearLocalModules(Landroid/content/Context;)V

    .line 288
    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/mqunar/core/QSpider;->b(Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void
.end method

.method private static b(Ljava/lang/Throwable;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 273
    sput-object p0, Lcom/mqunar/core/QSpider;->initThrowable:Ljava/lang/Throwable;

    .line 274
    const-string v0, "http://touch.qunar.com?bd_source=appcrash"

    sput-object v0, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/splash/SplashUtils;->setCrashTouchUrl(Ljava/lang/String;)V

    .line 276
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 277
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    .line 279
    invoke-static {p1}, Lcom/mqunar/core/QSpider;->a(Landroid/content/Context;)V

    .line 284
    return-void

    .line 281
    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getCParam(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 365
    const-string v1, ""

    .line 367
    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Class;

    .line 368
    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    .line 369
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Context;

    .line 370
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 371
    const-string v3, "com.mqunar.libtask.HotdogConductor"

    const-string v4, "cp"

    invoke-static {v3, v4, v0, v2}, Lcom/mqunar/core/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 372
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->getVid()Ljava/lang/String;

    move-result-object v2

    .line 373
    if-eqz v0, :cond_29

    .line 374
    const-string v3, "vid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_29
    invoke-static {v0}, Lcom/mqunar/json/JsonUtils;->toJsonString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2c} :catch_2e

    move-result-object v0

    .line 380
    :goto_2d
    return-object v0

    .line 377
    :catch_2e
    move-exception v0

    move-object v0, v1

    goto :goto_2d
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 291
    sget-object v0, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 292
    const/4 v1, 0x0

    .line 294
    :try_start_9
    const-string v0, "android.ddm.DdmHandleAppName"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 295
    const-string v2, "getAppName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_21} :catch_53

    move-object v1, v0

    .line 298
    :goto_22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 299
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 300
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 301
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 304
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_3c

    .line 305
    iget-object v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 311
    :cond_4e
    sput-object v1, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    .line 313
    :cond_50
    sget-object v0, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    return-object v0

    .line 296
    :catch_53
    move-exception v0

    goto :goto_22
.end method

.method public static getEnv()I
    .registers 2

    .prologue
    .line 262
    const/4 v0, 0x1

    .line 263
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->isBeta()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 264
    const/4 v0, 0x2

    .line 268
    :cond_c
    :goto_c
    return v0

    .line 265
    :cond_d
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/atomenv/GlobalEnv;->isDev()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 266
    const/4 v0, 0x3

    goto :goto_c
.end method

.method public static initSpider()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    sget-wide v3, Lcom/mqunar/core/QSpider;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_11

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/mqunar/core/QSpider;->startTime:J

    .line 70
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/internal/SpiderPlatfromInfo;->init(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v0

    if-nez v0, :cond_99

    .line 74
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-static {}, Lcom/mqunar/core/QSpider;->getEnv()I

    move-result v3

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/mqunar/core/QSpider;->getCParam(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/acra/ACRA;->init(Landroid/app/Application;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 75
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_99

    .line 77
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "data_avra"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/qunar/avra/AVRA;->watchMainProcess()Lcom/qunar/avra/AVRAInstallBuilder;

    move-result-object v3

    .line 81
    const-string v4, "avra.leak_switch"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 82
    invoke-virtual {v3}, Lcom/qunar/avra/AVRAInstallBuilder;->detectLeakedActivity()Lcom/qunar/avra/AVRAInstallBuilder;

    .line 85
    :cond_67
    const-string v4, "avra.block_switch"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 86
    const/16 v4, 0x3e8

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lcom/qunar/avra/AVRAInstallBuilder;->detectBlock(II)Lcom/qunar/avra/AVRAInstallBuilder;

    .line 89
    :cond_76
    const-string v4, "avra.strictmode_switch"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 91
    invoke-virtual {v3}, Lcom/qunar/avra/AVRAInstallBuilder;->detectFileUriExposure()Lcom/qunar/avra/AVRAInstallBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/qunar/avra/AVRAInstallBuilder;->detectLeakedClosableObjects()Lcom/qunar/avra/AVRAInstallBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/qunar/avra/AVRAInstallBuilder;->detectLeakedRegistrationObjects()Lcom/qunar/avra/AVRAInstallBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/qunar/avra/AVRAInstallBuilder;->detectLeakedSqlLiteObjects()Lcom/qunar/avra/AVRAInstallBuilder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/qunar/avra/AVRAInstallBuilder;->detectResourceMismatch()Lcom/qunar/avra/AVRAInstallBuilder;

    .line 97
    :cond_92
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/qunar/avra/AVRAInstallBuilder;->buildAndInstall(Landroid/content/Context;)V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_99} :catch_d2

    .line 106
    :cond_99
    :goto_99
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/core/QSpider;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    if-eqz v0, :cond_ec

    sget-object v0, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found other process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/mqunar/core/QSpider;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_d1
    :goto_d1
    return-void

    .line 102
    :catch_d2
    move-exception v0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init acra fail : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_99

    .line 113
    :cond_ec
    const-string v0, "OPT-TIMES"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u542f\u52a8App="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/mqunar/core/QSpider;->startTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lcom/mqunar/spider/ModuleMonitor;->getInstance()Lcom/mqunar/spider/ModuleMonitor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/mqunar/spider/ModuleMonitor;->appCreateTime:J

    .line 117
    sget-boolean v0, Lcom/mqunar/core/QSpider;->a:Z

    if-nez v0, :cond_d1

    .line 122
    invoke-static {}, Lcom/taobao/android/runtime/a;->a()Lcom/taobao/android/runtime/a;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/taobao/android/runtime/a;->a(Landroid/content/Context;Z)V

    .line 124
    sput-boolean v1, Lcom/mqunar/core/QSpider;->a:Z

    .line 126
    sput-boolean v2, Lcom/mqunar/core/QSpider;->loadDone:Z

    .line 127
    sput-object v7, Lcom/mqunar/core/QSpider;->crashTouchUrl:Ljava/lang/String;

    .line 128
    invoke-static {v2}, Lcom/mqunar/splash/SplashUtils;->setLoadDone(Z)V

    .line 129
    invoke-static {v7}, Lcom/mqunar/splash/SplashUtils;->setCrashTouchUrl(Ljava/lang/String;)V

    .line 132
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_14d

    .line 135
    :try_start_133
    const-string v0, "android.webkit.WebViewFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    const-string v3, "getProvider"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 137
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 138
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_133 .. :try_end_14d} :catch_241

    .line 143
    :cond_14d
    :goto_14d
    invoke-static {}, Lcom/mqunar/core/QunarApkLoader;->init()V

    .line 147
    :try_start_150
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->envLock()V

    .line 149
    invoke-static {}, Lcom/mqunar/libtask/ProxyConfig;->getInstance()Lcom/mqunar/libtask/ProxyConfig;

    move-result-object v0

    const-string v3, "http://client.qunar.com/pitcher-proxy"

    invoke-virtual {v0, v3}, Lcom/mqunar/libtask/ProxyConfig;->setDefaultUrl(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lqunar/lego/utils/Pitcher;->lockUrl()V

    .line 152
    invoke-static {}, Lcom/mqunar/atomenv/SwitchEnv;->getInstance()Lcom/mqunar/atomenv/SwitchEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/SwitchEnv;->isShowNetTips()Z

    move-result v0

    if-nez v0, :cond_1b1

    .line 153
    const-string v0, "token"

    invoke-static {v0}, Lcom/mqunar/necro/agent/NewNecro;->withAppToken(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;

    move-result-object v0

    .line 154
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mqunar/atomenv/GlobalEnv;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mqunar/necro/agent/NewNecro;->withPid(Ljava/lang/String;)Lcom/mqunar/necro/agent/NewNecro;

    move-result-object v3

    .line 155
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/atomenv/GlobalEnv;->isRelease()Z

    move-result v0

    if-nez v0, :cond_1f4

    move v0, v1

    :goto_18a
    invoke-virtual {v3, v0}, Lcom/mqunar/necro/agent/NewNecro;->withLogEnabled(Z)Lcom/mqunar/necro/agent/NewNecro;

    move-result-object v0

    .line 156
    const-string v3, "withSender"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/mqunar/necro/agent/task/IHttpSender;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lcom/mqunar/spider/QNecroSender;

    invoke-direct {v7}, Lcom/mqunar/spider/QNecroSender;-><init>()V

    aput-object v7, v5, v6

    invoke-static {v3, v0, v4, v5}, Lcom/mqunar/core/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mqunar/necro/agent/NewNecro;->start(Landroid/content/Context;)V
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_1b1} :catch_1f6

    .line 165
    :cond_1b1
    :goto_1b1
    :try_start_1b1
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqunar/lego/utils/Goblin;->loadInfo(Landroid/content/Context;)V
    :try_end_1b8
    .catch Ljava/lang/Throwable; {:try_start_1b1 .. :try_end_1b8} :catch_214

    .line 171
    :goto_1b8
    :try_start_1b8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 172
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/module/ModuleInfoController;->registModules(Landroid/content/Context;)V

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 174
    const-string v0, "SPIDER-WASTE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registModules:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v2, v4, v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/mqunar/tools/log/QLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1ea
    .catch Ljava/lang/Throwable; {:try_start_1b8 .. :try_end_1ea} :catch_232

    .line 182
    new-instance v0, Lcom/mqunar/core/a;

    invoke-direct {v0}, Lcom/mqunar/core/a;-><init>()V

    .line 254
    invoke-virtual {v0}, Lcom/mqunar/core/a;->start()V

    goto/16 :goto_d1

    :cond_1f4
    move v0, v2

    .line 155
    goto :goto_18a

    .line 159
    :catch_1f6
    move-exception v0

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init spider fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b1

    .line 166
    :catch_214
    move-exception v0

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadInfo fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1b8

    .line 175
    :catch_232
    move-exception v0

    .line 176
    sput-boolean v1, Lcom/mqunar/core/QSpider;->loadDone:Z

    .line 177
    invoke-static {v1}, Lcom/mqunar/splash/SplashUtils;->setLoadDone(Z)V

    .line 178
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/core/QSpider;->b(Ljava/lang/Throwable;Landroid/content/Context;)V

    goto/16 :goto_d1

    .line 139
    :catch_241
    move-exception v0

    goto/16 :goto_14d
.end method
