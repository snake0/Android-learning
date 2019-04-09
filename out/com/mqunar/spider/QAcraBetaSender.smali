.class public Lcom/mqunar/spider/QAcraBetaSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mqunar/spider/QAcraBetaSender;->a:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 156
    iget-object v0, p0, Lcom/mqunar/spider/QAcraBetaSender;->a:Landroid/content/Context;

    const-string v1, "data_avra"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic a(Lcom/mqunar/spider/QAcraBetaSender;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mqunar/spider/QAcraBetaSender;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mqunar/spider/QAcraBetaSender;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/mqunar/spider/QAcraBetaSender;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 197
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 198
    const-string v1, "qTalkId"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "token"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "uid"

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    invoke-static {}, Lcom/mqunar/spider/QunarApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/dlogin/login/LoginManager;->getInstance(Landroid/content/Context;)Lcom/mqunar/dlogin/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/mqunar/dlogin/login/LoginEnvironment;->Release:Lcom/mqunar/dlogin/login/LoginEnvironment;

    invoke-virtual {v0, v1}, Lcom/mqunar/dlogin/login/LoginManager;->initEnv(Lcom/mqunar/dlogin/login/LoginEnvironment;)Lcom/mqunar/dlogin/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/dlogin/login/LoginManager;->getLoginIMPL()Lcom/mqunar/dlogin/login/PlatformLogin;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/mqunar/dlogin/login/PlatformLogin;->isLogin()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 77
    new-instance v1, Lcom/mqunar/spider/d;

    invoke-direct {v1, p0, v0, p1}, Lcom/mqunar/spider/d;-><init>(Lcom/mqunar/spider/QAcraBetaSender;Lcom/mqunar/dlogin/login/PlatformLogin;Ljava/lang/String;)V

    .line 121
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/mqunar/spider/f;

    invoke-direct {v3, p0, v0, v1}, Lcom/mqunar/spider/f;-><init>(Lcom/mqunar/spider/QAcraBetaSender;Lcom/mqunar/dlogin/login/PlatformLogin;Lcom/mqunar/dlogin/login/ILogin$LoginCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 149
    :cond_2e
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    :try_start_2
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    if-nez v0, :cond_b

    .line 192
    :cond_a
    :goto_a
    return v2

    .line 174
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 175
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    .line 176
    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 177
    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 178
    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .line 179
    const-string v5, "checkOp"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 180
    if-eqz v3, :cond_a

    .line 183
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 184
    const/4 v5, 0x0

    const/16 v6, 0x18

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 185
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 186
    const/4 v5, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 187
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_58

    move-result v0

    .line 188
    if-nez v0, :cond_56

    move v0, v1

    :goto_54
    move v2, v0

    goto :goto_a

    :cond_56
    move v0, v2

    goto :goto_54

    .line 189
    :catch_58
    move-exception v0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppOps :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/mqunar/spider/QAcraBetaSender;Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mqunar/spider/QAcraBetaSender;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/mqunar/spider/QAcraBetaSender;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/spider/QAcraBetaSender;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Lorg/acra/config/ACRAConfiguration;Ljava/io/File;Ljava/lang/String;I)V
    .registers 14
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/acra/collector/CrashReportData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/acra/config/ACRAConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 57
    iput-object p1, p0, Lcom/mqunar/spider/QAcraBetaSender;->a:Landroid/content/Context;

    .line 62
    :try_start_3
    invoke-direct {p0}, Lcom/mqunar/spider/QAcraBetaSender;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "avra.temp_not_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 63
    invoke-direct {p0, p5}, Lcom/mqunar/spider/QAcraBetaSender;->a(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_13} :catch_26

    .line 70
    :cond_13
    :goto_13
    new-instance v0, Lorg/acra/sender/QSenderProxy;

    const-string v1, "http://mloganalysts.corp.qunar.com/api/log/clientError"

    const-string v2, "http://client.qunar.com/pitcher-proxy"

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/QSenderProxy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 71
    invoke-virtual/range {v0 .. v6}, Lorg/acra/sender/QSenderProxy;->send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;Lorg/acra/config/ACRAConfiguration;Ljava/io/File;Ljava/lang/String;I)V

    .line 72
    return-void

    .line 65
    :catch_26
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_13
.end method
