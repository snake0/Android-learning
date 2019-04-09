.class public Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;",
            "Lcom/mqunar/qapm/network/instrumentation/TransactionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;->a:Lorg/apache/http/client/ResponseHandler;

    .line 22
    iput-object p2, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    .line 23
    return-void
.end method

.method public static wrap(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lcom/mqunar/qapm/network/instrumentation/TransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/qapm/network/instrumentation/TransactionState;)V

    return-object v0
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;->b:Lcom/mqunar/qapm/network/instrumentation/TransactionState;

    invoke-static {v0, p1}, Lcom/mqunar/qapm/network/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/qapm/network/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 27
    iget-object v0, p0, Lcom/mqunar/qapm/network/instrumentation/httpclient/ResponseHandlerImpl;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
