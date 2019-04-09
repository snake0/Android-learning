.class Lcom/mqunar/splash/PrivacyDialogFragment$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/PrivacyDialogFragment;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mqunar/splash/PrivacyDialogFragment$2;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment$2;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-virtual {v0}, Lcom/mqunar/splash/PrivacyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mqunar/atomenv/GlobalEnv;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hy?url=https%3A%2F%2Fm.qunar.com%2Fzhuanti%2F20170210_privacy.html&type=browser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/core/basectx/SchemeDispatcher;->sendScheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    return-void
.end method
