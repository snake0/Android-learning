.class final Landroid/support/v7/widget/GridLayout$7;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2761
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 6

    .prologue
    .line 2769
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 2770
    const/4 v0, 0x0

    .line 2773
    :cond_9
    :goto_9
    return v0

    .line 2772
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    move-result v0

    .line 2773
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/high16 v0, -0x80000000

    goto :goto_9
.end method

.method public getBounds()Landroid/support/v7/widget/GridLayout$Bounds;
    .registers 2

    .prologue
    .line 2778
    new-instance v0, Landroid/support/v7/widget/GridLayout$7$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/GridLayout$7$1;-><init>(Landroid/support/v7/widget/GridLayout$7;)V

    return-object v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 4

    .prologue
    .line 2764
    const/4 v0, 0x0

    return v0
.end method
