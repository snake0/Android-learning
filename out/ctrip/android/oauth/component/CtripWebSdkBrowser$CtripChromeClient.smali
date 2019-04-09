.class Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;


# direct methods
.method private constructor <init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V
    .registers 2

    .prologue
    .line 399
    iput-object p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;Lctrip/android/oauth/component/CtripWebSdkBrowser$1;)V
    .registers 3

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;-><init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 5

    .prologue
    .line 404
    const/16 v0, 0x64

    if-ne p2, v0, :cond_10

    .line 405
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    const/4 v1, 0x0

    # setter for: Lctrip/android/oauth/component/CtripWebSdkBrowser;->isLoading:Z
    invoke-static {v0, v1}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$502(Lctrip/android/oauth/component/CtripWebSdkBrowser;Z)Z

    .line 406
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->refreshAllViews()V

    .line 412
    :cond_f
    :goto_f
    return-void

    .line 408
    :cond_10
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    # getter for: Lctrip/android/oauth/component/CtripWebSdkBrowser;->isLoading:Z
    invoke-static {v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$500(Lctrip/android/oauth/component/CtripWebSdkBrowser;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 409
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    const/4 v1, 0x1

    # setter for: Lctrip/android/oauth/component/CtripWebSdkBrowser;->isLoading:Z
    invoke-static {v0, v1}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$502(Lctrip/android/oauth/component/CtripWebSdkBrowser;Z)Z

    .line 410
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-virtual {v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->refreshAllViews()V

    goto :goto_f
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    # setter for: Lctrip/android/oauth/component/CtripWebSdkBrowser;->mHtmlTitle:Ljava/lang/String;
    invoke-static {v0, p2}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$602(Lctrip/android/oauth/component/CtripWebSdkBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$CtripChromeClient;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    # invokes: Lctrip/android/oauth/component/CtripWebSdkBrowser;->updateTitleName()V
    invoke-static {v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$700(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V

    .line 418
    return-void
.end method
