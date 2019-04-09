.class Lcom/mqunar/hy/res/utils/SynchronizedCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a61f84d099c99b5L


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    .line 169
    iput-object p0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    .line 174
    iput-object p2, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 175
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 264
    monitor-exit v1

    .line 265
    return-void

    .line 264
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 180
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 186
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 196
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 198
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 204
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 208
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 210
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 216
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 220
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 222
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 228
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 234
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 239
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 240
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 246
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 258
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/utils/SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 252
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
