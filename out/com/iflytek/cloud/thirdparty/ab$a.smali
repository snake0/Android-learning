.class Lcom/iflytek/cloud/thirdparty/ab$a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/thirdparty/ab;

.field private b:Lcom/iflytek/cloud/thirdparty/aa;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Looper;Z)V
    .registers 6

    iput-object p1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/aa;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/thirdparty/aa;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->b:Lcom/iflytek/cloud/thirdparty/aa;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    iput-boolean p3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->d:Z

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {p1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    :cond_23
    return-void
.end method

.method private a(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 13

    const/4 v9, 0x6

    const/4 v8, 0x4

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v2

    if-eqz v2, :cond_255

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->r(Lcom/iflytek/cloud/thirdparty/ab;)Z

    move-result v2

    if-eqz v2, :cond_255

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    const/16 v2, 0x140

    new-array v2, v2, [B

    const/4 v4, 0x0

    const/16 v5, 0x140

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/iflytek/cloud/util/AudioDetector;->detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    move-result-object v0

    move-object v2, v0

    :goto_32
    monitor-exit v3

    if-nez v2, :cond_4d

    :cond_35
    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    iget-object v2, p1, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/iflytek/cloud/util/AudioDetector;->detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    move-result-object v0

    move-object v2, v0

    goto :goto_32

    :catchall_4a
    move-exception v0

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_4a

    throw v0

    :cond_4d
    iget v0, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget v1, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    const-string v3, "Vad error!"

    invoke-static {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;ILjava/lang/String;)V

    const-string v0, "VadUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vad error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :cond_75
    iget v0, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    if-eqz v3, :cond_9d

    iget-object v3, p1, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/util/VolumeUtil;->computeVolume([BI)I

    move-result v3

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v5}, Lcom/iflytek/cloud/thirdparty/ab;->c(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v5

    invoke-static {v5, v9, v10, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V

    iget v3, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    if-ne v8, v3, :cond_9d

    move v0, v1

    :cond_9d
    packed-switch v0, :pswitch_data_258

    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->e(Lcom/iflytek/cloud/thirdparty/ab;)J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v5}, Lcom/iflytek/cloud/thirdparty/ab;->f(Lcom/iflytek/cloud/thirdparty/ab;)J

    move-result-wide v5

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;J)J

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->b:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/aa;->a(Lcom/iflytek/cloud/thirdparty/y;)V

    goto/16 :goto_35

    :pswitch_bf
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    if-eqz v0, :cond_a0

    iput v1, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    const-string v0, "stream_id"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    goto :goto_a0

    :pswitch_d4
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    if-nez v0, :cond_181

    iput-boolean v10, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->d(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    invoke-static {v2, v9, v7, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/ab;->b(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->e(Lcom/iflytek/cloud/thirdparty/ab;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->b:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aa;->c()J

    move-result-wide v4

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->f(Lcom/iflytek/cloud/thirdparty/ab;)J

    move-result-wide v6

    div-long/2addr v4, v6

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    const-string v6, "audio"

    invoke-static {v6}, Lcom/iflytek/cloud/thirdparty/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->b:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aa;->d()Lcom/iflytek/cloud/thirdparty/y;

    move-result-object v0

    iput v10, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    const-string v6, "stream_id"

    iget-object v7, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v7}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v6

    if-lez v6, :cond_17e

    const-string v7, "VadUnit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "audio before bos, length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    iput v1, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    :goto_141
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    sub-long v1, v2, v4

    const-string v3, "frame_bos"

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;JLjava/lang/String;Ljava/lang/String;)V

    const-string v0, "VadUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vad_bos found, stmid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16e
    const-string v0, "stream_id"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    goto/16 :goto_a0

    :cond_17e
    iput v10, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    goto :goto_141

    :cond_181
    const-string v0, "VadUnit"

    const-string v2, "sub vad_bos found."

    invoke-static {v0, v2}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    goto :goto_16e

    :pswitch_18b
    const-string v3, "VadUnit"

    const-string v4, "vad_bos timeout."

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v4, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v4}, Lcom/iflytek/cloud/thirdparty/ab;->g(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v9, v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/cloud/thirdparty/ab;->c(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V

    iget-boolean v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    if-nez v3, :cond_1b7

    iput-boolean v7, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    goto/16 :goto_a0

    :cond_1b7
    :pswitch_1b7
    if-ne v8, v0, :cond_226

    const-string v0, "VadUnit"

    const-string v3, "speech timeout."

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c0
    :goto_1c0
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ab;->i(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v3

    invoke-static {v3, v9, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/ab;->d(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V

    const-string v0, "stream_id"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "confidence"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    if-eq v8, v0, :cond_251

    iput v1, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    new-instance v0, Lcom/iflytek/cloud/thirdparty/y;

    new-array v1, v7, [B

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLjava/lang/String;)V

    iput v8, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    const-string v1, "stream_id"

    iget-object v3, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v3}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "confidence"

    iget v2, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->confidence:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    :goto_219
    iput-boolean v7, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    goto/16 :goto_a0

    :cond_226
    if-ne v1, v0, :cond_1c0

    const-string v0, "VadUnit"

    const-string v3, "vad_eos found."

    invoke-static {v0, v3}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->f(Lcom/iflytek/cloud/thirdparty/ab;)J

    move-result-wide v5

    div-long/2addr v3, v5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->e(Lcom/iflytek/cloud/thirdparty/ab;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    add-long/2addr v3, v5

    const-string v5, "frame_eos"

    iget-object v6, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v6}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1c0

    :cond_251
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    goto :goto_219

    :cond_255
    move-object v2, v0

    goto/16 :goto_32

    :pswitch_data_258
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_d4
        :pswitch_1b7
        :pswitch_18b
        :pswitch_1b7
    .end packed-switch
.end method

.method private b(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->b(Lcom/iflytek/cloud/thirdparty/ab;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->a()I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/util/VolumeUtil;->computeVolume([BI)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->h(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/cloud/thirdparty/t;->b()Lcom/iflytek/cloud/thirdparty/af;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v2, v3, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/cloud/thirdparty/ab;->e(Lcom/iflytek/cloud/thirdparty/ab;Landroid/os/Message;)V

    :cond_27
    const-string v0, "VadUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "direcetWrite blcok.dts ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    iget v1, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    if-ne v0, v1, :cond_5f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    const-string v0, "VadUnit"

    const-string v1, "audio_end found."

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_50
    const-string v0, "stream_id"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v4}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    return-void

    :cond_5f
    iget-boolean v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    if-nez v0, :cond_91

    iput-boolean v4, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->c:Z

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    const-string v1, "audio"

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/al;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/ab;->a(Lcom/iflytek/cloud/thirdparty/ab;Ljava/lang/String;)Ljava/lang/String;

    iput v4, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    const-string v0, "VadUnit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_start found, stmid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/thirdparty/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50

    :cond_91
    const/4 v0, 0x2

    iput v0, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    goto :goto_50
.end method

.method private c(Lcom/iflytek/cloud/thirdparty/y;)V
    .registers 5

    const/4 v2, 0x1

    iget v0, p1, Lcom/iflytek/cloud/thirdparty/y;->d:I

    if-ne v2, v0, :cond_a

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/ab;->g()V

    :cond_a
    const-string v0, "rec_only"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->n(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    const-string v0, "intent_engine_type"

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->o(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->p(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/v;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {p1}, Lcom/iflytek/cloud/thirdparty/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/thirdparty/y;

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->p(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/cloud/thirdparty/v;->a(Lcom/iflytek/cloud/thirdparty/y;)V

    :cond_3b
    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->q(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v0}, Lcom/iflytek/cloud/thirdparty/ab;->q(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/thirdparty/x;->a(Lcom/iflytek/cloud/thirdparty/y;)V

    goto :goto_18
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->b:Lcom/iflytek/cloud/thirdparty/aa;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->b:Lcom/iflytek/cloud/thirdparty/aa;

    invoke-virtual {v0}, Lcom/iflytek/cloud/thirdparty/aa;->a()V

    :cond_9
    return-void
.end method

.method public b()V
    .registers 3

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_72

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iflytek/cloud/thirdparty/y;

    invoke-static {}, Lcom/iflytek/cloud/thirdparty/al;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "wake_id"

    invoke-virtual {v0, v2, v1, v3}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1d
    iget-boolean v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->d:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->j(Lcom/iflytek/cloud/thirdparty/ab;)Z

    move-result v1

    if-eqz v1, :cond_51

    :cond_29
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->b(Lcom/iflytek/cloud/thirdparty/y;)V

    :goto_2c
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->k(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/aj;

    move-result-object v1

    iget-object v2, v0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/aj;->a([BZ)Z

    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->l(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_3f
    iget-object v1, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v1}, Lcom/iflytek/cloud/thirdparty/ab;->l(Lcom/iflytek/cloud/thirdparty/ab;)Lcom/iflytek/cloud/thirdparty/ak$a;

    move-result-object v1

    iget-object v0, v0, Lcom/iflytek/cloud/thirdparty/y;->c:[B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/iflytek/cloud/thirdparty/ak$a;->a([BZ)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_4b} :catch_4c

    goto :goto_9

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_51
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->a(Lcom/iflytek/cloud/thirdparty/y;)V

    goto :goto_2c

    :pswitch_55
    new-instance v0, Lcom/iflytek/cloud/thirdparty/y;

    new-array v1, v3, [B

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/iflytek/cloud/thirdparty/y;-><init>([BLjava/lang/String;)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/iflytek/cloud/thirdparty/y;->d:I

    const-string v1, "stream_id"

    iget-object v2, p0, Lcom/iflytek/cloud/thirdparty/ab$a;->a:Lcom/iflytek/cloud/thirdparty/ab;

    invoke-static {v2}, Lcom/iflytek/cloud/thirdparty/ab;->m(Lcom/iflytek/cloud/thirdparty/ab;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/cloud/thirdparty/y;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/iflytek/cloud/thirdparty/ab$a;->c(Lcom/iflytek/cloud/thirdparty/y;)V

    goto :goto_9

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_a
        :pswitch_55
    .end packed-switch
.end method
