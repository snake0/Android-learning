.class public abstract Lcom/baidu/techain/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 31
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    new-array v1, v5, [B

    .line 34
    :goto_a
    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 35
    invoke-virtual {v0, v1, v4, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_a

    .line 37
    :cond_15
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 38
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 39
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 40
    return-void
.end method

.method public static b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 8

    .prologue
    const/16 v5, 0x800

    const/4 v4, 0x0

    .line 55
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 58
    new-array v1, v5, [B

    .line 59
    :goto_a
    invoke-virtual {v0, v1, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    .line 60
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_a

    .line 62
    :cond_15
    invoke-virtual {v0}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 63
    return-void
.end method
