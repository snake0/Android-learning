.class public Lcom/mqunar/network/OutputStreamWarp;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/OutputStream;

.field private b:Lcom/mqunar/network/NetRequest;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/mqunar/network/NetRequest;)V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mqunar/network/OutputStreamWarp;-><init>(Ljava/io/OutputStream;Lcom/mqunar/network/NetRequest;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/mqunar/network/NetRequest;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mqunar/network/OutputStreamWarp;->a:Ljava/io/OutputStream;

    .line 17
    iput-object p2, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public checkNotify()V
    .registers 5

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mqunar/network/OutputStreamWarp;->c:J

    iget-object v2, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    iget-wide v2, v2, Lcom/mqunar/network/NetRequest;->total:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    .line 51
    iget-object v0, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    iget-wide v0, v0, Lcom/mqunar/network/NetRequest;->total:J

    iput-wide v0, p0, Lcom/mqunar/network/OutputStreamWarp;->c:J

    .line 52
    invoke-static {}, Lcom/mqunar/network/NetRequestManager;->getInstance()Lcom/mqunar/network/NetRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    iget-object v1, v1, Lcom/mqunar/network/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget-object v2, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/network/NetRequestManager;->sendMessageWrite(Landroid/os/Handler$Callback;Lcom/mqunar/network/NetRequest;)Z

    .line 56
    :cond_1d
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/network/OutputStreamWarp;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 40
    invoke-virtual {p0}, Lcom/mqunar/network/OutputStreamWarp;->checkNotify()V

    .line 41
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/network/OutputStreamWarp;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 46
    invoke-virtual {p0}, Lcom/mqunar/network/OutputStreamWarp;->checkNotify()V

    .line 47
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mqunar/network/OutputStreamWarp;->a:Ljava/io/OutputStream;

    .line 26
    return-void
.end method

.method public write(I)V
    .registers 7

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/network/OutputStreamWarp;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 31
    iget-object v0, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    iget-wide v1, v0, Lcom/mqunar/network/NetRequest;->total:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/mqunar/network/NetRequest;->total:J

    .line 32
    iget-object v0, p0, Lcom/mqunar/network/OutputStreamWarp;->b:Lcom/mqunar/network/NetRequest;

    iget-wide v0, v0, Lcom/mqunar/network/NetRequest;->total:J

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    .line 33
    invoke-virtual {p0}, Lcom/mqunar/network/OutputStreamWarp;->checkNotify()V

    .line 35
    :cond_1e
    return-void
.end method
