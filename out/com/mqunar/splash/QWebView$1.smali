.class Lcom/mqunar/splash/QWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/QWebView;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/QWebView;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mqunar/splash/QWebView$1;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 81
    iget-object v1, p0, Lcom/mqunar/splash/QWebView$1;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v1}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method
