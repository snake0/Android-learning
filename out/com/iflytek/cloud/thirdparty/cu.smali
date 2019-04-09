.class public Lcom/iflytek/cloud/thirdparty/cu;
.super Landroid/app/Dialog;


# instance fields
.field protected a:Lcom/iflytek/cloud/thirdparty/cv;

.field private b:Lcom/iflytek/cloud/thirdparty/cu$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    new-instance v0, Lcom/iflytek/cloud/thirdparty/cu$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/thirdparty/cu$1;-><init>(Lcom/iflytek/cloud/thirdparty/cu;)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->b:Lcom/iflytek/cloud/thirdparty/cu$a;

    return-void
.end method


# virtual methods
.method public destroy()Z
    .registers 3

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cv;->d()Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    goto :goto_7
.end method

.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cv;->c()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cu;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cu;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cu;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public show()V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/cu;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/cu;->b:Lcom/iflytek/cloud/thirdparty/cu$a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/thirdparty/cv;->setExitCallBack(Lcom/iflytek/cloud/thirdparty/cu$a;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cu;->a:Lcom/iflytek/cloud/thirdparty/cv;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/cv;->b()V

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
