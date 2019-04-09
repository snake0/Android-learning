.class public Lcom/mqunar/hy/res/utils/SynchronizedList;
.super Lcom/mqunar/hy/res/utils/SynchronizedCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mqunar/hy/res/utils/SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 18
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 23
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    .line 24
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_10

    .line 156
    new-instance v0, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    move-object p0, v0

    .line 158
    :cond_10
    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
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
    .line 27
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 35
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsAll(Ljava/util/Collection;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 39
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 40
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 41
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 53
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_4
    iget-object v2, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 61
    new-array v3, v2, [Ljava/lang/Object;

    .line 62
    iget-object v4, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1f

    .line 64
    if-eqz p1, :cond_27

    .line 65
    :goto_14
    if-ge v0, v2, :cond_2e

    .line 66
    aget-object v1, v3, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 77
    :goto_1e
    return v0

    .line 63
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 65
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 71
    :cond_25
    add-int/lit8 v0, v0, 0x1

    :cond_27
    if-ge v0, v2, :cond_2e

    .line 72
    aget-object v1, v3, v0

    if-nez v1, :cond_25

    goto :goto_1e

    .line 77
    :cond_2e
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method public bridge synthetic isEmpty()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    .prologue
    .line 83
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    new-array v2, v0, [Ljava/lang/Object;

    .line 86
    iget-object v3, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_20

    .line 88
    if-eqz p1, :cond_26

    .line 89
    add-int/lit8 v0, v0, -0x1

    :goto_15
    if-ltz v0, :cond_31

    .line 90
    aget-object v1, v2, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 101
    :cond_1f
    :goto_1f
    return v0

    .line 87
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0

    .line 89
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    .line 95
    :cond_26
    add-int/lit8 v0, v0, -0x1

    :goto_28
    if-ltz v0, :cond_31

    .line 96
    aget-object v1, v2, v0

    if-eqz v1, :cond_1f

    .line 95
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 101
    :cond_31
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 106
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 113
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 119
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 125
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public bridge synthetic size()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_3
    new-instance v0, Lcom/mqunar/hy/res/utils/SynchronizedList;

    iget-object v2, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/mqunar/hy/res/utils/SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public bridge synthetic toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
