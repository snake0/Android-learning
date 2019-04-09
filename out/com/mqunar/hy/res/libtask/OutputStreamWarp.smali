.class Lcom/mqunar/hy/res/libtask/OutputStreamWarp;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private lastNotifyLen:J

.field private outputStream:Ljava/io/OutputStream;

.field private req:Lcom/mqunar/hy/res/libtask/NetRequest;


# direct methods
.method public constructor <init>(Lcom/mqunar/hy/res/libtask/NetRequest;)V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;-><init>(Ljava/io/OutputStream;Lcom/mqunar/hy/res/libtask/NetRequest;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lcom/mqunar/hy/res/libtask/NetRequest;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->outputStream:Ljava/io/OutputStream;

    .line 17
    iput-object p2, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    .line 18
    return-void
.end method


# virtual methods
.method public checkNotify()V
    .registers 5

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->lastNotifyLen:J

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-wide v2, v2, Lcom/mqunar/hy/res/libtask/NetRequest;->total:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    .line 51
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-wide v0, v0, Lcom/mqunar/hy/res/libtask/NetRequest;->total:J

    iput-wide v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->lastNotifyLen:J

    .line 52
    invoke-static {}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->getInstance()Lcom/mqunar/hy/res/libtask/NetRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-object v1, v1, Lcom/mqunar/hy/res/libtask/NetRequest;->handler:Landroid/os/Handler$Callback;

    iget-object v2, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/hy/res/libtask/NetRequestManager;->sendMessageWrite(Landroid/os/Handler$Callback;Lcom/mqunar/hy/res/libtask/NetRequest;)Z

    .line 56
    :cond_1d
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 40
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->checkNotify()V

    .line 41
    return-void
.end method

.method public flush()V
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 46
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->checkNotify()V

    .line 47
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->outputStream:Ljava/io/OutputStream;

    .line 26
    return-void
.end method

.method public write(I)V
    .registers 7

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 31
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-wide v1, v0, Lcom/mqunar/hy/res/libtask/NetRequest;->total:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/mqunar/hy/res/libtask/NetRequest;->total:J

    .line 32
    iget-object v0, p0, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->req:Lcom/mqunar/hy/res/libtask/NetRequest;

    iget-wide v0, v0, Lcom/mqunar/hy/res/libtask/NetRequest;->total:J

    const-wide/16 v2, 0x1000

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    .line 33
    invoke-virtual {p0}, Lcom/mqunar/hy/res/libtask/OutputStreamWarp;->checkNotify()V

    .line 35
    :cond_1e
    return-void
.end method
