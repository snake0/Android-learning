.class public Lcom/mqunar/hy/res/HyResInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final QP_SERVER_MODE:Ljava/lang/String; = "qp_server_mode"

.field public static final SP_NAME:Ljava/lang/String; = "qunar_hy_res"

.field public static final UPGRADE_10010:Ljava/lang/String; = "http://exbizcom.qunar.com/hybridUpgrade"

.field public static final UPGRADE_10010_BETA:Ljava/lang/String; = "http://l-exbizcom1.wap.beta.cn0.qunar.com:9664/hybridUpgrade"

.field public static final UPGRADE_OTHER:Ljava/lang/String; = "http://hybrid.qunar.com/hybridUpgrade"

.field public static final UPGRADE_OTHER_BETA:Ljava/lang/String; = "http://l-client9.wap.beta.cn0.qunar.com:8338/hybridUpgrade"

.field private static final UPGRADE_URL:Ljava/lang/String; = "upgrade_url"

.field private static cParam:Lcom/mqunar/hy/res/model/CommonParam;

.field private static context:Landroid/app/Application;

.field private static debug:Z

.field private static isBetaQPServerMode:Ljava/lang/Boolean;

.field private static module:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static offlineWork:Z

.field private static serverUrl:Ljava/lang/String;

.field private static singleInstance:Lcom/mqunar/hy/res/HyResInitializer;


# instance fields
.field private replaceInterceptor:Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    .line 28
    new-instance v0, Lcom/mqunar/hy/res/model/CommonParam;

    invoke-direct {v0}, Lcom/mqunar/hy/res/model/CommonParam;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->cParam:Lcom/mqunar/hy/res/model/CommonParam;

    .line 35
    const-string v0, "http://exbizcom.qunar.com/hybridUpgrade"

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->offlineWork:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;

    invoke-direct {v0}, Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/HyResInitializer;->replaceInterceptor:Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;

    .line 43
    return-void
.end method

.method private static getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 322
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string v2, "com.Qunar"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 325
    const-string v1, "com.mqunar.BuildConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 326
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 327
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    :goto_1c
    return-object v0

    .line 329
    :cond_1d
    sget-boolean v1, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    move-result-object v0

    goto :goto_1c

    .line 332
    :catch_24
    move-exception v1

    .line 333
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public static getCParam()Lcom/mqunar/hy/res/model/CommonParam;
    .registers 1

    .prologue
    .line 78
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->cParam:Lcom/mqunar/hy/res/model/CommonParam;

    return-object v0
.end method

.method private static getCacheBetaQPServerMode()Z
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 316
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    const-string v1, "qunar_hy_res"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    const-string v1, "qp_server_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getCacheUpgradeUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 285
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 286
    const-string v1, "upgrade_url"

    sget-object v2, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContext()Landroid/app/Application;
    .registers 1

    .prologue
    .line 142
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    if-nez v0, :cond_7

    .line 143
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->resetContext()V

    .line 146
    :cond_7
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/mqunar/hy/res/HyResInitializer;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    if-nez v0, :cond_b

    .line 132
    new-instance v0, Lcom/mqunar/hy/res/HyResInitializer;

    invoke-direct {v0}, Lcom/mqunar/hy/res/HyResInitializer;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    .line 134
    :cond_b
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/mqunar/hy/res/HyResInitializer;
    .registers 2

    .prologue
    .line 123
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    if-nez v0, :cond_d

    .line 124
    new-instance v0, Lcom/mqunar/hy/res/HyResInitializer;

    invoke-direct {v0}, Lcom/mqunar/hy/res/HyResInitializer;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    .line 125
    sput-object p0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    .line 127
    :cond_d
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->singleInstance:Lcom/mqunar/hy/res/HyResInitializer;

    return-object v0
.end method

.method public static getModules()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->module:Ljava/util/Map;

    return-object v0
.end method

.method public static getOfflineWork()Z
    .registers 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->offlineWork:Z

    return v0
.end method

.method public static getServerUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_f

    .line 72
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getCacheUpgradeUrl()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    goto :goto_e
.end method

