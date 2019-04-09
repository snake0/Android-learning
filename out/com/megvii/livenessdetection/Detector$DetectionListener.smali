.class public interface abstract Lcom/megvii/livenessdetection/Detector$DetectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onDetectionFailed(Lcom/megvii/livenessdetection/Detector$DetectionFailedType;)V
.end method

.method public abstract onDetectionSuccess(Lcom/megvii/livenessdetection/DetectionFrame;)Lcom/megvii/livenessdetection/Detector$DetectionType;
.end method

.method public abstract onFrameDetected(JLcom/megvii/livenessdetection/DetectionFrame;)V
.end method
