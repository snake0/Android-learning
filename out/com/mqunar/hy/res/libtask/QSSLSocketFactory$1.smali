.class Lcom/mqunar/hy/res/libtask/QSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/QSSLSocketFactory;

.field final synthetic val$defaultManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/QSSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .registers 3

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory$1;->this$0:Lcom/mqunar/hy/res/libtask/QSSLSocketFactory;

    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory$1;->val$defaultManager:Ljavax/net/ssl/X509TrustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory$1;->val$defaultManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 41
    if-eqz p1, :cond_29

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 42
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_23

    const-string v1, "*.qunar.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 44
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "host can not be trusted"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_23
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 50
    :goto_28
    return-void

    .line 48
    :cond_29
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory$1;->val$defaultManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/QSSLSocketFactory$1;->val$defaultManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
