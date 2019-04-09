.class public Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static SWIPE_MIN_DISTANCE:F

.field private static SWIPE_THRESHOLD_VELOCITY:F


# instance fields
.field private canFlip:Z

.field private detector:Landroid/support/v4/view/GestureDetectorCompat;

.field private final mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

.field private touchOnHScroll:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/high16 v0, 0x43160000    # 150.0f

    sput v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_MIN_DISTANCE:F

    .line 25
    const/high16 v0, 0x42c80000    # 100.0f

    sput v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_THRESHOLD_VELOCITY:F

    return-void
.end method

.method public constructor <init>(Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

    .line 29
    return-void
.end method

.method public static simulateKey(I)V
    .registers 2

    .prologue
    .line 127
    new-instance v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper$1;

    invoke-direct {v0, p0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper$1;-><init>(I)V

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper$1;->start()V

    .line 136
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->isCanFlip()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->touchOnHScroll:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->detector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v0, :cond_1c

    .line 112
    :goto_1b
    return v0

    .line 111
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->touchOnHScroll:Z

    .line 112
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1b
.end method

.method public isCanFlip()Z
    .registers 2

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->canFlip:Z

    return v0
.end method

.method public isTouchOnHScroll()Z
    .registers 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->touchOnHScroll:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 35
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-nez v0, :cond_37

    sget v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_MIN_DISTANCE:F

    :goto_16
    sput v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_MIN_DISTANCE:F

    .line 37
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    sput v0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_THRESHOLD_VELOCITY:F

    .line 38
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

    invoke-direct {v0, v1, p0}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->detector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 39
    if-eqz p1, :cond_36

    .line 40
    const-string v0, "canFlip"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->setCanFlip(Z)V

    .line 42
    :cond_36
    return-void

    .line 35
    :cond_37
    iget-object v0, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->mActivity:Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;

    invoke-virtual {v0}, Lcom/mqunar/core/basectx/launcherfragment/app/InnerFlipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x3

    int-to-float v0, v0

    goto :goto_16
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 83
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 103
    :cond_5
    :goto_5
    return v0

    .line 86
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 90
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 91
    mul-float/2addr v3, v3

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 92
    float-to-double v5, v2

    div-double v2, v5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    mul-double/2addr v2, v4

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 96
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_THRESHOLD_VELOCITY:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->SWIPE_MIN_DISTANCE:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_5

    .line 98
    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    .line 99
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->simulateKey(I)V

    .line 100
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    .prologue
    .line 79
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 45
    const-string v0, "canFlip"

    invoke-virtual {p0}, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->isCanFlip()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    .prologue
    .line 65
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setCanFlip(Z)V
    .registers 2

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->canFlip:Z

    .line 54
    return-void
.end method

.method public setTouchOnHScroll(Z)V
    .registers 2

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/mqunar/core/basectx/launcherfragment/app/FlipActivityHelper;->touchOnHScroll:Z

    .line 124
    return-void
.end method
