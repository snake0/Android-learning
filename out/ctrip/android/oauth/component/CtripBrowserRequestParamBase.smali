.class public abstract Lctrip/android/oauth/component/CtripBrowserRequestParamBase;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final EXTRA_KEY_URL:Ljava/lang/String; = "key_url"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public createRequestParamBundle()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    iget-object v1, p0, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 28
    const-string v1, "key_url"

    iget-object v2, p0, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_14
    invoke-virtual {p0, v0}, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->onCreateRequestParamBundle(Landroid/os/Bundle;)V

    .line 32
    return-object v0
.end method

.method public abstract execRequest(Landroid/app/Activity;I)V
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract onCreateRequestParamBundle(Landroid/os/Bundle;)V
.end method

.method protected abstract onSetupRequestParam(Landroid/os/Bundle;)V
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setupRequestParam(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 20
    const-string v0, "key_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->mUrl:Ljava/lang/String;

    .line 21
    invoke-virtual {p0, p1}, Lctrip/android/oauth/component/CtripBrowserRequestParamBase;->onSetupRequestParam(Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
