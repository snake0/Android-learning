.class public Lcom/mapquest/android/maps/TrackballGestureDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final EVENT_EXPIRY:I

.field private static final LONG_PRESS:I = 0x0

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final RESET:I = 0x2

.field private static final TAP:I = 0x1

.field private static final TAP_TIMEOUT:I


# instance fields
.field private currentDownX:F

.field private currentDownY:F

.field private doubleTap:Z

.field eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

.field private firstDownX:F

.field private firstDownY:F

.field private lastKeyDownTime:J

.field private lastKeyUpTime:J

.field private longPress:Z

.field private longPressRunnable:Ljava/lang/Runnable;

.field private scroll:Z

.field private scrollX:F

.field private scrollY:F

.field private tap:Z

.field private tapRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/mapquest/android/maps/TrackballGestureDetector;->LONG_PRESS_TIMEOUT:I

    .line 11
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/mapquest/android/maps/TrackballGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 12
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/mapquest/android/maps/TrackballGestureDetector;->TAP_TIMEOUT:I

    .line 154
    sget v0, Lcom/mapquest/android/maps/TrackballGestureDetector;->LONG_PRESS_TIMEOUT:I

    sget v1, Lcom/mapquest/android/maps/TrackballGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    add-int/2addr v0, v1

    sget v1, Lcom/mapquest/android/maps/TrackballGestureDetector;->TAP_TIMEOUT:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/mapquest/android/maps/TrackballGestureDetector;->EVENT_EXPIRY:I

    .line 155
    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPressRunnable:Ljava/lang/Runnable;

    .line 21
    iput-object v2, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tapRunnable:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-direct {v0, p0, v2}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;-><init>(Lcom/mapquest/android/maps/TrackballGestureDetector;Lcom/mapquest/android/maps/TrackballGestureDetector$1;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    .line 23
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    .line 24
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    .line 25
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    .line 26
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scroll:Z

    .line 27
    iput-wide v3, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyDownTime:J

    .line 28
    iput-wide v3, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyUpTime:J

    .line 34
    return-void
.end method

.method static synthetic access$102(Lcom/mapquest/android/maps/TrackballGestureDetector;Z)Z
    .registers 2

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mapquest/android/maps/TrackballGestureDetector;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPressRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mapquest/android/maps/TrackballGestureDetector;Z)Z
    .registers 2

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mapquest/android/maps/TrackballGestureDetector;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mapquest/android/maps/TrackballGestureDetector;)V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mapquest/android/maps/TrackballGestureDetector;->reset()V

    return-void
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 140
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    .line 141
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    .line 142
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scroll:Z

    .line 143
    iput-boolean v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    .line 144
    iput v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollX:F

    .line 145
    iput v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollY:F

    .line 146
    iput v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->currentDownX:F

    .line 147
    iput v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->currentDownY:F

    .line 148
    iput v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->firstDownY:F

    .line 149
    iput v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->firstDownY:F

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyUpTime:J

    .line 151
    return-void
.end method


# virtual methods
.method public analyze(Landroid/view/MotionEvent;)V
    .registers 12

    .prologue
    const/4 v9, 0x2

    const/high16 v3, 0x42c80000    # 100.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    mul-float/2addr v1, v3

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    mul-float/2addr v2, v3

    .line 40
    iget-object v3, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v3, v9}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 41
    packed-switch v0, :pswitch_data_f8

    .line 92
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    sget v1, Lcom/mapquest/android/maps/TrackballGestureDetector;->EVENT_EXPIRY:I

    int-to-long v1, v1

    invoke-virtual {v0, v9, v1, v2}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->sendEmptyMessageDelayed(IJ)Z

    .line 93
    return-void

    .line 43
    :pswitch_26
    iput v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->currentDownX:F

    .line 44
    iput v2, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->currentDownY:F

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyDownTime:J

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyUpTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget v0, Lcom/mapquest/android/maps/TrackballGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gez v0, :cond_55

    .line 47
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v0, v7}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 48
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v0, v8}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 49
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    .line 50
    iput-boolean v8, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    .line 51
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scroll:Z

    .line 52
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    goto :goto_1d

    .line 54
    :cond_55
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v0, v7}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 55
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Lcom/mapquest/android/maps/TrackballGestureDetector;->TAP_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    sget v5, Lcom/mapquest/android/maps/TrackballGestureDetector;->LONG_PRESS_TIMEOUT:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->sendEmptyMessageAtTime(IJ)Z

    .line 56
    iput v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->firstDownX:F

    .line 57
    iput v2, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->firstDownY:F

    goto :goto_1d

    .line 61
    :pswitch_70
    iget-wide v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyUpTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_88

    iget-wide v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyDownTime:J

    iget-wide v2, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyUpTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/mapquest/android/maps/TrackballGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_a9

    :cond_88
    iget-wide v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sget v2, Lcom/mapquest/android/maps/TrackballGestureDetector;->TAP_TIMEOUT:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_a9

    .line 62
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v0, v7}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 63
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    sget v1, Lcom/mapquest/android/maps/TrackballGestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v1, v1

    invoke-virtual {v0, v8, v1, v2}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    iput-boolean v8, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    .line 67
    :cond_a9
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    .line 68
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scroll:Z

    .line 69
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->lastKeyUpTime:J

    goto/16 :goto_1d

    .line 73
    :pswitch_b7
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    if-nez v0, :cond_e8

    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    if-nez v0, :cond_e8

    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    if-nez v0, :cond_e8

    .line 74
    iput v1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollX:F

    .line 75
    iput v2, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollY:F

    .line 76
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_db

    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_1d

    .line 77
    :cond_db
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v0, v7}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 78
    iput-boolean v8, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scroll:Z

    .line 79
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    .line 80
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPress:Z

    goto/16 :goto_1d

    .line 83
    :cond_e8
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    .line 84
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    goto/16 :goto_1d

    .line 88
    :pswitch_ee
    iget-object v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->eventDispatcher:Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;

    invoke-virtual {v0, v7}, Lcom/mapquest/android/maps/TrackballGestureDetector$EventDispatcher;->removeMessages(I)V

    .line 89
    iput-boolean v7, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    goto/16 :goto_1d

    .line 41
    nop

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_26
        :pswitch_70
        :pswitch_b7
        :pswitch_ee
    .end packed-switch
.end method

.method public getCurrentDownX()F
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->currentDownX:F

    return v0
.end method

.method public getCurrentDownY()F
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->currentDownY:F

    return v0
.end method

.method public getFirstDownX()F
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->firstDownX:F

    return v0
.end method

.method public getFirstDownY()F
    .registers 2

    .prologue
    .line 116
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->firstDownY:F

    return v0
.end method

.method public isDoubleTap()Z
    .registers 2

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->doubleTap:Z

    return v0
.end method

.method public isScroll()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scroll:Z

    return v0
.end method

.method public isTap()Z
    .registers 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tap:Z

    return v0
.end method

.method public registerLongPressCallback(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->longPressRunnable:Ljava/lang/Runnable;

    .line 97
    return-void
.end method

.method public registerTapCallback(Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->tapRunnable:Ljava/lang/Runnable;

    .line 101
    return-void
.end method

.method public scrollX()F
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollX:F

    return v0
.end method

.method public scrollY()F
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/mapquest/android/maps/TrackballGestureDetector;->scrollY:F

    return v0
.end method
