.class public abstract Lcom/mqunar/yvideo/multivideo/VideoPlayer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static ACTION_BAR_EXIST:Z = false

.field private static CLICK_QUIT_FULLSCREEN_TIME:J = 0x0L

.field public static final CURRENT_STATE_AUTO_COMPLETE:I = 0x6

.field public static final CURRENT_STATE_ERROR:I = 0x7

.field public static final CURRENT_STATE_NORMAL:I = 0x0

.field public static final CURRENT_STATE_PAUSE:I = 0x5

.field public static final CURRENT_STATE_PLAYING:I = 0x3

.field public static final CURRENT_STATE_PREPARING:I = 0x1

.field public static final CURRENT_STATE_PREPARING_CHANGING_URL:I = 0x2

.field public static FULLSCREEN_ORIENTATION:I = 0x0

.field private static final FULL_SCREEN_NORMAL_DELAY:I = 0x12c

.field public static NORMAL_ORIENTATION:I = 0x0

.field public static SAVE_PROGRESS:Z = false

.field public static final SCREEN_WINDOW_FULLSCREEN:I = 0x2

.field public static final SCREEN_WINDOW_LIST:I = 0x1

.field public static final SCREEN_WINDOW_NORMAL:I = 0x0

.field public static final SCREEN_WINDOW_TINY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoPlayer"

.field private static final THRESHOLD:I = 0x50

.field private static TOOL_BAR_EXIST:Z = false

.field protected static UPDATE_PROGRESS_TIMER:Ljava/util/Timer; = null

.field protected static final URL_KEY_DEFAULT:Ljava/lang/String; = "URL_KEY_DEFAULT"

.field protected static USER_EVENT:Lcom/mqunar/yvideo/multivideo/UserAction;

.field public static WIFI_TIP_DIALOG_SHOWED:Z

.field private static lastAutoFullscreenTime:J

.field private static onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private _xDelta:I

.field private _yDelta:I

.field public bottomContainer:Landroid/view/ViewGroup;

.field public currentScreen:I

.field public currentState:I

.field public currentTimeTextView:Landroid/widget/TextView;

.field public dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

.field public fullscreenButton:Landroid/widget/ImageView;

.field public heightRatio:I

.field private isPrepare:Z

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mChangeBrightness:Z

.field protected mChangePosition:Z

.field protected mChangeVolume:Z

.field protected mDownX:F

.field protected mDownY:F

.field protected mGestureDownBrightness:F

.field protected mGestureDownPosition:J

.field protected mGestureDownVolume:I

.field private final mLayoutRunnable:Ljava/lang/Runnable;

.field protected mMuted:Z

.field protected mPaused:Z

.field protected mProgressTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

.field protected mRepeat:Z

.field protected mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field protected mScalableType:Lcom/mqunar/yvideo/multivideo/ScalableType;

.field protected mScreenHeight:I

.field protected mScreenWidth:I

.field protected mSeekTimePosition:J

.field protected mTouchingProgressBar:Z

.field protected mVolume:F

.field private mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

.field public positionInList:I

.field public progressBar:Landroid/widget/SeekBar;

.field private seekToInAdvance:J

.field public startButton:Landroid/widget/ImageView;

.field public textureViewContainer:Landroid/view/ViewGroup;

.field tmp_test_back:Z

.field public topContainer:Landroid/view/ViewGroup;

.field public totalTimeTextView:Landroid/widget/TextView;

.field public videoRotation:I

