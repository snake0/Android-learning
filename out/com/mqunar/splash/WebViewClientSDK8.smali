.class public Lcom/mqunar/splash/WebViewClientSDK8;
.super Lcom/mqunar/core/basectx/webview/QWebViewClient;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private mCallback:Lcom/mqunar/splash/IWebViewObserver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mqunar/core/basectx/webview/QWebViewClient;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/splash/IWebViewObserver;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mqunar/core/basectx/webview/QWebViewClient;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    .line 24
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_a

    .line 43
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/splash/IWebViewObserver;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 47
    :goto_9
    return-void

    .line 45
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/mqunar/core/basectx/webview/QWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/splash/IWebViewObserver;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 39
    :goto_9
    return-void

    .line 37
    :cond_a
    invoke-super {p0, p1, p2, p3}, Lcom/mqunar/core/basectx/webview/QWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_9
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_a

    .line 51
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mqunar/splash/IWebViewObserver;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_9
    return-void

    .line 53
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mqunar/core/basectx/webview/QWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 5

    .prologue
    .line 59
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 60
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_c

    .line 61
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/splash/IWebViewObserver;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 63
    :cond_c
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_b

    .line 28
    iget-object v0, p0, Lcom/mqunar/splash/WebViewClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/splash/IWebViewObserver;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    .line 30
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/mqunar/core/basectx/webview/QWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a
.end method
