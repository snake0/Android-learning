.class Lcom/mqunar/qapm/network/instrumentation/d;
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
    .line 367
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/d;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    iput-object p2, p0, Lcom/mqunar/qapm/network/instrumentation/d;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public streamComplete(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 377
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/d;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_23

    .line 378
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/d;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    invoke-static {v0}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v0

    .line 380
    if-eqz v2, :cond_1e

    .line 382
    :try_start_1a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1d} :catch_24

    move-result-wide v0

    .line 388
    :cond_1e
    :goto_1e
    iget-object v2, p0, Lcom/mqunar/qapm/network/instrumentation/d;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v2, v0, v1}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesSent(J)V

    .line 392
    :cond_23
    return-void

    .line 383
    :catch_24
    move-exception v2

    goto :goto_1e
.end method

.method public streamError(Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;)V
    .registers 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/d;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_11

    .line 370
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/d;->a:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/qapm/network/instrumentation/TransactionState;->setBytesSent(J)V

    .line 373
    :cond_11
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/d;->b:Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;

    invoke-virtual {p1}, Lcom/mqunar/qapm/network/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;->a(Lcom/mqunar/qapm/network/instrumentation/HttpsURLConnectionExtension;Ljava/lang/Exception;)V

    .line 374
    return-void
.end method
