.class Lcom/mqunar/network/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Z

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic e:Lcom/mqunar/network/NetRequestManager;


# direct methods
.method constructor <init>(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;[ZLjava/util/concurrent/atomic/AtomicInteger;)V
    .registers 6

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mqunar/network/f;->e:Lcom/mqunar/network/NetRequestManager;

    iput-object p2, p0, Lcom/mqunar/network/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/mqunar/network/f;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mqunar/network/f;->c:[Z

    iput-object p5, p0, Lcom/mqunar/network/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mqunar/network/f;->e:Lcom/mqunar/network/NetRequestManager;

    iget-object v1, p0, Lcom/mqunar/network/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mqunar/network/f;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/mqunar/network/NetRequestManager;->a(Lcom/mqunar/network/NetRequestManager;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/mqunar/network/f;->c:[Z

    monitor-enter v1

    .line 182
    if-eqz v0, :cond_1c

    .line 183
    :try_start_f
    iget-object v0, p0, Lcom/mqunar/network/f;->c:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    .line 184
    iget-object v0, p0, Lcom/mqunar/network/f;->c:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 191
    :cond_1a
    :goto_1a
    monitor-exit v1

    .line 192
    return-void

    .line 186
    :cond_1c
    iget-object v0, p0, Lcom/mqunar/network/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 187
    iget-object v0, p0, Lcom/mqunar/network/f;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_1a

    .line 188
    iget-object v0, p0, Lcom/mqunar/network/f;->c:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    goto :goto_1a

    .line 191
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_f .. :try_end_31} :catchall_2f

    throw v0
.end method
