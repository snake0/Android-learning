.class Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;
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
    .line 365
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    iput-object p2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 375
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_23

    .line 376
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    # getter for: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->impl:Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$100(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v0

    .line 378
    if-eqz v2, :cond_1e

    .line 380
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1d} :catch_24

    move-result-wide v0

    .line 386
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 390
    :cond_23
    return-void

    .line 381
    :catch_24
    move-exception v2

    goto :goto_1e
.end method

.method public streamError(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 368
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 371
    :cond_11
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension$2;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    # invokes: Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->error(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;->access$000(Lcom/mqunar/necro/agent/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V

    .line 372
    return-void
.end method
