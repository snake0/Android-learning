.class public Lcom/mqunar/yvideo/multivideo/VideoPlayer$AutoFullscreenListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 1187
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .prologue
    .line 1171
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1172
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1173
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    .line 1175
    const/high16 v1, -0x3ec00000    # -12.0f

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1b

    const/high16 v1, 0x41400000    # 12.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3e

    .line 1176
    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # getter for: Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->access$000()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3e

    .line 1177
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 1178
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->autoFullscreen(F)V

    .line 1180
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J
    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->access$002(J)J

    .line 1183
    :cond_3e
    return-void
.end method
