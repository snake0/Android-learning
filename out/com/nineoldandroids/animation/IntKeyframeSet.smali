.class Lcom/nineoldandroids/animation/IntKeyframeSet;
.super Lcom/nineoldandroids/animation/KeyframeSet;
.source "SourceFile"


# instance fields
.field private deltaValue:I

.field private firstTime:Z

.field private firstValue:I

.field private lastValue:I


# direct methods
.method public varargs constructor <init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/KeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstTime:Z

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Lcom/nineoldandroids/animation/IntKeyframeSet;
    .registers 6

    .prologue
    .line 52
    iget-object v2, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 54
    new-array v4, v3, [Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_20

    .line 56
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    aput-object v0, v4, v1

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 58
    :cond_20
    new-instance v0, Lcom/nineoldandroids/animation/IntKeyframeSet;

    invoke-direct {v0, v4}, Lcom/nineoldandroids/animation/IntKeyframeSet;-><init>([Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;)V

    .line 59
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/nineoldandroids/animation/KeyframeSet;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/IntKeyframeSet;->clone()Lcom/nineoldandroids/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/IntKeyframeSet;->clone()Lcom/nineoldandroids/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 63
    iget v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_60

    .line 64
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstTime:Z

    if-eqz v0, :cond_30

    .line 65
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstTime:Z

    .line 66
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    .line 67
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->lastValue:I

    .line 68
    iget v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->lastValue:I

    iget v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->deltaValue:I

    .line 70
    :cond_30
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_3a

    .line 71
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 73
    :cond_3a
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v0, :cond_47

    .line 74
    iget v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    iget v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->deltaValue:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 131
    :goto_46
    return v0

    .line 76
    :cond_47
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    iget v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->firstValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->lastValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_46

    .line 79
    :cond_60
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_b5

    .line 80
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 81
    iget-object v2, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 82
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    .line 83
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v3

    .line 84
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v0

    .line 85
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    .line 86
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_8f

    .line 88
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 90
    :cond_8f
    sub-float v1, p1, v0

    sub-float v0, v4, v0

    div-float v0, v1, v0

    .line 91
    iget-object v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v1, :cond_a0

    sub-int v1, v3, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto :goto_46

    :cond_a0
    iget-object v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_46

    .line 95
    :cond_b5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_115

    .line 96
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 97
    iget-object v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 98
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    .line 99
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v3

    .line 100
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v0

    .line 101
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    .line 102
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_ed

    .line 104
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 106
    :cond_ed
    sub-float v1, p1, v0

    sub-float v0, v4, v0

    div-float v0, v1, v0

    .line 107
    iget-object v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v1, :cond_ff

    sub-int v1, v3, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto/16 :goto_46

    :cond_ff
    iget-object v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto/16 :goto_46

    .line 111
    :cond_115
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-object v2, v0

    .line 112
    :goto_11e
    iget v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    if-ge v1, v0, :cond_179

    .line 113
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 114
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_175

    .line 115
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_13c

    .line 117
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 119
    :cond_13c
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    sub-float v1, p1, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    .line 121
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v2

    .line 122
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v0

    .line 123
    iget-object v3, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    if-nez v3, :cond_15f

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    goto/16 :goto_46

    :cond_15f
    iget-object v3, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v2, v0}, Lcom/nineoldandroids/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto/16 :goto_46

    .line 112
    :cond_175
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_11e

    .line 131
    :cond_179
    iget-object v0, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nineoldandroids/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Keyframe;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto/16 :goto_46
.end method

.method public getValue(F)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
