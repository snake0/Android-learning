.class Lcom/mqunar/cock/network/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mqunar/cock/network/callback/TcpMessageCallBack;


# instance fields
.field final synthetic a:Lcom/mqunar/cock/model/TcpResult;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lcom/mqunar/cock/network/OneKeyCremation;


# direct methods
.method constructor <init>(Lcom/mqunar/cock/network/OneKeyCremation;Lcom/mqunar/cock/model/TcpResult;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .prologue
    .line 259
    iput-object p1, p0, Lcom/mqunar/cock/network/h;->c:Lcom/mqunar/cock/network/OneKeyCremation;

    iput-object p2, p0, Lcom/mqunar/cock/network/h;->a:Lcom/mqunar/cock/model/TcpResult;

    iput-object p3, p0, Lcom/mqunar/cock/network/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceipt(Lcom/mqunar/cock/model/TcpResponseHeader;[B)V
    .registers 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/mqunar/cock/network/h;->a:Lcom/mqunar/cock/model/TcpResult;

    iget v1, p1, Lcom/mqunar/cock/model/TcpResponseHeader;->code:I

    iput v1, v0, Lcom/mqunar/cock/model/TcpResult;->resultcode:I

    .line 263
    iget-object v0, p0, Lcom/mqunar/cock/network/h;->a:Lcom/mqunar/cock/model/TcpResult;

    iput-object p1, v0, Lcom/mqunar/cock/model/TcpResult;->tcpResponseHeader:Lcom/mqunar/cock/model/TcpResponseHeader;

    .line 264
    iget-object v0, p0, Lcom/mqunar/cock/network/h;->a:Lcom/mqunar/cock/model/TcpResult;

    iput-object p2, v0, Lcom/mqunar/cock/model/TcpResult;->bytes:[B

    .line 265
    iget-object v0, p0, Lcom/mqunar/cock/network/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 266
    return-void
.end method

.method public onTimeOut([B)V
    .registers 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mqunar/cock/network/h;->a:Lcom/mqunar/cock/model/TcpResult;

    const/16 v1, 0x12c

    iput v1, v0, Lcom/mqunar/cock/model/TcpResult;->resultcode:I

    .line 271
    iget-object v0, p0, Lcom/mqunar/cock/network/h;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 272
    return-void
.end method
