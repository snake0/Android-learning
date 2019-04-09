.class Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequestManager;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .registers 4

    .prologue
    .line 347
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;->this$0:Lcom/mqunar/hy/res/libtask/NetRequestManager;

    .line 348
    invoke-direct {p0, p2, p3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 349
    return-void
.end method


# virtual methods
.method protected createConnectionOperator(Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionOperator;
    .registers 3

    .prologue
    .line 353
    new-instance v0, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager$1;-><init>(Lcom/mqunar/hy/res/libtask/NetRequestManager$QThreadSafeClientConnManager;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method public shutdown()V
    .registers 1

    .prologue
    .line 390
    return-void
.end method

.method public superShutdown()V
    .registers 1

    .prologue
    .line 393
    invoke-super {p0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->shutdown()V

    .line 394
    return-void
.end method
