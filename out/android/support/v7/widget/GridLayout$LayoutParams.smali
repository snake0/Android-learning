.class public Landroid/support/v7/widget/GridLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# static fields
.field private static final BOTTOM_MARGIN:I

.field private static final COLUMN:I

.field private static final COLUMN_SPAN:I

.field private static final COLUMN_WEIGHT:I

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Landroid/support/v7/widget/GridLayout$Interval;

.field private static final DEFAULT_SPAN_SIZE:I

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I

.field private static final LEFT_MARGIN:I

.field private static final MARGIN:I

.field private static final RIGHT_MARGIN:I

.field private static final ROW:I

.field private static final ROW_SPAN:I

.field private static final ROW_WEIGHT:I

.field private static final TOP_MARGIN:I


# instance fields
.field public columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

.field public rowSpec:Landroid/support/v7/widget/GridLayout$Spec;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1856
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    sput-object v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/support/v7/widget/GridLayout$Interval;

    .line 1857
    sget-object v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v0

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    .line 1861
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->MARGIN:I

    .line 1862
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->LEFT_MARGIN:I

    .line 1863
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->TOP_MARGIN:I

    .line 1864
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->RIGHT_MARGIN:I

    .line 1865
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->BOTTOM_MARGIN:I

    .line 1867
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_column:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->COLUMN:I

    .line 1868
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->COLUMN_SPAN:I

    .line 1869
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->COLUMN_WEIGHT:I

    .line 1871
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_row:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->ROW:I

    .line 1872
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->ROW_SPAN:I

    .line 1873
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->ROW_WEIGHT:I

    .line 1875
    sget v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->GRAVITY:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 1937
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    sget-object v1, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V

    .line 1938
    return-void
.end method

.method private constructor <init>(IIIIIILandroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V
    .registers 10

    .prologue
    .line 1913
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1914
    invoke-virtual {p0, p3, p4, p5, p6}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 1915
    iput-object p7, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1916
    iput-object p8, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1917
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 1978
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1979
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$LayoutParams;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1980
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$LayoutParams;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1981
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$LayoutParams;)V
    .registers 3

    .prologue
    .line 1963
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1965
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1966
    iget-object v0, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1967
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V
    .registers 12

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x80000000

    .line 1928
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(IIIIIILandroid/support/v7/widget/GridLayout$Spec;Landroid/support/v7/widget/GridLayout$Spec;)V

    .line 1931
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    .prologue
    .line 1946
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1947
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3

    .prologue
    .line 1953
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1891
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1905
    sget-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 1954
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    .line 2010
    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2012
    :try_start_6
    sget v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->GRAVITY:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 2014
    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->COLUMN:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2015
    sget v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->COLUMN_SPAN:I

    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2016
    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->COLUMN_WEIGHT:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 2017
    const/4 v5, 0x1

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v5

    invoke-static {v2, v3, v5, v4}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 2019
    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->ROW:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 2020
    sget v3, Landroid/support/v7/widget/GridLayout$LayoutParams;->ROW_SPAN:I

    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 2021
    sget v4, Landroid/support/v7/widget/GridLayout$LayoutParams;->ROW_WEIGHT:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 2022
    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    invoke-static {v2, v3, v0, v4}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;F)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_55

    .line 2024
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2026
    return-void

    .line 2024
    :catchall_55
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    .line 1995
    sget-object v0, Landroid/support/v7/gridlayout/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1998
    :try_start_6
    sget v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->MARGIN:I

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 2000
    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->LEFT_MARGIN:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 2001
    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->TOP_MARGIN:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->topMargin:I

    .line 2002
    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->RIGHT_MARGIN:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 2003
    sget v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->BOTTOM_MARGIN:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I
    :try_end_2e
    .catchall {:try_start_6 .. :try_end_2e} :catchall_32

    .line 2005
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2007
    return-void

    .line 2005
    :catchall_32
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2057
    if-ne p0, p1, :cond_5

    .line 2065
    :cond_4
    :goto_4
    return v0

    .line 2058
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    .line 2060
    :cond_13
    check-cast p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 2062
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    goto :goto_4

    .line 2063
    :cond_21
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$Spec;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Spec;->hashCode()I

    move-result v0

    .line 2071
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v1}, Landroid/support/v7/widget/GridLayout$Spec;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2072
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .registers 6

    .prologue
    const/4 v1, -0x2

    .line 2043
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->width:I

    .line 2044
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->height:I

    .line 2045
    return-void
.end method

.method final setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V
    .registers 3

    .prologue
    .line 2052
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 2053
    return-void
.end method

.method public setGravity(I)V
    .registers 4

    .prologue
    .line 2037
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 2038
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v7/widget/GridLayout;->getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteAlignment(Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 2039
    return-void
.end method

.method final setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V
    .registers 3

    .prologue
    .line 2048
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Spec;->copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 2049
    return-void
.end method
