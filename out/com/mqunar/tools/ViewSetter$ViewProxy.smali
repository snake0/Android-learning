.class public Lcom/mqunar/tools/ViewSetter$ViewProxy;
.super Lcom/mqunar/tools/ViewSetter$CommonViewProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/mqunar/tools/ViewSetter$CommonViewProxy",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 152
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 153
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :goto_9
    return-void

    .line 154
    :cond_a
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 155
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .line 157
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->ex(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/RuntimeException;

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
    .line 163
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Background:Lcom/mqunar/tools/ViewSetter$Method;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method protected getView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mqunar/tools/ViewSetter$ViewProxy;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected varargs set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 144
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Background:Lcom/mqunar/tools/ViewSetter$Method;

    if-ne p1, v0, :cond_11

    .line 145
    iget-object v0, p0, Lcom/mqunar/tools/ViewSetter$ViewProxy;->mView:Landroid/view/View;

    aget-object v1, p3, v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->visible()Z

    move-result v0

    return v0

    .line 148
    :cond_11
    iget-object v0, p0, Lcom/mqunar/tools/ViewSetter$ViewProxy;->mView:Landroid/view/View;

    aget-object v1, p3, v1

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->ex(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
