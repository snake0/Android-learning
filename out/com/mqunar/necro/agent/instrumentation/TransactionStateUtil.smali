.class public Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_DATA_HEADER:Ljava/lang/String; = "X-NewNecro-App-Data"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "Content-Length"

.field public static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field public static final CROSS_PROCESS_ID_HEADER:Ljava/lang/String; = "X-NewNecro-ID"

.field private static final REQUEST_HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final REQUEST_HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final REQUEST_HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final REQUEST_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final REQUEST_HEADER_COOKIE:Ljava/lang/String; = "Cookie"

.field public static final REQUEST_HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final REQUEST_HEADER_PITCHER_TYPE:Ljava/lang/String; = "Pitcher-Type"

.field private static final REQUEST_HEADER_PITCHER_URL:Ljava/lang/String; = "Pitcher-Url"

.field private static final REQUEST_HEADER_X_CLIENTENCODING:Ljava/lang/String; = "X-ClientEncoding"

.field private static final log:Lcom/mqunar/necro/agent/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V
    .registers 2

    .prologue
    .line 244
    invoke-static {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->end(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 245
    return-void
.end method

.method public static end(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 4

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->end()Lcom/mqunar/necro/agent/bean/NetworkData;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/bean/NetworkData;->excludeImageData()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/bean/NetworkData;->excludeIllegalData()Z

    move-result v1

    if-nez v1, :cond_22

    .line 250
    sget-object v1, Lcom/mqunar/qapm/QAPM;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mqunar/qapm/dao/Storage;->newStorage(Landroid/content/Context;)Lcom/mqunar/qapm/dao/Storage;

    move-result-object v1

    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->toAPMBean(Lcom/mqunar/necro/agent/bean/NetworkData;)Lcom/mqunar/qapm/domain/NetworkData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mqunar/qapm/dao/Storage;->putData(Lcom/mqunar/qapm/domain/BaseData;)V

    .line 251
    invoke-static {v0}, Lcom/mqunar/necro/agent/Agent;->dealData(Lcom/mqunar/necro/agent/bean/BaseData;)V

    .line 253
    :cond_22
    return-void
.end method

.method public static inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;
    .registers 11

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v5

    .line 86
    if-eqz v5, :cond_59

    .line 87
    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_8b

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v6, "://"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8b

    move v2, v3

    .line 89
    :goto_24
    if-nez v2, :cond_90

    if-eqz v1, :cond_90

    if-eqz p1, :cond_90

    .line 90
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8d

    const-string v0, "/"

    :goto_4d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :cond_59
    :goto_59
    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inspectAndInstrument url "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    invoke-virtual {p0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->getHttpMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 100
    invoke-interface {v5}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p0, p2}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->parseRequestHeader(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 102
    invoke-static {p0, p2}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->wrapRequestEntity(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 109
    :goto_8a
    return-object p2

    :cond_8b
    move v2, v4

    .line 88
    goto :goto_24

    .line 91
    :cond_8d
    const-string v0, ""

    goto :goto_4d

    .line 92
    :cond_90
    if-eqz v2, :cond_59

    move-object v0, v1

    .line 93
    goto :goto_59

    .line 106
    :cond_94
    :try_start_94
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "TransactionData constructor was not provided with a valid URL, host or HTTP method"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9c} :catch_9c

    .line 107
    :catch_9c
    move-exception v0

    .line 108
    invoke-static {}, Lcom/mqunar/necro/agent/logging/AgentLogManager;->getAgentLog()Lcom/mqunar/necro/agent/logging/AgentLog;

    move-result-object v1

    const-string v2, "TransactionStateUtil.inspectAndInstrument(...) for {0} could not determine request URL or HTTP method [host={1}, requestLine={2}]"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p1, v6, v3

    const/4 v3, 0x2

    aput-object v5, v6, v3

    invoke-static {v2, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8a
.end method

.method public static inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 211
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statuscode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 212
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setStatusCode(I)V

    .line 213
    const-string v0, "X-NewNecro-App-Data"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_4e

    array-length v1, v0

    if-lez v1, :cond_4e

    const-string v1, ""

    aget-object v2, v0, v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 215
    aget-object v0, v0, v3

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setAppData(Ljava/lang/String;)V

    .line 218
    :cond_4e
    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    .line 219
    const-wide/16 v1, -0x1

    .line 220
    if-eqz v0, :cond_8b

    array-length v3, v0

    if-lez v3, :cond_8b

    .line 222
    const/4 v1, 0x0

    :try_start_5c
    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 224
    invoke-static {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_6c} :catch_6d

    .line 235
    :goto_6c
    return-object p1

    .line 225
    :catch_6d
    move-exception v0

    .line 226
    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse content length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_6c

    .line 228
    :cond_8b
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_9e

    .line 229
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpResponseEntityImpl;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpResponseEntityImpl;-><init>(Lorg/apache/http/HttpEntity;Lcom/mqunar/necro/agent/instrumentation/TransactionState;J)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_6c

    .line 231
    :cond_9e
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 232
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/http/HttpResponse;

    invoke-static {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)V

    goto :goto_6c
.end method

.method public static inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4

    .prologue
    .line 115
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->parseRequestHeader(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 117
    invoke-static {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->wrapRequestEntity(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V

    .line 118
    return-object p1
.end method

.method private static inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 43
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inspectAndInstrument url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setUrl(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setHttpMethod(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getActiveNetworkCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setCarrier(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/mqunar/necro/agent/Agent;->getActiveNetworkWanType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setWanType(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V
    .registers 4

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private static inspectAndInstrumentResponse(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 55
    if-eqz p1, :cond_d

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 56
    invoke-virtual {p0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setAppData(Ljava/lang/String;)V

    .line 59
    :cond_d
    if-ltz p2, :cond_13

    .line 60
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 63
    :cond_13
    invoke-virtual {p0, p3}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setStatusCode(I)V

    .line 64
    return-void
.end method

.method public static inspectAndInstrumentResponse(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V
    .registers 9

    .prologue
    .line 67
    const-string v0, "X-NewNecro-App-Data"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 69
    const/4 v0, -0x1

    .line 72
    :try_start_b
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_e} :catch_31

    move-result v0

    .line 80
    :goto_f
    invoke-static {p0, v1, v2, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/String;II)V

    .line 81
    return-void

    .line 73
    :catch_13
    move-exception v3

    .line 74
    sget-object v4, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve response code due to an I/O exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/mqunar/necro/agent/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_f

    .line 75
    :catch_31
    move-exception v3

    .line 76
    sget-object v4, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    const-string v5, "Failed to retrieve response code due to underlying (Harmony?) NPE"

    invoke-interface {v4, v5, v3}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method static parseConnectionHeader(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V
    .registers 8

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    .line 181
    if-eqz v0, :cond_b0

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    if-eqz v0, :cond_13

    const-string v4, ""

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    const-string v4, "Content-Type"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "X-ClientEncoding"

    .line 189
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "Host"

    .line 190
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "Connection"

    .line 191
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "Accept-Encoding"

    .line 192
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "Content-Length"

    .line 193
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "Cookie"

    .line 194
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "["

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "]"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_92} :catch_93

    goto :goto_13

    .line 204
    :catch_93
    move-exception v0

    .line 206
    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseConnectionHeader Failed parse header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 208
    :cond_b0
    :goto_b0
    return-void

    .line 200
    :cond_b1
    :try_start_b1
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_b0

    .line 201
    invoke-virtual {p0, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setHeaders(Ljava/util/HashMap;)V
    :try_end_ba
    .catch Ljava/lang/Throwable; {:try_start_b1 .. :try_end_ba} :catch_93

    goto :goto_b0
.end method

.method private static parseRequestHeader(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V
    .registers 9

    .prologue
    .line 145
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_72

    .line 148
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 149
    array-length v3, v1

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v3, :cond_69

    aget-object v4, v1, v0

    .line 151
    if-eqz v4, :cond_66

    const-string v5, ""

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 152
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    .line 153
    const-string v6, "Content-Type"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "X-ClientEncoding"

    .line 154
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "Host"

    .line 155
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "Connection"

    .line 156
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "Accept-Encoding"

    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "Content-Length"

    .line 158
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v6, "Cookie"

    .line 159
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    .line 160
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 165
    :cond_69
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_72

    .line 166
    invoke-virtual {p0, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setHeaders(Ljava/util/HashMap;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_72} :catch_73

    .line 173
    :cond_72
    :goto_72
    return-void

    .line 169
    :catch_73
    move-exception v0

    .line 171
    sget-object v1, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseRequestHeader Failed parse header: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_72
.end method

.method public static setErrorCodeFromException(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/lang/Exception;)V
    .registers 5

    .prologue
    .line 239
    sget-object v0, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->log:Lcom/mqunar/necro/agent/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransactionStateUtil: Attempting to convert network exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to error code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setErrorMsg(Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private static toAPMBean(Lcom/mqunar/necro/agent/bean/NetworkData;)Lcom/mqunar/qapm/domain/NetworkData;
    .registers 3

    .prologue
    .line 256
    if-nez p0, :cond_4

    .line 257
    const/4 v0, 0x0

    .line 272
    :goto_3
    return-object v0

    .line 259
    :cond_4
    new-instance v0, Lcom/mqunar/qapm/domain/NetworkData;

    invoke-direct {v0}, Lcom/mqunar/qapm/domain/NetworkData;-><init>()V

    .line 260
    const-string v1, "adrNet"

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->action:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->reqUrl:Ljava/lang/String;

    .line 262
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->startTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->startTime:Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->endTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->endTime:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->reqSize:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->reqSize:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->resSize:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->resSize:Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->httpCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->httpCode:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->hf:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->hf:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netType:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->netType:Ljava/lang/String;

    .line 269
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->netStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->netStatus:Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->topPage:Ljava/lang/String;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->topPage:Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/mqunar/necro/agent/bean/NetworkData;->headers:Ljava/util/HashMap;

    iput-object v1, v0, Lcom/mqunar/qapm/domain/NetworkData;->headers:Ljava/util/HashMap;

    goto :goto_3
.end method

.method private static wrapRequestEntity(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpRequest;)V
    .registers 4

    .prologue
    .line 122
    instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_18

    .line 123
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 124
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 125
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mqunar/necro/agent/instrumentation/httpclient/HttpRequestEntityImpl;-><init>(Lorg/apache/http/HttpEntity;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    invoke-interface {p1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 128
    :cond_18
    return-void
.end method
