.class Lctrip/android/oauth/component/CtripWebSdkBrowser$3;
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
    .line 193
    iput-object p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$3;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$3;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    # invokes: Lctrip/android/oauth/component/CtripWebSdkBrowser;->goBack()V
    invoke-static {v0}, Lctrip/android/oauth/component/CtripWebSdkBrowser;->access$000(Lctrip/android/oauth/component/CtripWebSdkBrowser;)V

    .line 197
    return-void
.end method
