.class public Lcom/mqunar/necro/agent/tracing/TraceMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEALTHY_TRACE_TIMEOUT:I = 0x1f4

.field private static final UNHEALTHY_TRACE_TIMEOUT:I = 0xea60

.field private static final disabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field private static final threadLocalTrace:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/mqunar/necro/agent/tracing/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalTraceStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;",
            ">;"
        }
    .end annotation
.end field

.field private static final traceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private static traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

.field private static traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;


# instance fields
.field private activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->disabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    .line 31
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    return-void
.end method

.method protected constructor <init>(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-direct {v0, p1}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;-><init>(Lcom/mqunar/necro/agent/tracing/Trace;)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    .line 40
    return-void
.end method

.method public static addTraceListener(Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;)V
    .registers 2

    .prologue
    .line 47
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private completeActivityTrace()V
    .registers 7

    .prologue
    .line 315
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "TraceMachine completeActivityTrace begin"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 317
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 318
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 320
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 321
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;

    .line 323
    sget-object v3, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TraceMachine completeActivityTrace TraceLifecycleAware "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 324
    iget-object v3, v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-interface {v0, v3}, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;->onTraceComplete(Lcom/mqunar/necro/agent/tracing/ActivityTrace;)V

    goto :goto_18

    .line 327
    :cond_46
    iget-object v0, v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->complete()V

    .line 329
    :cond_4b
    return-void
.end method

.method public static endTrace()V
    .registers 1

    .prologue
    .line 482
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V

    .line 483
    return-void
.end method

.method public static endTrace(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 487
    :try_start_0
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getActivityTrace()Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 488
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_17
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_0 .. :try_end_17} :catch_18

    .line 492
    :cond_17
    :goto_17
    return-void

    .line 490
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public static enterMethod(Lcom/mqunar/necro/agent/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/necro/agent/tracing/Trace;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceMachine enterMethod begin trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 119
    :try_start_22
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 156
    :goto_28
    return-void

    .line 123
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->getLastUpdatedAt()J

    move-result-wide v2

    .line 125
    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_5c

    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->hasMissingChildren()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 126
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Completing activity trace after hitting healthy timeout (500ms)"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_52
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_22 .. :try_end_52} :catch_53
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_52} :catch_79

    goto :goto_28

    .line 151
    :catch_53
    move-exception v0

    .line 152
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling enterMethod()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 131
    :cond_5c
    :try_start_5c
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->getStartedAt()J

    move-result-wide v2

    .line 132
    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_82

    .line 133
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Completing activity trace after hitting unhealthy timeout (60000ms)"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_78
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_5c .. :try_end_78} :catch_53
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_78} :catch_79

    goto :goto_28

    .line 153
    :catch_79
    move-exception v0

    .line 154
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling enterMethod()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 138
    :cond_82
    :try_start_82
    invoke-static {p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->loadTraceContext(Lcom/mqunar/necro/agent/tracing/Trace;)V

    .line 139
    invoke-static {p1}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->registerNewTrace(Ljava/lang/String;)Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v1

    .line 140
    invoke-static {v1}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->pushTraceContext(Lcom/mqunar/necro/agent/tracing/Trace;)V

    .line 141
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mqunar/necro/agent/tracing/Trace;->scope:Ljava/lang/String;

    .line 142
    invoke-virtual {v1, p2}, Lcom/mqunar/necro/agent/tracing/Trace;->setAnnotationParams(Ljava/util/List;)V

    .line 144
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    :goto_9b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 146
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;

    .line 147
    invoke-interface {v0}, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;->onEnterMethod()V

    goto :goto_9b

    .line 150
    :cond_ab
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J
    :try_end_b1
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_82 .. :try_end_b1} :catch_53
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_b1} :catch_79

    goto/16 :goto_28
.end method

