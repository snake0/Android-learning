.class public Lcom/mqunar/tools/ViewSetter$ImageViewProxy;
.super Lcom/mqunar/tools/ViewSetter$ViewProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mqunar/tools/ViewSetter$ViewProxy",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/mqunar/tools/ViewSetter$ViewProxy;-><init>()V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 223
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 224
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    :goto_9
    return-void

    .line 225
    :cond_a
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_14

    .line 226
    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9

    .line 227
    :cond_14
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 228
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_9

    .line 230
    :cond_22
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/tools/ViewSetter$ImageViewProxy;->ex(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/RuntimeException;

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
    .line 218
    invoke-super {p0, p1}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->get(Ljava/util/List;)V

    .line 219
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Src:Lcom/mqunar/tools/ViewSetter$Method;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method protected varargs set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z
    .registers 6

    .prologue
    .line 209
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->Src:Lcom/mqunar/tools/ViewSetter$Method;

    if-ne p1, v0, :cond_15

    .line 210
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$ImageViewProxy;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    aget-object v1, p3, v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/tools/ViewSetter$ImageViewProxy;->a(Landroid/widget/ImageView;Ljava/lang/Object;)V

    .line 211
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$ImageViewProxy;->visible()Z

    move-result v0

    .line 213
    :goto_14
    return v0

    :cond_15
    invoke-super {p0, p1, p2, p3}, Lcom/mqunar/tools/ViewSetter$ViewProxy;->set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_14
.end method
