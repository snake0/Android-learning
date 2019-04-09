.class public abstract Lorg/apache/commons/io/input/ProxyReader;
.super Ljava/io/FilterReader;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected afterRead(I)V
    .registers 2

    .prologue
    .line 244
    return-void
.end method

.method protected beforeRead(I)V
    .registers 2

    .prologue
    .line 224
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 167
    :goto_5
    return-void

    .line 164
    :catch_6
    move-exception v0

    .line 165
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2

    .prologue
    .line 256
    throw p1
.end method

.method public declared-synchronized mark(I)V
    .registers 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->mark(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    .line 181
    :goto_6
    monitor-exit p0

    return-void

    .line 178
    :catch_8
    move-exception v0

    .line 179
    :try_start_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 177
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 55
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 56
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 57
    if-eq v0, v1, :cond_12

    :goto_e
    invoke-virtual {p0, v2}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_14

    .line 61
    :goto_11
    return v0

    :cond_12
    move v2, v1

    .line 57
    goto :goto_e

    .line 59
    :catch_14
    move-exception v0

    .line 60
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    move v0, v1

    .line 61
    goto :goto_11
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .registers 3

    .prologue
    .line 115
    if-eqz p1, :cond_13

    :try_start_2
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    :goto_6
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 116
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read(Ljava/nio/CharBuffer;)I

    move-result v0

    .line 117
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_15

    .line 121
    :goto_12
    return v0

    .line 115
    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    .line 119
    :catch_15
    move-exception v0

    .line 120
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 121
    const/4 v0, -0x1

    goto :goto_12
.end method

.method public read([C)I
    .registers 3

    .prologue
    .line 74
    if-eqz p1, :cond_10

    :try_start_2
    array-length v0, p1

    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 75
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1}, Ljava/io/Reader;->read([C)I

    move-result v0

    .line 76
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_12

    .line 80
    :goto_f
    return v0

    .line 74
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 78
    :catch_12
    move-exception v0

    .line 79
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 80
    const/4 v0, -0x1

    goto :goto_f
.end method

.method public read([CII)I
    .registers 5

    .prologue
    .line 95
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/input/ProxyReader;->beforeRead(I)V

    .line 96
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 97
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->afterRead(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 101
    :goto_c
    return v0

    .line 99
    :catch_d
    move-exception v0

    .line 100
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 101
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public ready()Z
    .registers 2

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 152
    :goto_6
    return v0

    .line 150
    :catch_7
    move-exception v0

    .line 151
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 152
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public declared-synchronized reset()V
    .registers 2

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    .line 194
    :goto_6
    monitor-exit p0

    return-void

    .line 191
    :catch_8
    move-exception v0

    .line 192
    :try_start_9
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 190
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 5

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ProxyReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    .line 137
    :goto_6
    return-wide v0

    .line 135
    :catch_7
    move-exception v0

    .line 136
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/ProxyReader;->handleIOException(Ljava/io/IOException;)V

    .line 137
    const-wide/16 v0, 0x0

    goto :goto_6
.end method
