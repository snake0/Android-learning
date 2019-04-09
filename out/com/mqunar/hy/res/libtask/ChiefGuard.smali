.class public final Lcom/mqunar/hy/res/libtask/ChiefGuard;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;


# instance fields
.field final running:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mqunar/hy/res/libtask/TaskTrain;",
            ">;"
        }
    .end annotation
.end field

.field final trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

.field final waiting:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque",
            "<",
            "Lcom/mqunar/hy/res/libtask/TaskTrain;",
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
    new-instance v0, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;

    invoke-direct {v0, p0}, Lcom/mqunar/hy/res/libtask/ChiefGuard$1;-><init>(Lcom/mqunar/hy/res/libtask/ChiefGuard;)V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    .line 61
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    .line 33
    return-void
.end method

.method private cancelAll()V
    .registers 5

    .prologue
    .line 229
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 230
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 231
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_28

    .line 232
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v1

    .line 233
    :try_start_c
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 234
    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/mqunar/hy/res/libtask/AbsConductor;->cancel(Z)Z

    goto :goto_12

    .line 237
    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw v0

    .line 231
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 236
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 237
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_25

    .line 238
    return-void
.end method

.method public static destroy()V
    .registers 1

    .prologue
    .line 222
    sget-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    if-eqz v0, :cond_9

    .line 223
    sget-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    invoke-direct {v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->cancelAll()V

    .line 225
    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    .line 226
    return-void
.end method

.method public static getInstance()Lcom/mqunar/hy/res/libtask/ChiefGuard;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    if-nez v0, :cond_13

    .line 23
    const-class v1, Lcom/mqunar/hy/res/libtask/ChiefGuard;

    monitor-enter v1

    .line 24
    :try_start_7
    sget-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    if-nez v0, :cond_12

    .line 25
    new-instance v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;

    invoke-direct {v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;-><init>()V

    sput-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

    .line 27
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 29
    :cond_13
    sget-object v0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->instance:Lcom/mqunar/hy/res/libtask/ChiefGuard;

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
.method public addTask(Landroid/content/Context;Lcom/mqunar/hy/res/libtask/AbsConductor;Lcom/mqunar/hy/res/libtask/Ticket;)V
    .registers 11

    .prologue
    .line 69
    invoke-virtual {p2}, Lcom/mqunar/hy/res/libtask/AbsConductor;->getStatus()Lcom/mqunar/hy/res/libtask/TaskCode;

    move-result-object v0

    sget-object v1, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_NONE:Lcom/mqunar/hy/res/libtask/TaskCode;

    if-eq v0, v1, :cond_9

    .line 133
    :goto_8
    return-void

    .line 78
    :cond_9
    new-instance v1, Lcom/mqunar/hy/res/libtask/TaskTrain;

    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;-><init>(Landroid/content/Context;Lcom/mqunar/hy/res/libtask/AbsConductor;Lcom/mqunar/hy/res/libtask/Ticket;Lcom/mqunar/hy/res/libtask/Trumpet;)V

    .line 79
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 80
    :try_start_13
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 81
    monitor-exit v2

    goto :goto_8

    .line 83
    :catchall_1d
    move-exception v0

    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_1d

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 84
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v2

    .line 85
    :try_start_24
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 86
    monitor-exit v2

    goto :goto_8

    .line 88
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_24 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 89
    invoke-virtual {p2}, Lcom/mqunar/hy/res/libtask/AbsConductor;->beforeAdd()V

    .line 90
    iget-object v0, p2, Lcom/mqunar/hy/res/libtask/AbsConductor;->status:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 91
    const/high16 v0, -0x80000000

    iput v0, p2, Lcom/mqunar/hy/res/libtask/AbsConductor;->progress:I

    .line 92
    iget-object v0, p2, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v2, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

    invoke-virtual {v0, v2, p2}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    .line 94
    iget v0, p3, Lcom/mqunar/hy/res/libtask/Ticket;->addType:I

    packed-switch v0, :pswitch_data_f6

    .line 132
    :goto_4c
    :pswitch_4c
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->checkTasks()V

    goto :goto_8

    .line 96
    :pswitch_50
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 97
    :try_start_53
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v2

    goto :goto_4c

    :catchall_5a
    move-exception v0

    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5a

    throw v0

    .line 101
    :pswitch_5d
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 102
    :try_start_60
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 103
    monitor-exit v2

    goto :goto_4c

    :catchall_67
    move-exception v0

    monitor-exit v2
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_67

    throw v0

    .line 106
    :pswitch_6a
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v2

    .line 107
    :try_start_6d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_78
    :goto_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 109
    iget-object v5, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    iget-object v6, v1, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v5, v6}, Lcom/mqunar/hy/res/libtask/AbsConductor;->sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 110
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 117
    :catchall_98
    move-exception v0

    monitor-exit v2
    :try_end_9a
    .catchall {:try_start_6d .. :try_end_9a} :catchall_98

    throw v0

    .line 113
    :cond_9b
    :try_start_9b
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 115
    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/mqunar/hy/res/libtask/AbsConductor;->cancel(Z)Z

    goto :goto_a4

    .line 117
    :cond_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_9b .. :try_end_b8} :catchall_98

    .line 118
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v2

    .line 119
    :try_start_bb
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c6
    :goto_c6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 121
    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelable()Z

    move-result v5

    if-eqz v5, :cond_c6

    iget-object v5, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    iget-object v6, v1, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v5, v6}, Lcom/mqunar/hy/res/libtask/AbsConductor;->sameAs(Lcom/mqunar/hy/res/libtask/AbsConductor;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 122
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c6

    .line 127
    :catchall_e6
    move-exception v0

    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_bb .. :try_end_e8} :catchall_e6

    throw v0

    .line 125
    :cond_e9
    :try_start_e9
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingDeque;->removeAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingDeque;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v2
    :try_end_f4
    .catchall {:try_start_e9 .. :try_end_f4} :catchall_e6

    goto/16 :goto_4c

    .line 94
    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_50
        :pswitch_5d
        :pswitch_4c
        :pswitch_6a
    .end packed-switch
