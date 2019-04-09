.class final Lcom/mqunar/core/android/content/res/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    .line 474
    return-void
.end method

.method private final a(IZ)I
    .registers 9

    .prologue
    const/4 v0, -0x1

    .line 630
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    if-nez v1, :cond_6

    .line 650
    :cond_5
    :goto_5
    return v0

    .line 633
    :cond_6
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v2, v1, -0x1

    .line 634
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    move v3, v1

    :goto_d
    if-eqz v3, :cond_5

    .line 635
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v1, v1, v2

    .line 636
    add-int/lit8 v2, v2, -0x2

    .line 637
    :goto_15
    if-eqz v1, :cond_38

    .line 638
    if-eqz p2, :cond_26

    .line 639
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v4, v4, v2

    if-ne v4, p1, :cond_33

    .line 640
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v0, v1

    goto :goto_5

    .line 643
    :cond_26
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_33

    .line 644
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v0, v0, v2

    goto :goto_5

    .line 647
    :cond_33
    add-int/lit8 v2, v2, -0x2

    .line 637
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 634
    :cond_38
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_d
.end method

.method private final b(IZ)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 654
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    .line 671
    :cond_7
    :goto_7
    return v0

    .line 657
    :cond_8
    const/4 v2, 0x0

    .line 658
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    :goto_b
    if-eqz v1, :cond_7

    .line 659
    iget-object v3, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v3, v3, v2

    .line 660
    if-lt p1, v3, :cond_1c

    .line 661
    sub-int/2addr p1, v3

    .line 662
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 658
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 665
    :cond_1c
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 666
    if-nez p2, :cond_25

    .line 667
    add-int/lit8 v0, v0, 0x1

    .line 669
    :cond_25
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v0, v1, v0

    goto :goto_7
.end method

.method private e(I)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 619
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    array-length v0, v0

    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    sub-int/2addr v0, v1

    .line 620
    if-le v0, p1, :cond_a

    .line 627
    :goto_9
    return-void

    .line 623
    :cond_a
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    array-length v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 624
    new-array v0, v0, [I

    .line 625
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    iget v2, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 626
    iput-object v0, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    goto :goto_9
.end method


# virtual methods
.method public final a(I)I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 495
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    if-eqz v1, :cond_7

    if-gez p1, :cond_8

    .line 508
    :cond_7
    return v0

    .line 498
    :cond_8
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    if-le p1, v1, :cond_e

    .line 499
    iget p1, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    :cond_e
    move v1, v0

    .line 503
    :goto_f
    if-eqz p1, :cond_7

    .line 504
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v3, v2, v1

    .line 505
    add-int v2, v0, v3

    .line 506
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    .line 503
    add-int/lit8 p1, p1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_f
.end method

.method public final a()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 477
    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    .line 478
    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    .line 479
    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    .line 480
    return-void
.end method

.method public final a(II)V
    .registers 8

    .prologue
    .line 512
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    if-nez v0, :cond_7

    .line 513
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/a;->e()V

    .line 515
    :cond_7
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mqunar/core/android/content/res/a;->e(I)V

    .line 516
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 517
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v1, v1, v0

    .line 518
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    add-int/lit8 v3, v0, -0x1

    mul-int/lit8 v4, v1, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aput v4, v2, v3

    .line 519
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aput p1, v2, v0

    .line 520
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    add-int/lit8 v3, v0, 0x1

    aput p2, v2, v3

    .line 521
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    .line 522
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    .line 523
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    .line 524
    return-void
.end method

.method public final b()I
    .registers 3

    .prologue
    .line 487
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    if-nez v0, :cond_6

    .line 488
    const/4 v0, 0x0

    .line 491
    :goto_5
    return v0

    .line 490
    :cond_6
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 491
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v0, v1, v0

    goto :goto_5
.end method

.method public final b(I)I
    .registers 3

    .prologue
    .line 577
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mqunar/core/android/content/res/a;->b(IZ)I

    move-result v0

    return v0
.end method

.method public final c(I)I
    .registers 3

    .prologue
    .line 581
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/core/android/content/res/a;->b(IZ)I

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 558
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    if-nez v1, :cond_6

    .line 573
    :cond_5
    :goto_5
    return v0

    .line 561
    :cond_6
    iget v1, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 562
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v2, v2, v1

    .line 563
    if-eqz v2, :cond_5

    .line 566
    add-int/lit8 v0, v2, -0x1

    .line 567
    add-int/lit8 v1, v1, -0x2

    .line 568
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aput v0, v2, v1

    .line 569
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    .line 570
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aput v0, v2, v1

    .line 571
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    .line 572
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    .line 573
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    return v0
.end method

.method public final d(I)I
    .registers 3

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mqunar/core/android/content/res/a;->a(IZ)I

    move-result v0

    return v0
.end method

.method public final e()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 597
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mqunar/core/android/content/res/a;->e(I)V

    .line 598
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    .line 599
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aput v2, v1, v0

    .line 600
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    add-int/lit8 v0, v0, 0x1

    aput v2, v1, v0

    .line 601
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    .line 602
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    .line 603
    return-void
.end method

.method public final f()V
    .registers 4

    .prologue
    .line 605
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    if-nez v0, :cond_5

    .line 616
    :cond_4
    :goto_4
    return-void

    .line 608
    :cond_5
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 609
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/a;->a:[I

    aget v1, v1, v0

    .line 610
    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 613
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->b:I

    .line 614
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->c:I

    .line 615
    iget v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mqunar/core/android/content/res/a;->d:I

    goto :goto_4
.end method
