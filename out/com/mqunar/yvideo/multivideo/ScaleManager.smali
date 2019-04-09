.class public Lcom/mqunar/yvideo/multivideo/ScaleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

.field private mViewSize:Lcom/mqunar/yvideo/multivideo/Size;


# direct methods
.method public constructor <init>(Lcom/mqunar/yvideo/multivideo/Size;Lcom/mqunar/yvideo/multivideo/Size;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    .line 12
    iput-object p2, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    .line 13
    return-void
.end method

.method private centerInside()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_23

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_23

    .line 171
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 174
    :goto_22
    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_22
.end method

.method private endInside()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_23

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_23

    .line 182
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 185
    :goto_22
    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitEnd()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_22
.end method

.method private fitCenter()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 134
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getFitScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitEnd()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 138
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getFitScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitStart()Landroid/graphics/Matrix;
    .registers 2

    .prologue
    .line 130
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getFitScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private fitXY()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v1, v1, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFLcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;
    .registers 5

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 149
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 151
    div-float v0, v2, v0

    .line 152
    div-float v1, v2, v1

    .line 153
    invoke-direct {p0, v0, v1, p1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFLcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private getFitScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;
    .registers 5

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 120
    div-float v0, v2, v0

    .line 121
    div-float v1, v2, v1

    .line 122
    invoke-direct {p0, v0, v1, p1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFLcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private getMatrix(FFFF)Landroid/graphics/Matrix;
    .registers 6

    .prologue
    .line 80
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 81
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 82
    return-object v0
.end method

.method private getMatrix(FFLcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;
    .registers 8

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 86
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$PivotPoint:[I

    invoke-virtual {p3}, Lcom/mqunar/yvideo/multivideo/PivotPoint;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_9e

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal PivotPoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :pswitch_16
    invoke-direct {p0, p1, p2, v2, v2}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    .line 104
    :goto_1a
    return-object v0

    .line 90
    :pswitch_1b
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 92
    :pswitch_28
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 94
    :pswitch_34
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 96
    :pswitch_41
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 98
    :pswitch_56
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 100
    :pswitch_6a
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 102
    :pswitch_76
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_1a

    .line 104
    :pswitch_8a
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFFF)Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_1a

    .line 86
    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_16
        :pswitch_1b
        :pswitch_28
        :pswitch_34
        :pswitch_41
        :pswitch_56
        :pswitch_6a
        :pswitch_76
        :pswitch_8a
    .end packed-switch
.end method

.method private getNoScale()Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 112
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 113
    sget-object v2, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0, v1, v2}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFLcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;
    .registers 5

    .prologue
    .line 142
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 143
    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v2}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 144
    invoke-direct {p0, v0, v1, p1}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getMatrix(FFLcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method private startInside()Landroid/graphics/Matrix;
    .registers 3

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_23

    iget-object v0, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mVideoSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v0}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/mqunar/yvideo/multivideo/ScaleManager;->mViewSize:Lcom/mqunar/yvideo/multivideo/Size;

    invoke-virtual {v1}, Lcom/mqunar/yvideo/multivideo/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_23

    .line 160
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 163
    :goto_22
    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitStart()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method public getScaleMatrix(Lcom/mqunar/yvideo/multivideo/ScalableType;)Landroid/graphics/Matrix;
    .registers 4

    .prologue
    .line 16
    sget-object v0, Lcom/mqunar/yvideo/multivideo/ScaleManager$1;->$SwitchMap$com$mqunar$yvideo$multivideo$ScalableType:[I

    invoke-virtual {p1}, Lcom/mqunar/yvideo/multivideo/ScalableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ba

    .line 75
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 18
    :pswitch_d
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getNoScale()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 21
    :pswitch_12
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitXY()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 23
    :pswitch_17
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitCenter()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 25
    :pswitch_1c
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitStart()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 27
    :pswitch_21
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->fitEnd()Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 30
    :pswitch_26
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 32
    :pswitch_2d
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 34
    :pswitch_34
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 36
    :pswitch_3b
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 38
    :pswitch_42
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 40
    :pswitch_49
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 42
    :pswitch_50
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 44
    :pswitch_57
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 46
    :pswitch_5e
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getOriginalScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 49
    :pswitch_65
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 51
    :pswitch_6c
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 53
    :pswitch_73
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->LEFT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 55
    :pswitch_7a
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 57
    :pswitch_81
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto :goto_c

    .line 59
    :pswitch_88
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->CENTER_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 61
    :pswitch_90
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_TOP:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 63
    :pswitch_98
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_CENTER:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 65
    :pswitch_a0
    sget-object v0, Lcom/mqunar/yvideo/multivideo/PivotPoint;->RIGHT_BOTTOM:Lcom/mqunar/yvideo/multivideo/PivotPoint;

    invoke-direct {p0, v0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->getCropScale(Lcom/mqunar/yvideo/multivideo/PivotPoint;)Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 68
    :pswitch_a8
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->startInside()Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 70
    :pswitch_ae
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->centerInside()Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 72
    :pswitch_b4
    invoke-direct {p0}, Lcom/mqunar/yvideo/multivideo/ScaleManager;->endInside()Landroid/graphics/Matrix;

    move-result-object v0

    goto/16 :goto_c

    .line 16
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
        :pswitch_42
        :pswitch_49
        :pswitch_50
        :pswitch_57
        :pswitch_5e
        :pswitch_65
        :pswitch_6c
        :pswitch_73
        :pswitch_7a
        :pswitch_81
        :pswitch_88
        :pswitch_90
        :pswitch_98
        :pswitch_a0
        :pswitch_a8
        :pswitch_ae
        :pswitch_b4
    .end packed-switch
.end method
