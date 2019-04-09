.class public abstract Lcom/mqunar/atomenv/pc/AbsCallStat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/AbsCallStat;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public count()I
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/AbsCallStat;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public final inc()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/AbsCallStat;->count:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 30
    return-void
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract toCallString()Ljava/lang/String;
.end method

.method public abstract type()I
.end method
