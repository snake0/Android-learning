.class public Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private DEFAULT_POINTER_HEIGHT:I

.field private DEFAULT_POINTER_WIDTH:I

.field private animated:Z

.field private animation:Landroid/view/animation/ScaleAnimation;

.field private backgroundColor:I

.field private bubbleRadius:I

.field private context:Landroid/content/Context;

.field private customPointerHeight:I

.field private customPointerWidth:I

.field private density:F

.field private geoPoint:Lcom/mapquest/android/maps/GeoPoint;

.field private innerView:Landroid/widget/RelativeLayout;

.field private innerViewDefaultPaddingBottom:I

.field private innerViewDefaultPaddingLeft:I

.field private innerViewDefaultPaddingRight:I

.field private innerViewDefaultPaddingTop:I

.field private interceptTouch:Z

.field private layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private markerHeight:I

.field private parentItem:Lcom/mapquest/android/maps/OverlayItem;

.field private pointerHeight:I

.field private pointerWidth:I

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private tryToKeepBubbleOnScreen:Z


# direct methods
.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    .line 36
    iput-boolean v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->tryToKeepBubbleOnScreen:Z

    .line 37
    iput-boolean v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animated:Z

    .line 38
    iput v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->bubbleRadius:I

    .line 39
    iput v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerWidth:I

    .line 40
    iput v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerHeight:I

    .line 41
    iput v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerWidth:I

    .line 42
    iput v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerHeight:I

    .line 43
    iput v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingLeft:I

    .line 44
    iput v4, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingTop:I

    .line 45
    iput v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingRight:I

    .line 46
    iput v4, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingBottom:I

    .line 47
    const/16 v0, 0x16

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->DEFAULT_POINTER_WIDTH:I

    .line 48
    iput v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->DEFAULT_POINTER_HEIGHT:I

    .line 49
    iput-boolean v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->interceptTouch:Z

    .line 57
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->context:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 59
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->init()V

    .line 60
    return-void
.end method

.method private createDefaultInnerView()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 109
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingLeft:I

    iget v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingTop:I

    iget v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingRight:I

    iget v4, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 115
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 116
    const-string v1, "AnnotationViewTextHolderView"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 117
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 120
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    const-string v3, "AnnotationViewTitle"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 122
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    iget v4, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 125
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 126
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 127
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 128
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 129
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    .line 137
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    const-string v3, "AnnotationViewSnippet"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 138
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 140
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 141
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 142
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 144
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    const/4 v3, 0x3

    iget-object v4, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 148
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 149
    iget-object v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    iget-object v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerHeight:I

    invoke-virtual {p0, v6, v6, v6, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setPadding(IIII)V

    .line 154
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->addView(Landroid/view/View;)V

    .line 155
    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    .line 217
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 219
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 220
    iget v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    .line 221
    iget v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 222
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    sub-int/2addr v4, v5

    .line 223
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    sub-int/2addr v5, v6

    .line 225
    int-to-float v6, v2

    int-to-float v7, v4

    int-to-float v8, v3

    int-to-float v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 228
    int-to-float v2, v2

    int-to-float v6, v4

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 229
    int-to-float v1, v1

    int-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    int-to-float v1, v3

    int-to-float v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 233
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 234
    iget v2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 238
    return-void
.end method

.method private getXOffsetToKeepBubbleOnScreen()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 246
    .line 247
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->tryToKeepBubbleOnScreen:Z

    if-eqz v0, :cond_23

    .line 248
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getLeft()I

    move-result v2

    .line 249
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->bubbleRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 250
    if-gez v2, :cond_21

    .line 251
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_20

    .line 252
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getLeft()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 260
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 257
    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method private init()V
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v9, -0x2

    const/high16 v6, 0x3f000000    # 0.5f

    .line 63
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setVisibility(I)V

    .line 65
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    .line 66
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->bubbleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->bubbleRadius:I

    .line 68
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerWidth:I

    if-lez v0, :cond_b9

    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerWidth:I

    .line 70
    :goto_28
    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerHeight:I

    if-lez v1, :cond_bd

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerHeight:I

    .line 73
    :goto_2e
    int-to-float v0, v0

    iget v3, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerWidth:I

    .line 74
    int-to-float v0, v1

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerHeight:I

    .line 76
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingLeft:I

    .line 78
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingTop:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingTop:I

    .line 80
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingRight:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingRight:I

    .line 82
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingBottom:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingBottom:I

    .line 85
    const-string v0, "#E6434343"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->backgroundColor:I

    .line 87
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v1, v4, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    const/16 v3, 0x21

    invoke-direct {v0, v9, v9, v1, v3}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IILcom/mapquest/android/maps/GeoPoint;I)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 89
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_83

    .line 90
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->createDefaultInnerView()V

    .line 92
    :cond_83
    iput-boolean v5, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animated:Z

    .line 93
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    int-to-float v1, v1

    const/4 v3, 0x0

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    .line 96
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 97
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->addView(Landroid/view/View;)V

    .line 106
    return-void

    .line 68
    :cond_b9
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->DEFAULT_POINTER_WIDTH:I

    goto/16 :goto_28

    .line 70
    :cond_bd
    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->DEFAULT_POINTER_HEIGHT:I

    goto/16 :goto_2e
