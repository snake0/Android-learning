.class Lcom/mqunar/splash/PrivacyDialogFragment$5;
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
    .line 101
    iput-object p1, p0, Lcom/mqunar/splash/PrivacyDialogFragment$5;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 104
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mqunar/splash/PrivacyDialogFragment$5;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-virtual {v1}, Lcom/mqunar/splash/PrivacyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u60a8\u9700\u8981\u540c\u610f\u53bb\u54ea\u513f\u9690\u79c1\u653f\u7b56\uff0c\u624d\u80fd\u7ee7\u7eed\u4f7f\u7528\u6211\u4eec\u7684\u4ea7\u54c1\u53ca\u670d\u52a1\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u8fd4\u56de"

    new-instance v2, Lcom/mqunar/splash/PrivacyDialogFragment$5$1;

    invoke-direct {v2, p0}, Lcom/mqunar/splash/PrivacyDialogFragment$5$1;-><init>(Lcom/mqunar/splash/PrivacyDialogFragment$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void
.end method
