.class public Lctrip/android/oauth/component/CtripAuthRequestParam;
.super Lctrip/android/oauth/component/CtripBrowserRequestParamBase;
.source "SourceFile"


# static fields
.field public static final EXTRA_KEY_AUTHINFO:Ljava/lang/String; = "key_authinfo"

.field public static final EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"


# instance fields
.field private mAuthRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public execRequest(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 40
    return-void
.end method

.method public getAuthRequest()Lctrip/android/oauth/model/auth/SendAuthRequest;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mAuthRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateRequestParamBundle(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 30
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mAuthRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    if-eqz v0, :cond_1a

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    iget-object v1, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mAuthRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-virtual {v1, v0}, Lctrip/android/oauth/model/auth/SendAuthRequest;->toBundle(Landroid/os/Bundle;)V

    .line 33
    const-string v1, "key_authinfo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 35
    const-string v0, "key_package_name"

    iget-object v1, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_1a
    return-void
.end method

.method protected onSetupRequestParam(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 22
    const-string v0, "key_authinfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_f

    .line 24
    new-instance v1, Lctrip/android/oauth/model/auth/SendAuthRequest;

    invoke-direct {v1, v0}, Lctrip/android/oauth/model/auth/SendAuthRequest;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mAuthRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    .line 26
    :cond_f
    const-string v0, "key_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mPackageName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setAuthInfo(Lctrip/android/oauth/model/auth/SendAuthRequest;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mAuthRequest:Lctrip/android/oauth/model/auth/SendAuthRequest;

    .line 48
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lctrip/android/oauth/component/CtripAuthRequestParam;->mPackageName:Ljava/lang/String;

    .line 56
    return-void
.end method
