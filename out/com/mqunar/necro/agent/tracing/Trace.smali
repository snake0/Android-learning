.class public Lcom/mqunar/necro/agent/tracing/Trace;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CATEGORY_PARAMETER:Ljava/lang/String; = "category"

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# instance fields
.field public applicationTime:J

.field public childExclusiveTime:J

.field private volatile children:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field public entryTimestamp:J

.field public exclusiveTime:J

.field public exitTimestamp:J

.field private isComplete:Z

.field public metricBackgroundName:Ljava/lang/String;

.field public metricName:Ljava/lang/String;

.field public final myUUID:Ljava/util/UUID;

.field private volatile params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final parentUUID:Ljava/util/UUID;

.field private rawAnnotationParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Ljava/lang/String;

.field public threadId:J

.field public threadName:Ljava/lang/String;

.field public traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

.field private type:Lcom/mqunar/necro/agent/tracing/TraceType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/tracing/Trace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/mqunar/necro/agent/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/mqunar/necro/agent/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    .line 27
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    .line 28
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    .line 29
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exclusiveTime:J

    .line 30
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    .line 35
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->threadId:J

    .line 36
    const-string v0, "main"

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->threadName:Ljava/lang/String;

    .line 37
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->applicationTime:J

    .line 48
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceType;->TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->type:Lcom/mqunar/necro/agent/tracing/TraceType;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->isComplete:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->parentUUID:Ljava/util/UUID;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Lcom/mqunar/necro/agent/tracing/TraceMachine;)V
    .registers 11

    .prologue
    const-wide/16 v5, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/mqunar/necro/agent/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    invoke-static {}, Lcom/mqunar/necro/agent/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    .line 27
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    .line 28
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    .line 29
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exclusiveTime:J

    .line 30
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    .line 35
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->threadId:J

    .line 36
    const-string v0, "main"

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->threadName:Ljava/lang/String;

    .line 37
    iput-wide v5, p0, Lcom/mqunar/necro/agent/tracing/Trace;->applicationTime:J

    .line 54
    sget-object v0, Lcom/mqunar/necro/agent/tracing/TraceType;->TRACE:Lcom/mqunar/necro/agent/tracing/TraceType;

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->type:Lcom/mqunar/necro/agent/tracing/TraceType;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->isComplete:Z

    .line 56
    iput-object p1, p0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->parentUUID:Ljava/util/UUID;

    .line 58
    iput-object p3, p0, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 59
    return-void
.end method

.method private static createParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 178
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_e

    move-result-object v1

    .line 184
    const-class v2, Lcom/mqunar/necro/agent/instrumentation/MetricCategory;

    if-ne v2, v1, :cond_2d

    invoke-static {p2}, Lcom/mqunar/necro/agent/instrumentation/MetricCategory;->valueOf(Ljava/lang/String;)Lcom/mqunar/necro/agent/instrumentation/MetricCategory;

    move-result-object p2

    :cond_d
    :goto_d
    return-object p2

    .line 179
    :catch_e
    move-exception v1

    .line 180
    sget-object v2, Lcom/mqunar/necro/agent/tracing/Trace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve parameter class in enterMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v0

    .line 181
    goto :goto_d

    .line 184
    :cond_2d
    const-class v2, Ljava/lang/String;

    if-eq v2, v1, :cond_d

    move-object p2, v0

    goto :goto_d
.end method


# virtual methods
.method public addChild(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_15

    .line 63
    monitor-enter p0

    .line 64
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_14

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    .line 67
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1d

    .line 70
    :cond_15
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    iget-object v1, p1, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void

    .line 67
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public complete()V
    .registers 5

    .prologue
    .line 126
    sget-object v0, Lcom/mqunar/necro/agent/tracing/Trace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace complete getDurationAsMilliseconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/necro/agent/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " childExclusiveTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->isComplete:Z

    if-eqz v0, :cond_4b

    .line 128
    sget-object v0, Lcom/mqunar/necro/agent/tracing/Trace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to double complete trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 143
    :goto_4a
    return-void

    .line 130
    :cond_4b
    iget-wide v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_59

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    .line 134
    :cond_59
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->childExclusiveTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exclusiveTime:J

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->isComplete:Z

    .line 138
    :try_start_65
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    invoke-virtual {v0, p0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->storeCompletedTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    :try_end_6a
    .catch Ljava/lang/NullPointerException; {:try_start_65 .. :try_end_6a} :catch_6b

    goto :goto_4a

    .line 139
    :catch_6b
    move-exception v0

    .line 140
    new-instance v0, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;

    invoke-direct {v0}, Lcom/mqunar/necro/agent/tracing/TracingInactiveException;-><init>()V

    throw v0
.end method

.method public getAnnotationParams()Ljava/util/Map;
    .registers 6
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
    .line 103
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 104
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 105
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 107
    :cond_17
    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 108
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 111
    invoke-static {v0, v1, v2}, Lcom/mqunar/necro/agent/tracing/Trace;->createParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_17

    .line 113
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 118
    :cond_39
    return-object v3
.end method

.method public getCategory()Lcom/mqunar/necro/agent/instrumentation/MetricCategory;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/tracing/Trace;->getAnnotationParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "category"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v1

    .line 170
    :goto_e
    return-object v0

    .line 165
    :cond_f
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/tracing/Trace;->getAnnotationParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "category"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 166
    instance-of v2, v0, Lcom/mqunar/necro/agent/instrumentation/MetricCategory;

    if-nez v2, :cond_26

    .line 167
    sget-object v0, Lcom/mqunar/necro/agent/tracing/Trace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v2, "Category annotation parameter is not of type MetricCategory"

    invoke-interface {v0, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 168
    goto :goto_e

    .line 170
    :cond_26
    check-cast v0, Lcom/mqunar/necro/agent/instrumentation/MetricCategory;

    goto :goto_e
.end method

.method public getChildren()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_15

    .line 75
    monitor-enter p0

    .line 76
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_14

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    .line 79
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_18

    .line 82
    :cond_15
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->children:Ljava/util/Set;

    return-object v0

    .line 79
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getDurationAsMilliseconds()J
    .registers 5

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    iget-wide v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationAsSeconds()F
    .registers 5

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    iget-wide v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getParams()Ljava/util/Map;
    .registers 4
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
    .line 86
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->params:Ljava/util/Map;

    if-nez v0, :cond_11

    .line 87
    monitor-enter p0

    .line 88
    :try_start_5
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->params:Ljava/util/Map;

    if-nez v0, :cond_10

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->params:Ljava/util/Map;

    .line 91
    :cond_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_21

    .line 93
    :cond_11
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->params:Ljava/util/Map;

    const-string v1, "type"

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/Trace;->type:Lcom/mqunar/necro/agent/tracing/TraceType;

    invoke-virtual {v2}, Lcom/mqunar/necro/agent/tracing/TraceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->params:Ljava/util/Map;

    return-object v0

    .line 91
    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public getType()Lcom/mqunar/necro/agent/tracing/TraceType;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->type:Lcom/mqunar/necro/agent/tracing/TraceType;

    return-object v0
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/Trace;->isComplete:Z

    return v0
.end method

.method public setAnnotationParams(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mqunar/necro/agent/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    .line 100
    return-void
.end method

.method public setType(Lcom/mqunar/necro/agent/tracing/TraceType;)V
    .registers 2

    .prologue
    .line 150
    iput-object p1, p0, Lcom/mqunar/necro/agent/tracing/Trace;->type:Lcom/mqunar/necro/agent/tracing/TraceType;

    .line 151
    return-void
.end method
