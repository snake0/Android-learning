.class public Lcom/iflytek/cloud/util/Accelerometer;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Z

.field private d:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->a:Landroid/hardware/SensorManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Z

    new-instance v0, Lcom/iflytek/cloud/util/Accelerometer$1;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/util/Accelerometer$1;-><init>(Lcom/iflytek/cloud/util/Accelerometer;)V

    iput-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->d:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->a:Landroid/hardware/SensorManager;

    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    sput-object v0, Lcom/iflytek/cloud/util/Accelerometer;->c:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;)Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;
    .registers 1

    sput-object p0, Lcom/iflytek/cloud/util/Accelerometer;->c:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    return-object p0
.end method

.method public static getDirection()I
    .registers 1

    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer;->c:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    invoke-virtual {v0}, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->getValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public start()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Z

    if-eqz v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iput-boolean v3, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Z

    sget-object v0, Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;->Deg0:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    sput-object v0, Lcom/iflytek/cloud/util/Accelerometer;->c:Lcom/iflytek/cloud/util/Accelerometer$CLOCKWISE_ANGLE;

    iget-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/iflytek/cloud/util/Accelerometer;->d:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/iflytek/cloud/util/Accelerometer;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_5
.end method

.method public stop()V
    .registers 3

    iget-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->b:Z

    iget-object v0, p0, Lcom/iflytek/cloud/util/Accelerometer;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/iflytek/cloud/util/Accelerometer;->d:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_4
.end method
