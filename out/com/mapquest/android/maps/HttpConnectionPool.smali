.class final Lcom/mapquest/android/maps/HttpConnectionPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/mqunar/necro/agent/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final CONNECTION_TIMEOUT:I = 0xbb8

.field public static final KEEP_ALIVE:I = 0x1388

.field public static final READ_TIMEOUT:I = 0x1388


# instance fields
.field httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field private monitor:Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;


# direct methods
.method public constructor <init>(IIII)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 30
    iput-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 34
    iput-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->monitor:Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;

    .line 37
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 38
    invoke-static {v0, p3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 39
    invoke-static {v0, p4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 40
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 41
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 42
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 43
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 44
    invoke-static {v0, v2}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 45
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 46
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 47
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v2

    .line 48
    sget-object v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 49
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v3, v4, v2, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 50
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v2, p2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 51
    invoke-static {v0, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 52
    invoke-static {v0, p1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 53
    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 54
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v2, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 55
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 56
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 57
    new-instance v1, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;

    iget-object v2, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2}, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;-><init>(Lorg/apache/http/conn/ClientConnectionManager;)V

    iput-object v1, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->monitor:Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;

    .line 58
    iget-object v1, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->monitor:Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->start()V

    .line 59
    new-instance v1, Lcom/mapquest/android/maps/HttpConnectionPool$1;

    invoke-direct {v1, p0}, Lcom/mapquest/android/maps/HttpConnectionPool$1;-><init>(Lcom/mapquest/android/maps/HttpConnectionPool;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)V

    .line 86
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)[B
    .registers 8

    .prologue
    .line 89
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v0, "Connection"

    const-string v2, "keep-alive"

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_c
    iget-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    instance-of v2, v0, Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_40

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 94
    :goto_16
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 95
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    const/16 v4, 0x2000

    invoke-direct {v3, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 96
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 100
    :goto_2e
    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_47

    .line 101
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_39
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_39} :catch_3a
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_39} :catch_55

    goto :goto_2e

    .line 109
    :catch_3a
    move-exception v0

    .line 110
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 115
    :goto_3e
    const/4 v0, 0x0

    :goto_3f
    return-object v0

    .line 93
    :cond_40
    :try_start_40
    check-cast v0, Lorg/apache/http/client/HttpClient;

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_16

    .line 104
    :cond_47
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 105
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 106
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 107
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_53
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_40 .. :try_end_53} :catch_3a
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_53} :catch_55

    move-result-object v0

    goto :goto_3f

    .line 111
    :catch_55
    move-exception v0

    .line 112
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_3e
.end method

.method public shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_15

    .line 120
    iget-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->monitor:Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;->shutdown()V

    .line 121
    iget-object v0, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    .line 122
    iput-object v1, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->monitor:Lcom/mapquest/android/maps/HttpConnectionPool$IdleConnectionMonitorThread;

    .line 123
    iput-object v1, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 124
    iput-object v1, p0, Lcom/mapquest/android/maps/HttpConnectionPool;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 127
    :cond_15
    return-void
.end method
