.class Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "SourceFile"


# instance fields
.field final synthetic this$1:Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 3

    .prologue
    .line 353
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;->this$1:Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;

    invoke-direct {p0, p2}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 13

    .prologue
    .line 356
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    .line 357
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;->this$1:Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;

    iget-object v0, v0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    # invokes: Lcom/mqunar/hy/res/libtask/NetRequestManager;->nameToIp(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->access$000(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
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

    .line 360
    :try_start_1e
    invoke-super/range {v0 .. v5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    .line 365
    return-void

    .line 361
    :catch_22
    move-exception v0

    .line 362
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;->this$1:Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;

    iget-object v1, v1, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    # invokes: Lcom/mqunar/hy/res/libtask/NetRequestManager;->onSocketError(Ljava/lang/String;)V
    invoke-static {v1, v6}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->access$100(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/lang/String;)V

    .line 363
    throw v0
.end method

.method protected prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 383
    return-void
.end method

.method public updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .registers 10

    .prologue
    .line 369
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;->this$1:Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;

    iget-object v1, v1, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    # invokes: Lcom/mqunar/hy/res/libtask/NetRequestManager;->nameToIp(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->access$000(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 373
    :try_start_19
    invoke-super {p0, p1, v2, p3, p4}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->updateSecureConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 378
    return-void

    .line 374
    :catch_1d
    move-exception v1

    .line 375
    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;->this$1:Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;

    iget-object v2, v2, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    # invokes: Lcom/mqunar/hy/res/libtask/NetRequestManager;->onSocketError(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->access$100(Lcom/mqunar/hy/res/libtask/NetRequestManager;Ljava/lang/String;)V

    .line 376
    throw v1
.end method
