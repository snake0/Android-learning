.class public Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/atomenv/pc/IPhoneCall;


# instance fields
.field private final a:Lcom/mqunar/storage/Storage;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/mqunar/core/basectx/application/QApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qunar_pcst"

    invoke-static {v0, v1}, Lcom/mqunar/storage/Storage;->newStorage(Landroid/content/Context;Ljava/lang/String;)Lcom/mqunar/storage/Storage;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->a:Lcom/mqunar/storage/Storage;

    return-void
.end method


# virtual methods
.method public add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V
    .registers 5

    .prologue
    .line 23
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->a:Lcom/mqunar/storage/Storage;

    invoke-virtual {p1}, Lcom/mqunar/atomenv/pc/AbsCallStat;->key()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Lcom/mqunar/atomenv/pc/AbsCallStat;

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->getSerializable(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/pc/AbsCallStat;

    .line 24
    if-nez v0, :cond_1b

    .line 25
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->a:Lcom/mqunar/storage/Storage;

    invoke-virtual {p1}, Lcom/mqunar/atomenv/pc/AbsCallStat;->key()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mqunar/storage/Storage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 30
    :goto_1a
    return-void

    .line 27
    :cond_1b
    invoke-virtual {v0}, Lcom/mqunar/atomenv/pc/AbsCallStat;->inc()V

    .line 28
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->a:Lcom/mqunar/storage/Storage;

    invoke-virtual {v0}, Lcom/mqunar/atomenv/pc/AbsCallStat;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/mqunar/storage/Storage;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)Z

    goto :goto_1a
.end method

.method public clean()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->a:Lcom/mqunar/storage/Storage;

    invoke-virtual {v0}, Lcom/mqunar/storage/Storage;->clean()Z

    .line 56
    return-void
.end method

.method public toMsgString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->a:Lcom/mqunar/storage/Storage;

    invoke-virtual {v0}, Lcom/mqunar/storage/Storage;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    if-eqz v1, :cond_42

    .line 37
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_15

    instance-of v4, v0, Lcom/mqunar/atomenv/pc/AbsCallStat;

    if-eqz v4, :cond_15

    .line 40
    check-cast v0, Lcom/mqunar/atomenv/pc/AbsCallStat;

    .line 41
    invoke-virtual {v0}, Lcom/mqunar/atomenv/pc/AbsCallStat;->toCallString()Ljava/lang/String;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    const-string v0, "|*|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_15

    .line 49
    :cond_42
    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/internal/PhoneCallSto;->clean()V

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
