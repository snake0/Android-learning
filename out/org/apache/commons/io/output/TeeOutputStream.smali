.class public Lorg/apache/commons/io/output/TeeOutputStream;
.super Lorg/apache/commons/io/output/ProxyOutputStream;
.source "SourceFile"


# instance fields
.field protected branch:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    iput-object p2, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/io/output/ProxyOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 105
    iget-object v0, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 107
    return-void

    .line 105
    :catchall_9
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    throw v0
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0}, Lorg/apache/commons/io/output/ProxyOutputStream;->flush()V

    .line 86
    iget-object v0, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 87
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 3

    .prologue
    .line 75
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write(I)V

    .line 76
    iget-object v0, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 77
    monitor-exit p0

    return-void

    .line 75
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .registers 3

    .prologue
    .line 51
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([B)V

    .line 52
    iget-object v0, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 5

    .prologue
    .line 64
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->write([BII)V

    .line 65
    iget-object v0, p0, Lorg/apache/commons/io/output/TeeOutputStream;->branch:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