.field public widthRatio:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 63
    sput-boolean v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->ACTION_BAR_EXIST:Z

    .line 64
    sput-boolean v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->TOOL_BAR_EXIST:Z

    .line 67
    const/4 v0, 0x4

    sput v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->FULLSCREEN_ORIENTATION:I

    .line 68
    sput v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->NORMAL_ORIENTATION:I

    .line 71
    sput-boolean v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->SAVE_PROGRESS:Z

    .line 74
    sput-boolean v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    .line 77
    sput-wide v3, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 79
    sput-wide v3, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J

    .line 150
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$1;

    invoke-direct {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$1;-><init>()V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    iput v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekToInAdvance:J

    .line 104
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->widthRatio:I

    .line 105
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->heightRatio:I

    .line 108
    iput v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    .line 113
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 115
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->NONE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScalableType:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 116
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mRepeat:Z

    .line 117
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mPaused:Z

    .line 118
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mMuted:Z

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mVolume:F

    .line 122
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    .line 124
    iput v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->positionInList:I

    .line 125
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->videoRotation:I

    .line 140
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->tmp_test_back:Z

    .line 634
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 176
    invoke-virtual {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->init(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekToInAdvance:J

    .line 104
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->widthRatio:I

    .line 105
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->heightRatio:I

    .line 108
    iput v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    .line 113
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 115
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->NONE:Lcom/mqunar/yvideo/multivideo/ScalableType;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScalableType:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 116
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mRepeat:Z

    .line 117
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mPaused:Z

    .line 118
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mMuted:Z

    .line 119
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mVolume:F

    .line 122
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    .line 124
    iput v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->positionInList:I

    .line 125
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->videoRotation:I

    .line 140
    iput-boolean v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->tmp_test_back:Z

    .line 634
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$3;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mLayoutRunnable:Ljava/lang/Runnable;

    .line 181
    invoke-virtual {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->init(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method static synthetic access$000()J
    .registers 2

    .prologue
    .line 40
    sget-wide v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J

    return-wide v0
.end method

.method static synthetic access$002(J)J
    .registers 2

    .prologue
    .line 40
    sput-wide p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J

    return-wide p0
.end method

.method public static backPress()Z
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_11

    .line 218
    :cond_10
    :goto_10
    return v0

    .line 199
    :cond_11
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_4a

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 201
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 202
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v2

    .line 203
    iget v0, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-ne v0, v6, :cond_43

    const/16 v0, 0x8

    :goto_37
    invoke-virtual {v2, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 206
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->playOnThisVideoPlayer()V

    :goto_41
    move v0, v1

    .line 210
    goto :goto_10

    .line 203
    :cond_43
    const/16 v0, 0xa

    goto :goto_37

    .line 208
    :cond_46
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->quitFullscreenOrTinyWindow()V

    goto :goto_41

    .line 211
    :cond_4a
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-eq v2, v6, :cond_61

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v2

    iget v2, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 214
    :cond_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    .line 215
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->quitFullscreenOrTinyWindow()V

    move v0, v1

    .line 216
    goto :goto_10
.end method

.method public static clearSavedProgress(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 229
    invoke-static {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->clearSavedProgress(Landroid/content/Context;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method public static goOnPlayOnPause()V
    .registers 3

    .prologue
    .line 247
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 248
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    .line 249
    iget v1, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_18

    iget v1, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-eqz v1, :cond_18

    iget v1, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_19

    .line 258
    :cond_18
    :goto_18
    return-void

    .line 254
    :cond_19
    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePause()V

    .line 255
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->pause()V

    goto :goto_18
.end method

.method public static goOnPlayOnResume()V
    .registers 3

    .prologue
    .line 237
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 238
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    .line 239
    iget v1, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_15

    .line 240
    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePlaying()V

    .line 241
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->start()V

    .line 244
    :cond_15
    return-void
.end method

.method public static onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 338
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    .line 339
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v1

    .line 341
    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 342
    check-cast p0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2a

    .line 343
    iget v0, v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2b

    .line 344
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->releaseAllVideos()V

    .line 350
    :cond_2a
    :goto_2a
    return-void

    .line 346
    :cond_2b
    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startWindowTiny()V

    goto :goto_2a
.end method

.method public static onScrollAutoTiny(Landroid/widget/AbsListView;III)V
    .registers 7

    .prologue
    const/4 v2, 0x3

    .line 269
    add-int v0, p1, p2

    .line 270
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v1

    iget v1, v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->positionInList:I

    .line 271
    if-ltz v1, :cond_34

    .line 272
    if-lt v1, p1, :cond_11

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_3d

    .line 273
    :cond_11
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-eq v0, v2, :cond_34

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    .line 276
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_35

    .line 277
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->releaseAllVideos()V

    .line 289
    :cond_34
    :goto_34
    return-void

    .line 279
    :cond_35
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startWindowTiny()V

    goto :goto_34

    .line 283
    :cond_3d
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-ne v0, v2, :cond_34

    .line 285
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->backPress()Z

    goto :goto_34
.end method

.method public static onScrollReleaseAllVideos(Landroid/widget/AbsListView;III)V
    .registers 6

    .prologue
    .line 292
    add-int v0, p1, p2

    .line 293
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v1

    iget v1, v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->positionInList:I

    .line 294
    if-ltz v1, :cond_1c

    .line 295
    if-lt v1, p1, :cond_10

    add-int/lit8 v0, v0, -0x1

    if-le v1, v0, :cond_1c

    .line 296
    :cond_10
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    .line 297
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->releaseAllVideos()V

    .line 301
    :cond_1c
    return-void
.end method

.method public static quitFullscreenOrTinyWindow()V
    .registers 1

    .prologue
    .line 223
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->clearFloatScreen()V

    .line 224
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->releaseMediaPlayer()V

    .line 225
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->completeAll()V

    .line 226
    return-void
.end method

.method public static releaseAllVideos()V
    .registers 4

    .prologue
    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 187
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->completeAll()V

    .line 189
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->positionInList:I

    .line 191
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->releaseMediaPlayer()V

    .line 193
    :cond_1e
    return-void
.end method

.method private scaleVideoSize(II)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1239
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1252
    :cond_4
    :goto_4
    return-void

    .line 1243
    :cond_5
    new-instance v0, Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/Size;-><init>(II)V

    .line 1244
    new-instance v1, Lcom/mqunar/yvideo/multivideo/Size;

    invoke-direct {v1, p1, p2}, Lcom/mqunar/yvideo/multivideo/Size;-><init>(II)V

    .line 1245
    new-instance v2, Lcom/mqunar/yvideo/multivideo/ScaleManager;

    invoke-direct {v2, v0, v1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;-><init>(Lcom/mqunar/yvideo/multivideo/Size;Lcom/mqunar/yvideo/multivideo/Size;)V

    .line 1246
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScalableType:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v2, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getScaleMatrix(Lcom/mqunar/yvideo/multivideo/ScalableType;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_29

    .line 1248
    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1250
    :cond_29
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->invalidate()V

    .line 1251
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->requestLayout()V

    goto :goto_4
.end method

.method public static setMediaInterface(Lcom/mqunar/yvideo/multivideo/MediaInterface;)V
    .registers 2

    .prologue
    .line 1132
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iput-object p0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    .line 1133
    return-void
.end method

.method private setScalableType(Lcom/mqunar/yvideo/multivideo/ScalableType;)V
    .registers 4

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScalableType:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 1234
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->scaleVideoSize(II)V

    .line 1235
    return-void
.end method

.method private setState(III)V
    .registers 6

    .prologue
    .line 662
    packed-switch p1, :pswitch_data_22

    .line 685
    :goto_3
    :pswitch_3
    return-void

    .line 664
    :pswitch_4
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateNormal()V

    goto :goto_3

    .line 667
    :pswitch_8
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePreparing()V

    goto :goto_3

    .line 670
    :pswitch_c
    int-to-long v0, p3

    invoke-virtual {p0, p2, v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePreparingChangingUrl(IJ)V

    goto :goto_3

    .line 673
    :pswitch_11
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePlaying()V

    goto :goto_3

    .line 676
    :pswitch_15
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePause()V

    goto :goto_3

    .line 679
    :pswitch_19
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateError()V

    goto :goto_3

    .line 682
    :pswitch_1d
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateAutoComplete()V

    goto :goto_3

    .line 662
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_11
        :pswitch_3
        :pswitch_15
        :pswitch_1d
        :pswitch_19
    .end packed-switch
.end method

.method public static setTextureViewRotation(I)V
    .registers 3

    .prologue
    .line 353
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    if-eqz v0, :cond_a

    .line 354
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    int-to-float v1, p0

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setRotation(F)V

    .line 356
    :cond_a
    return-void
.end method

.method public static setUserAction(Lcom/mqunar/yvideo/multivideo/UserAction;)V
    .registers 1

    .prologue
    .line 233
    sput-object p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->USER_EVENT:Lcom/mqunar/yvideo/multivideo/UserAction;

    .line 234
    return-void
.end method


# virtual methods
.method public addTextureView()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 837
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 842
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    return-void
.end method

.method public autoFullscreen(F)V
    .registers 5

    .prologue
    const/4 v2, 0x3

    .line 1101
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-ne v0, v2, :cond_28

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-eq v0, v2, :cond_28

    .line 1105
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_29

    .line 1106
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 1110
    :goto_21
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 1111
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startWindowFullscreen()V

    .line 1113
    :cond_28
    return-void

    .line 1108
    :cond_29
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    goto :goto_21
.end method

.method public autoQuitFullscreen()V
    .registers 5

    .prologue
    .line 1116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 1120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->lastAutoFullscreenTime:J

    .line 1121
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->backPress()Z

    .line 1123
    :cond_26
    return-void
.end method

.method public cancelProgressTimer()V
    .registers 2

    .prologue
    .line 903
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 904
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 906
    :cond_9
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mProgressTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    if-eqz v0, :cond_12

    .line 907
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mProgressTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;->cancel()Z

    .line 909
    :cond_12
    return-void
.end method

.method public clearFloatScreen()V
    .registers 5

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 867
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 869
    sget v1, Lcom/mqunar/yvideo/R$id;->pub_react_video_fullscreen_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 870
    sget v2, Lcom/mqunar/yvideo/R$id;->pub_react_video_tiny_id:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 872
    if-eqz v1, :cond_3a

    .line 873
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 874
    iget-object v3, v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_3a

    .line 875
    iget-object v1, v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v3, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 877
    :cond_3a
    if-eqz v2, :cond_4a

    .line 878
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 879
    iget-object v0, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4a

    .line 880
    iget-object v0, v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 882
    :cond_4a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->setSecondFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    .line 883
    return-void
.end method

.method public clearFullscreenLayout()V
    .registers 4

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 855
    sget v1, Lcom/mqunar/yvideo/R$id;->pub_react_video_fullscreen_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 856
    sget v2, Lcom/mqunar/yvideo/R$id;->pub_react_video_tiny_id:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 857
    if-eqz v1, :cond_22

    .line 858
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 860
    :cond_22
    if-eqz v2, :cond_27

    .line 861
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 863
    :cond_27
    return-void
.end method

.method public dismissBrightnessDialog()V
    .registers 1

    .prologue
    .line 1166
    return-void
.end method

.method public dismissProgressDialog()V
    .registers 1

    .prologue
    .line 1150
    return-void
.end method

.method public dismissVolumeDialog()V
    .registers 1

    .prologue
    .line 1158
    return-void
.end method

.method public getCurrentPositionWhenPlaying()J
    .registers 5

    .prologue
    .line 932
    const-wide/16 v0, 0x0

    .line 934
    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_c

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_10

    .line 937
    :cond_c
    :try_start_c
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentPosition()J
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_f} :catch_11

    move-result-wide v0

    .line 943
    :cond_10
    :goto_10
    return-wide v0

    .line 938
    :catch_11
    move-exception v2

    .line 939
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_10
.end method

.method public getCurrentUrl()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .registers 4

    .prologue
    .line 947
    const-wide/16 v0, 0x0

    .line 951
    :try_start_2
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getDuration()J
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_5} :catch_7

    move-result-wide v0

    .line 956
    :goto_6
    return-wide v0

    .line 952
    :catch_7
    move-exception v2

    .line 953
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6
.end method

.method public abstract getLayoutId()I
.end method

.method protected handleProgress(IJJ)V
    .registers 6

    .prologue
    .line 1218
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getLayoutId()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 366
    sget v0, Lcom/mqunar/yvideo/R$id;->start:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startButton:Landroid/widget/ImageView;

    .line 367
    sget v0, Lcom/mqunar/yvideo/R$id;->fullscreen:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    .line 368
    sget v0, Lcom/mqunar/yvideo/R$id;->bottom_seek_progress:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    .line 369
    sget v0, Lcom/mqunar/yvideo/R$id;->current:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    .line 370
    sget v0, Lcom/mqunar/yvideo/R$id;->total:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    .line 371
    sget v0, Lcom/mqunar/yvideo/R$id;->layout_bottom:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    .line 372
    sget v0, Lcom/mqunar/yvideo/R$id;->surface_container:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    .line 373
    sget v0, Lcom/mqunar/yvideo/R$id;->layout_top:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->topContainer:Landroid/view/ViewGroup;

    .line 375
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->fullscreenButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 378
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 381
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenWidth:I

    .line 382
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenHeight:I

    .line 383
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 384
    return-void
.end method

.method public initTextureView()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 831
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->removeTextureView()V

    .line 832
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    .line 833
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 834
    return-void
.end method

.method public isCurrentPlay()Z
    .registers 3

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isCurrentVideoPlayer()Z
    .registers 2

    .prologue
    .line 1082
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onAutoCompletion()V
    .registers 5

    .prologue
    .line 773
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 774
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 775
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissVolumeDialog()V

    .line 776
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissProgressDialog()V

    .line 777
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissBrightnessDialog()V

    .line 778
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateAutoComplete()V

    .line 780
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 781
    :cond_21
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->backPress()Z

    .line 783
    :cond_24
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->releaseMediaPlayer()V

    .line 784
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 785
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;I)V
    .registers 5

    .prologue
    .line 329
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 331
    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 332
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->backPress()Z

    .line 335
    :cond_2a
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 432
    sget v1, Lcom/mqunar/yvideo/R$id;->start:I

    if-ne v0, v1, :cond_98

    .line 433
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 434
    :cond_18
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/mqunar/yvideo/R$string;->pub_react_video_no_url:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 468
    :cond_2d
    :goto_2d
    return-void

    .line 437
    :cond_2e
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-nez v0, :cond_6f

    .line 438
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_68

    sget-boolean v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_68

    .line 441
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showWNoWifiWarning()V

    goto :goto_2d

    .line 444
    :cond_68
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startVideo()V

    .line 445
    invoke-virtual {p0, v3}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    goto :goto_2d

    .line 446
    :cond_6f
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-ne v0, v4, :cond_7d

    .line 447
    invoke-virtual {p0, v4}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 448
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->pause()V

    .line 449
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePause()V

    goto :goto_2d

    .line 450
    :cond_7d
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8d

    .line 451
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 452
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->start()V

    .line 453
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePlaying()V

    goto :goto_2d

    .line 454
    :cond_8d
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-ne v0, v5, :cond_2d

    .line 455
    invoke-virtual {p0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 456
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startVideo()V

    goto :goto_2d

    .line 458
    :cond_98
    sget v1, Lcom/mqunar/yvideo/R$id;->fullscreen:I

    if-ne v0, v1, :cond_2d

    .line 459
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-eq v0, v5, :cond_2d

    .line 460
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-ne v0, v2, :cond_a8

    .line 462
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->backPress()Z

    goto :goto_2d

    .line 464
    :cond_a8
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 465
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startWindowFullscreen()V

    goto/16 :goto_2d
.end method

.method public onCompletion()V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 789
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1d

    .line 790
    :cond_c
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v0

    .line 791
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v3}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 793
    :cond_1d
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 794
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissBrightnessDialog()V

    .line 795
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissProgressDialog()V

    .line 796
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissVolumeDialog()V

    .line 797
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateNormal()V

    .line 798
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 799
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iput v4, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoWidth:I

    .line 800
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iput v4, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoHeight:I

    .line 802
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 803
    sget-object v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 804
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 805
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->clearFullscreenLayout()V

    .line 806
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->NORMAL_ORIENTATION:I

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 808
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_76

    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 809
    :cond_76
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_7f

    .line 810
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 811
    :cond_7f
    sput-object v5, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    .line 812
    sput-object v5, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 813
    return-void
.end method

.method public onError(II)V
    .registers 5

    .prologue
    const/16 v1, 0x26

    const/16 v0, -0x26

    .line 744
    if-eq p1, v1, :cond_20

    if-eq p2, v0, :cond_20

    if-eq p1, v0, :cond_20

    if-eq p2, v1, :cond_20

    const/16 v0, -0x13

    if-eq p2, v0, :cond_20

    .line 745
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateError()V

    .line 746
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 747
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->releaseMediaPlayer()V

    .line 750
    :cond_20
    return-void
.end method

.method public onEvent(I)V
    .registers 5

    .prologue
    .line 1126
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->USER_EVENT:Lcom/mqunar/yvideo/multivideo/UserAction;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentPlay()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    if-eqz v0, :cond_1b

    .line 1127
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->USER_EVENT:Lcom/mqunar/yvideo/multivideo/UserAction;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    invoke-interface {v0, p1, v1, v2}, Lcom/mqunar/yvideo/multivideo/UserAction;->onEvent(ILjava/lang/Object;I)V

    .line 1129
    :cond_1b
    return-void
.end method

.method public onInfo(II)V
    .registers 3

    .prologue
    .line 741
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 754
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 755
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 770
    :goto_13
    return-void

    .line 758
    :cond_14
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->widthRatio:I

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->heightRatio:I

    if-eqz v0, :cond_3e

    .line 759
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 760
    int-to-float v1, v0

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->heightRatio:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->widthRatio:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 761
    invoke-virtual {p0, v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setMeasuredDimension(II)V

    .line 763
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 764
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 765
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_13

    .line 767
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_13
.end method

.method public onPrepared()V
    .registers 1

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePrepared()V

    .line 654
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePlaying()V

    .line 655
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 9

    .prologue
    .line 987
    if-eqz p3, :cond_14

    .line 989
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 990
    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    int-to-long v3, p2

    mul-long/2addr v0, v3

    const-wide/16 v3, 0x64

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 992
    :cond_14
    return-void
.end method

.method public onSeekComplete()V
    .registers 1

    .prologue
    .line 1138
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .prologue
    .line 961
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 962
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 963
    :goto_7
    if-eqz v0, :cond_12

    .line 964
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 965
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_7

    .line 967
    :cond_12
    return-void
.end method

.method public onStateAutoComplete()V
    .registers 3

    .prologue
    .line 734
    const/4 v0, 0x6

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 735
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 736
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 737
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 738
    return-void
.end method

.method public onStateError()V
    .registers 2

    .prologue
    .line 729
    const/4 v0, 0x7

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 730
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 731
    return-void
.end method

.method public onStateNormal()V
    .registers 2

    .prologue
    .line 688
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 689
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 690
    return-void
.end method

.method public onStatePause()V
    .registers 2

    .prologue
    .line 724
    const/4 v0, 0x5

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 725
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startProgressTimer()V

    .line 726
    return-void
.end method

.method public onStatePlaying()V
    .registers 2

    .prologue
    .line 719
    const/4 v0, 0x3

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 720
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startProgressTimer()V

    .line 721
    return-void
.end method

.method public onStatePrepared()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 707
    iget-wide v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekToInAdvance:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 708
    iget-wide v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekToInAdvance:J

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaManager;->seekTo(J)V

    .line 709
    iput-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekToInAdvance:J

    .line 716
    :cond_f
    :goto_f
    return-void

    .line 711
    :cond_10
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getSavedProgress(Landroid/content/Context;Ljava/lang/Object;)J

    move-result-wide v0

    .line 712
    cmp-long v2, v0, v2

    if-eqz v2, :cond_f

    .line 713
    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaManager;->seekTo(J)V

    goto :goto_f
.end method

.method public onStatePreparing()V
    .registers 2

    .prologue
    .line 693
    const/4 v0, 0x1

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 694
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->resetProgressAndTime()V

    .line 695
    return-void
.end method

.method public onStatePreparingChangingUrl(IJ)V
    .registers 5

    .prologue
    .line 698
    const/4 v0, 0x2

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 699
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v0, p1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->setDefaultUrlMapIndex(I)V

    .line 700
    iput-wide p2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekToInAdvance:J

    .line 701
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->setDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V

    .line 702
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->setCurrentDataSource(Ljava/lang/String;)V

    .line 703
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->prepare()V

    .line 704
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x64

    const/4 v2, 0x5

    .line 971
    invoke-virtual {p0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 972
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startProgressTimer()V

    .line 973
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 974
    :goto_d
    if-eqz v0, :cond_18

    .line 975
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 976
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_d

    .line 978
    :cond_18
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-eq v0, v2, :cond_22

    .line 983
    :goto_21
    return-void

    .line 980
    :cond_22
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    .line 981
    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaManager;->seekTo(J)V

    .line 982
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getDuration()J

    move-result-wide v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->seekEvent(I)V

    goto :goto_21
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 16

    .prologue
    const/4 v12, 0x3

    const/4 v7, 0x1

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v10, 0x437f0000    # 255.0f

    const/4 v9, 0x0

    .line 472
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 473
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 475
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v3, v1

    .line 476
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v4, v1

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 478
    sget v5, Lcom/mqunar/yvideo/R$id;->surface_container:I

    if-ne v1, v5, :cond_28

    .line 479
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_212

    .line 607
    :cond_28
    :goto_28
    return v9

    .line 481
    :pswitch_29
    iput-boolean v7, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mTouchingProgressBar:Z

    .line 483
    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mDownX:F

    .line 484
    iput v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mDownY:F

    .line 485
    iput-boolean v9, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeVolume:Z

    .line 486
    iput-boolean v9, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangePosition:Z

    .line 487
    iput-boolean v9, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeBrightness:Z

    .line 489
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 490
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 492
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v1, v3, v1

    iput v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->_xDelta:I

    .line 493
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int v0, v4, v0

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->_yDelta:I

    goto :goto_28

    .line 497
    :pswitch_52
    iget v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mDownX:F

    sub-float v1, v0, v1

    .line 498
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mDownY:F

    sub-float v8, v2, v0

    .line 499
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 500
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 501
    iget v5, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_189

    .line 502
    iget-boolean v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangePosition:Z

    if-nez v3, :cond_95

    iget-boolean v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeVolume:Z

    if-nez v3, :cond_95

    iget-boolean v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeBrightness:Z

    if-nez v3, :cond_95

    .line 503
    const/high16 v3, 0x42a00000    # 80.0f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_7f

    const/high16 v3, 0x42a00000    # 80.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_95

    .line 504
    :cond_7f
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 505
    const/high16 v2, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_13c

    .line 508
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_95

    .line 509
    iput-boolean v7, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangePosition:Z

    .line 510
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getCurrentPositionWhenPlaying()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownPosition:J

    .line 550
    :cond_95
    :goto_95
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_c3

    .line 551
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getDuration()J

    move-result-wide v6

    .line 552
    iget-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownPosition:J

    long-to-float v0, v2

    long-to-float v2, v6

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    .line 553
    iget-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    cmp-long v0, v2, v6

    if-lez v0, :cond_b3

    .line 554
    iput-wide v6, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    .line 555
    :cond_b3
    iget-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    invoke-static {v2, v3}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-static {v6, v7}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    .line 558
    iget-wide v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V

    .line 560
    :cond_c3
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeVolume:Z

    if-eqz v0, :cond_20e

    .line 561
    neg-float v0, v8

    .line 562
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 563
    int-to-float v2, v1

    mul-float/2addr v2, v0

    mul-float/2addr v2, v11

    iget v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 564
    iget-object v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownVolume:I

    add-int/2addr v2, v4

    invoke-virtual {v3, v12, v2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 566
    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownVolume:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v1

    int-to-float v1, v1

    mul-float v2, v0, v11

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 567
    neg-float v2, v0

    invoke-virtual {p0, v2, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showVolumeDialog(FI)V

    .line 570
    :goto_f4
    iget-boolean v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeBrightness:Z

    if-eqz v1, :cond_28

    .line 571
    neg-float v0, v0

    .line 572
    mul-float v1, v10, v0

    mul-float/2addr v1, v11

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 573
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 574
    iget v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownBrightness:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    div-float/2addr v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1b4

    .line 575
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 581
    :goto_11c
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 583
    iget v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownBrightness:F

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v10

    mul-float/2addr v0, v11

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 584
    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showBrightnessDialog(I)V

    goto/16 :goto_28

    .line 514
    :cond_13c
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mDownX:F

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mScreenWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_17d

    .line 515
    iput-boolean v7, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeBrightness:Z

    .line 516
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 517
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_176

    .line 519
    :try_start_15d
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownBrightness:F
    :try_end_16e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_15d .. :try_end_16e} :catch_170

    goto/16 :goto_95

    .line 520
    :catch_170
    move-exception v0

    .line 521
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_95

    .line 524
    :cond_176
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    mul-float/2addr v0, v10

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownBrightness:F

    goto/16 :goto_95

    .line 527
    :cond_17d
    iput-boolean v7, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeVolume:Z

    .line 528
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v12}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownVolume:I

    goto/16 :goto_95

    .line 533
    :cond_189
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-ne v0, v12, :cond_95

    .line 534
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 536
    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->_xDelta:I

    sub-int v2, v3, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 537
    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->_yDelta:I

    sub-int v2, v4, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 540
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    if-gtz v2, :cond_1a9

    .line 541
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 544
    :cond_1a9
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-gtz v2, :cond_1af

    .line 545
    iput v9, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 548
    :cond_1af
    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_95

    .line 576
    :cond_1b4
    iget v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownBrightness:F

    int-to-float v4, v1

    add-float/2addr v3, v4

    div-float/2addr v3, v10

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1c5

    .line 577
    const v1, 0x3c23d70a    # 0.01f

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_11c

    .line 579
    :cond_1c5
    iget v3, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mGestureDownBrightness:F

    int-to-float v1, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v10

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_11c

    .line 589
    :pswitch_1ce
    iput-boolean v9, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mTouchingProgressBar:Z

    .line 590
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissProgressDialog()V

    .line 591
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissVolumeDialog()V

    .line 592
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissBrightnessDialog()V

    .line 593
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangePosition:Z

    if-eqz v0, :cond_200

    .line 594
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 595
    iget-wide v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    invoke-static {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaManager;->seekTo(J)V

    .line 596
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getDuration()J

    move-result-wide v0

    .line 597
    iget-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mSeekTimePosition:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1f8

    const-wide/16 v0, 0x1

    :cond_1f8
    div-long v0, v2, v0

    long-to-int v0, v0

    .line 598
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 600
    :cond_200
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mChangeVolume:Z

    if-eqz v0, :cond_209

    .line 601
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 603
    :cond_209
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startProgressTimer()V

    goto/16 :goto_28

    :cond_20e
    move v0, v8

    goto/16 :goto_f4

    .line 479
    nop

    :pswitch_data_212
    .packed-switch 0x0
        :pswitch_29
        :pswitch_1ce
        :pswitch_52
    .end packed-switch
.end method

.method public onVideoSizeChanged()V
    .registers 4

    .prologue
    .line 886
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    if-eqz v0, :cond_21

    .line 887
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->videoRotation:I

    if-eqz v0, :cond_10

    .line 888
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->videoRotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setRotation(F)V

    .line 890
    :cond_10
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v1

    iget v1, v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoWidth:I

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v2

    iget v2, v2, Lcom/mqunar/yvideo/multivideo/MediaManager;->currentVideoHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setVideoSize(II)V

    .line 893
    :cond_21
    return-void
.end method

.method public playOnThisVideoPlayer()V
    .registers 3

    .prologue
    .line 1089
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    .line 1090
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v1

    iget-object v1, v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getDefaultUrlMapIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->setDefaultUrlMapIndex(I)V

    .line 1091
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->clearFloatScreen()V

    .line 1093
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setState(I)V

    .line 1095
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->addTextureView()V

    .line 1096
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getVideoWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->getVideoHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->scaleVideoSize(II)V

    .line 1097
    return-void
.end method

.method public release()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 816
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    .line 819
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-ne v0, v4, :cond_2d

    .line 827
    :cond_2c
    :goto_2c
    return-void

    .line 821
    :cond_2d
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getSecondFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_41

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-eq v0, v4, :cond_2c

    .line 824
    :cond_41
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->releaseAllVideos()V

    goto :goto_2c
.end method

.method public removeTextureView()V
    .registers 3

    .prologue
    .line 846
    const/4 v0, 0x0

    sput-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->savedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 847
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 848
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 850
    :cond_1c
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 648
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 649
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->post(Ljava/lang/Runnable;)Z

    .line 650
    return-void
.end method

.method public resetProgressAndTime()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 925
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 926
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 927
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    return-void
.end method

.method protected seekEvent(I)V
    .registers 2

    .prologue
    .line 612
    return-void
.end method

.method public setBufferProgress(I)V
    .registers 3

    .prologue
    .line 921
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 922
    :cond_7
    return-void
.end method

.method public setMutedModifier(Z)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1281
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mMuted:Z

    .line 1282
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1290
    :goto_b
    return-void

    .line 1285
    :cond_c
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mMuted:Z

    if-eqz v0, :cond_16

    .line 1286
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0, v1, v1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setVolume(FF)V

    goto :goto_b

    .line 1288
    :cond_16
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mVolume:F

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setVolume(FF)V

    goto :goto_b
.end method

.method public setPausedModifier(Z)V
    .registers 3

    .prologue
    .line 1263
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mPaused:Z

    .line 1264
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1278
    :cond_a
    :goto_a
    return-void

    .line 1267
    :cond_b
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mPaused:Z

    if-eqz v0, :cond_21

    .line 1268
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1269
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->pause()V

    .line 1270
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setState(I)V

    goto :goto_a

    .line 1273
    :cond_21
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1274
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->start()V

    .line 1275
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setState(I)V

    goto :goto_a
.end method

.method public setProgressAndText(IJJ)V
    .registers 8

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mTouchingProgressBar:Z

    if-nez v0, :cond_b

    .line 914
    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 916
    :cond_b
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentTimeTextView:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    :cond_1a
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->totalTimeTextView:Landroid/widget/TextView;

    invoke-static {p4, p5}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 918
    return-void
.end method

.method public setRepeatModifier(Z)V
    .registers 3

    .prologue
    .line 1255
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mRepeat:Z

    .line 1256
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1257
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0, p1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setLooping(Z)V

    .line 1259
    :cond_f
    return-void
.end method

.method public setResizeModeModifier(Lcom/mqunar/yvideo/multivideo/ScalableType;)V
    .registers 3

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 1222
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    if-eqz v0, :cond_a

    .line 1223
    sget-object v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    iput-object p1, v0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 1226
    :cond_a
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1230
    :goto_12
    return-void

    .line 1229
    :cond_13
    invoke-direct {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setScalableType(Lcom/mqunar/yvideo/multivideo/ScalableType;)V

    goto :goto_12
.end method

.method public setState(I)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 658
    invoke-direct {p0, p1, v0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setState(III)V

    .line 659
    return-void
.end method

.method public setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;I)V
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    .line 393
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 426
    :cond_1d
    :goto_1d
    return-void

    .line 399
    :cond_1e
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 402
    :try_start_2e
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentPosition()J
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2e .. :try_end_31} :catch_5a

    move-result-wide v0

    .line 406
    :goto_32
    cmp-long v2, v0, v2

    if-eqz v2, :cond_41

    .line 407
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->saveProgress(Landroid/content/Context;Ljava/lang/Object;J)V

    .line 409
    :cond_41
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->releaseMediaPlayer()V

    .line 420
    :cond_48
    :goto_48
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    .line 421
    iput p2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    .line 422
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateNormal()V

    .line 423
    if-eqz p2, :cond_53

    if-ne p2, v4, :cond_1d

    .line 424
    :cond_53
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setPrepare(Z)V

    goto :goto_1d

    .line 403
    :catch_5a
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v0, v2

    goto :goto_32

    .line 410
    :cond_60
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentVideoPlayer()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 411
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startWindowTiny()V

    goto :goto_48

    .line 412
    :cond_74
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_96

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 413
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getCurrentVP()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_48

    .line 416
    iput-boolean v4, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->tmp_test_back:Z

    goto :goto_48

    .line 418
    :cond_96
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->isCurrentVideoPlayer()Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->getCurrentDataSource()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->dataSourceObjectsContainsUri(Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    goto :goto_48
.end method

.method public setViewAttachedEvent()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 305
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$2;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 326
    return-void
.end method

.method public setVolumeModifier(F)V
    .registers 3

    .prologue
    .line 1293
    iput p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mVolume:F

    .line 1294
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1298
    :goto_a
    return-void

    .line 1297
    :cond_b
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mMuted:Z

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setMutedModifier(Z)V

    goto :goto_a
.end method

.method public showBrightnessDialog(I)V
    .registers 2

    .prologue
    .line 1162
    return-void
.end method

.method public showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V
    .registers 8

    .prologue
    .line 1146
    return-void
.end method

.method public showVolumeDialog(FI)V
    .registers 3

    .prologue
    .line 1154
    return-void
.end method

.method public showWNoWifiWarning()V
    .registers 1

    .prologue
    .line 1141
    return-void
.end method

.method public startProgressTimer()V
    .registers 7

    .prologue
    .line 896
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->cancelProgressTimer()V

    .line 897
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    .line 898
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mProgressTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    .line 899
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->UPDATE_PROGRESS_TIMER:Ljava/util/Timer;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->mProgressTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayer$ProgressTimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 900
    return-void
.end method

.method public startVideo()V
    .registers 5

    .prologue
    .line 618
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->completeAll()V

    .line 619
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->initTextureView()V

    .line 620
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->addTextureView()V

    .line 621
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 622
    sget-object v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 623
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 625
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->setDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V

    .line 626
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->setCurrentDataSource(Ljava/lang/String;)V

    .line 627
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->positionInList:I

    iput v1, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->positionInList:I

    .line 628
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePreparing()V

    .line 629
    invoke-static {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->setFirstFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    .line 631
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->requestLayout()V

    .line 632
    return-void
.end method

.method public startWindowFullscreen()V
    .registers 6

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 998
    sget v1, Lcom/mqunar/yvideo/R$id;->pub_react_video_fullscreen_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 999
    if-eqz v1, :cond_1c

    .line 1000
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1002
    :cond_1c
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1004
    :try_start_23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1005
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 1006
    sget v2, Lcom/mqunar/yvideo/R$id;->pub_react_video_fullscreen_id:I

    invoke-virtual {v1, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setId(I)V

    .line 1007
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1009
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    const/16 v0, 0x1006

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setSystemUiVisibility(I)V

    .line 1021
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;I)V

    .line 1022
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setState(I)V

    .line 1024
    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->addTextureView()V

    .line 1025
    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->setSecondFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    .line 1028
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->FULLSCREEN_ORIENTATION:I

    invoke-static {v0, v2}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->setRequestedOrientation(Landroid/content/Context;I)V

    .line 1029
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateNormal()V

    .line 1030
    iget-object v0, v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->progressBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 1031
    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->startProgressTimer()V

    .line 1032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->CLICK_QUIT_FULLSCREEN_TIME:J
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_88} :catch_89

    .line 1037
    :goto_88
    return-void

    .line 1033
    :catch_89
    move-exception v0

    .line 1034
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method

.method public startWindowTiny()V
    .registers 6

    .prologue
    .line 1040
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onEvent(I)V

    .line 1041
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    .line 1069
    :cond_13
    :goto_13
    return-void

    .line 1043
    :cond_14
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1045
    sget v1, Lcom/mqunar/yvideo/R$id;->pub_react_video_tiny_id:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1046
    if-eqz v1, :cond_30

    .line 1047
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1049
    :cond_30
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->textureViewContainer:Landroid/view/ViewGroup;

    sget-object v2, Lcom/mqunar/yvideo/multivideo/MediaManager;->textureView:Lcom/mqunar/yvideo/multivideo/ResizeTextureView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1052
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 1053
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    .line 1054
    sget v2, Lcom/mqunar/yvideo/R$id;->pub_react_video_tiny_id:I

    invoke-virtual {v1, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setId(I)V

    .line 1055
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x190

    const/16 v4, 0x190

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1056
    const/16 v3, 0x55

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1057
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;I)V

    .line 1059
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentState:I

    invoke-virtual {v1, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setState(I)V

    .line 1061
    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->addTextureView()V

    .line 1062
    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->setSecondFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    .line 1063
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateNormal()V
    :try_end_80
    .catch Ljava/lang/InstantiationException; {:try_start_37 .. :try_end_80} :catch_81
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_80} :catch_86

    goto :goto_13

    .line 1064
    :catch_81
    move-exception v0

    .line 1065
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_13

    .line 1066
    :catch_86
    move-exception v0

    .line 1067
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method
