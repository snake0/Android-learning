.class public final Landroid/support/v7/widget/Space;
.super Landroid/view/View;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0}, Landroid/support/v7/widget/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 36
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Space;->setVisibility(I)V

    .line 38
    :cond_d
    return-void
.end method

.method private static getDefaultSize2(II)I
    .registers 4

    .prologue
    .line 70
    .line 71
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 72
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 74
    sparse-switch v1, :sswitch_data_14

    .line 85
    :goto_b
    :sswitch_b
    return p0

    .line 79
    :sswitch_c
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_b

    :sswitch_11
    move p0, v0

    .line 82
    goto :goto_b

    .line 74
    nop

    :sswitch_data_14
    .sparse-switch
        -0x80000000 -> :sswitch_c
        0x0 -> :sswitch_b
        0x40000000 -> :sswitch_11
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 62
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/support/v7/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/support/v7/widget/Space;->getDefaultSize2(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/support/v7/widget/Space;->getDefaultSize2(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/Space;->setMeasuredDimension(II)V

    .line 93
    return-void
.end method
