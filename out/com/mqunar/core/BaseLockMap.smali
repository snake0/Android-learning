.class public Lcom/mqunar/core/BaseLockMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field protected map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/BaseLockMap;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    .line 20
    return-void
.end method


# virtual methods
.method public copyKeys()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readLock()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readUnlock()V

    .line 71
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readLock()V

    .line 55
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readUnlock()V

    .line 57
    return-object v0
.end method

.method public hasItem(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readLock()V

    .line 76
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readUnlock()V

    .line 78
    return v0
.end method

.method public isWriteLocked()Z
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->isWriteLocked()Z

    move-result v0

    return v0
.end method

.method public mapCopy()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readLock()V

    .line 62
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 63
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readUnlock()V

    .line 64
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->writeLock()V

    .line 43
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->writeUnlock()V

    .line 45
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->writeLock()V

    .line 49
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->writeUnlock()V

    .line 51
    return-void
.end method

.method protected final readLock()V
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 24
    return-void
.end method

.method protected final readUnlock()V
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 28
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readLock()V

    .line 83
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lcom/mqunar/core/BaseLockMap;->readUnlock()V

    .line 85
    return v0
.end method

.method protected final writeLock()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 31
    return-void
.end method

.method protected final writeUnlock()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mqunar/core/BaseLockMap;->a:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 35
    return-void
.end method
