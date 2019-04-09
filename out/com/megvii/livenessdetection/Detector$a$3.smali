.class final Lcom/megvii/livenessdetection/Detector$a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

.field private synthetic b:Lcom/megvii/livenessdetection/impl/b;

.field private synthetic c:Lcom/megvii/livenessdetection/Detector$a;


# direct methods
.method constructor <init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/impl/b;)V
    .registers 4

    .prologue
    .line 522
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector$a$3;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iput-object p3, p0, Lcom/megvii/livenessdetection/Detector$a$3;->b:Lcom/megvii/livenessdetection/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 526
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v3, v3, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 527
    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v3

    iget-wide v3, v3, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a$3;->b:Lcom/megvii/livenessdetection/impl/b;

    .line 526
    invoke-interface {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V

    .line 529
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->b:Lcom/megvii/livenessdetection/impl/b;

    .line 530
    invoke-interface {v0, v1}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onDetectionSuccess(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_2d

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    if-ne v0, v1, :cond_78

    .line 532
    :cond_2d
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    sget-object v1, Lcom/megvii/livenessdetection/Detector$DetectionType;->DONE:Lcom/megvii/livenessdetection/Detector$DetectionType;

    invoke-static {v0, v1}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;Lcom/megvii/livenessdetection/Detector$DetectionType;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    .line 533
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->a(Lcom/megvii/livenessdetection/Detector;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 534
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 535
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;

    move-result-object v0

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->c(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/Detector$DetectionType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/megvii/livenessdeteciton/obf/a;->a(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    .line 536
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v0, v0, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v0}, Lcom/megvii/livenessdetection/Detector;->i(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/e;

    move-result-object v0

    const-string v1, "8cd0604ba33e2ba7f38a56f0aec08a54"

    iget-object v2, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v2, v2, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v2}, Lcom/megvii/livenessdetection/Detector;->h(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdeteciton/obf/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/megvii/livenessdeteciton/obf/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/megvii/livenessdeteciton/obf/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_77
    :goto_77
    return-void

    .line 541
    :cond_78
    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$3;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-virtual {v1, v0}, Lcom/megvii/livenessdetection/Detector;->changeDetectionType(Lcom/megvii/livenessdetection/Detector$DetectionType;)V

    goto :goto_77
.end method
