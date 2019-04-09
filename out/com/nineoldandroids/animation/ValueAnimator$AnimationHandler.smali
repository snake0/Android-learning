.class Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 570
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/animation/ValueAnimator$1;)V
    .registers 2

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .prologue
    .line 585
    const/4 v3, 0x1

    .line 586
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 587
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 588
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_12a

    .line 682
    :cond_1a
    :goto_1a
    return-void

    .line 592
    :pswitch_1b
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$200()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 593
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_31

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_126

    .line 594
    :cond_31
    const/4 v3, 0x0

    move v5, v3

    .line 601
    :cond_33
    :goto_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_66

    .line 602
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 605
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 606
    const/4 v4, 0x0

    move v6, v4

    :goto_48
    if-ge v6, v7, :cond_33

    .line 607
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 609
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$300(Lcom/nineoldandroids/animation/ValueAnimator;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_61

    .line 610
    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$400(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 606
    :goto_5d
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_48

    .line 612
    :cond_61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :pswitch_65
    move v5, v3

    .line 620
    :cond_66
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v7

    .line 621
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$500()Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 622
    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$600()Ljava/lang/ThreadLocal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 626
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 627
    const/4 v4, 0x0

    move v6, v4

    :goto_84
    if-ge v6, v9, :cond_99

    .line 628
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 629
    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z
    invoke-static {v4, v7, v8}, Lcom/nineoldandroids/animation/ValueAnimator;->access$700(Lcom/nineoldandroids/animation/ValueAnimator;J)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 630
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_95
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_84

    .line 633
    :cond_99
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 634
    if-lez v9, :cond_ba

    .line 635
    const/4 v4, 0x0

    move v6, v4

    :goto_a1
    if-ge v6, v9, :cond_b7

    .line 636
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 637
    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V
    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->access$400(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 638
    const/4 v10, 0x1

    # setter for: Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z
    invoke-static {v4, v10}, Lcom/nineoldandroids/animation/ValueAnimator;->access$802(Lcom/nineoldandroids/animation/ValueAnimator;Z)Z

    .line 639
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 635
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_a1

    .line 641
    :cond_b7
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 646
    :cond_ba
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 647
    const/4 v4, 0x0

    .line 648
    :goto_bf
    if-ge v4, v6, :cond_e4

    .line 649
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/ValueAnimator;

    .line 650
    invoke-virtual {v2, v7, v8}, Lcom/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 651
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_d0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v6, :cond_dc

    .line 654
    add-int/lit8 v2, v4, 0x1

    move v4, v6

    :goto_d9
    move v6, v4

    move v4, v2

    .line 666
    goto :goto_bf

    .line 663
    :cond_dc
    add-int/lit8 v6, v6, -0x1

    .line 664
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v2, v4

    move v4, v6

    goto :goto_d9

    .line 667
    :cond_e4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_102

    .line 668
    const/4 v2, 0x0

    move v4, v2

    :goto_ec
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_ff

    .line 669
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/animation/ValueAnimator;

    # invokes: Lcom/nineoldandroids/animation/ValueAnimator;->endAnimation()V
    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->access$900(Lcom/nineoldandroids/animation/ValueAnimator;)V

    .line 668
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_ec

    .line 671
    :cond_ff
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 676
    :cond_102
    if-eqz v5, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 677
    :cond_110
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    # getter for: Lcom/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J
    invoke-static {}, Lcom/nineoldandroids/animation/ValueAnimator;->access$1000()J

    move-result-wide v3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1a

    :cond_126
    move v5, v3

    goto/16 :goto_33

    .line 588
    nop

    :pswitch_data_12a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_65
    .end packed-switch
.end method
