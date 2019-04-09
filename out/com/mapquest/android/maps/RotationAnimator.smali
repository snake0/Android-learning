.class Lcom/mapquest/android/maps/RotationAnimator;
.super Lcom/mapquest/android/maps/Animator;
.source "SourceFile"


# static fields
.field private static final ANIMATION_DURATION:I = 0x384

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentDeg:F

.field private deltaDeg:F

.field private startTime:J

.field private toDeg:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-class v0, Lcom/mapquest/android/maps/RotationAnimator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/RotationAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/Animator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 13
    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    .line 14
    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    .line 15
    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->startTime:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;F)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/RotationAnimator;-><init>(Lcom/mapquest/android/maps/MapView;)V

    .line 29
    iput p2, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/Animator;-><init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V

    .line 21
    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    .line 22
    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    .line 23
    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->startTime:J

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;F)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/mapquest/android/maps/RotationAnimator;-><init>(Lcom/mapquest/android/maps/MapView;Ljava/lang/Runnable;)V

    .line 34
    iput p3, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    .line 35
    return-void
.end method


# virtual methods
.method public doAnimation()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/mapquest/android/maps/RotationAnimator;->startTime:J

    sub-long/2addr v0, v3

    .line 50
    invoke-virtual {p0}, Lcom/mapquest/android/maps/RotationAnimator;->getDuration()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2b

    iget v3, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    iget v4, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2b

    .line 51
    invoke-virtual {p0}, Lcom/mapquest/android/maps/RotationAnimator;->getDuration()I

    move-result v0

    int-to-long v0, v0

    .line 54
    :cond_2b
    iget v3, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    iget v4, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_35

    move v0, v2

    .line 71
    :goto_34
    return v0

    .line 56
    :cond_35
    invoke-virtual {p0}, Lcom/mapquest/android/maps/RotationAnimator;->getDuration()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v0, v3

    if-gtz v3, :cond_90

    .line 57
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    iget v3, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    .line 58
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43340000    # 180.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6f

    .line 59
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v2, v7, v2

    iput v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    .line 60
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    iget v3, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6f

    .line 61
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    .line 62
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    add-float/2addr v2, v7

    iput v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    .line 66
    :cond_6f
    iget v2, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/RotationAnimator;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/mapquest/android/maps/RotationAnimator;->deltaDeg:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    rem-float/2addr v0, v7

    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    .line 67
    iget-object v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    iget v1, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/MapView;->setMapRotation(F)V

    .line 68
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 69
    const/4 v0, 0x1

    goto :goto_34

    :cond_90
    move v0, v2

    .line 71
    goto :goto_34
.end method

.method public postAnimation()V
    .registers 2

    .prologue
    .line 76
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 77
    return-void
.end method

.method public preAnimation()V
    .registers 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/mapquest/android/maps/RotationAnimator;->getDuration()I

    move-result v0

    if-nez v0, :cond_b

    .line 39
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/RotationAnimator;->setDuration(I)V

    .line 42
    :cond_b
    iget-object v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->getMapRotation()F

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->currentDeg:F

    .line 43
    iget v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    iput v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->toDeg:F

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/RotationAnimator;->startTime:J

    .line 45
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/mapquest/android/maps/EventDispatcher;->sendEmptyMessage(I)V

    .line 46
    return-void
.end method
