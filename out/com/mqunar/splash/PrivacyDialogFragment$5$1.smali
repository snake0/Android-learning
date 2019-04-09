.class Lcom/mqunar/splash/PrivacyDialogFragment$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/mqunar/splash/PrivacyDialogFragment$5;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/PrivacyDialogFragment$5;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mqunar/splash/PrivacyDialogFragment$5$1;->this$1:Lcom/mqunar/splash/PrivacyDialogFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 108
    return-void
.end method
