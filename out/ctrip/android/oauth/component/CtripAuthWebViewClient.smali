.class Lctrip/android/oauth/component/CtripAuthWebViewClient;
.super Lctrip/android/oauth/component/CtripWebViewClient;
.source "SourceFile"


# instance fields
.field private isCallBacked:Z

.field private mAct:Landroid/app/Activity;

.field private mAuthRequestParam:Lctrip/android/oauth/component/CtripAuthRequestParam;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lctrip/android/oauth/component/CtripAuthRequestParam;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Lctrip/android/oauth/component/CtripWebViewClient;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->isCallBacked:Z

    .line 23
    iput-object p1, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAct:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAuthRequestParam:Lctrip/android/oauth/component/CtripAuthRequestParam;

    .line 25
    return-void
.end method


# virtual methods
.method public handleRedirectUrl(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 73
    invoke-static {p1}, Lctrip/android/oauth/utils/CtripApiUtils;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v2, Lctrip/android/oauth/RequestProcessor$Request;

    invoke-direct {v2}, Lctrip/android/oauth/RequestProcessor$Request;-><init>()V

    .line 79
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 80
    const-string v4, "_ctripapi_sendauth_response_state"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "_ctripapi_sendauth_response_code"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "_ctripapi_command_type"

    iget-object v4, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAuthRequestParam:Lctrip/android/oauth/component/CtripAuthRequestParam;

    invoke-virtual {v4}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getAuthRequest()Lctrip/android/oauth/model/auth/SendAuthRequest;

    move-result-object v4

    invoke-virtual {v4}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getType()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v1, "_ctripapi_baseresponse_errcode"

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_80

    :cond_3d
    const/4 v0, -0x1

    :goto_3e
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v0, "_ctripapi_baseresponse_errstr"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iput-object v3, v2, Lctrip/android/oauth/RequestProcessor$Request;->bundle:Landroid/os/Bundle;

    .line 87
    const-string v0, ""

    iput-object v0, v2, Lctrip/android/oauth/RequestProcessor$Request;->messageContent:Ljava/lang/String;

    .line 88
    const/high16 v0, 0x4000000

    iput v0, v2, Lctrip/android/oauth/RequestProcessor$Request;->flags:I

    .line 89
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAuthRequestParam:Lctrip/android/oauth/component/CtripAuthRequestParam;

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lctrip/android/oauth/RequestProcessor$Request;->targetPackageName:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAuthRequestParam:Lctrip/android/oauth/component/CtripAuthRequestParam;

    invoke-virtual {v1}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ctripapi.CtripEntryActivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lctrip/android/oauth/RequestProcessor$Request;->targetClassName:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAct:Landroid/app/Activity;

    invoke-static {v0, v2}, Lctrip/android/oauth/RequestProcessor;->startActivity(Landroid/content/Context;Lctrip/android/oauth/RequestProcessor$Request;)Z

    .line 93
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAct:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 94
    return-void

    .line 83
    :cond_80
    const/4 v0, 0x0

    goto :goto_3e
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    if-eqz v0, :cond_9

    .line 53
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    invoke-interface {v0, p1, p2}, Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;->onPageFinishedCallBack(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 55
    :cond_9
    invoke-super {p0, p1, p2}, Lctrip/android/oauth/component/CtripWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 28
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    if-eqz v0, :cond_9

    .line 29
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;->onPageStartedCallBack(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 32
    :cond_9
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mAuthRequestParam:Lctrip/android/oauth/component/CtripAuthRequestParam;

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripAuthRequestParam;->getAuthRequest()Lctrip/android/oauth/model/auth/SendAuthRequest;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lctrip/android/oauth/model/auth/SendAuthRequest;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->isCallBacked:Z

    if-nez v0, :cond_27

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->isCallBacked:Z

    .line 36
    invoke-virtual {p0, p2}, Lctrip/android/oauth/component/CtripAuthWebViewClient;->handleRedirectUrl(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    :goto_26
    return-void

    .line 41
    :cond_27
    invoke-super {p0, p1, p2, p3}, Lctrip/android/oauth/component/CtripWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_26
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 59
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    if-eqz v0, :cond_9

    .line 60
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3, p4}, Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;->onReceivedErrorCallBack(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_9
    invoke-super {p0, p1, p2, p3, p4}, Lctrip/android/oauth/component/CtripWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    invoke-interface {v0, p1, p2, p3}, Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;->onReceivedSslErrorCallBack(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 69
    :cond_9
    invoke-super {p0, p1, p2, p3}, Lctrip/android/oauth/component/CtripWebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 70
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    if-eqz v0, :cond_9

    .line 46
    iget-object v0, p0, Lctrip/android/oauth/component/CtripAuthWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    invoke-interface {v0, p1, p2}, Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;->shouldOverrideUrlLoadingCallBack(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 48
    :cond_9
    invoke-super {p0, p1, p2}, Lctrip/android/oauth/component/CtripWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
