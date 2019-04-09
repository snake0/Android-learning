.class final Lcom/baidu/techain/b/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/baidu/techain/b/m;

.field private b:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method constructor <init>(Lcom/baidu/techain/b/m;Ljavax/net/ssl/X509TrustManager;)V
    .registers 4

    .prologue
    .line 556
    iput-object p1, p0, Lcom/baidu/techain/b/m$a;->a:Lcom/baidu/techain/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/techain/b/m$a;->b:Ljavax/net/ssl/X509TrustManager;

    .line 557
    iput-object p2, p0, Lcom/baidu/techain/b/m$a;->b:Ljavax/net/ssl/X509TrustManager;

    .line 558
    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 563
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 564
    iget-object v0, p0, Lcom/baidu/techain/b/m$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 571
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 573
    :try_start_3
    iget-object v0, p0, Lcom/baidu/techain/b/m$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/baidu/techain/b;->a()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b} :catch_c

    .line 594
    :goto_b
    return-void

    .line 576
    :catch_c
    move-exception v0

    invoke-static {}, Lcom/baidu/techain/b/e;->a()V

    move-object v1, v0

    .line 578
    :goto_11
    if-eqz v1, :cond_40

    .line 579
    instance-of v2, v1, Ljava/security/cert/CertificateExpiredException;

    if-nez v2, :cond_1b

    instance-of v2, v1, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v2, :cond_3b

    .line 581
    :cond_1b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 582
    const-string v1, "0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    iget-object v1, p0, Lcom/baidu/techain/b/m$a;->a:Lcom/baidu/techain/b/m;

    .line 1046
    iget-object v1, v1, Lcom/baidu/techain/b/m;->a:Landroid/content/Context;

    .line 583
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "1003121"

    invoke-static {v1, v2, v0}, Lcom/baidu/techain/b/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_b

    .line 586
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_11

    .line 588
    :cond_40
    instance-of v1, v0, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_47

    .line 589
    check-cast v0, Ljava/security/cert/CertificateException;

    throw v0

    .line 591
    :cond_47
    new-instance v0, Ljava/security/cert/CertificateException;

    invoke-direct {v0}, Ljava/security/cert/CertificateException;-><init>()V

    throw v0
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 599
    invoke-static {}, Lcom/baidu/techain/b;->a()V

    .line 600
    iget-object v0, p0, Lcom/baidu/techain/b/m$a;->b:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
