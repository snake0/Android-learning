.class public Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;
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
.field private final impl:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;


# direct methods
.method private constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;",
            "Lcom/mqunar/necro/agent/instrumentation/TransactionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;->impl:Lorg/apache/http/client/ResponseHandler;

    .line 20
    iput-object p2, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    .line 21
    return-void
.end method

.method public static wrap(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lcom/mqunar/necro/agent/instrumentation/TransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;-><init>(Lorg/apache/http/client/ResponseHandler;Lcom/mqunar/necro/agent/instrumentation/TransactionState;)V

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
    .line 24
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;->transactionState:Lcom/mqunar/necro/agent/instrumentation/TransactionState;

    invoke-static {v0, p1}, Lcom/mqunar/necro/agent/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/mqunar/necro/agent/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    .line 25
    iget-object v0, p0, Lcom/mqunar/necro/agent/instrumentation/httpclient/ResponseHandlerImpl;->impl:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
