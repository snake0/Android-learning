.class public abstract Lorg/apache/commons/io/input/ProxyInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .registers 2

    .prologue
    .line 221
    return-void
.end method

.method public available()I
    .registers 2

    .prologue
    .line 131
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v0

    .line 134
    :goto_4
    return v0

    .line 132
    :catch_5
    move-exception v0

    .line 133
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 134
    const/4 v0, 0x0

    goto :goto_4
.end method

.method protected beforeRead(I)V
    .registers 2

    .prologue
    .line 201
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 149
    :goto_5
    return-void

    .line 146
    :catch_6
    move-exception v0

    .line 147
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2

    .prologue
    .line 233
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 57
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 58
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 59
    if-eq v0, v1, :cond_12

    :goto_e
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_14

    .line 63
    :goto_11
    return v0

    :cond_12
    move v2, v1

    .line 59
    goto :goto_e

    .line 61
    :catch_14
    move-exception v0

    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    move v0, v1

    .line 63
    goto :goto_11
.end method

.method public read([B)I
    .registers 3

    .prologue
    .line 76
    if-eqz p1, :cond_10

    :try_start_2
    array-length v0, p1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 77
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 78
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_12

    .line 82
    :goto_f
    return v0

    .line 76
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 80
    :catch_12
    move-exception v0

    .line 81
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 82
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public read([BII)I
    .registers 5

    .prologue
    .line 97
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyInputStream;->beforeRead(I)V

    .line 98
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 99
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->afterRead(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 103
    :goto_c
    return v0

    .line 101
    :catch_d
    move-exception v0

    .line 102
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 103
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    .line 171
    :goto_6
    monitor-exit p0

    return-void

    .line 168
    :catch_8
    move-exception v0

    .line 169
    :try_start_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 167
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    .line 119
    :goto_6
    return-wide v0

    .line 117
    :catch_7
    move-exception v0

    .line 118
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyInputStream;->handleIOException(Ljava/io/IOException;)V

    .line 119
    const-wide/16 v0, 0x0

    goto :goto_6
.end method
