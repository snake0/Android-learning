.class public Lcom/mqunar/splash/SplashLoadingView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static final MESSAGE_CODE_ANIM_DISMISS:I = 0x10001

.field private static final MESSAGE_CODE_ANIM_SHOW:I = 0x10000

.field private static final STATE_DISMISS:I = 0x2

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_SHOW:I = 0x1


# instance fields
.field private flProgress:Landroid/widget/FrameLayout;

.field private icons:[Landroid/widget/ImageView;

.field private index:I

.field private llProgress:Landroid/widget/LinearLayout;

.field private mCurState:I

.field private mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

.field private maxWidth:I

.field private mixWitdh:I

.field private set:Landroid/animation/AnimatorSet;

.field private viewCover:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/splash/SplashLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mqunar/splash/SplashLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    iput v4, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    .line 67
    invoke-virtual {p0, v3}, Lcom/mqunar/splash/SplashLoadingView;->setOrientation(I)V

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/mqunar/splash/R$layout;->spider_loading_view:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit16 v0, v0, 0x216

    div-int/lit16 v0, v0, 0x4da

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    .line 75
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/mqunar/splash/R$id;->spider_iv_hotel:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v4

    .line 76
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    sget v0, Lcom/mqunar/splash/R$id;->spider_iv_flight:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    .line 77
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    sget v0, Lcom/mqunar/splash/R$id;->spider_iv_vocation:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 78
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    sget v0, Lcom/mqunar/splash/R$id;->spider_iv_financial:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 79
    sget v0, Lcom/mqunar/splash/R$id;->spider_fl_progress:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    .line 80
    sget v0, Lcom/mqunar/splash/R$id;->spider_ll_progress:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->llProgress:Landroid/widget/LinearLayout;

    .line 81
    sget v0, Lcom/mqunar/splash/R$id;->spider_view_cover:I

    invoke-virtual {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->llProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 84
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->llProgress:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 85
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mixWitdh:I

    .line 87
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/mqunar/splash/SplashLoadingView;->mixWitdh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mqunar/splash/SplashLoadingView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    invoke-direct {v0, p0}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;-><init>(Lcom/mqunar/splash/SplashLoadingView;)V

    iput-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/mqunar/splash/SplashLoadingView;)[Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mqunar/splash/SplashLoadingView;I)I
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    return p1
.end method

.method static synthetic access$202(Lcom/mqunar/splash/SplashLoadingView;I)I
    .registers 2

    .prologue
    .line 27
    iput p1, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    return p1
.end method

.method static synthetic access$300(Lcom/mqunar/splash/SplashLoadingView;)Lcom/mqunar/splash/SplashLoadingView$MyHandler;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqunar/splash/SplashLoadingView;)Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mqunar/splash/SplashLoadingView;)Landroid/view/View;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;

    return-object v0
.end method

.method private dissmissIconAnimation(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mqunar/splash/R$anim;->spider_splash_icon_dismiss_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    new-instance v1, Lcom/mqunar/splash/SplashLoadingView$2;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/splash/SplashLoadingView$2;-><init>(Lcom/mqunar/splash/SplashLoadingView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 242
    return-void
.end method

.method private lineDecressAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 269
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->mixWitdh:I

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 271
    new-instance v1, Lcom/mqunar/splash/SplashLoadingView$4;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashLoadingView$4;-><init>(Lcom/mqunar/splash/SplashLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 279
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    .line 280
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 281
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 283
    return-void
.end method

.method private lineIncressAnimation()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 250
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->mixWitdh:I

    aput v1, v0, v2

    const/4 v1, 0x1

    iget v2, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x668

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 251
    new-instance v1, Lcom/mqunar/splash/SplashLoadingView$3;

    invoke-direct {v1, p0}, Lcom/mqunar/splash/SplashLoadingView$3;-><init>(Lcom/mqunar/splash/SplashLoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    .line 260
    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 261
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 263
    return-void
.end method

.method private showIconAnimation(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/mqunar/splash/SplashLoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/mqunar/splash/R$anim;->spider_splash_icon_show_anim_start:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 176
    new-instance v1, Lcom/mqunar/splash/SplashLoadingView$1;

    invoke-direct {v1, p0, p1}, Lcom/mqunar/splash/SplashLoadingView$1;-><init>(Lcom/mqunar/splash/SplashLoadingView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 212
    return-void
.end method


# virtual methods
.method public cancleAnimation()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 127
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    if-eqz v0, :cond_5b

    .line 128
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->removeMessages(I)V

    .line 129
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    const v2, 0x10001

    invoke-virtual {v0, v2}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->removeMessages(I)V

    .line 130
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_20

    .line 131
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_20
    move v0, v1

    .line 133
    :goto_21
    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    array-length v2, v2

    if-ge v0, v2, :cond_3e

    .line 134
    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 135
    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    aget-object v3, v2, v0

    iget v2, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    if-ne v2, v5, :cond_3c

    move v2, v1

    :goto_36
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 135
    :cond_3c
    const/4 v2, 0x4

    goto :goto_36

    .line 137
    :cond_3e
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    if-ne v0, v5, :cond_5c

    .line 138
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->maxWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 141
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_5b
    :goto_5b
    return-void

    .line 143
    :cond_5c
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->flProgress:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->viewCover:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5b
.end method

.method public dismissAnimation()V
    .registers 5

    .prologue
    .line 115
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    if-nez v0, :cond_a

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    .line 117
    invoke-direct {p0}, Lcom/mqunar/splash/SplashLoadingView;->lineDecressAnimation()V

    .line 119
    :cond_a
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->dissmissIconAnimation(Landroid/view/View;)V

    .line 120
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    .line 121
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    array-length v1, v1

    if-eq v0, v1, :cond_30

    .line 122
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    const v1, 0x10001

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    :cond_30
    return-void
.end method

.method public showAnimation()V
    .registers 5

    .prologue
    .line 97
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    if-nez v0, :cond_a

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mCurState:I

    .line 99
    invoke-direct {p0}, Lcom/mqunar/splash/SplashLoadingView;->lineIncressAnimation()V

    .line 101
    :cond_a
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    iget-object v2, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mqunar/splash/SplashLoadingView;->showIconAnimation(Landroid/view/View;)V

    .line 102
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    .line 103
    iget v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    iget-object v1, p0, Lcom/mqunar/splash/SplashLoadingView;->icons:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ne v0, v1, :cond_34

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/mqunar/splash/SplashLoadingView;->index:I

    .line 105
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    const v1, 0x10001

    const-wide/16 v2, 0x2d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    :goto_33
    return-void

    .line 107
    :cond_34
    iget-object v0, p0, Lcom/mqunar/splash/SplashLoadingView;->mHandler:Lcom/mqunar/splash/SplashLoadingView$MyHandler;

    const/high16 v1, 0x10000

    const-wide/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mqunar/splash/SplashLoadingView$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_33
.end method
