.class final Lcom/megvii/livenessdetection/Detector$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/megvii/livenessdetection/Detector;

.field private b:Lcom/megvii/livenessdeteciton/obf/b;


# direct methods
.method public constructor <init>(Lcom/megvii/livenessdetection/Detector;)V
    .registers 4

    .prologue
    .line 429
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 430
    new-instance v0, Lcom/megvii/livenessdeteciton/obf/b;

    invoke-direct {v0}, Lcom/megvii/livenessdeteciton/obf/b;-><init>()V

    iput-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->b:Lcom/megvii/livenessdeteciton/obf/b;

    .line 431
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->b:Lcom/megvii/livenessdeteciton/obf/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdeteciton/obf/b;->a(Z)V

    .line 432
    return-void
.end method

.method private a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V
    .registers 7

    .prologue
    .line 464
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/megvii/livenessdeteciton/obf/a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V

    .line 465
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 466
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;

    move-result-object v0

    const-string v1, "8cd0604ba33e2ba7f38a56f0aec08a54"

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/livenessdeteciton/obf/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_2e
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Z)Z

    .line 469
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/megvii/livenessdetection/Detector$a$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/megvii/livenessdetection/Detector$a$1;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 480
    return-void
.end method

.method private a(Lcom/megvii/livenessdetection/impl/b;)V
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->n(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;

    move-result-object v0

    if-nez v0, :cond_d

    .line 631
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0, p1}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;

    .line 634
    :cond_d
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->n(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/megvii/livenessdetection/impl/b;->a(Lcom/megvii/livenessdetection/DetectionFrame;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 635
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0, p1}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;

    .line 638
    :cond_1e
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    .line 438
    :cond_2
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/megvii/livenessdetection/impl/b;

    move-object v9, v0

    .line 439
    if-eqz v9, :cond_2

    .line 442
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v1, v2, :cond_2

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v5}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v5

    iget-wide v5, v5, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_67

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v1, v2, :cond_67

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 445
    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v1, v2, :cond_67

    .line 447
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->f(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 448
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->g(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionListener;

    move-result-object v1

    .line 449
    sget-object v2, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TIMEOUT:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v2, v1, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto :goto_2

    .line 460
    :catch_65
    move-exception v1

    return-void

    .line 452
    :cond_67
    invoke-virtual {v9}, Lcom/megvii/livenessdetection/impl/b;->getYUVData()[B

    move-result-object v5

    invoke-virtual {v9}, Lcom/megvii/livenessdetection/impl/b;->getImageWidth()I

    move-result v6

    .line 453
    invoke-virtual {v9}, Lcom/megvii/livenessdetection/impl/b;->getImageHeight()I

    move-result v7

    .line 454
    invoke-virtual {v9}, Lcom/megvii/livenessdetection/impl/b;->getRotation()I

    move-result v8

    .line 1484
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v10

    .line 1485
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->g(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionListener;

    move-result-object v11

    .line 1486
    if-eqz v10, :cond_2

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-eqz v1, :cond_2

    if-eqz v11, :cond_2

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->f(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1488
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->k(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1489
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;Z)Z

    .line 1490
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;J)V

    .line 1492
    :cond_b2
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->b(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v2

    # getter for: Lcom/megvii/livenessdetection/Detector$DetectionType;->mInterVal:I
    invoke-static {v10}, Lcom/megvii/livenessdetection/Detector$DetectionType;->access$1200(Lcom/megvii/livenessdetection/Detector$DetectionType;)I

    move-result v4

    invoke-static/range {v1 .. v8}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;JI[BIII)Ljava/lang/String;
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_c1} :catch_65

    move-result-object v1

    .line 1495
    :try_start_c2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1496
    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->f(Lcom/megvii/livenessdetection/Detector;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v9}, Lcom/megvii/livenessdetection/impl/b;->a()Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v3

    if-ne v10, v3, :cond_2

    .line 1499
    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/megvii/livenessdetection/Detector$a;->b:Lcom/megvii/livenessdeteciton/obf/b;

    invoke-virtual {v9, v1, v3, v4}, Lcom/megvii/livenessdetection/impl/b;->a(Ljava/lang/String;Lcom/megvii/livenessdetection/DetectionConfig;Lcom/megvii/livenessdeteciton/obf/b;)V

    .line 1500
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->NONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-eq v10, v1, :cond_e8

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->AIMLESS:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-ne v10, v1, :cond_103

    .line 1501
    :cond_e8
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v9, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1502
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$2;

    invoke-direct {v2, p0, v11, v9}, Lcom/megvii/livenessdetection/Detector$a$2;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_fb} :catch_fd
    .catch Ljava/lang/InterruptedException; {:try_start_c2 .. :try_end_fb} :catch_65

    goto/16 :goto_2

    .line 1623
    :catch_fd
    move-exception v1

    .line 1625
    :try_start_fe
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_101
    .catch Ljava/lang/InterruptedException; {:try_start_fe .. :try_end_101} :catch_65

    goto/16 :goto_2

    .line 1512
    :cond_103
    :try_start_103
    invoke-virtual {v9}, Lcom/megvii/livenessdetection/impl/b;->hasFace()Z

    move-result v1

    if-eqz v1, :cond_10e

    .line 1513
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1, v9}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/impl/b;)Lcom/megvii/livenessdetection/impl/b;

    .line 1515
    :cond_10e
    const-string v1, "result"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1516
    packed-switch v1, :pswitch_data_1d4

    goto/16 :goto_2

    .line 1519
    :pswitch_119
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->m(Lcom/megvii/livenessdetection/Detector;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->l(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/impl/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1520
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Z)Z

    .line 1521
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v9, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1522
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$3;

    invoke-direct {v2, p0, v11, v9}, Lcom/megvii/livenessdetection/Detector$a$3;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1549
    :pswitch_143
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->NONE:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v9, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1550
    invoke-direct {p0, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/impl/b;)V

    .line 1551
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$4;

    invoke-direct {v2, p0, v11, v9}, Lcom/megvii/livenessdetection/Detector$a$4;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1562
    :pswitch_15b
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$5;

    invoke-direct {v2, p0, v11, v9}, Lcom/megvii/livenessdetection/Detector$a$5;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1575
    :pswitch_16b
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->NOTVIDEO:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v11, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_2

    .line 1578
    :pswitch_172
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->MASK:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v11, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_2

    .line 1581
    :pswitch_179
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACELOSTNOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v11, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_2

    .line 1584
    :pswitch_180
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->TOOMANYFACELOST:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v11, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_2

    .line 1587
    :pswitch_187
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->FACENOTCONTINUOUS:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v11, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_2

    .line 1590
    :pswitch_18e
    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionFailedType;->ACTIONBLEND:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0, v1, v11, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;)V

    goto/16 :goto_2

    .line 1593
    :pswitch_195
    const-string v1, "LivenessDetection"

    const-string v2, "wait for normal success"

    invoke-static {v1, v2}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->WAITINGNORMAL:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v9, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1595
    invoke-direct {p0, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/impl/b;)V

    .line 1596
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$6;

    invoke-direct {v2, p0, v11, v9}, Lcom/megvii/livenessdetection/Detector$a$6;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 1607
    :pswitch_1b4
    const-string v1, "LivenessDetection"

    const-string v2, "is waiting for normal"

    invoke-static {v1, v2}, Lcom/megvii/livenessdeteciton/obf/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    sget-object v1, Lcom/megvii/livenessdetection/DetectionFrame$FrameType;->WAITINGNORMAL:Lcom/megvii/livenessdetection/DetectionFrame$FrameType;

    invoke-virtual {v9, v1}, Lcom/megvii/livenessdetection/impl/b;->setFrameType(Lcom/megvii/livenessdetection/DetectionFrame$FrameType;)V

    .line 1609
    invoke-direct {p0, v9}, Lcom/megvii/livenessdetection/Detector$a;->a(Lcom/megvii/livenessdetection/impl/b;)V

    .line 1610
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->j(Lcom/megvii/livenessdetection/Detector;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/megvii/livenessdetection/Detector$a$7;

    invoke-direct {v2, p0, v11, v9}, Lcom/megvii/livenessdetection/Detector$a$7;-><init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_1d1} :catch_fd
    .catch Ljava/lang/InterruptedException; {:try_start_103 .. :try_end_1d1} :catch_65

    goto/16 :goto_2

    .line 1516
    nop

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_119
        :pswitch_143
        :pswitch_15b
        :pswitch_16b
        :pswitch_18e
        :pswitch_195
        :pswitch_1b4
        :pswitch_172
        :pswitch_187
        :pswitch_180
        :pswitch_179
    .end packed-switch
.end method
