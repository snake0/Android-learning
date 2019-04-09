.class abstract Lokhttp3/internal/huc/OutputStreamRequestBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field closed:Z

.field private expectedContentLength:J

.field private outputStream:Ljava/io/OutputStream;

.field private timeout:Lokio/Timeout;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->expectedContentLength:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initOutputStream(Lokio/BufferedSink;J)V
    .registers 5

    .prologue
    .line 42
    invoke-interface {p1}, Lokio/BufferedSink;->timeout()Lokio/Timeout;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->timeout:Lokio/Timeout;

    .line 43
    iput-wide p2, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->expectedContentLength:J

    .line 47
    new-instance v0, Lokhttp3/internal/huc/OutputStreamRequestBody$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lokhttp3/internal/huc/OutputStreamRequestBody$1;-><init>(Lokhttp3/internal/huc/OutputStreamRequestBody;JLokio/BufferedSink;)V

    iput-object v0, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->outputStream:Ljava/io/OutputStream;

    .line 86
    return-void
.end method

.method public final isClosed()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->closed:Z

    return v0
.end method

.method public final outputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public prepareToSendRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .registers 2

    .prologue
    .line 109
    return-object p1
.end method

.method public final timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lokhttp3/internal/huc/OutputStreamRequestBody;->timeout:Lokio/Timeout;

    return-object v0
.end method
