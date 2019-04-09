.class final Landroid/support/v7/widget/GridLayout$MutableInt;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2102
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$MutableInt;->reset()V

    .line 2103
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 2105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2106
    iput p1, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 2107
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .prologue
    .line 2110
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    .line 2111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2115
    iget v0, p0, Landroid/support/v7/widget/GridLayout$MutableInt;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
