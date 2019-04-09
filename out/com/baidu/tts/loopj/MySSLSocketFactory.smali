.class public Lcom/baidu/tts/loopj/MySSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 59
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/loopj/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 73
    new-instance v0, Lcom/baidu/tts/loopj/MySSLSocketFactory$1;

    invoke-direct {v0, p0}, Lcom/baidu/tts/loopj/MySSLSocketFactory$1;-><init>(Lcom/baidu/tts/loopj/MySSLSocketFactory;)V

    .line 85
    iget-object v1, p0, Lcom/baidu/tts/loopj/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 86
    return-void
.end method

.method public static getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 169
    :try_start_0
    new-instance v0, Lcom/baidu/tts/loopj/MySSLSocketFactory;

    invoke-static {}, Lcom/baidu/tts/loopj/MySSLSocketFactory;->getKeystore()Ljava/security/KeyStore;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/tts/loopj/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 175
    :goto_9
    return-object v0

    .line 171
    :catch_a
    move-exception v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_9
.end method

.method public static getKeystore()Ljava/security/KeyStore;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 153
    :try_start_1
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_f

    move-result-object v0

    .line 154
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_b
    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_e} :catch_17

    .line 158
    :goto_e
    return-object v0

    .line 155
    :catch_f
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 156
    :goto_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 155
    :catch_17
    move-exception v1

    goto :goto_13
.end method

.method public static getKeystoreOfCA(Ljava/io/InputStream;)Ljava/security/KeyStore;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 114
    .line 117
    :try_start_1
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 118
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_c} :catch_2e
    .catchall {:try_start_1 .. :try_end_c} :catchall_40

    .line 119
    :try_start_c
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_f} :catch_5c
    .catchall {:try_start_c .. :try_end_f} :catchall_59

    move-result-object v0

    .line 124
    if-eqz v2, :cond_15

    .line 125
    :try_start_12
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_29

    .line 133
    :cond_15
    :goto_15
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    .line 136
    :try_start_19
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_4c

    move-result-object v1

    .line 137
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1f
    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 138
    const-string v2, "ca"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_27} :catch_54

    move-object v0, v1

    .line 142
    :goto_28
    return-object v0

    .line 127
    :catch_29
    move-exception v2

    .line 128
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 120
    :catch_2e
    move-exception v0

    move-object v2, v1

    .line 121
    :goto_30
    :try_start_30
    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_59

    .line 124
    if-eqz v2, :cond_38

    .line 125
    :try_start_35
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_3a

    :cond_38
    move-object v0, v1

    .line 129
    goto :goto_15

    .line 127
    :catch_3a
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 130
    goto :goto_15

    .line 123
    :catchall_40
    move-exception v0

    .line 124
    :goto_41
    if-eqz v1, :cond_46

    .line 125
    :try_start_43
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 129
    :cond_46
    :goto_46
    throw v0

    .line 127
    :catch_47
    move-exception v1

    .line 128
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_46

    .line 139
    :catch_4c
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 140
    :goto_50
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28

    .line 139
    :catch_54
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_50

    .line 123
    :catchall_59
    move-exception v0

    move-object v1, v2

    goto :goto_41

    .line 120
    :catch_5c
    move-exception v0

    goto :goto_30
.end method

.method public static getNewHttpClient(Ljava/security/KeyStore;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .registers 7

    .prologue
    .line 187
    :try_start_0
    new-instance v0, Lcom/baidu/tts/loopj/MySSLSocketFactory;

    invoke-direct {v0, p0}, Lcom/baidu/tts/loopj/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 188
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 189
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 190
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v0, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 192
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 193
    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 194
    const-string v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 196
    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 198
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 200
    :goto_3f
    return-object v0

    .line 199
    :catch_40
    move-exception v0

    .line 200
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_3f
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/tts/loopj/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/tts/loopj/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public fixHttpsURLConnection()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/tts/loopj/MySSLSocketFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 103
    return-void
.end method
