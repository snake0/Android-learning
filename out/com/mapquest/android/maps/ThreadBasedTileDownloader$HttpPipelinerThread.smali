.class Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;
.super Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;
.source "SourceFile"


# instance fields
.field final CLOSE_SOCKET:I

.field final CONNECTION_TIME_OUT:I

.field final DO_PROCESS:I

.field final FORCE_CLOSE_SOCKET:I

.field final STALE_CONNECTION_TIME_OUT:I

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field handler:Landroid/os/Handler;

.field private host:Ljava/lang/String;

.field inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue",
            "<",
            "Lcom/mapquest/android/maps/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private keepAliveTimeout:I

.field looper:Landroid/os/Looper;

.field private params:Lorg/apache/http/params/HttpParams;

.field private port:I

.field requestWriter:Lorg/apache/http/impl/io/HttpRequestWriter;

.field responseParser:Lorg/apache/http/impl/io/HttpResponseParser;

.field private socket:Ljava/net/Socket;

.field private socketIn:Lorg/apache/http/impl/io/SocketInputBuffer;

.field private socketOut:Lorg/apache/http/impl/io/SocketOutputBuffer;

.field final synthetic this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;)V
    .registers 5

    .prologue
    const/16 v2, 0x1388

    const/4 v1, 0x0

    .line 373
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->this$0:Lcom/mapquest/android/maps/ThreadBasedTileDownloader;

    .line 374
    invoke-direct {p0, p1, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$TileDownloadThread;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader;Lcom/mapquest/android/maps/ThreadBasedTileDownloader$1;)V

    .line 354
    iput v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->CONNECTION_TIME_OUT:I

    .line 355
    const/4 v0, 0x1

    iput v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->DO_PROCESS:I

    .line 356
    const/4 v0, 0x2

    iput v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->CLOSE_SOCKET:I

    .line 357
    const/4 v0, 0x3

    iput v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->FORCE_CLOSE_SOCKET:I

    .line 358
    const/16 v0, 0x7530

    iput v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->STALE_CONNECTION_TIME_OUT:I

    .line 360
    const-string v0, ""

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->host:Ljava/lang/String;

    .line 362
    iput v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->keepAliveTimeout:I

    .line 363
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    .line 366
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->requestWriter:Lorg/apache/http/impl/io/HttpRequestWriter;

    .line 367
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->responseParser:Lorg/apache/http/impl/io/HttpResponseParser;

    .line 368
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;-><init>(Ljava/util/Queue;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    .line 369
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 375
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    .line 376
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 377
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    const-string v1, "mqandroid/1.1"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method static synthetic access$500(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;Lcom/mapquest/android/maps/Tile;)V
    .registers 2

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->sendTileRequest(Lcom/mapquest/android/maps/Tile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;)V
    .registers 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->flushSocket()V

    return-void
.end method

.method static synthetic access$700(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;Lorg/apache/http/impl/io/HttpResponseParser;)[B
    .registers 3

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->readTileResponse(Lorg/apache/http/impl/io/HttpResponseParser;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;)I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->keepAliveTimeout:I

    return v0
.end method

.method private connect(Ljava/lang/String;I)V
    .registers 9

    .prologue
    const/16 v5, 0x5dc

    const/4 v4, 0x0

    .line 381
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    const/16 p2, 0x50

    .line 382
    :cond_8
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->host:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->port:I

    if-eq p2, v0, :cond_17

    .line 383
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->close()V

    .line 386
    :cond_17
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    if-nez v0, :cond_79

    .line 387
    iput-object p1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->host:Ljava/lang/String;

    .line 388
    iput p2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->port:I

    .line 389
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    .line 390
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_32

    .line 391
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 394
    :cond_32
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v4, v4}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 395
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 396
    new-instance v0, Lorg/apache/http/impl/io/SocketInputBuffer;

    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketIn:Lorg/apache/http/impl/io/SocketInputBuffer;

    .line 397
    new-instance v0, Lorg/apache/http/impl/io/SocketOutputBuffer;

    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketOut:Lorg/apache/http/impl/io/SocketOutputBuffer;

    .line 398
    new-instance v0, Lorg/apache/http/impl/io/HttpRequestWriter;

    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketOut:Lorg/apache/http/impl/io/SocketOutputBuffer;

    new-instance v2, Lorg/apache/http/message/BasicLineFormatter;

    invoke-direct {v2}, Lorg/apache/http/message/BasicLineFormatter;-><init>()V

    iget-object v3, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->requestWriter:Lorg/apache/http/impl/io/HttpRequestWriter;

    .line 399
    new-instance v0, Lorg/apache/http/impl/io/HttpResponseParser;

    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketIn:Lorg/apache/http/impl/io/SocketInputBuffer;

    new-instance v2, Lorg/apache/http/message/BasicLineParser;

    invoke-direct {v2}, Lorg/apache/http/message/BasicLineParser;-><init>()V

    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    iget-object v4, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->params:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/http/impl/io/HttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->responseParser:Lorg/apache/http/impl/io/HttpResponseParser;

    .line 402
    :cond_79
    return-void
.end method

.method private flushSocket()V
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketOut:Lorg/apache/http/impl/io/SocketOutputBuffer;

    if-eqz v0, :cond_9

    .line 478
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketOut:Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SocketOutputBuffer;->flush()V

    .line 481
    :cond_9
    return-void
.end method

.method private readTileResponse(Lorg/apache/http/impl/io/HttpResponseParser;)[B
    .registers 10

    .prologue
    const/16 v7, 0x1388

    .line 419
    invoke-virtual {p1}, Lorg/apache/http/impl/io/HttpResponseParser;->parse()Lorg/apache/http/HttpMessage;

    move-result-object v1

    move-object v0, v1

    .line 420
    check-cast v0, Lorg/apache/http/HttpResponse;

    .line 421
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 422
    const-string v3, "Content-Encoding"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 423
    if-eqz v3, :cond_19

    .line 424
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 427
    :cond_19
    const-string v3, "Content-Type"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 428
    if-eqz v3, :cond_24

    .line 429
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 432
    :cond_24
    const-string v3, "Content-Length"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    .line 433
    if-eqz v3, :cond_41

    .line 434
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 435
    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 436
    new-instance v5, Lorg/apache/http/impl/io/ContentLengthInputStream;

    iget-object v6, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketIn:Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v5, v6, v3, v4}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 439
    :cond_41
    const-string v3, "Transfer-Encoding"

    invoke-interface {v1, v3}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_63

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "chunked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_63

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 442
    new-instance v1, Lorg/apache/http/impl/io/ChunkedInputStream;

    iget-object v3, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketIn:Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 445
    :cond_63
    new-instance v1, Lorg/apache/http/message/BasicHeaderElementIterator;

    const-string v3, "Keep-Alive"

    invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    .line 447
    :cond_6e
    :goto_6e
    invoke-virtual {v1}, Lorg/apache/http/message/BasicHeaderElementIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 448
    invoke-virtual {v1}, Lorg/apache/http/message/BasicHeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;

    move-result-object v3

    .line 449
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-interface {v3}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 451
    if-eqz v3, :cond_6e

    const-string v5, "timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 453
    :try_start_8a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->keepAliveTimeout:I

    .line 454
    iget v3, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->keepAliveTimeout:I

    if-le v3, v7, :cond_6e

    .line 455
    const/16 v3, 0x1388

    iput v3, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->keepAliveTimeout:I
    :try_end_9a
    .catch Ljava/lang/NumberFormatException; {:try_start_8a .. :try_end_9a} :catch_9b

    goto :goto_6e

    .line 457
    :catch_9b
    move-exception v3

    goto :goto_6e

    .line 463
    :cond_9d
    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 464
    iget-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 465
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_c7

    .line 466
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 467
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 468
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 469
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 472
    :goto_c6
    return-object v0

    .line 471
    :cond_c7
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 472
    const/4 v0, 0x0

    goto :goto_c6
.end method

.method private sendTileRequest(Lcom/mapquest/android/maps/Tile;)V
    .registers 6

    .prologue
    .line 405
    new-instance v1, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/Tile;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->connect(Ljava/lang/String;I)V

    .line 407
    new-instance v2, Lorg/apache/http/message/BasicHttpRequest;

    const-string v0, "GET"

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v3

    if-lez v3, :cond_44

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_44
    const-string v1, "Host"

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->requestWriter:Lorg/apache/http/impl/io/HttpRequestWriter;

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/io/HttpRequestWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 416
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 502
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_a

    .line 504
    :try_start_5
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_15

    .line 510
    :cond_a
    :goto_a
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socket:Ljava/net/Socket;

    .line 511
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketIn:Lorg/apache/http/impl/io/SocketInputBuffer;

    .line 512
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->socketOut:Lorg/apache/http/impl/io/SocketOutputBuffer;

    .line 513
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->requestWriter:Lorg/apache/http/impl/io/HttpRequestWriter;

    .line 514
    iput-object v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->responseParser:Lorg/apache/http/impl/io/HttpResponseParser;

    .line 515
    return-void

    .line 505
    :catch_15
    move-exception v0

    goto :goto_a
.end method

.method public endQueue()V
    .registers 3

    .prologue
    .line 536
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_a

    .line 537
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    :cond_a
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 485
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 486
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->looper:Landroid/os/Looper;

    .line 487
    new-instance v0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;

    invoke-direct {v0, p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread$DownloadHandler;-><init>(Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    .line 488
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->size()I

    move-result v0

    if-lez v0, :cond_1e

    .line 489
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 492
    :cond_1e
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_2a

    .line 497
    :goto_21
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->clear()V

    .line 498
    invoke-virtual {p0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->close()V

    .line 499
    return-void

    .line 493
    :catch_2a
    move-exception v0

    goto :goto_21
.end method

.method public shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 518
    iput-boolean v1, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->stop:Z

    .line 519
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->block()V

    .line 520
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->queue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->clear()V

    .line 521
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->inProcessQueue:Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$BlockQueue;->block()V

    .line 522
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2a

    .line 523
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->handler:Landroid/os/Handler;

    .line 529
    :cond_2a
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_33

    .line 530
    iget-object v0, p0, Lcom/mapquest/android/maps/ThreadBasedTileDownloader$HttpPipelinerThread;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 533
    :cond_33
    return-void
.end method
