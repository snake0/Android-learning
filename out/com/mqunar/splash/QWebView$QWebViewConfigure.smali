.class public Lcom/mqunar/splash/QWebView$QWebViewConfigure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isAllowFileAccess:Z

.field public isAppCacheEnabled:Z

.field public isBuiltInZoomControls:Z

.field public isDomStorageEnable:Z

.field public isJavaScriptEnable:Z

.field public isSavePassword:Z

.field public isSupportZoom:Z

.field public mWebChromeClient:Landroid/webkit/WebChromeClient;

.field public mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/mqunar/splash/IWebViewObserver;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-boolean v1, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isSavePassword:Z

    .line 238
    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isJavaScriptEnable:Z

    .line 239
    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isSupportZoom:Z

    .line 240
    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isDomStorageEnable:Z

    .line 241
    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isAllowFileAccess:Z

    .line 242
    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isAppCacheEnabled:Z

    .line 243
    iput-boolean v1, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isBuiltInZoomControls:Z

    .line 248
    if-eqz p1, :cond_24

    .line 249
    new-instance v0, Lcom/mqunar/splash/WebViewClientSDK8;

    invoke-direct {v0, p1}, Lcom/mqunar/splash/WebViewClientSDK8;-><init>(Lcom/mqunar/splash/IWebViewObserver;)V

    iput-object v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 250
    new-instance v0, Lcom/mqunar/splash/WebChromeClientSDK8;

    invoke-direct {v0, p1}, Lcom/mqunar/splash/WebChromeClientSDK8;-><init>(Lcom/mqunar/splash/IWebViewObserver;)V

    iput-object v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 255
    :goto_23
    return-void

    .line 252
    :cond_24
    new-instance v0, Lcom/mqunar/splash/WebViewClientSDK8;

    invoke-direct {v0}, Lcom/mqunar/splash/WebViewClientSDK8;-><init>()V

    iput-object v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 253
    new-instance v0, Lcom/mqunar/splash/WebChromeClientSDK8;

    invoke-direct {v0}, Lcom/mqunar/splash/WebChromeClientSDK8;-><init>()V

    iput-object v0, p0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    goto :goto_23
.end method
