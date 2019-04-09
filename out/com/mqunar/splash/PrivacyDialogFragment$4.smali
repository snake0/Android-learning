.class Lcom/mqunar/splash/PrivacyDialogFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/PrivacyDialogFragment;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mqunar/splash/PrivacyDialogFragment$4;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_sys"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    .line 94
    const-string v1, "isPrivacyShow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/storage/Storage;->putBoolean(Ljava/lang/String;Z)Z

    .line 95
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment$4;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-virtual {v0}, Lcom/mqunar/splash/PrivacyDialogFragment;->dismissAllowingStateLoss()V

    .line 96
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment$4;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    # getter for: Lcom/mqunar/splash/PrivacyDialogFragment;->mListener:Lcom/mqunar/splash/AgreeListener;
    invoke-static {v0}, Lcom/mqunar/splash/PrivacyDialogFragment;->access$000(Lcom/mqunar/splash/PrivacyDialogFragment;)Lcom/mqunar/splash/AgreeListener;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 97
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment$4;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    # getter for: Lcom/mqunar/splash/PrivacyDialogFragment;->mListener:Lcom/mqunar/splash/AgreeListener;
    invoke-static {v0}, Lcom/mqunar/splash/PrivacyDialogFragment;->access$000(Lcom/mqunar/splash/PrivacyDialogFragment;)Lcom/mqunar/splash/AgreeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/mqunar/splash/AgreeListener;->agreeClick()V

    .line 99
    :cond_26
    return-void
.end method
