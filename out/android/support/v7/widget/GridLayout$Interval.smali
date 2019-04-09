.class final Landroid/support/v7/widget/GridLayout$Interval;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final max:I

.field public final min:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 2307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2308
    iput p1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2309
    iput p2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    .line 2310
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2332
    if-ne p0, p1, :cond_5

    .line 2349
    :cond_4
    :goto_4
    return v0

    .line 2335
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 2336
    goto :goto_4

    .line 2339
    :cond_13
    check-cast p1, Landroid/support/v7/widget/GridLayout$Interval;

    .line 2341
    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v3, p1, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    .line 2342
    goto :goto_4

    .line 2345
    :cond_1d
    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    iget v3, p1, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 2346
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2354
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 2355
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    add-int/2addr v0, v1

    .line 2356
    return v0
.end method

.method inverse()Landroid/support/v7/widget/GridLayout$Interval;
    .registers 4

    .prologue
    .line 2317
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    return-object v0
.end method

.method size()I
    .registers 3

    .prologue
    .line 2313
    iget v0, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
