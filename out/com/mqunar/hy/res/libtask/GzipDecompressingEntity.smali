.class public Lcom/mqunar/hy/res/libtask/GzipDecompressingEntity;
.super Lcom/mqunar/hy/res/libtask/DecompressingEntity;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 52
    return-void
.end method


# virtual methods
.method decorate(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public bridge synthetic getContent()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 76
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mqunar/hy/res/libtask/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
