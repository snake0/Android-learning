.class public Lcom/mqunar/yvideo/multivideo/ResizeTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "ResizeTextureView"


# instance fields
.field public currentVideoHeight:I

.field public currentVideoWidth:I

.field public mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 19
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    .line 20
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    .line 21
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 25
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    .line 26
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    .line 20
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    .line 21
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScalableType;->FIT_CENTER:Lcom/mqunar/yvideo/multivideo/ScalableType;

    iput-object v0, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    .line 31
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    .line 32
    iput v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    .line 33
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11

    .prologue
    .line 60
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    .line 62
    invoke-static {}, Lcom/mqunar/yvideo/multivideo/MediaManager;->instance()Lcom/mqunar/yvideo/multivideo/MediaManager;

    move-result-object v0

    iget-object v0, v0, Lcom/mqunar/yvideo/multivideo/MediaManager;->mediaInterface:Lcom/mqunar/yvideo/multivideo/MediaInterface;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/MediaInterface;->isPrepare()Z

    move-result v0

    if-nez v0, :cond_10

    .line 80
    :cond_f
    :goto_f
    return-void

    .line 66
    :cond_10
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    .line 67
    iget v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    .line 69
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 73
    new-instance v2, Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/mqunar/yvideo/multivideo/Size;-><init>(II)V

    .line 74
    new-instance v3, Lcom/mqunar/yvideo/multivideo/Size;

    invoke-direct {v3, v0, v1}, Lcom/mqunar/yvideo/multivideo/Size;-><init>(II)V

    .line 75
    new-instance v0, Lcom/mqunar/yvideo/multivideo/ScaleManager;

    invoke-direct {v0, v2, v3}, Lcom/mqunar/yvideo/multivideo/ScaleManager;-><init>(Lcom/mqunar/yvideo/multivideo/Size;Lcom/mqunar/yvideo/multivideo/Size;)V

    .line 76
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->mResizeMode:Lcom/mqunar/yvideo/multivideo/ScalableType;

    invoke-virtual {v0, v1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getScaleMatrix(Lcom/mqunar/yvideo/multivideo/ScalableType;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_f

    .line 78
    invoke-virtual {p0, v0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_f
.end method

.method protected onMeasure(II)V
    .registers 3

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 58
    return-void
.end method

.method public setRotation(F)V
    .registers 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->getRotation()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_e

    .line 50
    invoke-super {p0, p1}, Landroid/view/TextureView;->setRotation(F)V

    .line 51
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->requestLayout()V

    .line 53
    :cond_e
    return-void
.end method

.method public setVideoSize(II)V
    .registers 4

    .prologue
    .line 36
    iget v0, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    if-eq v0, p2, :cond_f

    .line 37
    :cond_8
    iput p1, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoWidth:I

    .line 38
    iput p2, p0, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->currentVideoHeight:I

    .line 39
    invoke-virtual {p0}, Lcom/mqunar/yvideo/multivideo/ResizeTextureView;->requestLayout()V

    .line 41
    :cond_f
    return-void
.end method
