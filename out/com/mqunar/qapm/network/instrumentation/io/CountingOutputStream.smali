.class public final Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerSource;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:J

.field private final c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    .line 12
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-direct {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;-><init>()V

    iput-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    .line 15
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a:Ljava/io/OutputStream;

    .line 16
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_14

    .line 81
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    invoke-direct {v1, p0, v2, v3}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->notifyStreamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V

    .line 84
    :cond_14
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    if-nez v0, :cond_14

    .line 88
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    new-instance v1, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;

    iget-wide v2, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->notifyStreamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V

    .line 91
    :cond_14
    return-void
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V
    .registers 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->addStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 20
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 72
    invoke-direct {p0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    .line 77
    return-void

    .line 73
    :catch_9
    move-exception v0

    .line 74
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 75
    throw v0
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 67
    return-void

    .line 63
    :catch_6
    move-exception v0

    .line 64
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 65
    throw v0
.end method

.method public getCount()J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    return-wide v0
.end method

.method public removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V
    .registers 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->c:Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;

    invoke-virtual {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListenerManager;->removeStreamCompleteListener(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;)V

    .line 24
    return-void
.end method

.method public write(I)V
    .registers 6

    .prologue
    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 33
    iget-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 38
    return-void

    .line 34
    :catch_d
    move-exception v0

    .line 35
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 36
    throw v0
.end method

.method public write([B)V
    .registers 6

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 43
    iget-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 48
    return-void

    .line 44
    :catch_d
    move-exception v0

    .line 45
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 46
    throw v0
.end method

.method public write([BII)V
    .registers 8

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 53
    iget-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->b:J
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 58
    return-void

    .line 54
    :catch_c
    move-exception v0

    .line 55
    invoke-direct {p0, v0}, Lcom/mqunar/qapm/network/instrumentation/io/CountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 56
    throw v0
.end method
