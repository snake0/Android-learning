.class public Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;
.super Lcom/mqunar/yvideo/multivideo/VideoPlayer;
.source "SourceFile"


# static fields
.field protected static DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

.field public static LAST_GET_BATTERYLEVEL_PERCENT:I

.field public static LAST_GET_BATTERYLEVEL_TIME:J


# instance fields
.field public backButton:Landroid/widget/ImageView;

.field private battertReceiver:Landroid/content/BroadcastReceiver;

.field public batteryLevel:Landroid/widget/ImageView;

.field public batteryTimeLayout:Landroid/widget/LinearLayout;

.field public bottomProgressBar:Landroid/widget/ProgressBar;

.field public clarity:Landroid/widget/TextView;

.field public clarityPopWindow:Landroid/widget/PopupWindow;

.field public loadingProgressBar:Landroid/widget/ProgressBar;

.field protected mBrightnessDialog:Landroid/app/Dialog;

.field protected mCloseBtnIsShow:Z

.field protected mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogBrightnessTextView:Landroid/widget/TextView;

.field protected mDialogIcon:Landroid/widget/ImageView;

.field protected mDialogProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogSeekTime:Landroid/widget/TextView;

.field protected mDialogTotalTime:Landroid/widget/TextView;

.field protected mDialogVolumeImageView:Landroid/widget/ImageView;

.field protected mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

.field protected mDialogVolumeTextView:Landroid/widget/TextView;

.field protected mDismissControlViewTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;

.field protected mMuteIV:Landroid/widget/ImageView;

.field protected mMuteLayout:Landroid/widget/LinearLayout;

.field protected mMuteRB:Landroid/widget/RadioButton;

.field protected mNoWifiBtn:Landroid/widget/TextView;

.field protected mNoWifiLayout:Landroid/widget/LinearLayout;

.field protected mProgressDialog:Landroid/app/Dialog;

.field public mRetryBtn:Landroid/widget/TextView;

.field public mRetryLayout:Landroid/widget/LinearLayout;

.field protected mVolumeDialog:Landroid/app/Dialog;

.field public replayTextView:Landroid/widget/TextView;

.field public thumbImageView:Landroid/widget/ImageView;

.field public tinyBackImageView:Landroid/widget/ImageView;

.field public titleTextView:Landroid/widget/TextView;

.field public videoCurrentTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 84
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    .line 85
    const/16 v0, 0x46

    sput v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mCloseBtnIsShow:Z

    .line 98
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mCloseBtnIsShow:Z

    .line 98
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$1;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->downloadBitmap(Ljava/lang/String;)V

    return-void
.end method

