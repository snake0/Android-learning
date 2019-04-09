.class public Lcom/mqunar/necro/agent/tracing/ActivityTrace;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/tracing/Harvestable;


# instance fields
.field private complete:Z

.field private lastUpdatedAt:J

.field private final log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field private final missingChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

.field private startedAt:J

.field private final traces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/mqunar/necro/agent/tracing/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private vitals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->complete:Z

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    .line 31
    iput-object p1, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    .line 32
    iget-wide v0, p1, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    iput-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 33
    iget-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->lastUpdatedAt:J

    iput-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->startedAt:J

    .line 34
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "ACTIVITY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method private toSaveData()Lcom/mqunar/necro/agent/bean/UIData;
    .registers 11

    .prologue
    .line 127
    new-instance v2, Lcom/mqunar/necro/agent/bean/UIData;

    invoke-direct {v2}, Lcom/mqunar/necro/agent/bean/UIData;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->name:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-wide v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->entryTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->startTime:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-wide v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->exitTime:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->appearTime:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->disposeTime:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->visibleTime:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->fps:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-wide v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->applicationTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mqunar/necro/agent/bean/UIData;->applicationTime:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->vitals:Ljava/util/Map;

    if-eqz v0, :cond_cb

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->vitals:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 144
    :cond_51
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 145
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 147
    if-eqz v1, :cond_51

    .line 148
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_69
    :goto_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/necro/agent/sample/Sample;

    .line 149
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->CPU:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    if-ne v7, v8, :cond_9e

    .line 150
    new-instance v7, Lcom/mqunar/necro/agent/bean/CpuData;

    invoke-direct {v7}, Lcom/mqunar/necro/agent/bean/CpuData;-><init>()V

    .line 151
    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/Sample;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/mqunar/necro/agent/bean/CpuData;->time:Ljava/lang/String;

    .line 152
    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/Sample;->getSampleValue()Lcom/mqunar/necro/agent/sample/SampleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mqunar/necro/agent/bean/CpuData;->cpu:Ljava/lang/String;

    .line 153
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 154
    :cond_9e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->MEMORY:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    if-ne v7, v8, :cond_69

    .line 155
    new-instance v7, Lcom/mqunar/necro/agent/bean/MemData;

    invoke-direct {v7}, Lcom/mqunar/necro/agent/bean/MemData;-><init>()V

    .line 156
    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/Sample;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/mqunar/necro/agent/bean/MemData;->time:Ljava/lang/String;

    .line 157
    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/Sample;->getSampleValue()Lcom/mqunar/necro/agent/sample/SampleValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mqunar/necro/agent/sample/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/mqunar/necro/agent/bean/MemData;->mem:Ljava/lang/String;

    .line 158
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 163
    :cond_c7
    iput-object v3, v2, Lcom/mqunar/necro/agent/bean/UIData;->cpuUsage:Ljava/util/List;

    .line 164
    iput-object v4, v2, Lcom/mqunar/necro/agent/bean/UIData;->memoryUsage:Ljava/util/List;

    .line 166
    :cond_cb
    return-object v2
.end method


# virtual methods
.method public addCompletedTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 6

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 48
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    iget-object v1, p1, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-wide v0, p1, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-wide v2, v2, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 51
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-wide v1, p1, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    iput-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    .line 54
    :cond_21
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing children: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 57
    return-void
.end method

.method public addTrace(Lcom/mqunar/necro/agent/tracing/Trace;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    iget-object v1, p1, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 44
    return-void
.end method

.method public complete()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 75
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityTrace Completing trace of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " traces)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-wide v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    .line 78
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->exitTimestamp:J

    .line 81
    :cond_58
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 82
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iput-object v5, v0, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 83
    iput-boolean v4, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->complete:Z

    .line 90
    :goto_66
    return-void

    .line 85
    :cond_67
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iput-object v5, v0, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 86
    iput-boolean v4, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->complete:Z

    .line 88
    invoke-direct {p0}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->toSaveData()Lcom/mqunar/necro/agent/bean/UIData;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/necro/agent/Agent;->dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V

    goto :goto_66
.end method

.method public discard()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding trace of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v2, v2, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " traces)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mqunar/necro/agent/tracing/Trace;->traceMachine:Lcom/mqunar/necro/agent/tracing/TraceMachine;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->complete:Z

    .line 72
    return-void
.end method

.method public getActivityName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 113
    const-string v0, "<activity>"

    .line 114
    iget-object v1, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    if-eqz v1, :cond_19

    .line 115
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->displayName:Ljava/lang/String;

    .line 116
    if-eqz v0, :cond_19

    .line 117
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 118
    if-lez v1, :cond_19

    .line 119
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_19
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->rootTrace:Lcom/mqunar/necro/agent/tracing/Trace;

    iget-object v0, v0, Lcom/mqunar/necro/agent/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getLastUpdatedAt()J
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->lastUpdatedAt:J

    return-wide v0
.end method

.method public getStartedAt()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->startedAt:J

    return-wide v0
.end method

.method public getTraces()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/mqunar/necro/agent/tracing/Trace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hasMissingChildren()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->complete:Z

    return v0
.end method

.method public setLastUpdatedAt(J)V
    .registers 3

    .prologue
    .line 101
    iput-wide p1, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 102
    return-void
.end method

.method public setVitals(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->vitals:Ljava/util/Map;

    .line 98
    return-void
.end method
