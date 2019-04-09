.class final Lcom/megvii/livenessdetection/Detector$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

.field private synthetic b:Lcom/megvii/livenessdetection/DetectionFrame;

.field private synthetic c:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

.field private synthetic d:Lcom/megvii/livenessdetection/Detector$a;


# direct methods
.method constructor <init>(Lcom/megvii/livenessdetection/Detector$a;Lcom/megvii/livenessdetection/Detector$DetectionListener;Lcom/megvii/livenessdetection/DetectionFrame;Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V
    .registers 5

    .prologue
    .line 469
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a$1;->d:Lcom/megvii/livenessdetection/Detector$a;

    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector$a$1;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iput-object p3, p0, Lcom/megvii/livenessdetection/Detector$a$1;->b:Lcom/megvii/livenessdetection/DetectionFrame;

    iput-object p4, p0, Lcom/megvii/livenessdetection/Detector$a$1;->c:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 472
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$1;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$1;->d:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a$1;->d:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v3, v3, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 473
    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v3

    iget-wide v3, v3, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a$1;->b:Lcom/megvii/livenessdetection/DetectionFrame;

    .line 472
    invoke-interface {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V

    .line 475
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$1;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$1;->c:Lcom/megvii/livenessdetection/Detector$DetectionFailedType;

    .line 476
    invoke-interface {v0, v1}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onDetectionFailed(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V

    .line 477
    return-void
.end method
