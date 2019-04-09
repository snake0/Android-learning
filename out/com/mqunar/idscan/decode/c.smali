.class public final Lcom/mqunar/idscan/decode/c;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Lcom/mqunar/idscan/activity/a;

.field private b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/mqunar/idscan/activity/a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/mqunar/idscan/decode/c;->a:Lcom/mqunar/idscan/activity/a;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/idscan/decode/c;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method final a()Landroid/os/Handler;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mqunar/idscan/decode/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_8

    :goto_5
    iget-object v0, p0, Lcom/mqunar/idscan/decode/c;->b:Landroid/os/Handler;

    return-object v0

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public final run()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/mqunar/idscan/decode/a;

    iget-object v1, p0, Lcom/mqunar/idscan/decode/c;->a:Lcom/mqunar/idscan/activity/a;

    invoke-direct {v0, v1}, Lcom/mqunar/idscan/decode/a;-><init>(Lcom/mqunar/idscan/activity/a;)V

    iput-object v0, p0, Lcom/mqunar/idscan/decode/c;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mqunar/idscan/decode/c;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
