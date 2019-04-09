.class Lcom/mapquest/android/maps/MyLocationOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field geomagnetic:[F

.field gravity:[F

.field r:[F

.field final synthetic this$0:Lcom/mapquest/android/maps/MyLocationOverlay;


# direct methods
.method constructor <init>(Lcom/mapquest/android/maps/MyLocationOverlay;)V
    .registers 3

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->r:[F

    return-void
.end method

.method private reset([F)V
    .registers 4

    .prologue
    .line 69
    if-eqz p1, :cond_c

    .line 70
    const/4 v0, 0x0

    :goto_3
    array-length v1, p1

    if-ge v0, v1, :cond_c

    .line 71
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 75
    :cond_c
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Lcom/mapquest/android/maps/MyLocationOverlay;->onAccuracyChanged(II)V

    .line 111
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 78
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v5, :cond_29

    .line 79
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    if-eqz v0, :cond_18

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    array-length v1, v1

    if-eq v0, v1, :cond_1f

    .line 80
    :cond_18
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    .line 83
    :cond_1f
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    :cond_29
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v6, :cond_5a

    .line 87
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    .line 88
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    if-eqz v0, :cond_49

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    array-length v1, v1

    if-eq v0, v1, :cond_50

    .line 89
    :cond_49
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    .line 92
    :cond_50
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :cond_5a
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    if-eqz v0, :cond_a0

    .line 96
    iget-object v0, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->r:[F

    invoke-direct {p0, v0}, Lcom/mapquest/android/maps/MyLocationOverlay$1;->reset([F)V

    .line 97
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->r:[F

    const/4 v0, 0x0

    check-cast v0, [F

    iget-object v2, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->gravity:[F

    iget-object v3, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->geomagnetic:[F

    invoke-static {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 98
    new-array v0, v7, [F

    .line 99
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->r:[F

    invoke-static {v1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 100
    aget v1, v0, v4

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v4

    .line 101
    aget v1, v0, v5

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v5

    .line 102
    aget v1, v0, v6

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v0, v6

    .line 103
    iget-object v1, p0, Lcom/mapquest/android/maps/MyLocationOverlay$1;->this$0:Lcom/mapquest/android/maps/MyLocationOverlay;

    invoke-virtual {v1, v7, v0}, Lcom/mapquest/android/maps/MyLocationOverlay;->onSensorChanged(I[F)V

    .line 107
    :cond_a0
    return-void
.end method
