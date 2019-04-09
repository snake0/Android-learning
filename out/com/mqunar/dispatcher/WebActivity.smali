.class public Lcom/mqunar/dispatcher/WebActivity;
.super Lcom/mqunar/core/basectx/activity/QActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/mqunar/core/basectx/activity/QActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected needOnCreateSendBroadcast()Z
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/mqunar/core/basectx/activity/QActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    if-nez p1, :cond_d

    .line 25
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/WebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 30
    :cond_d
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 31
    :cond_15
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/WebActivity;->finish()V

    .line 46
    :goto_18
    return-void

    .line 35
    :cond_19
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 37
    invoke-virtual {p0}, Lcom/mqunar/dispatcher/WebActivity;->finish()V

    goto :goto_18

    .line 40
    :cond_29
    new-instance v1, Lcom/mqunar/splash/QWebView;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/QWebView;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/mqunar/dispatcher/WebActivity;->setContentView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/mqunar/splash/QWebView;->loadUrl(Ljava/lang/String;)V

    .line 45
    const/high16 v0, -0x1000000

    invoke-static {p0, v0}, Lcom/mqunar/tools/ImmersiveStatusBarUtils;->setStatusBarBgColorAndOffset(Landroid/app/Activity;I)V

    goto :goto_18
.end method
