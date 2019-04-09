.class public Lcom/mqunar/tools/ViewSetter$TextViewProxy;
.super Lcom/mqunar/tools/ViewSetter$ViewProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/tools/ViewSetter$ViewProxy",
        "<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/mqunar/tools/ViewSetter$ViewProxy;-><init>()V

    return-void
.end method

.method private varargs a(Landroid/widget/TextView;[Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 188
    array-length v0, p2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    .line 189
    invoke-static {p2}, Lcom/mqunar/tools/ViewUtils;->joinNotAllowedNull([Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 194
    :goto_8
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_16

    .line 195
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_11
    return-void

    .line 191
    :cond_12
    const/4 v0, 0x0

    aget-object v0, p2, v0

    goto :goto_8

    .line 196
    :cond_16
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_24

    .line 197
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_11

    .line 199
    :cond_24
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$TextViewProxy;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/mqunar/tools/ViewSetter$TextViewProxy;->ex(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected get(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/tools/ViewSetter$Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method protected varargs set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 172
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Text:Lcom/mqunar/tools/ViewSetter$Method;

    if-ne p1, v0, :cond_12

    .line 173
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$TextViewProxy;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p3}, Lcom/mqunar/tools/ViewSetter$TextViewProxy;->a(Landroid/widget/TextView;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$TextViewProxy;->visible()Z

    move-result v0

    .line 176
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_11
.end method
