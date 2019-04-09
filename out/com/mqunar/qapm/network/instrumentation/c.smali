.class Lcom/mqunar/qapm/network/instrumentation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteListener;


# instance fields
.field final synthetic a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

.field final synthetic b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;


# direct methods
.method constructor <init>(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 3

    .prologue
    .line 316
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/c;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    iput-object p2, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 8

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_34

    .line 327
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    invoke-static {v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 328
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    .line 329
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_55

    .line 333
    :goto_1d
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 335
    :try_start_22
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/c;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    invoke-static {v1}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2d} :catch_35

    .line 339
    :goto_2d
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    iget-object v1, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    .line 342
    :cond_34
    return-void

    .line 336
    :catch_35
    move-exception v0

    .line 337
    invoke-static {}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a()Lcom/mqunar/qapm/logging/AgentLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransactionStateUtil.inspectAndInstrumentResponse error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/mqunar/qapm/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_2d

    :cond_55
    move-wide v0, v2

    goto :goto_1d
.end method

.method public streamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 319
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 322
    :cond_11
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/c;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V

    .line 323
    return-void
.end method
