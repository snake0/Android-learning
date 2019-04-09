.class public final Lcom/mqunar/libtask/ChiefGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static d:Lcom/mqunar/libtask/ChiefGuard;


# instance fields
.field final a:Lcom/mqunar/libtask/Trumpet;

.field final b:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/mqunar/libtask/TaskTrain;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/libtask/TaskTrain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/mqunar/libtask/j;

    invoke-direct {v0, p0}, Lcom/mqunar/libtask/j;-><init>(Lcom/mqunar/libtask/ChiefGuard;)V

    iput-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->a:Lcom/mqunar/libtask/Trumpet;

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    .line 33
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 232
    iget-object v1, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 233
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 234
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 235
    iget-object v1, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    monitor-enter v1

    .line 236
    :try_start_c
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 237
    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mqunar/libtask/AbsConductor;->cancel(Z)Z

    goto :goto_12

    .line 240
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v0

    .line 234
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 239
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_25

    .line 241
    return-void
.end method

.method public static destroy()V
    .registers 1

    .prologue
    .line 225
    sget-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    if-eqz v0, :cond_9

    .line 226
    sget-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    invoke-direct {v0}, Lcom/mqunar/libtask/ChiefGuard;->a()V

    .line 228
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    .line 229
    return-void
.end method

.method public static getInstance()Lcom/mqunar/libtask/ChiefGuard;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/mqunar/libtask/ChiefGuard;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/mqunar/libtask/ChiefGuard;

    invoke-direct {v0}, Lcom/mqunar/libtask/ChiefGuard;-><init>()V

    sput-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/mqunar/libtask/ChiefGuard;->d:Lcom/mqunar/libtask/ChiefGuard;

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/libtask/Ticket;)V
    .registers 11

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/mqunar/libtask/AbsConductor;->getStatus()Lcom/mqunar/libtask/TaskCode;

    move-result-object v0

    sget-object v1, Lcom/mqunar/libtask/TaskCode;->TASK_NONE:Lcom/mqunar/libtask/TaskCode;

    if-eq v0, v1, :cond_9

    .line 136
    :goto_8
    return-void

    .line 73
    :cond_9
    const-string v0, "statistics_TaskAdd"

    invoke-virtual {p2, v0}, Lcom/mqunar/libtask/AbsConductor;->getExtraData(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 74
    const-string v0, "statistics_TaskAdd"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/mqunar/libtask/AbsConductor;->putExtraData(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_1e
    new-instance v1, Lcom/mqunar/libtask/TaskTrain;

    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->a:Lcom/mqunar/libtask/Trumpet;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/mqunar/libtask/TaskTrain;-><init>(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/libtask/Ticket;Lcom/mqunar/libtask/Trumpet;)V

    .line 82
    iget-object v2, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 83
    :try_start_28
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 84
    monitor-exit v2

    goto :goto_8

    .line 86
    :catchall_32
    move-exception v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_28 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 87
    iget-object v2, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    monitor-enter v2

    .line 88
    :try_start_39
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 89
    monitor-exit v2

    goto :goto_8

    .line 91
    :catchall_43
    move-exception v0

    monitor-exit v2
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_43

    .line 92
    invoke-virtual {p2}, Lcom/mqunar/libtask/AbsConductor;->beforeAdd()V

    .line 93
    iget-object v0, p2, Lcom/mqunar/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 94
    const/high16 v0, -0x80000000

    iput v0, p2, Lcom/mqunar/libtask/AbsConductor;->progress:I

    .line 95
    iget-object v0, p2, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v2, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    invoke-virtual {v0, v2, p2}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    .line 97
    iget v0, p3, Lcom/mqunar/libtask/Ticket;->addType:I

    packed-switch v0, :pswitch_data_10c

    .line 135
    :goto_61
    :pswitch_61
    invoke-virtual {p0}, Lcom/mqunar/libtask/ChiefGuard;->checkTasks()V

    goto :goto_8

    .line 99
    :pswitch_65
    iget-object v2, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 100
    :try_start_68
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 101
    monitor-exit v2

    goto :goto_61

    :catchall_6f
    move-exception v0

    monitor-exit v2
    :try_end_71
    .catchall {:try_start_68 .. :try_end_71} :catchall_6f

    throw v0

    .line 104
    :pswitch_72
    iget-object v2, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 105
    :try_start_75
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 106
    monitor-exit v2

    goto :goto_61

    :catchall_7c
    move-exception v0

    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_7c

    throw v0

    .line 109
    :pswitch_7f
    iget-object v2, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    monitor-enter v2

    .line 110
    :try_start_82
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 111
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8d
    :goto_8d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 112
    iget-object v5, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    iget-object v6, v1, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v5, v6}, Lcom/mqunar/libtask/AbsConductor;->sameAs(Lcom/mqunar/libtask/AbsConductor;)Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 113
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8d

    .line 120
    :catchall_ad
    move-exception v0

    monitor-exit v2
    :try_end_af
    .catchall {:try_start_82 .. :try_end_af} :catchall_ad

    throw v0

    .line 116
    :cond_b0
    :try_start_b0
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 118
    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mqunar/libtask/AbsConductor;->cancel(Z)Z

    goto :goto_b9

    .line 120
    :cond_cc
    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_b0 .. :try_end_cd} :catchall_ad

    .line 121
    iget-object v2, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 122
    :try_start_d0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_db
    :goto_db
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 124
    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_db

    iget-object v5, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    iget-object v6, v1, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v5, v6}, Lcom/mqunar/libtask/AbsConductor;->sameAs(Lcom/mqunar/libtask/AbsConductor;)Z

    move-result v5

    if-eqz v5, :cond_db

    .line 125
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_db

    .line 130
    :catchall_fb
    move-exception v0

    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_d0 .. :try_end_fd} :catchall_fb

    throw v0

    .line 128
    :cond_fe
    :try_start_fe
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingDeque;->removeAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v2
    :try_end_109
    .catchall {:try_start_fe .. :try_end_109} :catchall_fb

    goto/16 :goto_61

    .line 97
    nop

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_65
        :pswitch_72
        :pswitch_61
        :pswitch_7f
    .end packed-switch
