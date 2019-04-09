.class Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile blocked:Z

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->blocked:Z

    .line 230
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    .line 231
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 274
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 279
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public block()V
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->blocked:Z

    .line 235
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 284
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 288
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 293
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 249
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isBlocked()Z
    .registers 2

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->blocked:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 298
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 303
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 254
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 259
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 264
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 269
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 308
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 313
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 318
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public throwExceptionIfBlocked()V
    .registers 3

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->blocked:Z

    if-eqz v0, :cond_c

    .line 243
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException;

    const-string v1, "Queue instance is blocked and cannot be used further"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockedQueueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_c
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 327
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->throwExceptionIfBlocked()V

    .line 332
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
