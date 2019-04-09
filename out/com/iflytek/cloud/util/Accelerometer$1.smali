.class Lcom/iflytek/cloud/util/Accelerometer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/util/Accelerometer;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/util/Accelerometer;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/cloud/util/Accelerometer$1;->a:Lcom/iflytek/cloud/util/Accelerometer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    const/4 v2, 0x1

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3f

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-gtz v2, :cond_2a

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3f

    :cond_2a
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_46

    cmpl-float v0, v0, v4

    if-lez v0, :cond_40

    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {v0}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg180:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {v0}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_3f

    :cond_46
    cmpl-float v0, v1, v4

    if-lez v0, :cond_50

    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg90:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {v0}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_3f

    :cond_50
    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg270:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-static {v0}, Lcom/iflytek/cloud/util/Accelerometer;->a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    goto :goto_3f
.end method
