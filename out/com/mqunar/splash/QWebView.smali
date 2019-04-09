.class public Lcom/mqunar/splash/QWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field private static appCacheMaxSize:I


# instance fields
.field private configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

.field private isDestroy:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/high16 v0, 0x800000

    sput v0, Lcom/mqunar/splash/QWebView;->appCacheMaxSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    .line 35
    invoke-direct {p0}, Lcom/mqunar/splash/QWebView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    .line 51
    invoke-direct {p0}, Lcom/mqunar/splash/QWebView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/splash/IWebViewObserver;)V
    .registers 4

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    .line 45
    new-instance v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    invoke-direct {v0, p2}, Lcom/mqunar/splash/QWebView$QWebViewConfigure;-><init>(Lcom/mqunar/splash/IWebViewObserver;)V

    iput-object v0, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    .line 46
    invoke-direct {p0}, Lcom/mqunar/splash/QWebView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mqunar/splash/QWebView$QWebViewConfigure;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    .line 40
    iput-object p2, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    .line 41
    invoke-direct {p0}, Lcom/mqunar/splash/QWebView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    if-nez v0, :cond_c

    .line 61
    new-instance v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mqunar/splash/QWebView$QWebViewConfigure;-><init>(Lcom/mqunar/splash/IWebViewObserver;)V

    iput-object v0, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    .line 63
    :cond_c
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isSavePassword:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isSupportZoom:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isJavaScriptEnable:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isDomStorageEnable:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget v1, Lcom/mqunar/splash/QWebView;->appCacheMaxSize:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 68
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isAllowFileAccess:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isAppCacheEnabled:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-boolean v1, v1, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->isBuiltInZoomControls:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_80

    .line 73
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 76
    :cond_80
    new-instance v0, Lcom/mqunar/splash/QWebView$1;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/QWebView$1;-><init>(Lcom/mqunar/splash/QWebView;)V

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/QWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 85
    iget-object v0, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-object v0, v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/QWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v0, p0, Lcom/mqunar/splash/QWebView;->configure:Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    iget-object v0, v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/QWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 88
    new-instance v0, Lcom/mqunar/splash/QWebView$2;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/QWebView$2;-><init>(Lcom/mqunar/splash/QWebView;)V

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/QWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 126
    return-void
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 182
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 186
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    .line 170
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 171
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    if-eqz v0, :cond_5

    .line 145
    :goto_4
    return-void

    .line 144
    :cond_5
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    if-eqz v0, :cond_5

    .line 165
    :goto_4
    return-void

    .line 164
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mqunar/splash/QWebView;->isDestroy:Z

    if-eqz v0, :cond_5

    .line 157
    :goto_4
    return-void

    .line 156
    :cond_5
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    goto :goto_4
.end method

.method public onWebViewPause()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 290
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_18

    .line 292
    :try_start_6
    const-class v0, Lcom/mqunar/splash/QWebView;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_17} :catch_1c

    .line 300
    :goto_17
    return-void

    .line 297
    :cond_18
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_17

    .line 293
    :catch_1c
    move-exception v0

    goto :goto_17
.end method

.method public onWebViewResume()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_18

    .line 276
    :try_start_6
    const-class v0, Lcom/mqunar/splash/QWebView;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_17} :catch_1c

    .line 283
    :goto_17
    return-void

    .line 281
    :cond_18
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    goto :goto_17

    .line 277
    :catch_1c
    move-exception v0

    goto :goto_17
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 3

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 149
    return-void
.end method

.method public removeCookie(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 195
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 196
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=; domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 199
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/mqunar/splash/QWebView;->addCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public setCookieList(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/splash/QWebView$QCookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p1, :cond_55

    .line 221
    invoke-virtual {p0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 222
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 223
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/splash/QWebView$QCookie;

    .line 225
    iget-object v3, v0, Lcom/mqunar/splash/QWebView$QCookie;->domain:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/mqunar/splash/QWebView$QCookie;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/mqunar/splash/QWebView$QCookie;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; domain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/mqunar/splash/QWebView$QCookie;->domain:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 227
    :cond_4e
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 229
    :cond_55
    return-void
.end method

.method public setObserver(Lcom/mqunar/splash/IWebViewObserver;)V
    .registers 4

    .prologue
    .line 133
    new-instance v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;

    invoke-direct {v0, p1}, Lcom/mqunar/splash/QWebView$QWebViewConfigure;-><init>(Lcom/mqunar/splash/IWebViewObserver;)V

    .line 134
    iget-object v1, v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v1}, Lcom/mqunar/splash/QWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    iget-object v0, v0, Lcom/mqunar/splash/QWebView$QWebViewConfigure;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/QWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    return-void
.end method
