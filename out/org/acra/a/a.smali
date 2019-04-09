.class public final Lorg/acra/a/a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 36
    iput p1, p0, Lorg/acra/a/a;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Lorg/acra/a/a;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/a/a;->a:I

    if-ne v0, v1, :cond_b

    .line 60
    invoke-virtual {p0}, Lorg/acra/a/a;->removeFirst()Ljava/lang/Object;

    .line 62
    :cond_b
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/acra/a/a;->size()I

    move-result v0

    iget v1, p0, Lorg/acra/a/a;->a:I

    if-ne v0, v1, :cond_b

    .line 47
    invoke-virtual {p0}, Lorg/acra/a/a;->removeFirst()Ljava/lang/Object;

    .line 49
    :cond_b
    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/acra/a/a;->size()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 102
    invoke-super {p0, p1, p2}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0

    .line 104
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 7
    .param p1    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 73
    iget v0, p0, Lorg/acra/a/a;->a:I

    if-le v3, v0, :cond_1c

    .line 74
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move v0, v1

    .line 75
    :goto_f
    iget v4, p0, Lorg/acra/a/a;->a:I

    sub-int v4, v3, v4

    if-ge v0, v4, :cond_1b

    .line 76
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1b
    move-object p1, v2

    .line 80
    :cond_1c
    invoke-virtual {p0}, Lorg/acra/a/a;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 81
    iget v2, p0, Lorg/acra/a/a;->a:I

    sub-int/2addr v0, v2

    .line 82
    if-lez v0, :cond_2d

    .line 83
    invoke-virtual {p0, v1, v0}, Lorg/acra/a/a;->removeRange(II)V

    .line 85
    :cond_2d
    invoke-super {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lorg/acra/a/a;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lorg/acra/a/a;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/acra/a/a;->addFirst(Ljava/lang/Object;)V

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/acra/a/a;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public push(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lorg/acra/a/a;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    invoke-virtual {p0}, Lorg/acra/a/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 140
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
