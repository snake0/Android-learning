.class Lcom/mqunar/network/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Ljavax/net/ssl/X509TrustManager;

.field final synthetic b:Lcom/mqunar/network/QSSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/mqunar/network/QSSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .registers 3

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mqunar/network/n;->b:Lcom/mqunar/network/QSSLSocketFactory;

    iput-object p2, p0, Lcom/mqunar/network/n;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mqunar/network/n;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 42
    if-eqz p1, :cond_6

    array-length v0, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_e

    .line 43
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "certificates == null or certificates.length <= 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/mqunar/network/n;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_13} :catch_14

    .line 54
    :cond_13
    :goto_13
    return-void

    .line 48
    :catch_14
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/mqunar/network/n;->b:Lcom/mqunar/network/QSSLSocketFactory;

    invoke-static {v1, v0}, Lcom/mqunar/network/QSSLSocketFactory;->a(Lcom/mqunar/network/QSSLSocketFactory;Ljava/security/cert/CertificateException;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 51
    invoke-static {}, Lcom/mqunar/network/TrustCA;->getInstance()Lcom/mqunar/network/TrustCA;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mqunar/network/TrustCA;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mqunar/network/n;->a:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
