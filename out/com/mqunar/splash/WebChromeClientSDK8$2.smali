.class Lcom/mqunar/splash/WebChromeClientSDK8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/WebChromeClientSDK8;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/WebChromeClientSDK8;Landroid/webkit/JsResult;)V
    .registers 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mqunar/splash/WebChromeClientSDK8$2;->this$0:Lcom/mqunar/splash/WebChromeClientSDK8;

    iput-object p2, p0, Lcom/mqunar/splash/WebChromeClientSDK8$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .prologue
    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 68
    iget-object v0, p0, Lcom/mqunar/splash/WebChromeClientSDK8$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 69
    return-void
.end method
