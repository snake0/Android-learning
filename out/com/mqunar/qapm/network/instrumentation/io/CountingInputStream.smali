.class public final Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;


# static fields
.field public static final DEFAULT_RESPONSE_BODY_LIMIT:I = 0x800

.field private static final f:Lcom/mqunar/qapm/logging/AgentLog;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:J

.field private final c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

.field private final d:Ljava/nio/ByteBuffer;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/mqunar/qapm/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->f:Lcom/mqunar/qapm/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 19
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    .line 25
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    .line 26
    iget-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    if-eqz v0, :cond_23

    .line 27
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->fillBuffer()V

    .line 33
    :goto_22
    return-void

    .line 30
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 19
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    .line 36
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    .line 37
    iput-boolean p2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    .line 38
    if-eqz p2, :cond_23

    .line 39
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->fillBuffer()V

    .line 45
    :goto_22
    return-void

    .line 42
    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    goto :goto_22
.end method

.method private a()I
    .registers 2

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    goto :goto_7
.end method

.method private a([B)I
    .registers 4

    .prologue
    .line 265
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a([BII)I

    move-result v0

    return v0
.end method

.method private a([BII)I
    .registers 6

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    const/4 v0, -0x1

    .line 274
    :goto_7
    return v0

    .line 272
    :cond_8
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 273
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 274
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_7
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 6

    .prologue
    .line 320
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_14

    .line 321
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->notifyStreamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V

    .line 324
    :cond_14
    return-void
.end method

.method private a(J)Z
    .registers 5

    .prologue
    .line 279
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private c()V
    .registers 5

    .prologue
    .line 313
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_14

    .line 314
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    invoke-direct {v1, p0, v2, v3}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->notifyStreamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V

    .line 317
    :cond_14
    return-void
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 49
    return-void
.end method

.method public available()I
    .registers 3

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-boolean v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    if-eqz v1, :cond_b

    .line 218
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 222
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_13

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 223
    :catch_13
    move-exception v0

    .line 224
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 225
    throw v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 232
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 237
    return-void

    .line 233
    :catch_9
    move-exception v0

    .line 234
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 235
    throw v0
.end method

.method public fillBuffer()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_d

    .line 288
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_e

    .line 310
    :cond_d
    :goto_d
    return-void

    .line 292
    :cond_e
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 293
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    monitor-enter v2

    .line 297
    :try_start_13
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_25} :catch_33
    .catchall {:try_start_13 .. :try_end_25} :catchall_30

    move-result v0

    .line 302
    :goto_26
    if-gtz v0, :cond_3f

    .line 303
    :try_start_28
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 307
    :cond_2e
    :goto_2e
    monitor-exit v2

    goto :goto_d

    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_30

    throw v0

    .line 298
    :catch_33
    move-exception v0

    .line 299
    :try_start_34
    sget-object v3, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->f:Lcom/mqunar/qapm/logging/AgentLog;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    move v0, v1

    goto :goto_26

    .line 304
    :cond_3f
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 305
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_30

    goto :goto_2e
.end method

.method public getBufferAsString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2f

    .line 332
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 333
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    monitor-enter v1

    .line 334
    :try_start_9
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v2, v0, [B

    .line 336
    const/4 v0, 0x0

    :goto_12
    iget-object v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v0, v3, :cond_25

    .line 337
    iget-object v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 340
    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    monitor-exit v1

    .line 343
    :goto_2b
    return-object v0

    .line 341
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_2c

    throw v0

    .line 343
    :cond_2f
    const-string v0, ""

    goto :goto_2b
.end method

.method public mark(I)V
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 243
    :cond_b
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x1

    .line 57
    iget-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    if-eqz v0, :cond_21

    .line 58
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 59
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    monitor-enter v1

    .line 60
    const-wide/16 v2, 0x1

    :try_start_d
    invoke-direct {p0, v2, v3}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(J)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 61
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a()I

    move-result v0

    .line 62
    if-ltz v0, :cond_1e

    .line 63
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 66
    :cond_1e
    monitor-exit v1

    .line 79
    :goto_1f
    return v0

    .line 68
    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_34

    .line 72
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 73
    if-ltz v0, :cond_37

    .line 74
    iget-wide v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2e} :catch_2f

    goto :goto_1f

    .line 80
    :catch_2f
    move-exception v0

    .line 81
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 82
    throw v0

    .line 68
    :catchall_34
    move-exception v0

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0

    .line 76
    :cond_37
    :try_start_37
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_2f

    goto :goto_1f
.end method

.method public read([B)I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 87
    .line 89
    array-length v0, p1

    .line 91
    iget-boolean v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    if-eqz v2, :cond_4a

    .line 92
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 93
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    monitor-enter v2

    .line 94
    int-to-long v3, v0

    :try_start_c
    invoke-direct {p0, v3, v4}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(J)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 95
    invoke-direct {p0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a([B)I

    move-result v0

    .line 96
    if-ltz v0, :cond_20

    .line 97
    iget-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 98
    monitor-exit v2

    .line 126
    :goto_1f
    return v0

    .line 101
    :cond_20
    new-instance v0, Ljava/io/IOException;

    const-string v1, "readBufferBytes failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v0

    .line 104
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 105
    if-lez v3, :cond_49

    .line 106
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v3}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a([BII)I

    move-result v1

    .line 107
    if-gez v1, :cond_42

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "partial read from buffer failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_42
    sub-int/2addr v0, v1

    .line 112
    iget-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 114
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_28

    .line 118
    :cond_4a
    :try_start_4a
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 119
    if-ltz v0, :cond_5a

    .line 120
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 121
    add-int/2addr v0, v1

    goto :goto_1f

    .line 122
    :cond_5a
    if-gtz v1, :cond_89

    .line 123
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5f} :catch_60

    goto :goto_1f

    .line 128
    :catch_60
    move-exception v0

    .line 129
    sget-object v1, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->f:Lcom/mqunar/qapm/logging/AgentLog;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 130
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOTIFY STREAM ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 133
    throw v0

    :cond_89
    move v0, v1

    .line 126
    goto :goto_1f
.end method

.method public read([BII)I
    .registers 11

    .prologue
    .line 138
    .line 139
    const/4 v1, 0x0

    .line 142
    iget-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    if-eqz v0, :cond_48

    .line 143
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 144
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    monitor-enter v2

    .line 145
    int-to-long v3, p3

    :try_start_b
    invoke-direct {p0, v3, v4}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a([BII)I

    move-result v0

    .line 147
    if-ltz v0, :cond_1f

    .line 148
    iget-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 149
    monitor-exit v2

    .line 177
    :goto_1e
    return v0

    .line 152
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "readBufferBytes failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v0

    .line 155
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 156
    if-lez v0, :cond_47

    .line 157
    invoke-direct {p0, p1, p2, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a([BII)I

    move-result v1

    .line 158
    if-gez v1, :cond_40

    .line 159
    new-instance v0, Ljava/io/IOException;

    const-string v1, "partial read from buffer failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_40
    sub-int/2addr p3, v1

    .line 163
    iget-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 165
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_27

    .line 169
    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    add-int v2, p2, v1

    invoke-virtual {v0, p1, v2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 170
    if-ltz v0, :cond_5a

    .line 171
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 172
    add-int/2addr v0, v1

    goto :goto_1e

    .line 173
    :cond_5a
    if-gtz v1, :cond_65

    .line 174
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5f} :catch_60

    goto :goto_1e

    .line 179
    :catch_60
    move-exception v0

    .line 180
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 181
    throw v0

    :cond_65
    move v0, v1

    .line 177
    goto :goto_1e
.end method

.method public removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 53
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 252
    :try_start_6
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_c

    .line 258
    :cond_b
    return-void

    .line 253
    :catch_c
    move-exception v0

    .line 254
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 255
    throw v0
.end method

.method public setBufferingEnabled(Z)V
    .registers 2

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    .line 328
    return-void
.end method

.method public skip(J)J
    .registers 7

    .prologue
    .line 186
    .line 187
    iget-boolean v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->e:Z

    if-eqz v0, :cond_41

    .line 188
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    .line 189
    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    monitor-enter v1

    .line 190
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 191
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    long-to-int v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    .line 193
    monitor-exit v1

    .line 208
    :goto_1b
    return-wide p1

    .line 196
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v2, v0

    sub-long/2addr p1, v2

    .line 197
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_35

    .line 198
    new-instance v0, Ljava/io/IOException;

    const-string v2, "partial read from buffer (skip) failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_32

    throw v0

    .line 201
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 202
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_35 .. :try_end_41} :catchall_32

    .line 206
    :cond_41
    :try_start_41
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    .line 207
    iget-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->b:J
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4c} :catch_4d

    goto :goto_1b

    .line 209
    :catch_4d
    move-exception v0

    .line 210
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingInputStream;->a(Ljava/lang/Exception;)V

    .line 211
    throw v0
.end method