.method public static isBetaQPServerMode()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 48
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->isBetaQPServerMode:Ljava/lang/Boolean;

    if-nez v0, :cond_18

    .line 49
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->getCacheBetaQPServerMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->isBetaQPServerMode:Ljava/lang/Boolean;

    .line 51
    :cond_18
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->isBetaQPServerMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 53
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static isDebug()Z
    .registers 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    return v0
.end method

.method public static isOnline()Z
    .registers 2

    .prologue
    .line 291
    :try_start_0
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    const-string v1, "DEBUG"

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/HyResInitializer;->getBuildConfigValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_12

    move-result v0

    .line 292
    if-eqz v0, :cond_16

    .line 293
    const/4 v0, 0x0

    .line 298
    :goto_11
    return v0

    .line 295
    :catch_12
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 298
    :cond_16
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private static resetContext()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    .line 154
    :try_start_1
    const-string v0, "HyResInitializer\u83b7\u53d6Context\u65f6\u4e3anull\uff0c\u901a\u8fc7\u53cd\u5c04\u83b7\u53d6QApplication"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const-class v1, Lcom/mqunar/hy/res/HyResInitializer;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_c} :catch_31

    .line 156
    :try_start_c
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    if-nez v0, :cond_2c

    .line 157
    const-string v0, "com.mqunar.core.basectx.application.QApplication"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 158
    const-string v2, "getContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 160
    invoke-static {v0}, Lcom/mqunar/hy/res/HyResInitializer;->setContext(Landroid/app/Application;)V

    .line 162
    :cond_2c
    monitor-exit v1

    .line 166
    :goto_2d
    return-void

    .line 162
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_2e

    :try_start_30
    throw v0
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_31} :catch_31

    .line 163
    :catch_31
    move-exception v0

    .line 164
    const-string v1, "HyResInitializer\u53cd\u5c04\u83b7\u53d6QApplication\u65f6\u51fa\u9519"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/mqunar/hy/res/logger/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2d
.end method

.method private static saveCacheBetaQPServerMode()V
    .registers 3

    .prologue
    .line 309
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    const-string v1, "qp_server_mode"

    sget-object v2, Lcom/mqunar/hy/res/HyResInitializer;->isBetaQPServerMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 313
    return-void
.end method

.method private static saveCacheUpgradeUrl()V
    .registers 3

    .prologue
    .line 302
    sget-object v0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    const-string v1, "qunar_hy_res"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 304
    const-string v1, "upgrade_url"

    sget-object v2, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 306
    return-void
.end method

.method public static setContext(Landroid/app/Application;)V
    .registers 1

    .prologue
    .line 138
    sput-object p0, Lcom/mqunar/hy/res/HyResInitializer;->context:Landroid/app/Application;

    .line 139
    return-void
.end method

.method public static setIsBetaQPServerMode(Z)V
    .registers 2

    .prologue
    .line 57
    sget-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_13

    .line 58
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->isBetaQPServerMode:Ljava/lang/Boolean;

    .line 59
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->saveCacheBetaQPServerMode()V

    .line 61
    :cond_13
    return-void
.end method

.method public static setOfflineWork(Z)V
    .registers 1

    .prologue
    .line 103
    sput-boolean p0, Lcom/mqunar/hy/res/HyResInitializer;->offlineWork:Z

    .line 104
    return-void
.end method


# virtual methods
.method public addNewModuleFromCache(Ljava/lang/String;)Lcom/mqunar/hy/res/model/HybridInfo;
    .registers 3

    .prologue
    .line 237
    const/4 v0, 0x0

    return-object v0
.end method

