.class public Landroid/support/v7/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DEFAULT_WEIGHT:F

.field static final UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/support/v7/widget/GridLayout$Alignment;

.field final span:Landroid/support/v7/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2392
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/support/v7/widget/GridLayout;->spec(I)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout$Spec;->UNDEFINED:Landroid/support/v7/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;F)V
    .registers 8

    .prologue
    .line 2408
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V

    .line 2409
    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;FLandroid/support/v7/widget/GridLayout$1;)V
    .registers 7

    .prologue
    .line 2391
    invoke-direct/range {p0 .. p5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method private constructor <init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V
    .registers 5

    .prologue
    .line 2400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2401
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 2402
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 2403
    iput-object p3, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2404
    iput p4, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    .line 2405
    return-void
.end method


# virtual methods
.method final copyWriteAlignment(Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .registers 6

    .prologue
    .line 2416
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method final copyWriteSpan(Landroid/support/v7/widget/GridLayout$Interval;)Landroid/support/v7/widget/GridLayout$Spec;
    .registers 6

    .prologue
    .line 2412
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget v3, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZLandroid/support/v7/widget/GridLayout$Interval;Landroid/support/v7/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2435
    if-ne p0, p1, :cond_5

    .line 2452
    :cond_4
    :goto_4
    return v0

    .line 2438
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    .line 2439
    goto :goto_4

    .line 2442
    :cond_13
    check-cast p1, Landroid/support/v7/widget/GridLayout$Spec;

    .line 2444
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    move v0, v1

    .line 2445
    goto :goto_4

    .line 2448
    :cond_21
    iget-object v2, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    iget-object v3, p1, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 2449
    goto :goto_4
.end method

.method final getFlexibility()I
    .registers 3

    .prologue
    .line 2420
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 2457
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2458
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2459
    return v0
.end method
