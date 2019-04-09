.class Lcom/mqunar/spider/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/mqunar/dlogin/login/PlatformLogin;

.field final synthetic b:Lcom/mqunar/dlogin/login/ILogin$LoginCallback;

.field final synthetic c:Lcom/mqunar/spider/QAcraBetaSender;


# direct methods
.method constructor <init>(Lcom/mqunar/spider/QAcraBetaSender;Lcom/mqunar/dlogin/login/PlatformLogin;Lcom/mqunar/dlogin/login/ILogin$LoginCallback;)V
    .registers 4

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mqunar/spider/f;->c:Lcom/mqunar/spider/QAcraBetaSender;

    iput-object p2, p0, Lcom/mqunar/spider/f;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    iput-object p3, p0, Lcom/mqunar/spider/f;->b:Lcom/mqunar/dlogin/login/ILogin$LoginCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5f

    .line 125
    iget-object v0, p0, Lcom/mqunar/spider/f;->c:Lcom/mqunar/spider/QAcraBetaSender;

    invoke-static {v0}, Lcom/mqunar/spider/QAcraBetaSender;->b(Lcom/mqunar/spider/QAcraBetaSender;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 126
    iget-object v0, p0, Lcom/mqunar/spider/f;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    invoke-virtual {v0}, Lcom/mqunar/dlogin/login/PlatformLogin;->internalWindow()Lcom/mqunar/dlogin/login/LoginWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/dlogin/login/LoginWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_29

    .line 127
    iget-object v0, p0, Lcom/mqunar/spider/f;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    iget-object v1, p0, Lcom/mqunar/spider/f;->b:Lcom/mqunar/dlogin/login/ILogin$LoginCallback;

    invoke-virtual {v0, v1}, Lcom/mqunar/dlogin/login/PlatformLogin;->addCallback(Lcom/mqunar/dlogin/login/ILogin$LoginCallback;)Lcom/mqunar/dlogin/login/ILogin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/dlogin/login/ILogin;->show()V

    .line 146
    :cond_29
    :goto_29
    return-void

    .line 130
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/spider/f;->c:Lcom/mqunar/spider/QAcraBetaSender;

    invoke-static {v2}, Lcom/mqunar/spider/QAcraBetaSender;->b(Lcom/mqunar/spider/QAcraBetaSender;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/mqunar/spider/f;->c:Lcom/mqunar/spider/QAcraBetaSender;

    invoke-static {v1}, Lcom/mqunar/spider/QAcraBetaSender;->b(Lcom/mqunar/spider/QAcraBetaSender;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_29

    .line 136
    :cond_5f
    iget-object v0, p0, Lcom/mqunar/spider/f;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    invoke-virtual {v0}, Lcom/mqunar/dlogin/login/PlatformLogin;->internalWindow()Lcom/mqunar/dlogin/login/LoginWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/dlogin/login/LoginWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_76

    .line 137
    iget-object v0, p0, Lcom/mqunar/spider/f;->a:Lcom/mqunar/dlogin/login/PlatformLogin;

    iget-object v1, p0, Lcom/mqunar/spider/f;->b:Lcom/mqunar/dlogin/login/ILogin$LoginCallback;

    invoke-virtual {v0, v1}, Lcom/mqunar/dlogin/login/PlatformLogin;->addCallback(Lcom/mqunar/dlogin/login/ILogin$LoginCallback;)Lcom/mqunar/dlogin/login/ILogin;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/dlogin/login/ILogin;->show()V

    .line 141
    :cond_76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/mqunar/spider/f;->c:Lcom/mqunar/spider/QAcraBetaSender;

    invoke-static {}, Lcom/mqunar/spider/QunarApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/spider/QAcraBetaSender;->a(Lcom/mqunar/spider/QAcraBetaSender;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 142
    invoke-static {}, Lcom/mqunar/spider/QunarApp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u5f00\u542f \u663e\u793a\u60ac\u6d6e\u6846 \u8fdb\u884c qtalk\u767b\u5f55\u54c8\uff01\uff01\uff01"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_29
.end method