.method public addNewModuleFromPath(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 209
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    :goto_6
    return-void

    .line 212
    :cond_7
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/hy/res/HybridManager;->addNewModule(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public downloadOnly(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 2

    .prologue
    .line 281
    return-void
.end method

.method public getReplaceInterceptor()Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mqunar/hy/res/HyResInitializer;->replaceInterceptor:Lcom/mqunar/hy/res/interceptor/ReplaceInterceptor;

    return-object v0
.end method

.method public regiestNewModuleFromAssert(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 195
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mqunar/hy/res/HybridManager;->addNewModuleFromAssert(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public varargs regiestNewModuleFromAssert(Landroid/content/res/AssetManager;[Lcom/mqunar/hy/res/model/QpPathInfo;)V
    .registers 4

    .prologue
    .line 205
    invoke-static {}, Lcom/mqunar/hy/res/HybridManager;->getInstance()Lcom/mqunar/hy/res/HybridManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/hy/res/HybridManager;->addNewModuleFromAssert(Landroid/content/res/AssetManager;[Lcom/mqunar/hy/res/model/QpPathInfo;)V

    .line 206
    return-void
.end method

.method public sendSingleUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V
    .registers 3

    .prologue
    .line 184
    new-instance v0, Lcom/mqunar/hy/res/AutoDownloadControler;

    invoke-direct {v0}, Lcom/mqunar/hy/res/AutoDownloadControler;-><init>()V

    .line 185
    invoke-virtual {v0, p1}, Lcom/mqunar/hy/res/AutoDownloadControler;->startUpdateRequest(Lcom/mqunar/hy/res/model/HybridInfo;)V

    .line 186
    return-void
.end method

.method public sendUpdateRequest()V
    .registers 4

    .prologue
    .line 172
    new-instance v0, Lcom/mqunar/hy/res/AutoDownloadControler;

    invoke-direct {v0}, Lcom/mqunar/hy/res/AutoDownloadControler;-><init>()V

    .line 173
    invoke-virtual {v0}, Lcom/mqunar/hy/res/AutoDownloadControler;->startUpdateRequest()V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendUpdateRequest>\u5168\u91cf\u66f4\u65b0>time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/hy/res/logger/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method public setCParam(Lcom/mqunar/hy/res/model/CommonParam;)V
    .registers 4

    .prologue
    .line 82
    if-eqz p1, :cond_26

    .line 83
    sput-object p1, Lcom/mqunar/hy/res/HyResInitializer;->cParam:Lcom/mqunar/hy/res/model/CommonParam;

    .line 85
    const-string v0, "10010"

    iget-object v1, p1, Lcom/mqunar/hy/res/model/CommonParam;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "_10010"

    iget-object v1, p1, Lcom/mqunar/hy/res/model/CommonParam;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "q1001"

    iget-object v1, p1, Lcom/mqunar/hy/res/model/CommonParam;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 86
    :cond_22
    const-string v0, "http://exbizcom.qunar.com/hybridUpgrade"

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    .line 91
    :cond_26
    :goto_26
    return-void

    .line 88
    :cond_27
    const-string v0, "http://hybrid.qunar.com/hybridUpgrade"

    sput-object v0, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    goto :goto_26
.end method

.method public setDebug(Z)V
    .registers 3

    .prologue
    .line 94
    sput-boolean p1, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    .line 95
    invoke-static {}, Lcom/mqunar/hy/res/logger/Timber;->uprootAll()V

    .line 96
    if-eqz p1, :cond_f

    .line 97
    new-instance v0, Lcom/mqunar/hy/res/logger/Timber$DebugTree;

    invoke-direct {v0}, Lcom/mqunar/hy/res/logger/Timber$DebugTree;-><init>()V

    invoke-static {v0}, Lcom/mqunar/hy/res/logger/Timber;->plant(Lcom/mqunar/hy/res/logger/Timber$Tree;)V

    .line 99
    :cond_f
    return-void
.end method

.method public setModules(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    sput-object p1, Lcom/mqunar/hy/res/HyResInitializer;->module:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    sget-boolean v0, Lcom/mqunar/hy/res/HyResInitializer;->debug:Z

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->isOnline()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 65
    sput-object p1, Lcom/mqunar/hy/res/HyResInitializer;->serverUrl:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/mqunar/hy/res/HyResInitializer;->saveCacheUpgradeUrl()V

    .line 68
    :cond_15
    return-void
.end method

.method public startDownload(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 273
    return-void
.end method
