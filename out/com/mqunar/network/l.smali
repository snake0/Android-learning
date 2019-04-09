.class Lcom/mqunar/network/l;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mqunar/network/NetRequestManager;


# direct methods
.method public constructor <init>(Lcom/mqunar/network/NetRequestManager;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 4

    .prologue
    .line 481
    iput-object p1, p0, Lcom/mqunar/network/l;->a:Lcom/mqunar/network/NetRequestManager;

    .line 482
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 483
    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .registers 3

    .prologue
    .line 487
    new-instance v0, Lcom/mqunar/network/m;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/network/m;-><init>(Lcom/mqunar/network/l;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 524
    return-void
.end method
