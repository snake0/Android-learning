.class abstract Lcom/mqunar/hy/res/libtask/DecompressingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "SourceFile"


# static fields
.field private static final BUFFER_SIZE:I = 0x800


# instance fields
.field private content:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 61
    return-void
.end method

.method private getDecompressingStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 68
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-object v0

    return-object v0

    .line 69
    :catch_b
    move-exception v1

    .line 70
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 71
    throw v1
.end method


# virtual methods
.method abstract decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->content:Ljava/io/InputStream;

    if-nez v0, :cond_12

    .line 82
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 84
    :cond_12
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->content:Ljava/io/InputStream;

    .line 86
    :goto_14
    return-object v0

    :cond_15
    invoke-direct {p0}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->getDecompressingStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_14
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6

    .prologue
    .line 95
    if-nez p1, :cond_a

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_a
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 100
    const/16 v0, 0x800

    :try_start_10
    new-array v0, v0, [B

    .line 102
    :goto_12
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    .line 103
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_12

    .line 106
    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 108
    return-void
.end method
