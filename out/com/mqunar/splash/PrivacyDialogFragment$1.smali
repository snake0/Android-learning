.class Lcom/mqunar/splash/PrivacyDialogFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/splash/PrivacyDialogFragment;


# direct methods
.method constructor <init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mqunar/splash/PrivacyDialogFragment$1;->this$0:Lcom/mqunar/splash/PrivacyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 63
    packed-switch p2, :pswitch_data_8

    .line 67
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 65
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 63
    nop

    :pswitch_data_8
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
