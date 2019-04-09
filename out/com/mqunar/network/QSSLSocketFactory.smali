.class public Lcom/mqunar/network/QSSLSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SourceFile"


# instance fields
.field a:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 21
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/network/QSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    .line 27
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 28
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 29
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 30
    array-length v1, v0

    if-nez v1, :cond_26

    .line 31
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "no trust manager found"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_26
    aget-object v0, v0, v4

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 35
    new-instance v1, Lcom/mqunar/network/n;

    invoke-direct {v1, p0, v0}, Lcom/mqunar/network/n;-><init>(Lcom/mqunar/network/QSSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V

    .line 60
    iget-object v0, p0, Lcom/mqunar/network/QSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    aput-object v1, v3, v4

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/mqunar/network/QSSLSocketFactory;Ljava/security/cert/CertificateException;)Z
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mqunar/network/QSSLSocketFactory;->a(Ljava/security/cert/CertificateException;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/security/cert/CertificateException;)Z
    .registers 5

    .prologue
    .line 65
    if-eqz p1, :cond_31

    :try_start_2
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 66
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v0, :cond_31

    const-string v2, "GMT+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "com.android.org.bouncycastle.jce.exception.ExtCertPathValidatorException"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2b} :catch_30

    move-result v0

    if-eqz v0, :cond_31

    .line 73
    const/4 v0, 0x1

    .line 79
    :goto_2f
    return v0

    .line 76
    :catch_30
    move-exception v0

    .line 79
    :cond_31
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mqunar/network/QSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .registers 6

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mqunar/network/QSSLSocketFactory;->a:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
