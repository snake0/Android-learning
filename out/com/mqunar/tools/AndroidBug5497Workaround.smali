.class public Lcom/mqunar/tools/AndroidBug5497Workaround;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout;

    .line 21
    iget-object v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->a:Landroid/view/View;

    .line 22
    iget-object v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mqunar/tools/a;

    invoke-direct {v1, p0}, Lcom/mqunar/tools/a;-><init>(Lcom/mqunar/tools/AndroidBug5497Workaround;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 27
    iget-object v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->d:Landroid/widget/FrameLayout$LayoutParams;

    .line 28
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mqunar/tools/AndroidBug5497Workaround;->b()I

    move-result v0

    .line 32
    iget v1, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->b:I

    if-eq v0, v1, :cond_26

    .line 33
    iget-object v1, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 34
    sub-int v2, v1, v0

    .line 36
    div-int/lit8 v3, v1, 0x4

    if-le v2, v3, :cond_27

    .line 38
    iget-object v1, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 43
    :goto_1f
    iget-object v1, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 44
    iput v0, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->b:I

    .line 46
    :cond_26
    return-void

    .line 41
    :cond_27
    iget-object v2, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->d:Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1f
.end method

.method static synthetic a(Lcom/mqunar/tools/AndroidBug5497Workaround;)V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/mqunar/tools/AndroidBug5497Workaround;->a()V

    return-void
.end method

.method private b()I
    .registers 3

    .prologue
    .line 49
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 50
    iget-object v1, p0, Lcom/mqunar/tools/AndroidBug5497Workaround;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 51
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method
