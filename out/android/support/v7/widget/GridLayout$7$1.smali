.class Landroid/support/v7/widget/GridLayout$7$1;
.super Landroid/support/v7/widget/GridLayout$Bounds;
.source "SourceFile"


# instance fields
.field private size:I

.field final synthetic this$0:Landroid/support/v7/widget/GridLayout$7;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/GridLayout$7;)V
    .registers 3

    .prologue
    .line 2778
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$7$1;->this$0:Landroid/support/v7/widget/GridLayout$7;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayout$Bounds;-><init>(Landroid/support/v7/widget/GridLayout$1;)V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I
    .registers 8

    .prologue
    .line 2806
    const/4 v0, 0x0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected include(II)V
    .registers 5

    .prologue
    .line 2795
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/GridLayout$Bounds;->include(II)V

    .line 2796
    iget v0, p0, Landroid/support/v7/widget/GridLayout$7$1;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout$7$1;->size:I

    .line 2797
    return-void
.end method

.method protected reset()V
    .registers 2

    .prologue
    .line 2789
    invoke-super {p0}, Landroid/support/v7/widget/GridLayout$Bounds;->reset()V

    .line 2790
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$7$1;->size:I

    .line 2791
    return-void
.end method

.method protected size(Z)I
    .registers 4

    .prologue
    .line 2801
    invoke-super {p0, p1}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$7$1;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
