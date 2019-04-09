.class final Lcom/megvii/livenessdetection/Detector$a$7;
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
    .line 610
    iput-object p1, p0, Lcom/megvii/livenessdetection/Detector$a$7;->c:Lcom/megvii/livenessdetection/Detector$a;

    iput-object p2, p0, Lcom/megvii/livenessdetection/Detector$a$7;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iput-object p3, p0, Lcom/megvii/livenessdetection/Detector$a$7;->b:Lcom/megvii/livenessdetection/impl/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 613
    iget-object v0, p0, Lcom/megvii/livenessdetection/Detector$a$7;->a:Lcom/megvii/livenessdetection/Detector$DetectionListener;

    iget-object v1, p0, Lcom/megvii/livenessdetection/Detector$a$7;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v1, v1, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    invoke-static {v1}, Lcom/megvii/livenessdetection/Detector;->d(Lcom/megvii/livenessdetection/Detector;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a$7;->c:Lcom/megvii/livenessdetection/Detector$a;

    iget-object v3, v3, Lcom/megvii/livenessdetection/Detector$a;->a:Lcom/megvii/livenessdetection/Detector;

    .line 614
    invoke-static {v3}, Lcom/megvii/livenessdetection/Detector;->e(Lcom/megvii/livenessdetection/Detector;)Lcom/megvii/livenessdetection/DetectionConfig;

    move-result-object v3

    iget-wide v3, v3, Lcom/megvii/livenessdetection/DetectionConfig;->timeout:J

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/megvii/livenessdetection/Detector$a$7;->b:Lcom/megvii/livenessdetection/impl/b;

    .line 613
    invoke-interface {v0, v1, v2, v3}, Lcom/megvii/livenessdetection/Detector$DetectionListener;->onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V

    .line 616
    return-void
.end method
