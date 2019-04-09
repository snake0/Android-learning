.class Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;

.field final synthetic val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;


# direct methods
.method constructor <init>(Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 3

    .prologue
    .line 345
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;

    iput-object p2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 355
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_23

    .line 356
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;

    # getter for: Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;->impl:Ljava/net/HttpURLConnection;
    invoke-static {v0}, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;->access$100(Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;)Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v0

    .line 358
    if-eqz v2, :cond_1e

    .line 360
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1d} :catch_24

    move-result-wide v0

    .line 366
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 370
    :cond_23
    return-void

    .line 361
    :catch_24
    move-exception v2

    goto :goto_1e
.end method

.method public streamError(Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 348
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->val$transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/necro/agent/instrumentation/TransactionState;->setBytesSent(J)V

    .line 351
    :cond_11
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension$2;->this$0:Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;

    invoke-virtual {p1}, Lcom/mqunar/necro/agent/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    # invokes: Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;->error(Ljava/lang/Exception;)V
    invoke-static {v0, v1}, Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;->access$000(Lcom/mqunar/necro/agent/instrumentation/HttpURLConnectionExtension;Ljava/lang/Exception;)V

    .line 352
    return-void
.end method