.method private downloadBitmap(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 240
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$3;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V

    .line 271
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Ljava/lang/String;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v1

    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 272
    return-void
.end method

.method private handleMute()V
    .registers 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteRB:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 480
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteRB:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 481
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteRB:Landroid/widget/RadioButton;

    const-string v1, "\u6253\u5f00\u58f0\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteIV:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_close_volume:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 483
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolume:F

    .line 491
    :goto_1f
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    iget v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolume:F

    iget v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolume:F

    invoke-virtual {v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->setVolume(FF)V

    .line 492
    return-void

    .line 486
    :cond_2d
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteRB:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 487
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteRB:Landroid/widget/RadioButton;

    const-string v1, "\u5173\u95ed\u58f0\u97f3"

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteIV:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_add_volume:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 489
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolume:F

    goto :goto_1f
.end method

.method private loadImg(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V
    .registers 5

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v0

    const-string v2, "URL_KEY_DEFAULT"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mqunar/yvideo/utils/StringUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-static {v0}, Lcom/mqunar/yvideo/utils/FileUtils;->fileIsExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->downloadBitmap(Ljava/lang/String;)V

    .line 237
    :goto_55
    return-void

    .line 216
    :cond_56
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$2;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;Lcom/mqunar/yvideo/multivideo/DataSourceBean;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_55
.end method

.method private setAllControlsVisiblity(IIIIIII)V
    .registers 9

    .prologue
    .line 773
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->topContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 776
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 777
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 779
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mRetryLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    return-void
.end method


# virtual methods
.method public cancelDismissControlViewTimer()V
    .registers 2

    .prologue
    .line 925
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    if-eqz v0, :cond_9

    .line 926
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 928
    :cond_9
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;

    if-eqz v0, :cond_12

    .line 929
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;->cancel()Z

    .line 932
    :cond_12
    return-void
.end method

.method public changeStartButtonSize(I)V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 276
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 278
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 279
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    return-void
.end method

.method public changeUiToComplete()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 731
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_22

    .line 747
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    .line 734
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 736
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    :pswitch_15
    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    .line 739
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 741
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    .line 731
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public changeUiToError()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 750
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_24

    .line 766
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v3

    .line 753
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 755
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    :pswitch_15
    move-object v2, p0

    move v4, v1

    move v5, v3

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, v3

    .line 758
    invoke-direct/range {v2 .. v9}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 760
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    .line 750
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public changeUiToNormal()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 623
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_22

    .line 638
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    .line 626
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 628
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    :pswitch_15
    move-object v0, p0

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    .line 631
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 633
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    .line 623
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public changeUiToPauseClear()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x4

    .line 714
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_1c

    .line 728
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    .line 717
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_7

    :pswitch_12
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    .line 721
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_7

    .line 714
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method public changeUiToPauseShow()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 696
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_22

    .line 711
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 699
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 701
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    :pswitch_15
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 704
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 706
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    .line 696
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public changeUiToPlayingClear()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x4

    .line 679
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_1c

    .line 693
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    .line 682
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_7

    :pswitch_12
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v7, v1

    .line 686
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    goto :goto_7

    .line 679
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_12
    .end packed-switch
.end method

.method public changeUiToPlayingShow()V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x4

    .line 660
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_22

    .line 676
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 663
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 665
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    :pswitch_15
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v4

    move v7, v4

    .line 668
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 670
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    .line 660
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method public changeUiToPreparing()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x4

    .line 641
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    packed-switch v0, :pswitch_data_22

    .line 657
    :goto_7
    return-void

    :pswitch_8
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    move v7, v1

    .line 644
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 646
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    :pswitch_15
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    move v7, v1

    .line 649
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 651
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->updateStartImage()V

    goto :goto_7

    .line 641
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_8
        :pswitch_8
        :pswitch_15
    .end packed-switch
.end method

.method protected clickCloseOnNormalScreen()V
    .registers 1

    .prologue
    .line 475
    return-void
.end method

.method public createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;
    .registers 6

    .prologue
    const/4 v3, -0x2

    .line 904
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/mqunar/yvideo/R$style;->pub_react_video_style_dialog_progress:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 905
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 906
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 907
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 908
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 909
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 910
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 911
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 912
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 913
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 914
    return-object v0
.end method

.method public dismissBrightnessDialog()V
    .registers 2

    .prologue
    .line 897
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissBrightnessDialog()V

    .line 898
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 899
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 901
    :cond_c
    return-void
.end method

.method public dismissControlView()V
    .registers 3

    .prologue
    .line 950
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    .line 953
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$5;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->post(Ljava/lang/Runnable;)Z

    .line 968
    :cond_16
    return-void
.end method

.method public dismissProgressDialog()V
    .registers 2

    .prologue
    .line 831
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissProgressDialog()V

    .line 832
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 833
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 835
    :cond_c
    return-void
.end method

.method public dismissVolumeDialog()V
    .registers 2

    .prologue
    .line 867
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->dismissVolumeDialog()V

    .line 868
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_c

    .line 869
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 871
    :cond_c
    return-void
.end method

.method public getLayoutId()I
    .registers 2

    .prologue
    .line 285
    sget v0, Lcom/mqunar/yvideo/R$layout;->layout_video_standard:I

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->init(Landroid/content/Context;)V

    .line 123
    sget v0, Lcom/mqunar/yvideo/R$id;->battery_time_layout:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    .line 124
    sget v0, Lcom/mqunar/yvideo/R$id;->bottom_progress:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    .line 125
    sget v0, Lcom/mqunar/yvideo/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    .line 126
    sget v0, Lcom/mqunar/yvideo/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    .line 127
    sget v0, Lcom/mqunar/yvideo/R$id;->thumb:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    .line 128
    sget v0, Lcom/mqunar/yvideo/R$id;->loading:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    .line 129
    sget v0, Lcom/mqunar/yvideo/R$id;->back_tiny:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/mqunar/yvideo/R$id;->battery_level:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/mqunar/yvideo/R$id;->video_current_time:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    .line 132
    sget v0, Lcom/mqunar/yvideo/R$id;->replay_text:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    .line 133
    sget v0, Lcom/mqunar/yvideo/R$id;->clarity:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    .line 134
    sget v0, Lcom/mqunar/yvideo/R$id;->retry_btn:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mRetryBtn:Landroid/widget/TextView;

    .line 135
    sget v0, Lcom/mqunar/yvideo/R$id;->retry_layout:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mRetryLayout:Landroid/widget/LinearLayout;

    .line 138
    sget v0, Lcom/mqunar/yvideo/R$id;->no_wifi_layout:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mNoWifiLayout:Landroid/widget/LinearLayout;

    .line 139
    sget v0, Lcom/mqunar/yvideo/R$id;->continue_btn:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mNoWifiBtn:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/mqunar/yvideo/R$id;->mute_layout:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteLayout:Landroid/widget/LinearLayout;

    .line 143
    sget v0, Lcom/mqunar/yvideo/R$id;->mute_iv:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteIV:Landroid/widget/ImageView;

    .line 144
    sget v0, Lcom/mqunar/yvideo/R$id;->mute_rb:I

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteRB:Landroid/widget/RadioButton;

    .line 147
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mCloseBtnIsShow:Z

    if-eqz v0, :cond_e5

    const/4 v0, 0x0

    :goto_be
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->thumbImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mRetryBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mNoWifiBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void

    .line 147
    :cond_e5
    const/16 v0, 0x8

    goto :goto_be
.end method

.method public onAutoCompletion()V
    .registers 1

    .prologue
    .line 936
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onAutoCompletion()V

    .line 937
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 938
    return-void
.end method

.method public onCLickUiToggleToClear()V
    .registers 3

    .prologue
    .line 580
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 581
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 582
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPreparing()V

    .line 601
    :cond_10
    :goto_10
    return-void

    .line 585
    :cond_11
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 586
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 587
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_10

    .line 590
    :cond_22
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_33

    .line 591
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 592
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_10

    .line 595
    :cond_33
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    .line 596
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_10

    .line 597
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToComplete()V

    goto :goto_10
.end method

.method public onClick(Landroid/view/View;)V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 371
    invoke-super {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onClick(Landroid/view/View;)V

    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 373
    sget v1, Lcom/mqunar/yvideo/R$id;->thumb:I

    if-ne v0, v1, :cond_7d

    .line 374
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_31

    .line 375
    :cond_1b
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mqunar/yvideo/R$string;->pub_react_video_no_url:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    :cond_30
    :goto_30
    return-void

    .line 378
    :cond_31
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    if-nez v0, :cond_74

    .line 379
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6b

    sget-boolean v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_6b

    .line 382
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->showWNoWifiWarning()V

    goto :goto_30

    .line 385
    :cond_6b
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onEvent(I)V

    .line 386
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startVideo()V

    goto :goto_30

    .line 387
    :cond_74
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_30

    .line 388
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onClickUiToggle()V

    goto :goto_30

    .line 390
    :cond_7d
    sget v1, Lcom/mqunar/yvideo/R$id;->surface_container:I

    if-ne v0, v1, :cond_85

    .line 391
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_30

    .line 392
    :cond_85
    sget v1, Lcom/mqunar/yvideo/R$id;->back:I

    if-ne v0, v1, :cond_94

    .line 393
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backPress()Z

    .line 394
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    if-nez v0, :cond_30

    .line 395
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clickCloseOnNormalScreen()V

    goto :goto_30

    .line 397
    :cond_94
    sget v1, Lcom/mqunar/yvideo/R$id;->back_tiny:I

    if-ne v0, v1, :cond_a8

    .line 398
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->getFirstFloor()Lcom/mqunar/yvideo/multivideo/VideoPlayer;

    move-result-object v0

    iget v0, v0, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->currentScreen:I

    if-ne v0, v7, :cond_a4

    .line 399
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->quitFullscreenOrTinyWindow()V

    goto :goto_30

    .line 401
    :cond_a4
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backPress()Z

    goto :goto_30

    .line 403
    :cond_a8
    sget v1, Lcom/mqunar/yvideo/R$id;->clarity:I

    if-ne v0, v1, :cond_14a

    .line 404
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 406
    sget v1, Lcom/mqunar/yvideo/R$layout;->layout_video_clarity:I

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 408
    new-instance v3, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;

    invoke-direct {v3, p0, v5}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$4;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;Landroid/widget/LinearLayout;)V

    move v1, v2

    .line 426
    :goto_c7
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v1, v0, :cond_10a

    .line 427
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getKeyFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v6, Lcom/mqunar/yvideo/R$layout;->layout_video_clarity_item:I

    invoke-static {v0, v6, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 429
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 431
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 432
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v4, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-virtual {v4}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getDefaultUrlMapIndex()I

    move-result v4

    if-ne v1, v4, :cond_106

    .line 434
    const-string v4, "#fff85959"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    :cond_106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c7

    .line 438
    :cond_10a
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, v5, v8, v8, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    .line 439
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 440
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 441
    invoke-virtual {v5, v2, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 442
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v2, v0, 0x3

    .line 443
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v3, v0, 0x3

    .line 444
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    neg-int v2, v2

    neg-int v3, v3

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_30

    .line 445
    :cond_14a
    sget v1, Lcom/mqunar/yvideo/R$id;->retry_btn:I

    if-ne v0, v1, :cond_1c4

    .line 446
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    if-eqz v0, :cond_15a

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_171

    .line 447
    :cond_15a
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/mqunar/yvideo/R$string;->pub_react_video_no_url:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_30

    .line 450
    :cond_171
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a8

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a8

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a8

    sget-boolean v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    if-nez v0, :cond_1a8

    .line 453
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->showWNoWifiWarning()V

    goto/16 :goto_30

    .line 456
    :cond_1a8
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->initTextureView()V

    .line 457
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->addTextureView()V

    .line 458
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->setDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V

    .line 459
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getCurrentFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/yvideo/multivideo/MediaManager;->setCurrentDataSource(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onStatePreparing()V

    .line 461
    invoke-virtual {p0, v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onEvent(I)V

    goto/16 :goto_30

    .line 462
    :cond_1c4
    sget v1, Lcom/mqunar/yvideo/R$id;->continue_btn:I

    if-ne v0, v1, :cond_1db

    .line 463
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onEvent(I)V

    .line 464
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mNoWifiLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 465
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startVideo()V

    .line 466
    sput-boolean v7, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->WIFI_TIP_DIALOG_SHOWED:Z

    goto/16 :goto_30

    .line 468
    :cond_1db
    sget v1, Lcom/mqunar/yvideo/R$id;->mute_layout:I

    if-ne v0, v1, :cond_30

    .line 469
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->handleMute()V

    goto/16 :goto_30
.end method

.method public onClickUiToggle()V
    .registers 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    .line 522
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 523
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dataSourceObjects:Lcom/mqunar/yvideo/multivideo/DataSourceBean;

    invoke-static {v1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getKeyFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    :cond_16
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 526
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPreparing()V

    .line 527
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 545
    :cond_26
    :goto_26
    return-void

    .line 529
    :cond_27
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setSystemTimeAndBattery()V

    goto :goto_26

    .line 531
    :cond_2b
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_40

    .line 532
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 533
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPlayingClear()V

    goto :goto_26

    .line 535
    :cond_3c
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPlayingShow()V

    goto :goto_26

    .line 537
    :cond_40
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_26

    .line 538
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_51

    .line 539
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPauseClear()V

    goto :goto_26

    .line 541
    :cond_51
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPauseShow()V

    goto :goto_26
.end method

.method public onCompletion()V
    .registers 2

    .prologue
    .line 942
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onCompletion()V

    .line 943
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 944
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_f

    .line 945
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarityPopWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 947
    :cond_f
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2

    .prologue
    .line 503
    invoke-super {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 504
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 505
    return-void
.end method

.method public onStateAutoComplete()V
    .registers 3

    .prologue
    .line 328
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateAutoComplete()V

    .line 329
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToComplete()V

    .line 330
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 331
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 332
    return-void
.end method

.method public onStateError()V
    .registers 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateError()V

    .line 323
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToError()V

    .line 324
    return-void
.end method

.method public onStateNormal()V
    .registers 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStateNormal()V

    .line 291
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToNormal()V

    .line 292
    return-void
.end method

.method public onStatePause()V
    .registers 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePause()V

    .line 316
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPauseShow()V

    .line 317
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 318
    return-void
.end method

.method public onStatePlaying()V
    .registers 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePlaying()V

    .line 310
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPlayingClear()V

    .line 311
    return-void
.end method

.method public onStatePreparing()V
    .registers 1

    .prologue
    .line 296
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePreparing()V

    .line 297
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeUiToPreparing()V

    .line 298
    return-void
.end method

.method public onStatePreparingChangingUrl(IJ)V
    .registers 6

    .prologue
    .line 302
    invoke-super {p0, p1, p2, p3}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStatePreparingChangingUrl(IJ)V

    .line 303
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->loadingProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4

    .prologue
    .line 509
    invoke-super {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 510
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 511
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->dismissControlView()V

    .line 515
    :goto_b
    return-void

    .line 513
    :cond_c
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_b
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 337
    sget v1, Lcom/mqunar/yvideo/R$id;->surface_container:I

    if-ne v0, v1, :cond_45

    .line 338
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5a

    .line 366
    :cond_f
    :goto_f
    :pswitch_f
    invoke-super {p0, p1, p2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 344
    :pswitch_14
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startDismissControlViewTimer()V

    .line 345
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mChangePosition:Z

    if-eqz v0, :cond_34

    .line 346
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getDuration()J

    move-result-wide v0

    .line 347
    iget-wide v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mSeekTimePosition:J

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_2c

    const-wide/16 v0, 0x1

    :cond_2c
    div-long v0, v2, v0

    long-to-int v0, v0

    .line 348
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 350
    :cond_34
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mChangePosition:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mChangeVolume:Z

    if-nez v0, :cond_f

    .line 351
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onEvent(I)V

    .line 352
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onClickUiToggle()V

    goto :goto_f

    .line 356
    :cond_45
    sget v1, Lcom/mqunar/yvideo/R$id;->bottom_seek_progress:I

    if-ne v0, v1, :cond_f

    .line 357
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_64

    goto :goto_f

    .line 359
    :pswitch_51
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    goto :goto_f

    .line 362
    :pswitch_55
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startDismissControlViewTimer()V

    goto :goto_f

    .line 338
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_14
        :pswitch_f
    .end packed-switch

    .line 357
    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_51
        :pswitch_55
    .end packed-switch
.end method

.method public resetProgressAndTime()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 617
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->resetProgressAndTime()V

    .line 618
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 619
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 620
    return-void
.end method

.method public setBatteryLevel()V
    .registers 7

    .prologue
    const/16 v5, 0x5f

    const/16 v4, 0x50

    const/16 v3, 0x3c

    const/16 v2, 0x28

    const/16 v1, 0xf

    .line 563
    sget v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->LAST_GET_BATTERYLEVEL_PERCENT:I

    .line 564
    if-ge v0, v1, :cond_16

    .line 565
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_battery_level_10:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 577
    :cond_15
    :goto_15
    return-void

    .line 566
    :cond_16
    if-lt v0, v1, :cond_22

    if-ge v0, v2, :cond_22

    .line 567
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_battery_level_30:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 568
    :cond_22
    if-lt v0, v2, :cond_2e

    if-ge v0, v3, :cond_2e

    .line 569
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_battery_level_50:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 570
    :cond_2e
    if-lt v0, v3, :cond_3a

    if-ge v0, v4, :cond_3a

    .line 571
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_battery_level_70:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 572
    :cond_3a
    if-lt v0, v4, :cond_46

    if-ge v0, v5, :cond_46

    .line 573
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_battery_level_90:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15

    .line 574
    :cond_46
    if-lt v0, v5, :cond_15

    const/16 v1, 0x64

    if-gt v0, v1, :cond_15

    .line 575
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryLevel:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_battery_level_100:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_15
.end method

.method public setBufferProgress(I)V
    .registers 3

    .prologue
    .line 611
    invoke-super {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setBufferProgress(I)V

    .line 612
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 613
    :cond_a
    return-void
.end method

.method public setCloseBtnIsShow(Z)V
    .registers 4

    .prologue
    .line 989
    iput-boolean p1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mCloseBtnIsShow:Z

    .line 990
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 991
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 993
    :cond_e
    return-void

    .line 991
    :cond_f
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public setProgressAndText(IJJ)V
    .registers 7

    .prologue
    .line 605
    invoke-super/range {p0 .. p5}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setProgressAndText(IJJ)V

    .line 606
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->bottomProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 607
    :cond_a
    return-void
.end method

.method public setSystemTimeAndBattery()V
    .registers 5

    .prologue
    .line 548
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 549
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 550
    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->videoCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->LAST_GET_BATTERYLEVEL_TIME:J

    .line 553
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->battertReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    :goto_38
    return-void

    .line 558
    :cond_39
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setBatteryLevel()V

    goto :goto_38
.end method

.method public setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V
    .registers 3

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getInitScreen()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;I)V

    .line 208
    return-void
.end method

.method public setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;I)V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v1, 0x4

    .line 160
    invoke-direct {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->loadImg(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)V

    .line 161
    invoke-super {p0, p1, p2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->setUp(Lcom/mqunar/yvideo/multivideo/DataSourceBean;I)V

    .line 162
    invoke-virtual {p1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 163
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_1e
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7a

    .line 166
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    sget v2, Lcom/mqunar/yvideo/R$drawable;->video_shrink:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    invoke-virtual {p1}, Lcom/mqunar/yvideo/multivideo/DataSourceBean;->getUrlMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v3, :cond_6b

    .line 173
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    :goto_4d
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mqunar/yvideo/R$dimen;->pub_react_video_start_button_w_h_fullscreen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeStartButtonSize(I)V

    .line 196
    :cond_5b
    :goto_5b
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setSystemTimeAndBattery()V

    .line 199
    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tmp_test_back:Z

    if-eqz v0, :cond_6a

    .line 200
    iput-boolean v8, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tmp_test_back:Z

    .line 201
    invoke-static {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerManager;->setFirstFloor(Lcom/mqunar/yvideo/multivideo/VideoPlayer;)V

    .line 202
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backPress()Z

    .line 204
    :cond_6a
    return-void

    .line 175
    :cond_6b
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mqunar/yvideo/multivideo/VideoUtils;->getKeyFromDataSource(Lcom/mqunar/yvideo/multivideo/DataSourceBean;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4d

    .line 179
    :cond_7a
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    if-eqz v0, :cond_82

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    if-ne v0, v3, :cond_b8

    .line 181
    :cond_82
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->fullscreenButton:Landroid/widget/ImageView;

    sget v2, Lcom/mqunar/yvideo/R$drawable;->video_enlarge:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/mqunar/yvideo/R$dimen;->pub_react_video_start_button_w_h_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->changeStartButtonSize(I)V

    .line 184
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->backButton:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mCloseBtnIsShow:Z

    if-eqz v0, :cond_b6

    move v0, v8

    :goto_ad
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mMuteLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5b

    :cond_b6
    move v0, v9

    .line 187
    goto :goto_ad

    .line 189
    :cond_b8
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentScreen:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5b

    .line 190
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->tinyBackImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    .line 191
    invoke-direct/range {v0 .. v7}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->setAllControlsVisiblity(IIIIIII)V

    .line 193
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->batteryTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->clarity:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5b
.end method

.method public showBrightnessDialog(I)V
    .registers 6

    .prologue
    const/16 v1, 0x64

    .line 875
    invoke-super {p0, p1}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showBrightnessDialog(I)V

    .line 876
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    if-nez v0, :cond_32

    .line 877
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/mqunar/yvideo/R$layout;->layout_video_dialog_brightness:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 878
    sget v0, Lcom/mqunar/yvideo/R$id;->tv_brightness:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogBrightnessTextView:Landroid/widget/TextView;

    .line 879
    sget v0, Lcom/mqunar/yvideo/R$id;->brightness_progressbar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

    .line 880
    invoke-virtual {p0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    .line 882
    :cond_32
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 883
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mBrightnessDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 885
    :cond_3f
    if-le p1, v1, :cond_63

    move p1, v1

    .line 890
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogBrightnessTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogBrightnessProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 892
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 893
    return-void

    .line 887
    :cond_63
    if-gez p1, :cond_42

    .line 888
    const/4 p1, 0x0

    goto :goto_42
.end method

.method public showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V
    .registers 12

    .prologue
    .line 805
    invoke-super/range {p0 .. p7}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showProgressDialog(FLjava/lang/String;JLjava/lang/String;J)V

    .line 806
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_44

    .line 807
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mqunar/yvideo/R$layout;->layout_video_dialog_progress:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 808
    sget v0, Lcom/mqunar/yvideo/R$id;->duration_progressbar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    .line 809
    sget v0, Lcom/mqunar/yvideo/R$id;->tv_current:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    .line 810
    sget v0, Lcom/mqunar/yvideo/R$id;->tv_duration:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    .line 811
    sget v0, Lcom/mqunar/yvideo/R$id;->duration_image_tip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    .line 812
    invoke-virtual {p0, v1}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    .line 814
    :cond_44
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_51

    .line 815
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 818
    :cond_51
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogSeekTime:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogTotalTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogProgressBar:Landroid/widget/ProgressBar;

    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-gtz v0, :cond_8a

    const/4 v0, 0x0

    :goto_77
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 821
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_90

    .line 822
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_forward_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 826
    :goto_86
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 827
    return-void

    .line 820
    :cond_8a
    const-wide/16 v2, 0x64

    mul-long/2addr v2, p3

    div-long/2addr v2, p6

    long-to-int v0, v2

    goto :goto_77

    .line 824
    :cond_90
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogIcon:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_backward_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_86
.end method

.method public showVolumeDialog(FI)V
    .registers 7

    .prologue
    const/16 v1, 0x64

    .line 839
    invoke-super {p0, p1, p2}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showVolumeDialog(FI)V

    .line 840
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    if-nez v0, :cond_3c

    .line 841
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/mqunar/yvideo/R$layout;->layout_video_dialog_volume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 842
    sget v0, Lcom/mqunar/yvideo/R$id;->volume_image_tip:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    .line 843
    sget v0, Lcom/mqunar/yvideo/R$id;->tv_volume:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeTextView:Landroid/widget/TextView;

    .line 844
    sget v0, Lcom/mqunar/yvideo/R$id;->volume_progressbar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    .line 845
    invoke-virtual {p0, v2}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->createDialogWithView(Landroid/view/View;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    .line 847
    :cond_3c
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_49

    .line 848
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mVolumeDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 850
    :cond_49
    if-gtz p2, :cond_76

    .line 851
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    sget v2, Lcom/mqunar/yvideo/R$drawable;->video_close_volume:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 855
    :goto_52
    if-le p2, v1, :cond_7e

    move p2, v1

    .line 860
    :cond_55
    :goto_55
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 861
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 862
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->onCLickUiToggleToClear()V

    .line 863
    return-void

    .line 853
    :cond_76
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDialogVolumeImageView:Landroid/widget/ImageView;

    sget v2, Lcom/mqunar/yvideo/R$drawable;->video_add_volume:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_52

    .line 857
    :cond_7e
    if-gez p2, :cond_55

    .line 858
    const/4 p2, 0x0

    goto :goto_55
.end method

.method public showWNoWifiWarning()V
    .registers 3

    .prologue
    .line 496
    invoke-super {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayer;->showWNoWifiWarning()V

    .line 497
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mNoWifiLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    return-void
.end method

.method public startDismissControlViewTimer()V
    .registers 5

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->cancelDismissControlViewTimer()V

    .line 919
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    .line 920
    new-instance v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;

    invoke-direct {v0, p0}, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;-><init>(Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;)V

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;

    .line 921
    sget-object v0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->DISMISS_CONTROL_VIEW_TIMER:Ljava/util/Timer;

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->mDismissControlViewTimerTask:Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard$DismissControlViewTimerTask;

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 922
    return-void
.end method

.method public updateStartImage()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 786
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    .line 787
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_click_pause_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 789
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 801
    :goto_18
    return-void

    .line 790
    :cond_19
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_29

    .line 791
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 793
    :cond_29
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->currentState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_40

    .line 794
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_click_replay_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18

    .line 798
    :cond_40
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->startButton:Landroid/widget/ImageView;

    sget v1, Lcom/mqunar/yvideo/R$drawable;->video_click_play_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 799
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/VideoPlayerStandard;->replayTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_18
.end method