.end method

.method private setLayoutParams()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 181
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    const/16 v2, 0x21

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IILcom/mapquest/android/maps/GeoPoint;I)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 182
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    return-void
.end method

.method private setLayoutParams(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 6

    .prologue
    const/4 v3, -0x2

    .line 186
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    const/16 v2, 0x21

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IILcom/mapquest/android/maps/GeoPoint;I)V

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 188
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 214
    return-void
.end method

.method public getGeoPoint()Lcom/mapquest/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    return-object v0
.end method

.method public getInnerView()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getOverlayItem()Lcom/mapquest/android/maps/OverlayItem;
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    return-object v0
.end method

.method public getSnippet()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 204
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setVisibility(I)V

    .line 205
    return-void
.end method

.method public isTryToKeepBubbleOnScreen()Z
    .registers 2

    .prologue
    .line 268
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->tryToKeepBubbleOnScreen:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 209
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->interceptTouch:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .prologue
    .line 264
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 265
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 241
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 243
    return-void
.end method

.method public setAnimated(Z)V
    .registers 2

    .prologue
    .line 276
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animated:Z

    .line 277
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .prologue
    .line 325
    iput p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->backgroundColor:I

    .line 328
    return-void
.end method

.method public setBubbleRadius(I)V
    .registers 2

    .prologue
    .line 321
    iput p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->bubbleRadius:I

    .line 322
    return-void
.end method

.method public setCustomPointerSize(II)V
    .registers 6

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 343
    iput p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerWidth:I

    .line 344
    iput p2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerHeight:I

    .line 346
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerWidth:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerWidth:I

    .line 347
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->customPointerHeight:I

    int-to-float v0, v0

    iget v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->pointerHeight:I

    .line 348
    return-void
.end method

.method public setGeoPoint(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 2

    .prologue
    .line 335
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 336
    return-void
.end method

.method public setInnerView(Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 284
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingLeft:I

    .line 285
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingTop:I

    .line 286
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingRight:I

    .line 287
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerViewDefaultPaddingBottom:I

    .line 289
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->removeView(Landroid/view/View;)V

    .line 291
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    .line 293
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->addView(Landroid/view/View;)V

    .line 294
    return-void
.end method

.method public setInterceptTouch(Z)V
    .registers 2

    .prologue
    .line 52
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->interceptTouch:Z

    .line 53
    return-void
.end method

.method public setSnippet(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    .line 314
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 317
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 301
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    .line 302
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->bringToFront()V

    .line 195
    iget-boolean v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animated:Z

    if-eqz v0, :cond_16

    .line 196
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_16
    return-void
.end method

.method public showAnnotationView(Lcom/mapquest/android/maps/GeoPoint;I)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 170
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 171
    invoke-direct {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setLayoutParams()V

    .line 172
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iput p2, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    .line 175
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    invoke-virtual {p0, v2, v2, v2, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setPadding(IIII)V

    .line 177
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->show()V

    .line 178
    return-void
.end method

.method public showAnnotationView(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 158
    iput-object p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    .line 159
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 160
    invoke-direct {p0, p1}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setLayoutParams(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 161
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    iget-object v1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    .line 164
    iget v0, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->markerHeight:I

    invoke-virtual {p0, v2, v2, v2, v0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->setPadding(IIII)V

    .line 166
    invoke-virtual {p0}, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->show()V

    .line 167
    return-void
.end method

.method public tryToKeepBubbleOnScreen(Z)V
    .registers 2

    .prologue
    .line 272
    iput-boolean p1, p0, Lqunar/sdk/mapapi/mapquest/CustomAnnotationView;->tryToKeepBubbleOnScreen:Z

    .line 273
    return-void
.end method
