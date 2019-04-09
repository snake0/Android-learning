.class public Lcom/mapquest/android/maps/AnnotationView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private DEFAULT_POINTER_HEIGHT:I

.field private DEFAULT_POINTER_WIDTH:I

.field private animated:Z

.field private animation:Landroid/view/animation/ScaleAnimation;

.field private backgroundColor:I

.field private bubbleFillPaint:Landroid/graphics/Paint;

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

.field private layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

.field private mapView:Lcom/mapquest/android/maps/MapView;

.field private markerHeight:I

.field private parentItem:Lcom/mapquest/android/maps/OverlayItem;

.field private pointerFillPaint:Landroid/graphics/Paint;

.field private pointerHeight:I

.field private pointerWidth:I

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private tryToKeepBubbleOnScreen:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/mapquest/android/maps/AnnotationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mapquest/android/maps/AnnotationView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mapquest/android/maps/MapView;)V
    .registers 7

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v1, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    .line 37
    iput-boolean v3, p0, Lcom/mapquest/android/maps/AnnotationView;->tryToKeepBubbleOnScreen:Z

    .line 38
    iput-boolean v3, p0, Lcom/mapquest/android/maps/AnnotationView;->animated:Z

    .line 39
    iput v2, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    .line 40
    iput v1, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerWidth:I

    .line 41
    iput v1, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    .line 42
    iput v1, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerWidth:I

    .line 43
    iput v1, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerHeight:I

    .line 44
    iput v2, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingLeft:I

    .line 45
    iput v4, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingTop:I

    .line 46
    iput v2, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingRight:I

    .line 47
    iput v4, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingBottom:I

    .line 48
    const/16 v0, 0x16

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->DEFAULT_POINTER_WIDTH:I

    .line 49
    iput v2, p0, Lcom/mapquest/android/maps/AnnotationView;->DEFAULT_POINTER_HEIGHT:I

    .line 53
    invoke-virtual {p1}, Lcom/mapquest/android/maps/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->context:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/mapquest/android/maps/AnnotationView;->mapView:Lcom/mapquest/android/maps/MapView;

    .line 55
    invoke-direct {p0}, Lcom/mapquest/android/maps/AnnotationView;->init()V

    .line 56
    return-void
.end method

