.class public Lcom/mqunar/necro/agent/sample/Sampler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;


# static fields
.field private static final KB_IN_MB:I = 0x400

.field private static final PID:[I

.field private static cpuSamplingDisabled:Z

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;

.field private static sampler:Lcom/mqunar/necro/agent/sample/Sampler;

.field private static final samplerLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private final activityManager:Landroid/app/ActivityManager;

.field private appStatFile:Ljava/io/RandomAccessFile;

.field private final isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private lastAppCpuTime:Ljava/lang/Long;

.field private lastCpuTime:Ljava/lang/Long;

.field private procStatFile:Ljava/io/RandomAccessFile;

.field private final samples:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
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
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    aput v1, v0, v2

    sput-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->PID:[I

    .line 31
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 34
    sput-boolean v2, Lcom/mqunar/necro/agent/sample/Sampler;->cpuSamplingDisabled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->activityManager:Landroid/app/ActivityManager;

    .line 45
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    sget-object v1, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->MEMORY:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    sget-object v1, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->CPU:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 224
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 225
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_a

    .line 227
    :cond_1a
    return-void
.end method

.method private copySamples()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 171
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    if-nez v0, :cond_14

    .line 172
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    :goto_13
    return-object v0

    .line 175
    :cond_14
    new-instance v2, Ljava/util/EnumMap;

    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    iget-object v0, v0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/util/EnumMap;)V

    .line 176
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    iget-object v0, v0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 178
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 179
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    .line 180
    new-instance v4, Ljava/util/ArrayList;

    sget-object v1, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    iget-object v1, v1, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 183
    :cond_48
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 184
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_13
.end method

.method private getSampleCollection(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mqunar/necro/agent/sample/Sample$SampleType;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/mqunar/necro/agent/sample/Sample;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->samples:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 50
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 51
    new-instance v0, Lcom/mqunar/necro/agent/sample/Sampler;

    invoke-direct {v0, p0}, Lcom/mqunar/necro/agent/sample/Sampler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    .line 52
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 53
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    invoke-static {v0}, Lcom/mqunar/necro/agent/tracing/TraceMachine;->addTraceListener(Lcom/mqunar/necro/agent/tracing/ITraceLifecycleAware;)V

    .line 54
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler Initialized"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private resetCpuSampler()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 155
    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    .line 156
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1d

    .line 158
    :try_start_d
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 159
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1d} :catch_1e

    .line 167
    :cond_1d
    :goto_1d
    return-void

    .line 162
    :catch_1e
    move-exception v0

    .line 163
    sget-object v1, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hit while resetting CPU sampler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method private sample()V
    .registers 3

    .prologue
    .line 81
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler sample"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    :try_start_c
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->sampleMemory()Lcom/mqunar/necro/agent/sample/Sample;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1b

    .line 86
    sget-object v1, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->MEMORY:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    invoke-direct {p0, v1}, Lcom/mqunar/necro/agent/sample/Sampler;->getSampleCollection(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_1b
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->sampleCpu()Lcom/mqunar/necro/agent/sample/Sample;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_2a

    .line 91
    sget-object v1, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->CPU:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    invoke-direct {p0, v1}, Lcom/mqunar/necro/agent/sample/Sampler;->getSampleCollection(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_30

    .line 94
    :cond_2a
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 96
    return-void

    .line 94
    :catchall_30
    move-exception v0

    sget-object v1, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private sampleCpu()Lcom/mqunar/necro/agent/sample/Sample;
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 115
    sget-boolean v1, Lcom/mqunar/necro/agent/sample/Sampler;->cpuSamplingDisabled:Z

    if-eqz v1, :cond_6

    .line 148
    :goto_5
    return-object v0

    .line 119
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_b5

    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_b5

    .line 120
    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 121
    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 127
    :goto_1c
    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 128
    iget-object v2, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 129
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 131
    const/4 v3, 0x2

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x6

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/4 v5, 0x7

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const/16 v5, 0x8

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 132
    const/16 v1, 0xd

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v1, 0xe

    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v5, v1

    .line 133
    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    if-nez v1, :cond_e9

    iget-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    if-nez v1, :cond_e9

    .line 134
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 135
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_91} :catch_93

    goto/16 :goto_5

    .line 144
    :catch_93
    move-exception v1

    .line 145
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mqunar/necro/agent/sample/Sampler;->cpuSamplingDisabled:Z

    .line 146
    sget-object v2, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception hit while CPU sampling: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 123
    :cond_b5
    :try_start_b5
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "/proc/stat"

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->procStatFile:Ljava/io/RandomAccessFile;

    .line 124
    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mqunar/necro/agent/sample/Sampler;->PID:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/stat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mqunar/necro/agent/sample/Sampler;->appStatFile:Ljava/io/RandomAccessFile;

    goto/16 :goto_1c

    .line 138
    :cond_e9
    new-instance v1, Lcom/mqunar/necro/agent/sample/Sample;

    sget-object v2, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->CPU:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    invoke-direct {v1, v2}, Lcom/mqunar/necro/agent/sample/Sample;-><init>(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)V

    .line 139
    iget-object v2, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v5, v7

    long-to-double v7, v7

    iget-object v2, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long v9, v3, v9

    long-to-double v9, v9

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v9

    invoke-virtual {v1, v7, v8}, Lcom/mqunar/necro/agent/sample/Sample;->setSampleValue(D)V

    .line 140
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastCpuTime:Ljava/lang/Long;

    .line 141
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/mqunar/necro/agent/sample/Sampler;->lastAppCpuTime:Ljava/lang/Long;
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_115} :catch_93

    move-object v0, v1

    .line 142
    goto/16 :goto_5
.end method

.method private sampleMemory()Lcom/mqunar/necro/agent/sample/Sample;
    .registers 2

    .prologue
    .line 99
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    iget-object v0, v0, Lcom/mqunar/necro/agent/sample/Sampler;->activityManager:Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/mqunar/necro/agent/sample/Sampler;->sampleMemory(Landroid/app/ActivityManager;)Lcom/mqunar/necro/agent/sample/Sample;

    move-result-object v0

    goto :goto_5
.end method

.method private sampleMemory(Landroid/app/ActivityManager;)Lcom/mqunar/necro/agent/sample/Sample;
    .registers 7

    .prologue
    .line 103
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->PID:[I

    invoke-virtual {p1, v0}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 104
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    .line 105
    if-ltz v1, :cond_1e

    .line 106
    new-instance v0, Lcom/mqunar/necro/agent/sample/Sample;

    sget-object v2, Lcom/mqunar/necro/agent/sample/Sample$SampleType;->MEMORY:Lcom/mqunar/necro/agent/sample/Sample$SampleType;

    invoke-direct {v0, v2}, Lcom/mqunar/necro/agent/sample/Sample;-><init>(Lcom/mqunar/necro/agent/sample/Sample$SampleType;)V

    .line 107
    int-to-double v1, v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/necro/agent/sample/Sample;->setSampleValue(D)V

    .line 110
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private start()V
    .registers 3

    .prologue
    .line 193
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler start"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 195
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->sampler:Lcom/mqunar/necro/agent/sample/Sampler;

    if-nez v0, :cond_16

    .line 196
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 206
    :goto_15
    return-void

    .line 198
    :cond_16
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_27

    .line 199
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->clear()V

    .line 200
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    :cond_27
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 203
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->sample()V

    .line 204
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler started"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private stop()V
    .registers 3

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->sample()V

    .line 210
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 211
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    .line 212
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 219
    :goto_15
    return-void

    .line 214
    :cond_16
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->resetCpuSampler()V

    .line 216
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->samplerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler stopped"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_15
.end method


# virtual methods
.method public onEnterMethod()V
    .registers 3

    .prologue
    .line 58
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler onEnterMethod"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/mqunar/necro/agent/sample/Sampler;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_12

    .line 60
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->start()V

    .line 62
    :cond_12
    return-void
.end method

.method public onExitMethod()V
    .registers 3

    .prologue
    .line 65
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler onExitMethod"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onTraceComplete(Lcom/mqunar/necro/agent/tracing/ActivityTrace;)V
    .registers 4

    .prologue
    .line 74
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler onTraceComplete"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->stop()V

    .line 76
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->copySamples()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mqunar/necro/agent/tracing/ActivityTrace;->setVitals(Ljava/util/Map;)V

    .line 77
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->clear()V

    .line 78
    return-void
.end method

.method public onTraceStart(Lcom/mqunar/necro/agent/tracing/ActivityTrace;)V
    .registers 4

    .prologue
    .line 69
    sget-object v0, Lcom/mqunar/necro/agent/sample/Sampler;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v1, "Sampler onTraceStart"

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/mqunar/necro/agent/sample/Sampler;->start()V

    .line 71
    return-void
.end method
