.class public Lcom/mqunar/splash/WebChromeClientSDK8;
.super Lcom/mqunar/core/basectx/webview/QWebChromeClient;
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
    .line 21
    invoke-direct {p0}, Lcom/mqunar/core/basectx/webview/QWebChromeClient;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/splash/IWebViewObserver;)V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mqunar/core/basectx/webview/QWebChromeClient;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    .line 27
    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .registers 5

    .prologue
    .line 31
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 32
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    const v1, 0x104000a

    new-instance v2, Lcom/mqunar/splash/WebChromeClientSDK8$1;

    invoke-direct {v2, p0, p4}, Lcom/mqunar/splash/WebChromeClientSDK8$1;-><init>(Lcom/mqunar/splash/WebChromeClientSDK8;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    new-instance v1, Lcom/mqunar/splash/WebChromeClientSDK8$2;

    invoke-direct {v1, p0, p4}, Lcom/mqunar/splash/WebChromeClientSDK8$2;-><init>(Lcom/mqunar/splash/WebChromeClientSDK8;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 74
    return v3
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 87
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 89
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 90
    const v1, 0x104000a

    new-instance v2, Lcom/mqunar/splash/WebChromeClientSDK8$3;

    invoke-direct {v2, p0, p4}, Lcom/mqunar/splash/WebChromeClientSDK8$3;-><init>(Lcom/mqunar/splash/WebChromeClientSDK8;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/mqunar/splash/WebChromeClientSDK8$4;

    invoke-direct {v2, p0, p4}, Lcom/mqunar/splash/WebChromeClientSDK8$4;-><init>(Lcom/mqunar/splash/WebChromeClientSDK8;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 108
    new-instance v1, Lcom/mqunar/splash/WebChromeClientSDK8$5;

    invoke-direct {v1, p0, p4}, Lcom/mqunar/splash/WebChromeClientSDK8$5;-><init>(Lcom/mqunar/splash/WebChromeClientSDK8;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 116
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 117
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 118
    return v3
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_a

    .line 36
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/splash/IWebViewObserver;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 40
    :goto_9
    return-void

    .line 38
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/mqunar/core/basectx/webview/QWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_9
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_a

    .line 44
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/splash/IWebViewObserver;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 49
    :goto_9
    return-void

    .line 46
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/mqunar/core/basectx/webview/QWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_9

    .line 136
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1}, Lcom/mqunar/splash/IWebViewObserver;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 138
    :cond_9
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_9

    .line 130
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2}, Lcom/mqunar/splash/IWebViewObserver;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    .line 132
    :cond_9
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    if-eqz v0, :cond_9

    .line 124
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8;->mCallback:Lcom/mqunar/splash/IWebViewObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/mqunar/splash/IWebViewObserver;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_9
    return-void
.end method
