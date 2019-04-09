.class public Lctrip/android/oauth/model/auth/SendAuthRequest;
.super Lctrip/android/oauth/model/CtripBaseRequest;
.source "SourceFile"


# static fields
.field private static final TYPE:I = 0x1

.field public static extJson:Ljava/lang/String;


# instance fields
.field private appId:Ljava/lang/String;

.field private pretoken:Ljava/lang/String;

.field private pretokenType:Ljava/lang/String;

.field private redirectUrl:Ljava/lang/String;

.field private sceneType:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private thirdCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 65
    invoke-direct {p0}, Lctrip/android/oauth/model/CtripBaseRequest;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lctrip/android/oauth/model/auth/SendAuthRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .prologue
    .line 42
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lctrip/android/oauth/model/auth/SendAuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .prologue
    .line 46
    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Lctrip/android/oauth/model/auth/SendAuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .prologue
    .line 50
    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lctrip/android/oauth/model/auth/SendAuthRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 53
    invoke-direct {p0}, Lctrip/android/oauth/model/CtripBaseRequest;-><init>()V

    .line 54
    iput-object p1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->appId:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->redirectUrl:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->scope:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->state:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->sceneType:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretoken:Ljava/lang/String;

    .line 60
    iput-object p7, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretokenType:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->thirdCode:Ljava/lang/String;

    .line 62
    sput-object p9, Lctrip/android/oauth/model/auth/SendAuthRequest;->extJson:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 2

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0, p1}, Lctrip/android/oauth/model/CtripBaseRequest;->fromBundle(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "_ctripapi_sendauth_request_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->appId:Ljava/lang/String;

    .line 110
    const-string v0, "_ctripapi_sendauth_request_redirect_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->redirectUrl:Ljava/lang/String;

    .line 111
    const-string v0, "_ctripapi_sendauth_request_scope"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->scope:Ljava/lang/String;

    .line 112
    const-string v0, "_ctripapi_sendauth_request_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->state:Ljava/lang/String;

    .line 113
    const-string v0, "_ctripapi_sendauth_request_scenetype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->sceneType:Ljava/lang/String;

    .line 114
    const-string v0, "_ctripapi_sendauth_request_pretoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretoken:Ljava/lang/String;

    .line 115
    const-string v0, "_ctripapi_sendauth_request_pretokentype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretokenType:Ljava/lang/String;

    .line 116
    const-string v0, "_ctripapi_sendauth_request_thirdCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->thirdCode:Ljava/lang/String;

    .line 117
    const-string v0, "_ctripapi_sendauth_request_extJson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lctrip/android/oauth/model/auth/SendAuthRequest;->extJson:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getPretoken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretoken:Ljava/lang/String;

    return-object v0
.end method

.method public getPretokenType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretokenType:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->redirectUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSceneType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->sceneType:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->thirdCode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 121
    invoke-super {p0, p1}, Lctrip/android/oauth/model/CtripBaseRequest;->toBundle(Landroid/os/Bundle;)V

    .line 123
    const-string v0, "_ctripapi_sendauth_request_appid"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "_ctripapi_sendauth_request_redirect_url"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->redirectUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "_ctripapi_sendauth_request_scope"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "_ctripapi_sendauth_request_state"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->state:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "_ctripapi_sendauth_request_scenetype"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->sceneType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v0, "_ctripapi_sendauth_request_pretoken"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretoken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "_ctripapi_sendauth_request_pretokentype"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->pretokenType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "_ctripapi_sendauth_request_thirdCode"

    iget-object v1, p0, Lctrip/android/oauth/model/auth/SendAuthRequest;->thirdCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "_ctripapi_sendauth_request_extJson"

    sget-object v1, Lctrip/android/oauth/model/auth/SendAuthRequest;->extJson:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method
