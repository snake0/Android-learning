.class public Lcom/mqunar/tools/ViewSetter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    return-void
.end method

.method public static getSetting(Landroid/view/View;)Lcom/mqunar/tools/ViewSetter$ViewSetting;
    .registers 4

    .prologue
    .line 27
    if-nez p0, :cond_a

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "view must be not null..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 36
    :goto_f
    if-eqz v1, :cond_3b

    .line 37
    const/4 v0, 0x0

    .line 38
    const-class v2, Landroid/view/View;

    if-ne v1, v2, :cond_23

    .line 39
    new-instance v0, Lcom/mqunar/tools/ViewSetter$ViewProxy;

    invoke-direct {v0}, Lcom/mqunar/tools/ViewSetter$ViewProxy;-><init>()V

    .line 45
    :cond_1b
    :goto_1b
    if-nez v0, :cond_37

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    .line 51
    goto :goto_f

    .line 40
    :cond_23
    const-class v2, Landroid/widget/TextView;

    if-ne v1, v2, :cond_2d

    .line 41
    new-instance v0, Lcom/mqunar/tools/ViewSetter$TextViewProxy;

    invoke-direct {v0}, Lcom/mqunar/tools/ViewSetter$TextViewProxy;-><init>()V

    goto :goto_1b

    .line 42
    :cond_2d
    const-class v2, Landroid/widget/ImageView;

    if-ne v1, v2, :cond_1b

    .line 43
    new-instance v0, Lcom/mqunar/tools/ViewSetter$ImageViewProxy;

    invoke-direct {v0}, Lcom/mqunar/tools/ViewSetter$ImageViewProxy;-><init>()V

    goto :goto_1b

    .line 48
    :cond_37
    invoke-virtual {v0, p0}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->init(Landroid/view/View;)V

    .line 49
    return-object v0

    .line 54
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t get view setting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