.end method

.method public varargs addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;[Lcom/mqunar/libtask/Ticket$RequestFeature;)V
    .registers 5

    .prologue
    .line 65
    new-instance v0, Lcom/mqunar/libtask/Ticket;

    invoke-direct {v0, p3}, Lcom/mqunar/libtask/Ticket;-><init>([Lcom/mqunar/libtask/Ticket$RequestFeature;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mqunar/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/libtask/AbsConductor;Lcom/mqunar/libtask/Ticket;)V

    .line 66
    return-void
.end method

.method public cancelTaskByCallback(Lcom/mqunar/libtask/TaskCallback;)V
    .registers 3

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/libtask/ChiefGuard;->cancelTaskByCallback(Lcom/mqunar/libtask/TaskCallback;Z)V

    .line 196
    return-void
.end method

.method public cancelTaskByCallback(Lcom/mqunar/libtask/TaskCallback;Z)V
    .registers 8

    .prologue
    .line 200
    iget-object v1, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 201
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 202
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 203
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 204
    iget-object v3, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    iget-object v3, v3, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {v3, p1}, Lcom/mqunar/libtask/MsgDispatcher;->hasCallback(Lcom/mqunar/libtask/TaskCallback;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 208
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 209
    iget-object v1, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    monitor-enter v1

    .line 210
    :try_start_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 212
    iget-object v4, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    iget-object v4, v4, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    invoke-virtual {v4, p1}, Lcom/mqunar/libtask/MsgDispatcher;->hasCallback(Lcom/mqunar/libtask/TaskCallback;)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-nez p2, :cond_59

    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->isCancelable()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 213
    :cond_59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 220
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw v0

    .line 216
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 217
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 218
    iget-object v0, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v0, p2}, Lcom/mqunar/libtask/AbsConductor;->cancel(Z)Z

    goto :goto_69

    .line 220
    :cond_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_5d

    .line 221
    return-void
.end method

.method public checkTasks()V
    .registers 7

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 189
    :goto_8
    return-void

    .line 142
    :cond_9
    iget-object v1, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 143
    :try_start_c
    iget-object v0, p0, Lcom/mqunar/libtask/ChiefGuard;->b:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 144
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 145
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/libtask/TaskTrain;

    .line 147
    iget-object v3, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_41

    .line 148
    :try_start_21
    iget-object v4, p0, Lcom/mqunar/libtask/ChiefGuard;->c:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_44

    .line 150
    :try_start_27
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 152
    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 155
    invoke-virtual {v0}, Lcom/mqunar/libtask/TaskTrain;->cacheType()I

    move-result v3

    .line 156
    packed-switch v3, :pswitch_data_84

    goto :goto_12

    .line 160
    :pswitch_38
    sget-object v3, Lcom/mqunar/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Lcom/mqunar/libtask/TaskTrain;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    goto :goto_12

    .line 188
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_41

    throw v0

    .line 149
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v0

    .line 164
    :pswitch_47
    sget-object v3, Lcom/mqunar/libtask/AsyncTask;->CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/mqunar/libtask/k;

    invoke-direct {v4, p0, v0}, Lcom/mqunar/libtask/k;-><init>(Lcom/mqunar/libtask/ChiefGuard;Lcom/mqunar/libtask/TaskTrain;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 169
    sget-object v3, Lcom/mqunar/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Lcom/mqunar/libtask/TaskTrain;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/mqunar/libtask/AsyncTask;

    goto :goto_12

    .line 173
    :pswitch_5a
    sget-object v3, Lcom/mqunar/libtask/AsyncTask;->CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/mqunar/libtask/l;

    invoke-direct {v4, p0, v0}, Lcom/mqunar/libtask/l;-><init>(Lcom/mqunar/libtask/ChiefGuard;Lcom/mqunar/libtask/TaskTrain;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 178
    iget-object v3, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    const v4, 0x7fffffff

    iput v4, v3, Lcom/mqunar/libtask/AbsConductor;->progress:I

    .line 179
    iget-object v3, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    iget-object v3, v3, Lcom/mqunar/libtask/AbsConductor;->msgd:Lcom/mqunar/libtask/MsgDispatcher;

    sget-object v4, Lcom/mqunar/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/libtask/TaskCode;

    iget-object v5, v0, Lcom/mqunar/libtask/TaskTrain;->a:Lcom/mqunar/libtask/AbsConductor;

    invoke-virtual {v3, v4, v5}, Lcom/mqunar/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/libtask/TaskCode;Lcom/mqunar/libtask/AbsConductor;)V

    .line 180
    iget-object v3, p0, Lcom/mqunar/libtask/ChiefGuard;->a:Lcom/mqunar/libtask/Trumpet;

    invoke-interface {v3, v0}, Lcom/mqunar/libtask/Trumpet;->ok(Lcom/mqunar/libtask/TaskTrain;)V

    goto :goto_12

    .line 184
    :cond_7c
    iget-object v3, p0, Lcom/mqunar/libtask/ChiefGuard;->a:Lcom/mqunar/libtask/Trumpet;

    invoke-interface {v3, v0}, Lcom/mqunar/libtask/Trumpet;->cancel(Lcom/mqunar/libtask/TaskTrain;)V

    goto :goto_12

    .line 188
    :cond_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_46 .. :try_end_83} :catchall_41

    goto :goto_8

    .line 156
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_38
        :pswitch_5a
        :pswitch_38
        :pswitch_47
    .end packed-switch
.end method
