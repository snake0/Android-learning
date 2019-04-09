.class final Lqunar/lego/utils/GetInfoUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic val$sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SensorManager;)V
    .registers 2

    .prologue
    .line 670
    iput-object p1, p0, Lqunar/lego/utils/GetInfoUtils$3;->val$sensorManager:Landroid/hardware/SensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .prologue
    .line 681
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lqunar/lego/utils/GetInfoUtils;->lightSensorData:Ljava/lang/String;
    invoke-static {v0}, Lqunar/lego/utils/GetInfoUtils;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 674
    # getter for: Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->access$300()Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 675
    iget-object v0, p0, Lqunar/lego/utils/GetInfoUtils$3;->val$sensorManager:Landroid/hardware/SensorManager;

    # getter for: Lqunar/lego/utils/GetInfoUtils;->lightListener:Landroid/hardware/SensorEventListener;
    invoke-static {}, Lqunar/lego/utils/GetInfoUtils;->access$300()Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 677
    :cond_36
    return-void
.end method
