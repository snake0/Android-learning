.class Lctrip/android/oauth/CtripWebAuthHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lctrip/android/oauth/CtripWebAuthHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctrip/android/oauth/CtripWebAuthHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lctrip/android/oauth/model/auth/SendAuthRequest;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    .line 23
    return-void
.end method


# virtual methods
.method public anthorize()V
    .registers 5

    .prologue
    .line 27
    new-instance v1, Lctrip/android/oauth/net/CtripParameters;

    iget-object v0, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v0}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lctrip/android/oauth/net/CtripParameters;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v0, "client_id"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string v0, "redirect_uri"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v0, "response_type"

    const-string v2, "code"

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v0, "display"

    const-string v2, "mobile"

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v0, "scope"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getScope()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "scenetype"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getSceneType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "state"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "pretoken"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getPretoken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "pretokentype"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getPretokenType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "thirdcode"

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v2}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getThirdCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lctrip/android/oauth/net/CtripParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, ""

    .line 40
    sget v2, Lctrip/android/oauth/CtripAPIFactory;->ENV_CODE:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c2

    .line 41
    const-string v0, "https://accounts.uat.qa.nt.ctripcorp.com/oauth/preauthorise?"

    .line 45
    :cond_7a
    :goto_7a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lctrip/android/oauth/net/CtripParameters;->encodeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v1, "authorizeUrl"

    invoke-static {v1, v0}, Lctrip/android/oauth/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Lctrip/android/oauth/component/CtripAuthRequestParam;

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lctrip/android/oauth/component/CtripAuthRequestParam;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v1, v2}, Lctrip/android/oauth/component/CtripAuthRequestParam;->setAuthInfo(Lctrip/android/oauth/model/auth/SendAuthRequest;)V

    .line 51
    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lctrip/android/oauth/component/CtripAuthRequestParam;->setPackageName(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Lctrip/android/oauth/component/CtripAuthRequestParam;->setUrl(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Lctrip/android/oauth/component/CtripAuthRequestParam;->createRequestParamBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mContext:Landroid/content/Context;

    const-class v3, Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lctrip/android/oauth/CtripWebAuthHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    return-void

    .line 42
    :cond_c2
    sget v2, Lctrip/android/oauth/CtripAPIFactory;->ENV_CODE:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7a

    .line 43
    const-string v0, "https://accounts.ctrip.com/oauth/preauthorise?"

    goto :goto_7a
.end method
