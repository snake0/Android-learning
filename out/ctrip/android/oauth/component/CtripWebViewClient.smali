.class abstract Lctrip/android/oauth/component/CtripWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field protected mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public setBrowserRequestCallBack(Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;)V
    .registers 2

    .prologue
    .line 10
    iput-object p1, p0, Lctrip/android/oauth/component/CtripWebViewClient;->mCallBack:Lctrip/android/oauth/component/CtripWebBrowserRequestCallBack;

    .line 11
    return-void
.end method