.method public static enterMethod(Ljava/lang/String;)V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-static {v0, p0, v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->enterMethod(Lcom/mqunar/necro/agent/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 110
    return-void
.end method

.method public static enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->enterMethod(Lcom/mqunar/necro/agent/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 114
    return-void
.end method

.method public static enterNetworkSegment(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 496
    :try_start_0
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 515
    :goto_6
    return-void

    .line 500
    :cond_7
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->getType()Lcom/mqunar/necro/agent/tracing/TraceType;

    move-result-object v0

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceType;->NETWORK:Lcom/mqunar/necro/agent/tracing/TraceType;

    if-ne v0, v1, :cond_16

    .line 502
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->exitMethod()V

    .line 505
    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->enterMethod(Lcom/mqunar/necro/agent/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 506
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    .line 507
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceType;->NETWORK:Lcom/mqunar/necro/agent/tracing/TraceType;

    invoke-virtual {v0, v1}, Lcom/mqunar/necro/agent/tracing/Trace;->setType(Lcom/mqunar/necro/agent/tracing/TraceType;)V
    :try_end_24
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_0 .. :try_end_24} :catch_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_2e

    goto :goto_6

    .line 508
    :catch_25
    move-exception v0

    .line 509
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling enterNetworkSegment()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 511
    :catch_2e
    move-exception v0

    .line 512
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling enterNetworkSegment()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public static exitMethod()V
    .registers 6

    .prologue
    .line 159
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceMachine exitMethod begin threadLocalTrace.get() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 161
    :try_start_1e
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 211
    :cond_24
    :goto_24
    return-void

    .line 165
    :cond_25
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/Trace;

    .line 166
    if-nez v0, :cond_40

    .line 167
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "threadLocalTrace is null"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_36} :catch_37

    goto :goto_24

    .line 208
    :catch_37
    move-exception v0

    .line 209
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling exitMethod()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_24

    .line 171
    :cond_40
    :try_start_40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    .line 172
    iget-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->threadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_62

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    if-eqz v1, :cond_62

    .line 173
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    invoke-interface {v1}, Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;->getCurrentThreadId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->threadId:J

    .line 174
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    invoke-interface {v1}, Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;->getCurrentThreadName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->threadName:Ljava/lang/String;

    .line 177
    :cond_62
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;

    .line 180
    invoke-interface {v1}, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;->onExitMethod()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_77} :catch_37

    goto :goto_68

    .line 184
    :cond_78
    :try_start_78
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->complete()V
    :try_end_7b
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_78 .. :try_end_7b} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_37

    .line 194
    :try_start_7b
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->pop()Ljava/lang/Object;

    .line 195
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->empty()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 196
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 205
    :goto_9a
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->getType()Lcom/mqunar/necro/agent/tracing/TraceType;

    move-result-object v0

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceType;->TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;

    if-ne v0, v1, :cond_24

    goto :goto_24

    .line 185
    :catch_a3
    move-exception v1

    .line 186
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 187
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 188
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->getType()Lcom/mqunar/necro/agent/tracing/TraceType;

    move-result-object v0

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceType;->TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;

    if-ne v0, v1, :cond_24

    goto/16 :goto_24

    .line 198
    :cond_b8
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/necro/agent/tracing/Trace;

    .line 199
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 200
    iget-wide v2, v1, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    .line 202
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TraceMachine exitMethod parentTrace1.childExclusiveTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_ee} :catch_37

    goto :goto_9a
.end method

.method public static getActivityTrace()Lcom/mqunar/necro/agent/tracing/ActivityTrace;
    .registers 1

    .prologue
    .line 372
    :try_start_0
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 373
    :catch_5
    move-exception v0

    .line 374
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;-><init>()V

    throw v0
.end method

.method private static getAppTime()J
    .registers 4

    .prologue
    .line 518
    sget-wide v0, Lcom/mqunar/necro/agent/Agent;->applicationStart:J

    .line 519
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_c

    .line 520
    const-wide/16 v2, -0x1

    sput-wide v2, Lcom/mqunar/necro/agent/Agent;->applicationStart:J

    .line 522
    :cond_c
    return-wide v0
.end method

