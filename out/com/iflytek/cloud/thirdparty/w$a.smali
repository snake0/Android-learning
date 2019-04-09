.class Lcom/iflytek/cloud/thirdparty/w$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/w;

.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private c:Lcom/iflytek/cloud/thirdparty/ak$a;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/w;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/w;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ak;->a(Ljava/lang/String;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->c:Lcom/iflytek/cloud/thirdparty/ak$a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/w$a;->removeMessages(I)V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_15

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->c:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->c:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->a()V

    :cond_14
    return-void

    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public a([B)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/w$a;->sendEmptyMessage(I)Z

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_5

    array-length v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    array-length v2, v0

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    const-wide/16 v3, 0xa

    cmp-long v3, v1, v3

    if-ltz v3, :cond_42

    const-string v3, "CaeUnit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blocked raw audio size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/w;)Lcom/iflytek/cloud/thirdparty/ap;

    move-result-object v3

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/w$a;->a:Lcom/iflytek/cloud/thirdparty/w;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/w;->a(Lcom/iflytek/cloud/thirdparty/w;)Lcom/iflytek/cloud/thirdparty/ap;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Lcom/iflytek/cloud/thirdparty/ap;->a([BI)V

    :cond_54
    const-wide/16 v3, 0x1388

    cmp-long v0, v3, v1

    if-gtz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->c:Lcom/iflytek/cloud/thirdparty/ak$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/w$a;->c:Lcom/iflytek/cloud/thirdparty/ak$a;

    const-string v1, ""

    const-string v2, ".txt"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cleared 5000KB raw audio.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/w$a;->c:Lcom/iflytek/cloud/thirdparty/ak$a;

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/ak$a;->a(Ljava/lang/String;)V

    goto/16 :goto_5

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
