.class Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;
.super Lcom/mqunar/hy/res/utils/SynchronizedList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/mqunar/hy/res/utils/SynchronizedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/utils/SynchronizedList;-><init>(Ljava/util/List;)V

    .line 275
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
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
    .line 278
    invoke-direct {p0, p1, p2}, Lcom/mqunar/hy/res/utils/SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 299
    new-instance v0, Lcom/mqunar/hy/res/utils/SynchronizedList;

    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/mqunar/hy/res/utils/SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
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
    .line 282
    iget-object v1, p0, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_3
    new-instance v0, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;

    iget-object v2, p0, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/mqunar/hy/res/utils/SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    .line 284
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method
