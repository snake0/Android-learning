.class Lcom/mqunar/splash/QWebView$2;
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
    .line 88
    iput-object p1, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 16

    .prologue
    const/4 v4, 0x0

    .line 92
    new-instance v5, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 93
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v4

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 99
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "system"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3d} :catch_c9

    move-result v3

    .line 102
    :goto_3e
    if-eqz v3, :cond_6e

    .line 103
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 106
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 124
    :goto_6d
    return-void

    .line 110
    :cond_6e
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 111
    const-string v7, "browser"

    .line 112
    const-string v7, "chrome"

    .line 113
    const-string v7, "browser"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_96

    const-string v7, "chrome"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "browser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    const-string v0, "chrome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cc

    :cond_96
    move-object v0, v2

    :goto_97
    move-object v1, v0

    .line 116
    goto :goto_20

    .line 117
    :cond_99
    if-eqz v1, :cond_9e

    .line 118
    invoke-virtual {v5, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :cond_9e
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 122
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 123
    iget-object v0, p0, Lcom/mqunar/splash/QWebView$2;->this$0:Lcom/mqunar/splash/QWebView;

    invoke-virtual {v0}, Lcom/mqunar/splash/QWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_6d

    .line 100
    :catch_c9
    move-exception v7

    goto/16 :goto_3e

    :cond_cc
    move-object v0, v1

    goto :goto_97
.end method
