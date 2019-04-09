.class public Lcom/mqunar/splash/AdSplash;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private activityName:Ljava/lang/String;

.field private clickUrl:Ljava/lang/String;

.field private endDate:Ljava/lang/String;

.field private gifUrl:Ljava/lang/String;

.field private imageView:Landroid/widget/ImageView;

.field private imageViewGif:Landroid/widget/ImageView;

.field private imgUrl:Ljava/lang/String;

.field private mTvSkip:Landroid/widget/TextView;

.field private startDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/mqunar/splash/SplashActivity;Ljava/lang/String;)V
    .registers 11

    .prologue
    const/4 v1, 0x1

    const/4 v7, -0x2

    const/16 v6, 0x8

    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    :try_start_9
    invoke-virtual {p0}, Lcom/mqunar/splash/AdSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->newInstance(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    .line 63
    new-instance v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {v3, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    .line 64
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 65
    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p0}, Lcom/mqunar/splash/AdSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->newInstance(Landroid/content/res/Resources;)Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/GenericDraweeHierarchyBuilder;->build()Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    move-result-object v0

    .line 71
    new-instance v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {v3, p1, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;Lcom/facebook/drawee/generic/GenericDraweeHierarchy;)V

    .line 72
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_39} :catch_183

    .line 81
    :goto_39
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/mqunar/splash/AdSplash;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v3}, Lcom/mqunar/splash/AdSplash;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 84
    const/4 v0, 0x5

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/mqunar/splash/R$layout;->spider_splash_textview:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 86
    sget v0, Lcom/mqunar/splash/R$id;->splash_tv_skip:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mqunar/splash/AdSplash;->mTvSkip:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0, v4, v3}, Lcom/mqunar/splash/AdSplash;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 92
    :try_start_79
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 93
    const-string v3, "imgUrl"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;

    .line 94
    const-string v3, "clickUrl"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->clickUrl:Ljava/lang/String;

    .line 95
    const-string v3, "startDate"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->startDate:Ljava/lang/String;

    .line 96
    const-string v3, "endDate"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->endDate:Ljava/lang/String;

    .line 97
    const-string v3, "gifUrl"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;

    .line 98
    const-string v3, "activityName"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 100
    const-string v0, "null"

    iput-object v0, p0, Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_b9} :catch_1a3

    .line 108
    :cond_b9
    :goto_b9
    :try_start_b9
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 109
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 112
    iget-object v3, p0, Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d9

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b9

    :cond_d9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b9

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1b9

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1b9

    .line 117
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b7

    .line 118
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipelineFactory()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getMainFileCache()Lcom/facebook/cache/disk/FileCache;

    move-result-object v0

    new-instance v3, Lcom/facebook/cache/common/SimpleCacheKey;

    iget-object v5, p0, Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/facebook/cache/common/SimpleCacheKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/facebook/cache/disk/FileCache;->hasKey(Lcom/facebook/cache/common/CacheKey;)Z

    move-result v0

    .line 119
    if-eqz v0, :cond_1b5

    .line 120
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 122
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setAutoPlayAnimations(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    new-instance v3, Lcom/mqunar/splash/AdSplash$1;

    invoke-direct {v3, p0, v4, p1}, Lcom/mqunar/splash/AdSplash$1;-><init>(Lcom/mqunar/splash/AdSplash;Landroid/view/View;Lcom/mqunar/splash/SplashActivity;)V

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    iget-object v3, p0, Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    move v0, v2

    .line 175
    :goto_13b
    if-eqz v0, :cond_16b

    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16b

    .line 176
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 178
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    new-instance v2, Lcom/mqunar/splash/AdSplash$2;

    invoke-direct {v2, p0, v4, p1}, Lcom/mqunar/splash/AdSplash$2;-><init>(Lcom/mqunar/splash/AdSplash;Landroid/view/View;Lcom/mqunar/splash/SplashActivity;)V

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 193
    :cond_16b
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->clickUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_182

    .line 194
    new-instance v0, Lcom/mqunar/splash/AdSplash$3;

    invoke-direct {v0, p0, p1}, Lcom/mqunar/splash/AdSplash$3;-><init>(Lcom/mqunar/splash/AdSplash;Lcom/mqunar/splash/SplashActivity;)V

    .line 219
    iget-object v1, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v1, p0, Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_182
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_182} :catch_1c1

    .line 228
    :cond_182
    :goto_182
    return-void

    .line 75
    :catch_183
    move-exception v0

    .line 76
    const-class v3, Lcom/mqunar/splash/AdSplash;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    .line 78
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;

    goto/16 :goto_39

    .line 102
    :catch_1a3
    move-exception v0

    .line 103
    const-class v3, Lcom/mqunar/splash/AdSplash;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v5}, Lcom/mqunar/tools/log/QLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b9

    :cond_1b5
    move v0, v1

    .line 170
    goto :goto_13b

    :cond_1b7
    move v0, v1

    .line 173
    goto :goto_13b

    .line 223
    :cond_1b9
    :try_start_1b9
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1c0
    .catch Ljava/lang/Throwable; {:try_start_1b9 .. :try_end_1c0} :catch_1c1

    goto :goto_182

    .line 225
    :catch_1c1
    move-exception v0

    .line 226
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_182
.end method

.method static synthetic access$000(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->gifUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mqunar/splash/AdSplash;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mqunar/splash/AdSplash;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->imageViewGif:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mqunar/splash/AdSplash;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mqunar/splash/AdSplash;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static deleteAllCache(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 232
    invoke-static {}, Lcom/mqunar/atomenv/GlobalEnv;->getInstance()Lcom/mqunar/atomenv/GlobalEnv;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mqunar/atomenv/GlobalEnv;->putSplashAdUrl(Ljava/lang/String;)V

    .line 233
    return-void
.end method


# virtual methods
.method public setSkipText(F)V
    .registers 8

    .prologue
    .line 236
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 237
    iget-object v1, p0, Lcom/mqunar/splash/AdSplash;->mTvSkip:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/mqunar/splash/AdSplash;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/mqunar/splash/R$string;->splash_skip_seconds:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method
