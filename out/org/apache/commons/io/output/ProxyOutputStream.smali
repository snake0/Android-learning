.class public Lorg/apache/commons/io/output/ProxyOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected afterWrite(I)V
    .registers 2

    .prologue
    .line 154
    return-void
.end method

.method protected beforeWrite(I)V
    .registers 2

    .prologue
    .line 137
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 121
    :goto_5
    return-void

    .line 118
    :catch_6
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 108
    :goto_5
    return-void

    .line 105
    :catch_6
    move-exception v0

    .line 106
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_5
.end method

.method protected handleIOException(Ljava/io/IOException;)V
    .registers 2

    .prologue
    .line 166
    throw p1
.end method

.method public write(I)V
    .registers 3

    .prologue
    .line 54
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 55
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_e

    .line 60
    :goto_d
    return-void

    .line 57
    :catch_e
    move-exception v0

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_d
.end method

.method public write([B)V
    .registers 4

    .prologue
    .line 70
    if-eqz p1, :cond_f

    :try_start_2
    array-length v0, p1

    .line 71
    :goto_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 72
    iget-object v1, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_11

    .line 77
    :goto_e
    return-void

    .line 70
    :cond_f
    const/4 v0, 0x0

    goto :goto_3

    .line 74
    :catch_11
    move-exception v0

    .line 75
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_e
.end method

.method public write([BII)V
    .registers 5

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->beforeWrite(I)V

    .line 90
    iget-object v0, p0, Lorg/apache/commons/io/output/ProxyOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 91
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/ProxyOutputStream;->afterWrite(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 95
    :goto_b
    return-void

    .line 92
    :catch_c
    move-exception v0

    .line 93
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/ProxyOutputStream;->handleIOException(Ljava/io/IOException;)V

    goto :goto_b
.end method