.method private createDefaultBubble()V
    .registers 6

    .prologue
    const v4, -0x42333333    # -0.1f

    const/4 v3, 0x1

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_42

    .line 89
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 90
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 91
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 92
    invoke-virtual {v1, v4, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleFillPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerFillPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerFillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    return-void

    .line 88
    nop

    :array_42
    .array-data 4
        -0x1
        -0x777778
    .end array-data
.end method

.method private createDefaultInnerView()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 102
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    .line 103
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingLeft:I

    iget v2, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingTop:I

    iget v3, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingRight:I

    iget v4, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingBottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 104
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 105
    const-string v1, "AnnotationViewTextHolderView"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 106
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 107
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mapquest/android/maps/AnnotationView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    const-string v3, "AnnotationViewTitle"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 109
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 111
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    iget v4, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 112
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 113
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 114
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 115
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 116
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 118
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 119
    iget-object v3, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mapquest/android/maps/AnnotationView;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    const-string v3, "AnnotationViewSnippet"

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 122
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    iget v4, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 124
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxEms(I)V

    .line 125
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 126
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 127
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 128
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 129
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    iget-object v3, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v2, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    invoke-virtual {p0, v6, v6, v6, v0}, Lcom/mapquest/android/maps/AnnotationView;->setPadding(IIII)V

    .line 134
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->addView(Landroid/view/View;)V

    .line 135
    return-void
.end method

.method private drawBubble(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 177
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 178
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleFillPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_28

    .line 180
    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 183
    :cond_28
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/AnnotationView;->drawPointer(Landroid/graphics/Canvas;)V

    .line 184
    return-void
.end method

.method private drawPointer(Landroid/graphics/Canvas;)V
    .registers 12

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 189
    iget v2, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    .line 190
    iget v3, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    .line 191
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    sub-int/2addr v4, v5

    .line 192
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getMeasuredHeight()I

    move-result v5

    iget v6, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    sub-int/2addr v5, v6

    .line 193
    int-to-float v6, v2

    int-to-float v7, v4

    int-to-float v8, v3

    int-to-float v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 194
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 195
    int-to-float v2, v2

    int-to-float v6, v4

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 196
    int-to-float v1, v1

    int-to-float v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    int-to-float v1, v3

    int-to-float v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 199
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 200
    iget v2, p0, Lcom/mapquest/android/maps/AnnotationView;->backgroundColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 203
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 204
    return-void
.end method

.method private getXOffsetToKeepBubbleOnScreen()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 211
    .line 212
    iget-boolean v0, p0, Lcom/mapquest/android/maps/AnnotationView;->tryToKeepBubbleOnScreen:Z

    if-eqz v0, :cond_23

    .line 213
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getLeft()I

    move-result v2

    .line 214
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getMeasuredWidth()I

    move-result v0

    iget v3, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 215
    if-gez v2, :cond_21

    .line 216
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_20

    .line 217
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getLeft()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    .line 226
    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    .line 222
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

    .line 59
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    .line 61
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    .line 62
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerWidth:I

    if-lez v0, :cond_bc

    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerWidth:I

    .line 63
    :goto_28
    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerHeight:I

    if-lez v1, :cond_c0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerHeight:I

    .line 64
    :goto_2e
    int-to-float v0, v0

    iget v3, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerWidth:I

    .line 65
    int-to-float v0, v1

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    .line 66
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingLeft:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingLeft:I

    .line 67
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingTop:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingTop:I

    .line 68
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingRight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingRight:I

    .line 69
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingBottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingBottom:I

    .line 70
    const-string v0, "#E6434343"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->backgroundColor:I

    .line 71
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    new-instance v1, Lcom/mapquest/android/maps/GeoPoint;

    invoke-direct {v1, v4, v4}, Lcom/mapquest/android/maps/GeoPoint;-><init>(II)V

    const/16 v3, 0x21

    invoke-direct {v0, v9, v9, v1, v3}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IILcom/mapquest/android/maps/GeoPoint;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 72
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_86

    .line 73
    invoke-direct {p0}, Lcom/mapquest/android/maps/AnnotationView;->createDefaultInnerView()V

    .line 74
    invoke-direct {p0}, Lcom/mapquest/android/maps/AnnotationView;->createDefaultBubble()V

    .line 77
    :cond_86
    iput-boolean v5, p0, Lcom/mapquest/android/maps/AnnotationView;->animated:Z

    .line 78
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    int-to-float v1, v1

    const/4 v3, 0x0

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    .line 79
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 80
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 81
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->mapView:Lcom/mapquest/android/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/mapquest/android/maps/MapView;->addView(Landroid/view/View;)V

    .line 85
    return-void

    .line 62
    :cond_bc
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->DEFAULT_POINTER_WIDTH:I

    goto/16 :goto_28

    .line 63
    :cond_c0
    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->DEFAULT_POINTER_HEIGHT:I

    goto/16 :goto_2e
.end method

.method private setLayoutParams(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 6

    .prologue
    const/4 v3, -0x2

    .line 149
    new-instance v0, Lcom/mapquest/android/maps/MapView$LayoutParams;

    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    const/16 v2, 0x21

    invoke-direct {v0, v3, v3, v1, v2}, Lcom/mapquest/android/maps/MapView$LayoutParams;-><init>(IILcom/mapquest/android/maps/GeoPoint;I)V

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    .line 150
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->layoutParams:Lcom/mapquest/android/maps/MapView$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/AnnotationView;->drawBubble(Landroid/graphics/Canvas;)V

    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 174
    return-void
.end method

.method public getGeoPoint()Lcom/mapquest/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    return-object v0
.end method

.method public getInnerView()Landroid/widget/RelativeLayout;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getOverlayItem()Lcom/mapquest/android/maps/OverlayItem;
    .registers 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    return-object v0
.end method

.method public getSnippet()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 168
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public isTryToKeepBubbleOnScreen()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mapquest/android/maps/AnnotationView;->tryToKeepBubbleOnScreen:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .prologue
    .line 230
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 231
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 208
    return-void
.end method

.method public setAnimated(Z)V
    .registers 2

    .prologue
    .line 242
    iput-boolean p1, p0, Lcom/mapquest/android/maps/AnnotationView;->animated:Z

    .line 243
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .prologue
    .line 288
    iput p1, p0, Lcom/mapquest/android/maps/AnnotationView;->backgroundColor:I

    .line 289
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 291
    return-void
.end method

.method public setBubbleRadius(I)V
    .registers 2

    .prologue
    .line 284
    iput p1, p0, Lcom/mapquest/android/maps/AnnotationView;->bubbleRadius:I

    .line 285
    return-void
.end method

.method public setCustomPointerSize(II)V
    .registers 6

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 306
    iput p1, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerWidth:I

    .line 307
    iput p2, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerHeight:I

    .line 308
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerWidth:I

    .line 309
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->customPointerHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    .line 310
    return-void
.end method

.method public setGeoPoint(Lcom/mapquest/android/maps/GeoPoint;)V
    .registers 2

    .prologue
    .line 298
    iput-object p1, p0, Lcom/mapquest/android/maps/AnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 299
    return-void
.end method

.method public setInnerView(Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingLeft:I

    .line 251
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingTop:I

    .line 252
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingRight:I

    .line 253
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerViewDefaultPaddingBottom:I

    .line 254
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->removeView(Landroid/view/View;)V

    .line 255
    iput-object p1, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    .line 256
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->innerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->addView(Landroid/view/View;)V

    .line 257
    return-void
.end method

.method public setSnippet(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 276
    iput-object p1, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    .line 277
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public setTitle(Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 264
    iput-object p1, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    .line 265
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->setVisibility(I)V

    .line 156
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->bringToFront()V

    .line 157
    iget-boolean v0, p0, Lcom/mapquest/android/maps/AnnotationView;->animated:Z

    if-eqz v0, :cond_16

    .line 158
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->animation:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/AnnotationView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 164
    :cond_16
    return-void
.end method

.method public showAnnotationView(Lcom/mapquest/android/maps/OverlayItem;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 138
    iput-object p1, p0, Lcom/mapquest/android/maps/AnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    .line 139
    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getPoint()Lcom/mapquest/android/maps/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->geoPoint:Lcom/mapquest/android/maps/GeoPoint;

    .line 140
    invoke-direct {p0, p1}, Lcom/mapquest/android/maps/AnnotationView;->setLayoutParams(Lcom/mapquest/android/maps/OverlayItem;)V

    .line 141
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->snippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mapquest/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/mapquest/android/maps/AnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    iget-object v1, p0, Lcom/mapquest/android/maps/AnnotationView;->parentItem:Lcom/mapquest/android/maps/OverlayItem;

    invoke-virtual {v1}, Lcom/mapquest/android/maps/OverlayItem;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    .line 144
    iget v0, p0, Lcom/mapquest/android/maps/AnnotationView;->pointerHeight:I

    iget v1, p0, Lcom/mapquest/android/maps/AnnotationView;->markerHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v2, v2, v2, v0}, Lcom/mapquest/android/maps/AnnotationView;->setPadding(IIII)V

    .line 145
    invoke-virtual {p0}, Lcom/mapquest/android/maps/AnnotationView;->show()V

    .line 146
    return-void
.end method

.method public tryToKeepBubbleOnScreen(Z)V
    .registers 2

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/mapquest/android/maps/AnnotationView;->tryToKeepBubbleOnScreen:Z

    .line 239
    return-void
.end method
