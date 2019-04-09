.class Lcom/mqunar/network/m;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/network/l;


# direct methods
.method constructor <init>(Lcom/mqunar/network/l;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 3

    .prologue
    .line 487
    iput-object p1, p0, Lcom/mqunar/network/m;->a:Lcom/mqunar/network/l;

    invoke-direct {p0, p2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 13

    .prologue
    .line 490
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 491
    iget-object v0, p0, Lcom/mqunar/network/m;->a:Lcom/mqunar/network/l;

    iget-object v0, v0, Lcom/mqunar/network/l;->a:Lcom/mqunar/network/NetRequestManager;

    invoke-static {v0, v6}, Lcom/mqunar/network/NetRequestManager;->a(Lcom/mqunar/network/NetRequestManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 494
    :try_start_1e
    invoke-super/range {v0 .. v5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 499
    return-void

    .line 495
    :catch_22
    move-exception v0

    .line 496
    iget-object v1, p0, Lcom/mqunar/network/m;->a:Lcom/mqunar/network/l;

    iget-object v1, v1, Lcom/mqunar/network/l;->a:Lcom/mqunar/network/NetRequestManager;

    invoke-static {v1, v6}, Lcom/mqunar/network/NetRequestManager;->b(Lcom/mqunar/network/NetRequestManager;Ljava/lang/String;)V

    .line 497
    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    .prologue
    .line 516
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 517
    return-void
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 10

    .prologue
    .line 503
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/mqunar/network/m;->a:Lcom/mqunar/network/l;

    iget-object v1, v1, Lcom/mqunar/network/l;->a:Lcom/mqunar/network/NetRequestManager;

    invoke-static {v1, v0}, Lcom/mqunar/network/NetRequestManager;->a(Lcom/mqunar/network/NetRequestManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 507
    :try_start_19
    invoke-super {p0, p1, v2, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 512
    return-void

    .line 508
    :catch_1d
    move-exception v1

    .line 509
    iget-object v2, p0, Lcom/mqunar/network/m;->a:Lcom/mqunar/network/l;

    iget-object v2, v2, Lcom/mqunar/network/l;->a:Lcom/mqunar/network/NetRequestManager;

    invoke-static {v2, v0}, Lcom/mqunar/network/NetRequestManager;->b(Lcom/mqunar/network/NetRequestManager;Ljava/lang/String;)V

    .line 510
    throw v1
.end method
