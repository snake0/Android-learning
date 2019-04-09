.class public Lcom/iflytek/cloud/thirdparty/az;
.super Lcom/iflytek/cloud/thirdparty/be;


# instance fields
.field private a:Lcom/iflytek/cloud/thirdparty/bb;

.field private b:Lcom/iflytek/cloud/SpeechListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/thirdparty/be;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/bb;

    invoke-direct {v0}, Lcom/iflytek/cloud/thirdparty/bb;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/az;->a:Lcom/iflytek/cloud/thirdparty/bb;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4a

    :goto_5
    return-void

    :pswitch_6
    const-class v1, Lcom/iflytek/cloud/thirdparty/az;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az;->a:Lcom/iflytek/cloud/thirdparty/bb;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/az;->t:Landroid/content/Context;

    invoke-virtual {v0, v2, p0}, Lcom/iflytek/cloud/thirdparty/bb;->a(Landroid/content/Context;Lcom/iflytek/cloud/thirdparty/be;)I

    move-result v0

    const-string v2, "{\'ret\':%d,\'cmd\':%s}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/az;->x()Lcom/iflytek/cloud/thirdparty/ce;

    move-result-object v4

    const-string v5, "cmd"

    invoke-virtual {v4, v5}, Lcom/iflytek/cloud/thirdparty/ce;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/az;->b:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/az;->b:Lcom/iflytek/cloud/SpeechListener;

    invoke-virtual {p0}, Lcom/iflytek/cloud/thirdparty/az;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/iflytek/cloud/SpeechListener;->onBufferReceived([B)V

    :cond_3f
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/az;->a(I)V

    monitor-exit v1

    goto :goto_5

    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_46

    throw v0

    nop

    :pswitch_data_4a
    .packed-switch 0xd
        :pswitch_6
    .end packed-switch
.end method

.method protected a(Lcom/iflytek/cloud/SpeechError;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/iflytek/cloud/thirdparty/be;->a(Lcom/iflytek/cloud/SpeechError;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az;->b:Lcom/iflytek/cloud/SpeechListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az;->b:Lcom/iflytek/cloud/SpeechListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/SpeechListener;->onCompleted(Lcom/iflytek/cloud/SpeechError;)V

    :cond_c
    return-void
.end method

.method public a(Lcom/iflytek/cloud/thirdparty/ce;Lcom/iflytek/cloud/thirdparty/az$a;)V
    .registers 5

    iput-object p2, p0, Lcom/iflytek/cloud/thirdparty/az;->b:Lcom/iflytek/cloud/SpeechListener;

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/thirdparty/az;->a(Lcom/iflytek/cloud/thirdparty/ce;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/az;->d(Landroid/os/Message;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az;->a:Lcom/iflytek/cloud/thirdparty/bb;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bb;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/az;->a:Lcom/iflytek/cloud/thirdparty/bb;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/bb;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    const-string v0, "ivp"

    return-object v0
.end method
