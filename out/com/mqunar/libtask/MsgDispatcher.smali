.class public Lcom/mqunar/libtask/MsgDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/mqunar/libtask/TaskCallback;

.field private final b:Lcom/mqunar/libtask/Ticket;


# direct methods
.method public varargs constructor <init>(Lcom/mqunar/libtask/Ticket;[Lcom/mqunar/libtask/TaskCallback;)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mqunar/libtask/MsgDispatcher;->b:Lcom/mqunar/libtask/Ticket;

    .line 17
    invoke-static {p2}, Lcom/mqunar/tools/CheckUtils;->isContainsEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/mqunar/libtask/TaskCallback;

    iput-object v0, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    .line 22
    :goto_10
    return-void

    .line 20
    :cond_11
    iput-object p2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    goto :goto_10
.end method


# virtual methods
.method public getCallbacks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/TaskCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->asReadOnlyList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCallback(Lcom/mqunar/libtask/TaskCallback;)Z
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    invoke-static {v0}, Lcom/mqunar/tools/ArrayUtils;->asReadOnlyList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p1, :cond_b

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "taskCode must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QTask #"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    .line 29
    :goto_1c
    sget-object v2, Lcom/mqunar/libtask/n;->a:[I

    invoke-virtual {p1}, Lcom/mqunar/libtask/TaskCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_106

    .line 83
    :cond_27
    return-void

    :cond_28
    move v0, v1

    .line 28
    goto :goto_1c

    .line 31
    :pswitch_2a
    iget-object v2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    array-length v3, v2

    :goto_2d
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 32
    const-string v5, "statistics_TaskCancel"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgCancel(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 37
    :pswitch_44
    iget-object v2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    array-length v3, v2

    :goto_47
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 38
    const-string v5, "statistics_TaskRequest"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgRequest(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 43
    :pswitch_5e
    iget-object v2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    array-length v3, v2

    :goto_61
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 44
    const-string v5, "statistics_TaskResult"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgResult(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 49
    :pswitch_78
    iget-object v2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    array-length v3, v2

    :goto_7b
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 50
    iget-object v5, p0, Lcom/mqunar/libtask/MsgDispatcher;->b:Lcom/mqunar/libtask/Ticket;

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/mqunar/libtask/MsgDispatcher;->b:Lcom/mqunar/libtask/Ticket;

    iget-boolean v5, v5, Lcom/mqunar/libtask/Ticket;->progress:Z

    if-eqz v5, :cond_8f

    .line 51
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgProgress(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 49
    :cond_8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 54
    :cond_8f
    invoke-virtual {p2}, Lcom/mqunar/libtask/AbsConductor;->getProgress()I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v6, :cond_b0

    .line 55
    const-string v5, "statistics_TaskStart"

    invoke-virtual {p2, v5}, Lcom/mqunar/libtask/AbsConductor;->getExtraData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_ac

    .line 56
    const-string v5, "statistics_TaskStart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_ac
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgStart(Lcom/mqunar/libtask/AbsConductor;Z)V

    goto :goto_8c

    .line 59
    :cond_b0
    invoke-virtual {p2}, Lcom/mqunar/libtask/AbsConductor;->getProgress()I

    move-result v5

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_8c

    .line 60
    const-string v5, "statistics_TaskEnd"

    invoke-virtual {p2, v5}, Lcom/mqunar/libtask/AbsConductor;->getExtraData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_ce

    .line 61
    const-string v5, "statistics_TaskEnd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_ce
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgEnd(Lcom/mqunar/libtask/AbsConductor;Z)V

    goto :goto_8c

    .line 69
    :pswitch_d2
    iget-object v2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    array-length v3, v2

    :goto_d5
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 70
    const-string v5, "statistics_TaskErr"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgError(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    .line 75
    :pswitch_ec
    iget-object v2, p0, Lcom/mqunar/libtask/MsgDispatcher;->a:[Lcom/mqunar/libtask/TaskCallback;

    array-length v3, v2

    :goto_ef
    if-ge v1, v3, :cond_27

    aget-object v4, v2, v1

    .line 76
    const-string v5, "statistics_TaskCacheHit"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-interface {v4, p2, v0}, Lcom/mqunar/libtask/TaskCallback;->onMsgCacheHit(Lcom/mqunar/libtask/AbsConductor;Z)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_ef

    .line 29
    :pswitch_data_106
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_44
        :pswitch_5e
        :pswitch_78
        :pswitch_d2
        :pswitch_ec
    .end packed-switch
.end method
