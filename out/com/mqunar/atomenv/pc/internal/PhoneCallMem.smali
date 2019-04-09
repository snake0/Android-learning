.class public Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/atomenv/pc/IPhoneCall;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mqunar/atomenv/pc/AbsCallStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Lcom/mqunar/atomenv/pc/AbsCallStat;)V
    .registers 5

    .prologue
    .line 18
    iget-object v1, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 19
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 20
    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    .line 21
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :goto_11
    monitor-exit v1

    .line 26
    return-void

    .line 23
    :cond_13
    iget-object v2, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/pc/AbsCallStat;

    invoke-virtual {v0}, Lcom/mqunar/atomenv/pc/AbsCallStat;->inc()V

    goto :goto_11

    .line 25
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public clean()V
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 31
    return-void
.end method

.method public toMsgString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 35
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 37
    iget-object v0, p0, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/atomenv/pc/AbsCallStat;

    .line 38
    invoke-virtual {v0}, Lcom/mqunar/atomenv/pc/AbsCallStat;->toCallString()Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const-string v0, "|*|"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 44
    :cond_2f
    invoke-virtual {p0}, Lcom/mqunar/atomenv/pc/internal/PhoneCallMem;->clean()V

    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
