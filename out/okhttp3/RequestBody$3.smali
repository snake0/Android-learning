.class final Lokhttp3/RequestBody$3;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field final synthetic val$contentType:Lokhttp3/MediaType;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 105
    iput-object p1, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 4

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 117
    :try_start_1
    iget-object v0, p0, Lokhttp3/RequestBody$3;->val$file:Ljava/io/File;

    invoke-static {v0}, Lokio/Okio;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    .line 118
    invoke-interface {p1, v1}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    .line 120
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 122
    return-void

    .line 120
    :catchall_e
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
