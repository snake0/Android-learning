.class Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private final connMgr:Lorg/apache/http/conn/ClientConnectionManager;

.field private volatile shutdown:Z


# direct methods
.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    .line 135
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 140
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->shutdown:Z

    if-nez v0, :cond_22

    .line 141
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_21

    .line 142
    const-wide/16 v0, 0xbb8

    :try_start_7
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 143
    iget-boolean v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->shutdown:Z

    if-nez v0, :cond_1c

    .line 144
    iget-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 145
    iget-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->connMgr:Lorg/apache/http/conn/ClientConnectionManager;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 147
    :cond_1c
    monitor-exit p0

    goto :goto_0

    .line 148
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_21} :catch_21

    .line 150
    :catch_21
    move-exception v0

    .line 154
    :cond_22
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->shutdown:Z

    .line 160
    monitor-enter p0

    .line 161
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 162
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method
