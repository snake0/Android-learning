.class abstract Lokhttp3/internal/huc/DelegatingHttpsURLConnection;
.super Ljavax/net/ssl/HttpsURLConnection;
.source "SourceFile"


# instance fields
.field private final delegate:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    .line 46
    iput-object p1, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    .line 47
    return-void
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 192
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public connect()V
    .registers 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->connected:Z

    .line 90
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 91
    return-void
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 95
    return-void
.end method

.method public getAllowUserInteraction()Z
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lokhttp3/Handshake;->cipherSuite()Lokhttp3/CipherSuite;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CipherSuite;->javaName()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public getContent()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    return v0
.end method

.method public getContentLengthLong()J
    .registers 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDate()J
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDefaultUseCaches()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public getDoInput()Z
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public getDoOutput()Z
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    .prologue
    .line 205
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    .prologue
    .line 209
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderFieldLong(Ljava/lang/String;J)J
    .registers 6
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 201
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public abstract getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end method

.method public getIfModifiedSince()J
    .registers 3

    .prologue
    .line 217
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInstanceFollowRedirects()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public getLastModified()J
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    .line 66
    if-nez v1, :cond_8

    .line 68
    :cond_7
    :goto_7
    return-object v0

    .line 67
    :cond_8
    invoke-virtual {v1}, Lokhttp3/Handshake;->localCertificates()Ljava/util/List;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    goto :goto_7
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/Handshake;->localPrincipal()Ljava/security/Principal;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lokhttp3/Handshake;->peerPrincipal()Ljava/security/Principal;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPermission()Ljava/security/Permission;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
.end method

.method public getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0}, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v1

    .line 73
    if-nez v1, :cond_8

    .line 75
    :cond_7
    :goto_7
    return-object v0

    .line 74
    :cond_8
    invoke-virtual {v1}, Lokhttp3/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    goto :goto_7
.end method

.method public getURL()Ljava/net/URL;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getUseCaches()Z
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method protected abstract handshake()Lokhttp3/Handshake;
.end method

.method public setAllowUserInteraction(Z)V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    .line 250
    return-void
.end method

.method public setChunkedStreamingMode(I)V
    .registers 3

    .prologue
    .line 306
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 307
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 283
    return-void
.end method

.method public setDefaultUseCaches(Z)V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    .line 254
    return-void
.end method

.method public setDoInput(Z)V
    .registers 3

    .prologue
    .line 257
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 258
    return-void
.end method

.method public setDoOutput(Z)V
    .registers 3

    .prologue
    .line 261
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 262
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 3

    .prologue
    .line 302
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 303
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 4
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    .line 267
    return-void
.end method

.method public abstract setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
.end method

.method public setIfModifiedSince(J)V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    .line 271
    return-void
.end method

.method public setInstanceFollowRedirects(Z)V
    .registers 3

    .prologue
    .line 126
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 127
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 291
    return-void
.end method

.method public setRequestMethod(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public abstract setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
.end method

.method public setUseCaches(Z)V
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 279
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usingProxy()Z
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/internal/huc/DelegatingHttpsURLConnection;->delegate:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->usingProxy()Z

    move-result v0

    return v0
.end method
