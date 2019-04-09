.class public Lcom/iflytek/cloud/thirdparty/cv;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/cu$a;

.field protected b:Z

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/cv;->a:Lcom/iflytek/cloud/thirdparty/cu$a;

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cv;->b:Z

    iput-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/cv;->c:Z

    return-void
.end method

.method protected static a(Landroid/view/ViewGroup;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_17

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :catch_24
    move-exception v1

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    goto :goto_23
.end method


# virtual methods
.method protected b()V
    .registers 1

    return-void
.end method

.method protected c()V
    .registers 1

    return-void
.end method

.method protected d()Z
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/iflytek/cloud/thirdparty/cv;->a(Landroid/view/ViewGroup;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected e()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1d

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_10
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/cv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1d
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_10
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cv;->a:Lcom/iflytek/cloud/thirdparty/cu$a;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/cv;->a:Lcom/iflytek/cloud/thirdparty/cu$a;

    invoke-interface {v0}, Lcom/iflytek/cloud/thirdparty/cu$a;->a()V

    :cond_9
    return-void
.end method

.method public setExitCallBack(Lcom/iflytek/cloud/thirdparty/cu$a;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/cv;->a:Lcom/iflytek/cloud/thirdparty/cu$a;

    return-void
.end method
