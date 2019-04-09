.class public abstract Lcom/mqunar/tools/ViewSetter$CommonViewProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/tools/ViewSetter$ViewSetting;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mqunar/tools/ViewSetter$ViewSetting;"
    }
.end annotation


# instance fields
.field protected mView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected ex(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 6

    .prologue
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t handle... view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract get(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/tools/ViewSetter$Method;",
            ">;)V"
        }
    .end annotation
.end method

.method protected gone(I)Z
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->mView:Landroid/view/View;

    .line 75
    return-void
.end method

.method protected varargs abstract set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z
.end method

.method public final varargs setOr(Lcom/mqunar/tools/ViewSetter$Method;ZI[Ljava/lang/Object;)Z
    .registers 7

    .prologue
    .line 79
    if-nez p2, :cond_7

    .line 81
    invoke-virtual {p0, p3}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->gone(I)Z

    move-result v0

    .line 99
    :goto_6
    return v0

    .line 84
    :cond_7
    sget-object v0, Lcom/mqunar/tools/ViewSetter$Method;->NotCare:Lcom/mqunar/tools/ViewSetter$Method;

    if-ne p1, v0, :cond_10

    .line 86
    invoke-virtual {p0}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->visible()Z

    move-result v0

    goto :goto_6

    .line 89
    :cond_10
    invoke-static {p4}, Lcom/mqunar/tools/CheckUtils;->isContainsEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 90
    invoke-virtual {p0, p3}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->gone(I)Z

    move-result v0

    goto :goto_6

    .line 93
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0, v0}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->get(Ljava/util/List;)V

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/tools/ViewSetter$Method;

    .line 98
    if-ne v0, p1, :cond_27

    .line 99
    invoke-virtual {p0, p1, p3, p4}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->set(Lcom/mqunar/tools/ViewSetter$Method;I[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6

    .line 103
    :cond_3a
    iget-object v0, p0, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    aget-object v1, p4, v1

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->ex(Landroid/view/View;Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected visible()Z
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mqunar/tools/ViewSetter$CommonViewProxy;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const/4 v0, 0x1

    return v0
.end method
