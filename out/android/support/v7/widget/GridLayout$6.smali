.class final Landroid/support/v7/widget/GridLayout$6;
.super Landroid/support/v7/widget/GridLayout$Alignment;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 2742
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 5

    .prologue
    .line 2750
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 4

    .prologue
    .line 2745
    shr-int/lit8 v0, p2, 0x1

    return v0
.end method
