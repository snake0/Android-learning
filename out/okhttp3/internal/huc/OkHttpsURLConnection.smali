.class public final Lokhttp3/internal/huc/OkHttpsURLConnection;
.super Lokhttp3/internal/huc/DelegatingHttpsURLConnection;
.source "SourceFile"


# instance fields
.field private final delegate:Lokhttp3/internal/huc/OkHttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .registers 4

    .prologue
    .line 30
    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {v0, p1, p2}, Lokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpsURLConnection;-><init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V
    .registers 5

    .prologue
    .line 34
    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {v0, p1, p2, p3}, Lokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpsURLConnection;-><init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    .line 39
    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->connect()V

    return-void
.end method

.method public bridge synthetic disconnect()V
    .registers 1

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->disconnect()V

    return-void
.end method

.method public bridge synthetic getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectTimeout()I
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentLength()I
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentLengthLong()J
    .registers 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDate()J
    .registers 3

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoInput()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getDoOutput()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getExpiration()J
    .registers 3

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderField(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 6
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderFields()Ljava/util/Map;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIfModifiedSince()J
    .registers 3

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getLastModified()J
    .registers 3

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReadTimeout()I
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperties()Ljava/util/Map;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponseCode()I
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUseCaches()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected handshake()Lokhttp3/Handshake;
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->call:Lokhttp3/Call;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_e
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->handshake:Lokhttp3/Handshake;

    return-object v0
.end method

.method public bridge synthetic setAllowUserInteraction(Z)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public bridge synthetic setChunkedStreamingMode(I)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setConnectTimeout(I)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setConnectTimeout(I)V

    return-void
.end method

.method public bridge synthetic setDefaultUseCaches(Z)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic setDoInput(Z)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setDoInput(Z)V

    return-void
.end method

.method public bridge synthetic setDoOutput(Z)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setDoOutput(Z)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(I)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public bridge synthetic setFixedLengthStreamingMode(J)V
    .registers 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    .line 54
    return-void
.end method

.method public bridge synthetic setIfModifiedSince(J)V
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setIfModifiedSince(J)V

    return-void
.end method

.method public bridge synthetic setInstanceFollowRedirects(Z)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public bridge synthetic setReadTimeout(I)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setReadTimeout(I)V

    return-void
.end method

.method public bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->delegate:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->client:Lokhttp3/OkHttpClient;

    .line 65
    return-void
.end method

.method public bridge synthetic setUseCaches(Z)V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->setUseCaches(Z)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usingProxy()Z
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method