.class Lctrip/android/oauth/component/CtripWebSdkBrowser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

.field final synthetic val$paramSslErrorHandler:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Lctrip/android/oauth/component/CtripWebSdkBrowser;Landroid/webkit/SslErrorHandler;)V
    .registers 3

    .prologue
    .line 147
    iput-object p1, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$2;->this$0:Lctrip/android/oauth/component/CtripWebSdkBrowser;

    iput-object p2, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$2;->val$paramSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lctrip/android/oauth/component/CtripWebSdkBrowser$2;->val$paramSslErrorHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 151
    return-void
.end method