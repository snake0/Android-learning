.class final Lokhttp3/ResponseBody$BomAwareReader;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private closed:Z

.field private delegate:Ljava/io/Reader;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Ljava/nio/charset/Charset;)V
    .registers 3

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 239
    iput-object p1, p0, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    .line 240
    iput-object p2, p0, Lokhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    .line 241
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->closed:Z

    .line 256
    iget-object v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    if-eqz v0, :cond_d

    .line 257
    iget-object v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 261
    :goto_c
    return-void

    .line 259
    :cond_d
    iget-object v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    goto :goto_c
.end method

.method public read([CII)I
    .registers 7

    .prologue
    .line 244
    iget-boolean v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->closed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_c
    iget-object v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    .line 247
    if-nez v0, :cond_25

    .line 248
    iget-object v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    iget-object v1, p0, Lokhttp3/ResponseBody$BomAwareReader;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lokhttp3/internal/Util;->bomAwareCharset(Lokio/BufferedSource;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 249
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lokhttp3/ResponseBody$BomAwareReader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->inputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lokhttp3/ResponseBody$BomAwareReader;->delegate:Ljava/io/Reader;

    .line 251
    :cond_25
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method
