.class Lctrip/android/oauth/component/CtripWebSdkBrowser$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;


# direct methods
.method constructor <init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V
    .registers 2

    .prologue
    .line 268
    iput-object p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$4;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$4;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    iget-object v1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$4;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    # getter for: Lctrip/android/oauth/component/CtripWebSdkBrowser;->mUrl:Ljava/lang/String;
    invoke-static {v1}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$100(Lctrip/android/oauth/component/CtripWebSdkBrowser;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lctrip/android/oauth/component/CtripWebSdkBrowser;->openUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$200(Lctrip/android/oauth/component/CtripWebSdkBrowser;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$4;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    const/4 v1, 0x0

    # setter for: Lctrip/android/oauth/component/CtripWebSdkBrowser;->isErrorPage:Z
    invoke-static {v0, v1}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$302(Lctrip/android/oauth/component/CtripWebSdkBrowser;Z)Z

    .line 272
    return-void
.end method
