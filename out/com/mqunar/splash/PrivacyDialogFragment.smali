.class public Lcom/mqunar/splash/PrivacyDialogFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private mListener:Lcom/mqunar/splash/AgreeListener;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/splash/AgreeListener;)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->mListener:Lcom/mqunar/splash/AgreeListener;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/splash/PrivacyDialogFragment;)Lcom/mqunar/splash/AgreeListener;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->mListener:Lcom/mqunar/splash/AgreeListener;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/splash/PrivacyDialogFragment;->setStyle(II)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    const/16 v7, 0x21

    const/4 v2, 0x0

    .line 55
    sget v0, Lcom/mqunar/splash/R$layout;->spider_splash_privacy_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->view:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/mqunar/splash/PrivacyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p0}, Lcom/mqunar/splash/PrivacyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/mqunar/splash/PrivacyDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/PrivacyDialogFragment$1;-><init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/mqunar/splash/PrivacyDialogFragment;->setCancelable(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/mqunar/splash/PrivacyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->view:Landroid/view/View;

    sget v1, Lcom/mqunar/splash/R$id;->privacy_agree_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->view:Landroid/view/View;

    sget v2, Lcom/mqunar/splash/R$id;->privacy_disagree_button:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->view:Landroid/view/View;

    sget v3, Lcom/mqunar/splash/R$id;->privacy_content_tv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    new-instance v3, Landroid/text/SpannableString;

    const-string v4, "\u3000\u3000\u4f9d\u636e\u6700\u65b0\u6cd5\u5f8b\u8981\u6c42\uff0c\u6211\u4eec\u66f4\u65b0\u4e86\u300a\u9690\u79c1\u653f\u7b56\u300b\uff0c\u8bf7\u60a8\u52a1\u5fc5\u5ba1\u614e\u9605\u8bfb\u3001\u5145\u5206\u7406\u89e3\u76f8\u5173\u6761\u6b3e\u5185\u5bb9\uff0c\u7279\u522b\u662f\u5b57\u4f53\u52a0\u7c97\u6807\u8bc6\u7684\u91cd\u8981\u6761\u6b3e\u3002\n\n\u3000\u3000\u70b9\u51fb\u540c\u610f\u5373\u4ee3\u8868\u60a8\u5df2\u9605\u8bfb\u5e76\u540c\u610f\u300a\u9690\u79c1\u653f\u7b56\u300b\uff0c\u5982\u679c\u60a8\u4e0d\u540c\u610f\u9690\u79c1\u653f\u7b56\u7684\u5185\u5bb9\uff0c\u8bf7\u60a8\u505c\u6b62\u4f7f\u7528\u6211\u4eec\u7684\u670d\u52a1\u3002\n\n\u3000\u3000\u6211\u4eec\u4f1a\u5c3d\u529b\u4fdd\u62a4\u60a8\u7684\u4e2a\u4eba\u4fe1\u606f\u5b89\u5168\u3002\n"

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v4, Lcom/mqunar/splash/PrivacyDialogFragment$2;

    invoke-direct {v4, p0}, Lcom/mqunar/splash/PrivacyDialogFragment$2;-><init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V

    const/16 v5, 0x10

    const/16 v6, 0x16

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 82
    new-instance v4, Lcom/mqunar/splash/PrivacyDialogFragment$3;

    invoke-direct {v4, p0}, Lcom/mqunar/splash/PrivacyDialogFragment$3;-><init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V

    const/16 v5, 0x4c

    const/16 v6, 0x52

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 88
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 90
    new-instance v0, Lcom/mqunar/splash/PrivacyDialogFragment$4;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/PrivacyDialogFragment$4;-><init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v0, Lcom/mqunar/splash/PrivacyDialogFragment$5;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/PrivacyDialogFragment$5;-><init>(Lcom/mqunar/splash/PrivacyDialogFragment;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/mqunar/splash/PrivacyDialogFragment;->view:Landroid/view/View;

    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 39
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 40
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 41
    return-void
.end method
