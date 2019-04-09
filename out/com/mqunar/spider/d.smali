.class Lcom/mqunar/spider/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/dlogin/login/ILogin$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mqunar/dlogin/login/ILogin$LoginCallback",
        "<",
        "Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;",
        "Lcom/mqunar/dlogin/login/PlatformLogin$LoginError;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mqunar/dlogin/login/PlatformLogin;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/mqunar/spider/QAcraBetaSender;


# direct methods
.method constructor <init>(Lcom/mqunar/spider/QAcraBetaSender;Lcom/mqunar/dlogin/login/PlatformLogin;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mqunar/spider/d;->c:Lcom/mqunar/spider/QAcraBetaSender;

    iput-object p2, p0, Lcom/mqunar/spider/d;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    iput-object p3, p0, Lcom/mqunar/spider/d;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;)V
    .registers 8

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/mqunar/spider/d;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    invoke-virtual {v1}, Lcom/mqunar/dlogin/login/PlatformLogin;->getLoginData()Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;->getQTalkId()Ljava/lang/String;

    move-result-object v1

    .line 83
    new-instance v2, Lqunar/lego/utils/FormPart;

    const-string v3, "beta_login"

    iget-object v4, p0, Lcom/mqunar/spider/d;->c:Lcom/mqunar/spider/QAcraBetaSender;

    invoke-virtual {p1}, Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5}, Lcom/mqunar/spider/QAcraBetaSender;->a(Lcom/mqunar/spider/QAcraBetaSender;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v2, v1, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lqunar/lego/utils/FormPart;

    const-string v2, "c"

    iget-object v3, p0, Lcom/mqunar/spider/d;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lqunar/lego/utils/FormPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/FormPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lqunar/lego/utils/HttpHeader;

    invoke-direct {v1}, Lqunar/lego/utils/HttpHeader;-><init>()V

    .line 92
    const-string v2, "X-ClientEncoding"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lqunar/lego/utils/HttpHeader;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lqunar/lego/utils/Pitcher;

    invoke-static {}, Lcom/mqunar/spider/QunarApp;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "http://mloganalysts.corp.qunar.com/api/errorLog/betaLogin"

    invoke-direct {v2, v3, v4, v0, v1}, Lqunar/lego/utils/Pitcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lqunar/lego/utils/HttpHeader;)V

    .line 94
    const-string v0, "http://client.qunar.com/pitcher-proxy"

    invoke-virtual {v2, v0}, Lqunar/lego/utils/Pitcher;->setProxyUrl(Ljava/lang/String;)Lqunar/lego/utils/Pitcher;

    .line 97
    new-instance v0, Lcom/mqunar/spider/e;

    invoke-direct {v0, p0, v2}, Lcom/mqunar/spider/e;-><init>(Lcom/mqunar/spider/d;Lqunar/lego/utils/Pitcher;)V

    .line 102
    invoke-virtual {v0}, Lcom/mqunar/spider/e;->start()V

    .line 103
    return-void
.end method

.method public a(Lcom/mqunar/dlogin/login/PlatformLogin$LoginError;)V
    .registers 2

    .prologue
    .line 107
    return-void
.end method

.method public onCancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 111
    const-string v0, "\u6682\u4e0d\u767b\u5f55\uff01\uff01\uff01"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mqunar/tools/log/QLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/mqunar/spider/d;->c:Lcom/mqunar/spider/QAcraBetaSender;

    invoke-static {v0}, Lcom/mqunar/spider/QAcraBetaSender;->a(Lcom/mqunar/spider/QAcraBetaSender;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_26

    const-string v1, "avra.temp_not_login"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_26

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avra.temp_not_login"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_26
    return-void
.end method

.method public synthetic onFailure(Lcom/mqunar/dlogin/login/ILogin$LoginError;)V
    .registers 2

    .prologue
    .line 77
    check-cast p1, Lcom/mqunar/dlogin/login/PlatformLogin$LoginError;

    invoke-virtual {p0, p1}, Lcom/mqunar/spider/d;->a(Lcom/mqunar/dlogin/login/PlatformLogin$LoginError;)V

    return-void
.end method

.method public synthetic onSuccess(Lcom/mqunar/dlogin/login/ILogin$LoginData;)V
    .registers 2

    .prologue
    .line 77
    check-cast p1, Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;

    invoke-virtual {p0, p1}, Lcom/mqunar/spider/d;->a(Lcom/mqunar/dlogin/login/PlatformLogin$LoginData;)V

    return-void
.end method
