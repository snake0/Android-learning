.class Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

.field final synthetic val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;


# direct methods
.method constructor <init>(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 3

    .prologue
    .line 314
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    iput-object p2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 8

    .prologue
    .line 324
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_34

    .line 325
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    # getter for: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$100(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 326
    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    .line 327
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_55

    .line 331
    :goto_1d
    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 333
    :try_start_22
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    # getter for: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v1}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$100(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Ljava/net/HttpURLConnection;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2d} :catch_35

    .line 337
    :goto_2d
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    iget-object v1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    # invokes: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->addTransactionAndErrorData(Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$300(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

    .line 340
    :cond_34
    return-void

    .line 334
    :catch_35
    move-exception v0

    .line 335
    # getter for: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->log:Lcom/mqunar/necro/agent/logging/AgentLog;
    invoke-static {}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$200()Lcom/mqunar/necro/agent/logging/AgentLog;

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

    invoke-interface {v1, v0}, Lcom/mqunar/necro/agent/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_2d

    :cond_55
    move-wide v0, v2

    goto :goto_1d
.end method

.method public streamError(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 320
    :cond_11
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$1;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    # invokes: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$000(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V

    .line 321
    return-void
.end method