.method public static getCurrentScope()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 422
    :try_start_1
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 425
    :goto_7
    return-object v0

    .line 422
    :cond_8
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    invoke-interface {v1}, Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v1, v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    iget-object v1, v1, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v1, Lcom/mqunar/necro/agent/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    goto :goto_7

    :cond_1d
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v1, v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    iget-object v1, v1, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v1, Lcom/mqunar/necro/agent/tracing/Trace;->metricName:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    goto :goto_7

    .line 423
    :catch_26
    move-exception v1

    .line 424
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v3, "Caught error while calling getCurrentScope()"

    invoke-interface {v2, v3, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method private static getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;
    .registers 1

    .prologue
    .line 332
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 333
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;-><init>()V

    throw v0

    .line 335
    :cond_c
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/Trace;

    .line 336
    if-eqz v0, :cond_17

    :goto_16
    return-object v0

    :cond_17
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getRootTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    goto :goto_16
.end method

.method public static getCurrentTraceParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getRootTrace()Lcom/mqunar/necro/agent/tracing/Trace;
    .registers 1

    .prologue
    .line 342
    :try_start_0
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 343
    :catch_7
    move-exception v0

    .line 344
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;-><init>()V

    throw v0
.end method

.method public static getTraceMachine()Lcom/mqunar/necro/agent/tracing/TraceMachine;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    return-object v0
.end method

.method public static haltTracing()V
    .registers 2

    .prologue
    .line 471
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 472
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 473
    const/4 v1, 0x0

    sput-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 474
    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->discard()V

    .line 476
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 477
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 479
    :cond_1a
    return-void
.end method

.method public static isTracingActive()Z
    .registers 1

    .prologue
    .line 349
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isTracingInactive()Z
    .registers 1

    .prologue
    .line 353
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static loadTraceContext(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 287
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceMachine loadTraceContext trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threadLocalTrace.get() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 289
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_82

    .line 290
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 291
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-direct {v1, v4}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;-><init>(Lcom/mqunar/necro/agent/tracing/TraceMachine$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 292
    if-nez p0, :cond_4a

    .line 312
    :cond_49
    :goto_49
    return-void

    .line 295
    :cond_4a
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0, p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_55
    :goto_55
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->getLevel()I

    move-result v0

    if-ne v0, v3, :cond_49

    .line 309
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is now active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_49

    .line 296
    :cond_82
    if-nez p0, :cond_55

    .line 297
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 298
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->getLevel()I

    move-result v0

    if-ne v0, v3, :cond_a1

    .line 299
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "No context to load!"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 301
    :cond_a1
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_49

    .line 304
    :cond_a7
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/Trace;

    .line 305
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_55
.end method

.method public static postMethod()V
    .registers 2

    .prologue
    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/mqunar/necro/agent/tracing/TraceMachine$1;

    invoke-direct {v1}, Lcom/mqunar/necro/agent/tracing/TraceMachine$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    return-void
.end method

.method private static pushTraceContext(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 4

    .prologue
    .line 274
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceMachine pushTraceContext trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threadLocalTraceStack.get() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_46

    if-eqz p0, :cond_46

    .line 276
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    .line 277
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->empty()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 278
    invoke-virtual {v0, p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_41
    :goto_41
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 284
    :cond_46
    return-void

    .line 279
    :cond_47
    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_41

    .line 280
    invoke-virtual {v0, p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41
.end method

.method private static registerNewTrace(Ljava/lang/String;)Lcom/mqunar/necro/agent/tracing/Trace;
    .registers 6

    .prologue
    .line 251
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 252
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Tried to register a new trace but tracing is inactive!"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 253
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;-><init>()V

    throw v0

    .line 255
    :cond_13
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    .line 256
    new-instance v1, Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v2, v0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    sget-object v3, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v1, p0, v2, v3}, Lcom/mqunar/necro/agent/tracing/Trace;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/mqunar/necro/agent/tracing/TraceMachine;)V

    .line 259
    :try_start_20
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v2, v1}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->addTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_27} :catch_58

    .line 264
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->getLevel()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_54

    .line 265
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering trace of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 268
    :cond_54
    invoke-virtual {v0, v1}, Lcom/mqunar/necro/agent/tracing/Trace;->addChild(Lcom/mqunar/necro/agent/tracing/Trace;)V

    .line 269
    return-object v1

    .line 260
    :catch_58
    move-exception v0

    .line 261
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;-><init>()V

    throw v0
.end method

.method public static removeTraceListener(Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;)V
    .registers 2

    .prologue
    .line 51
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public static setCurrentDisplayName(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 395
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_c

    .line 397
    :try_start_6
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    iput-object p0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;
    :try_end_c
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_6 .. :try_end_c} :catch_d

    .line 402
    :cond_c
    :goto_c
    return-void

    .line 398
    :catch_d
    move-exception v0

    .line 399
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "setCurrentDisplayName"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c
.end method

.method public static setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 385
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 387
    :try_start_6
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_6 .. :try_end_11} :catch_12

    .line 392
    :cond_11
    :goto_11
    return-void

    .line 388
    :catch_12
    move-exception v0

    .line 389
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "setCurrentTraceParam"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public static setRootDisplayName(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 405
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-nez v0, :cond_22

    .line 407
    :try_start_6
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getRootTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    .line 409
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/Util;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->metricName:Ljava/lang/String;

    .line 410
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/Util;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    .line 411
    iput-object p0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    .line 412
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentTrace()Lcom/mqunar/necro/agent/tracing/Trace;

    move-result-object v0

    .line 413
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->scope:Ljava/lang/String;
    :try_end_22
    .catch Lcom/mqunar/necro/agent/tracing/TracingInactiveException; {:try_start_6 .. :try_end_22} :catch_23

    .line 418
    :cond_22
    :goto_22
    return-void

    .line 414
    :catch_23
    move-exception v0

    .line 415
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "setRootDisplayName"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method

.method public static setTraceMachineInterface(Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;)V
    .registers 1

    .prologue
    .line 55
    sput-object p0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    .line 56
    return-void
.end method

.method public static startTracing(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->startTracing(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public static startTracing(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 63
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceMachine startTracing begin name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 65
    :try_start_19
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->disabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 106
    :goto_21
    return-void

    .line 69
    :cond_22
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingActive()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 70
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V

    .line 73
    :cond_2d
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 74
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mqunar/necro/agent/tracing/TraceMachine$TraceStack;-><init>(Lcom/mqunar/necro/agent/tracing/TraceMachine$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/mqunar/necro/agent/tracing/Trace;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/Trace;-><init>()V

    .line 77
    if-eqz p1, :cond_e9

    .line 78
    iput-object p0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    .line 82
    :goto_46
    iget-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/necro/agent/util/Util;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->metricName:Ljava/lang/String;

    .line 83
    iget-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/mqunar/necro/agent/util/Util;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    .line 85
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->getAppTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->applicationTime:J

    .line 86
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    invoke-interface {v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->getLevel()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_93

    .line 87
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started trace of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 90
    :cond_93
    new-instance v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-direct {v1, v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;-><init>(Lcom/mqunar/necro/agent/tracing/Trace;)V

    sput-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 91
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 92
    invoke-static {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->pushTraceContext(Lcom/mqunar/necro/agent/tracing/Trace;)V

    .line 94
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    :goto_a7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;

    .line 97
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-interface {v0, v2}, Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;->onTraceStart(Lcom/mqunar/necro/agent/tracing/ActivityTrace;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_ba} :catch_bb

    goto :goto_a7

    .line 99
    :catch_bb
    move-exception v0

    .line 100
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while initializing TraceMachine, shutting it down"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    sput-object v4, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 102
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 103
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 105
    :cond_cf
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TraceMachine startTracing end name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 80
    :cond_e9
    :try_start_e9
    invoke-static {p0}, Lcom/mqunar/necro/agent/util/Util;->formatActivityDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ef} :catch_bb

    goto/16 :goto_46
.end method

.method public static unloadTraceContext(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 224
    :try_start_0
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    :cond_6
    :goto_6
    return-void

    .line 228
    :cond_7
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachineInterface:Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;

    invoke-interface {v0}, Lcom/mqunar/necro/agent/tracing/ITraceMachineThread;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_6

    .line 232
    :cond_13
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 233
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is now inactive"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 236
    :cond_47
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 237
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_51} :catch_76

    .line 240
    :try_start_51
    check-cast p0, Lcom/mqunar/necro/agent/tracing/TraceFieldInterface;

    .line 241
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/mqunar/necro/agent/tracing/TraceFieldInterface;->_nr_setTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    :try_end_57
    .catch Ljava/lang/ClassCastException; {:try_start_51 .. :try_end_57} :catch_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_57} :catch_76

    goto :goto_6

    .line 242
    :catch_58
    move-exception v0

    .line 243
    :try_start_59
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a TraceFieldInterface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_75} :catch_76

    goto :goto_6

    .line 245
    :catch_76
    move-exception v0

    .line 246
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling unloadTraceContext()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method


# virtual methods
.method public onHarvestBefore()V
    .registers 9

    .prologue
    .line 449
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "TraceMachine ------- onHarvestBefore"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingActive()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 452
    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->getLastUpdatedAt()J

    move-result-wide v2

    .line 453
    sget-object v4, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v4, v4, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v4}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->getStartedAt()J

    move-result-wide v4

    .line 454
    const-wide/16 v6, 0x1f4

    add-long/2addr v2, v6

    cmp-long v2, v2, v0

    if-gez v2, :cond_3d

    sget-object v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->hasMissingChildren()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 455
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Completing activity trace after hitting healthy timeout (500ms)"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V

    .line 468
    :cond_3c
    :goto_3c
    return-void

    .line 460
    :cond_3d
    const-wide/32 v2, 0xea60

    add-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_3c

    .line 461
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Completing activity trace after hitting unhealthy timeout (60000ms)"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 462
    invoke-direct {p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->completeActivityTrace()V

    goto :goto_3c

    .line 466
    :cond_50
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "TraceMachine is inactive"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public storeCompletedTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 5

    .prologue
    .line 358
    :try_start_0
    invoke-static {}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 359
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Attempted to store a completed trace with no trace machine!"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 368
    :goto_d
    return-void

    .line 363
    :cond_e
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/TraceMachine;->activityTrace:Lcom/mqunar/necro/agent/tracing/ActivityTrace;

    invoke-virtual {v0, p1}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->addCompletedTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_d

    .line 364
    :catch_14
    move-exception v0

    .line 365
    sget-object v1, Lcom/mqunar/necro/agent/tracing/TraceMachine;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Caught error while calling storeCompletedTrace()"

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method