.end method

.method public varargs addTask(Landroid/content/Context;Lcom/mqunar/hy/res/libtask/AbsConductor;[Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;)V
    .registers 5

    .prologue
    .line 65
    new-instance v0, Lcom/mqunar/hy/res/libtask/Ticket;

    invoke-direct {v0, p3}, Lcom/mqunar/hy/res/libtask/Ticket;-><init>([Lcom/mqunar/hy/res/libtask/Ticket$RequestFeature;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->addTask(Landroid/content/Context;Lcom/mqunar/hy/res/libtask/AbsConductor;Lcom/mqunar/hy/res/libtask/Ticket;)V

    .line 66
    return-void
.end method

.method public cancelTaskByCallback(Lcom/mqunar/hy/res/libtask/TaskCallback;)V
    .registers 3

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard;->cancelTaskByCallback(Lcom/mqunar/hy/res/libtask/TaskCallback;Z)V

    .line 193
    return-void
.end method

.method public cancelTaskByCallback(Lcom/mqunar/hy/res/libtask/TaskCallback;Z)V
    .registers 8

    .prologue
    .line 197
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 198
    :try_start_3
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 199
    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 200
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 201
    iget-object v3, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    iget-object v3, v3, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    invoke-virtual {v3, p1}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->hasCallback(Lcom/mqunar/hy/res/libtask/TaskCallback;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 205
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

    .line 206
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v1

    .line 207
    :try_start_30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 209
    iget-object v4, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    iget-object v4, v4, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    invoke-virtual {v4, p1}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->hasCallback(Lcom/mqunar/hy/res/libtask/TaskCallback;)Z

    move-result v4

    if-eqz v4, :cond_3b

    if-nez p2, :cond_59

    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelable()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 210
    :cond_59
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    .line 217
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_30 .. :try_end_5f} :catchall_5d

    throw v0

    .line 213
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_69
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 215
    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v0, p2}, Lcom/mqunar/hy/res/libtask/AbsConductor;->cancel(Z)Z

    goto :goto_69

    .line 217
    :cond_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_60 .. :try_end_7c} :catchall_5d

    .line 218
    return-void
.end method

.method public checkTasks()V
    .registers 7

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 186
    :goto_8
    return-void

    .line 139
    :cond_9
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    monitor-enter v1

    .line 140
    :try_start_c
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->waiting:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 141
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 142
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/hy/res/libtask/TaskTrain;

    .line 144
    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    monitor-enter v3
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_41

    .line 145
    :try_start_21
    iget-object v4, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->running:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_44

    .line 147
    :try_start_27
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 149
    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_7c

    .line 152
    invoke-virtual {v0}, Lcom/mqunar/hy/res/libtask/TaskTrain;->cacheType()I

    move-result v3

    .line 153
    packed-switch v3, :pswitch_data_84

    goto :goto_12

    .line 157
    :pswitch_38
    sget-object v3, Lcom/mqunar/hy/res/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Lcom/mqunar/hy/res/libtask/TaskTrain;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12

    .line 185
    :catchall_41
    move-exception v0

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_41

    throw v0

    .line 146
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v3
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v0

    .line 161
    :pswitch_47
    sget-object v3, Lcom/mqunar/hy/res/libtask/AsyncTask;->CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/mqunar/hy/res/libtask/ChiefGuard$2;

    invoke-direct {v4, p0, v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard$2;-><init>(Lcom/mqunar/hy/res/libtask/ChiefGuard;Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 166
    sget-object v3, Lcom/mqunar/hy/res/libtask/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Lcom/mqunar/hy/res/libtask/TaskTrain;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_12

    .line 170
    :pswitch_5a
    sget-object v3, Lcom/mqunar/hy/res/libtask/AsyncTask;->CACHE_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/mqunar/hy/res/libtask/ChiefGuard$3;

    invoke-direct {v4, p0, v0}, Lcom/mqunar/hy/res/libtask/ChiefGuard$3;-><init>(Lcom/mqunar/hy/res/libtask/ChiefGuard;Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    iget-object v3, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    const v4, 0x7fffffff

    iput v4, v3, Lcom/mqunar/hy/res/libtask/AbsConductor;->progress:I

    .line 176
    iget-object v3, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    iget-object v3, v3, Lcom/mqunar/hy/res/libtask/AbsConductor;->msgd:Lcom/mqunar/hy/res/libtask/MsgDispatcher;

    sget-object v4, Lcom/mqunar/hy/res/libtask/TaskCode;->TASK_PENDING:Lcom/mqunar/hy/res/libtask/TaskCode;

    iget-object v5, v0, Lcom/mqunar/hy/res/libtask/TaskTrain;->conductor:Lcom/mqunar/hy/res/libtask/AbsConductor;

    invoke-virtual {v3, v4, v5}, Lcom/mqunar/hy/res/libtask/MsgDispatcher;->onMessage(Lcom/mqunar/hy/res/libtask/TaskCode;Lcom/mqunar/hy/res/libtask/AbsConductor;)V

    .line 177
    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    invoke-interface {v3, v0}, Lcom/mqunar/hy/res/libtask/Trumpet;->ok(Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    goto :goto_12

    .line 181
    :cond_7c
    iget-object v3, p0, Lcom/mqunar/hy/res/libtask/ChiefGuard;->trumpet:Lcom/mqunar/hy/res/libtask/Trumpet;

    invoke-interface {v3, v0}, Lcom/mqunar/hy/res/libtask/Trumpet;->cancel(Lcom/mqunar/hy/res/libtask/TaskTrain;)V

    goto :goto_12

    .line 185
    :cond_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_46 .. :try_end_83} :catchall_41

    goto :goto_8

    .line 153
    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_38
        :pswitch_5a
        :pswitch_38
        :pswitch_47
    .end packed-switch
.end method
