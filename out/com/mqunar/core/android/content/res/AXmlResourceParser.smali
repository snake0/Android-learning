.class public Lcom/mqunar/core/android/content/res/AXmlResourceParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/res/XmlResourceParser;


# instance fields
.field private a:Lcom/mqunar/core/android/content/res/c;

.field private b:Z

.field private c:Lcom/mqunar/core/android/content/res/d;

.field private d:[I

.field private e:Lcom/mqunar/core/android/content/res/a;

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:[I

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->b:Z

    .line 896
    new-instance v0, Lcom/mqunar/core/android/content/res/a;

    invoke-direct {v0}, Lcom/mqunar/core/android/content/res/a;-><init>()V

    iput-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    .line 45
    invoke-direct {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a()V

    .line 46
    return-void
.end method

.method private final a(I)I
    .registers 5

    .prologue
    .line 723
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 724
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Current event is not START_TAG."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_d
    mul-int/lit8 v0, p1, 0x5

    .line 727
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    array-length v1, v1

    if-lt v0, v1, :cond_33

    .line 728
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid attribute index ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 730
    :cond_33
    return v0
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9

    .prologue
    const/4 v1, -0x1

    .line 734
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    if-eqz v0, :cond_7

    if-nez p2, :cond_8

    .line 751
    :cond_7
    :goto_7
    return v1

    .line 737
    :cond_8
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v0, p2}, Lcom/mqunar/core/android/content/res/d;->a(Ljava/lang/String;)I

    move-result v3

    .line 738
    if-eq v3, v1, :cond_7

    .line 741
    if-eqz p1, :cond_33

    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    .line 742
    invoke-virtual {v0, p1}, Lcom/mqunar/core/android/content/res/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 744
    :goto_18
    const/4 v2, 0x0

    :goto_19
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    array-length v4, v4

    if-eq v2, v4, :cond_7

    .line 745
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v5, v2, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_35

    if-eq v0, v1, :cond_30

    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v5, v2, 0x0

    aget v4, v4, v5

    if-ne v0, v4, :cond_35

    .line 748
    :cond_30
    div-int/lit8 v1, v2, 0x5

    goto :goto_7

    :cond_33
    move v0, v1

    .line 742
    goto :goto_18

    .line 744
    :cond_35
    add-int/lit8 v2, v2, 0x5

    goto :goto_19
.end method

.method private final a()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 755
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    .line 756
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->h:I

    .line 757
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    .line 758
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->j:I

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    .line 760
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->l:I

    .line 761
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    .line 762
    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->n:I

    .line 763
    return-void
.end method

.method private final b()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const v2, 0x100102

    const v7, 0x100100

    const/4 v0, 0x3

    const/4 v6, 0x1

    .line 767
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    if-nez v1, :cond_29

    .line 768
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    const v3, 0x80003

    invoke-static {v1, v3}, Lcom/mqunar/core/android/content/res/b;->a(Lcom/mqunar/core/android/content/res/c;I)V

    .line 769
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 770
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-static {v1}, Lcom/mqunar/core/android/content/res/d;->a(Lcom/mqunar/core/android/content/res/c;)Lcom/mqunar/core/android/content/res/d;

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    .line 771
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/a;->e()V

    .line 772
    iput-boolean v6, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->b:Z

    .line 775
    :cond_29
    iget v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    if-ne v1, v6, :cond_2e

    .line 882
    :goto_2d
    return-void

    .line 779
    :cond_2e
    iget v3, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    .line 780
    invoke-direct {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a()V

    .line 783
    :cond_33
    :goto_33
    iget-boolean v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->f:Z

    if-eqz v1, :cond_3e

    .line 784
    iput-boolean v8, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->f:Z

    .line 785
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/a;->f()V

    .line 789
    :cond_3e
    if-ne v3, v0, :cond_53

    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    .line 790
    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/a;->d()I

    move-result v1

    if-ne v1, v6, :cond_53

    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    .line 791
    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/a;->b()I

    move-result v1

    if-nez v1, :cond_53

    .line 793
    iput v6, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    goto :goto_2d

    .line 798
    :cond_53
    if-nez v3, :cond_88

    move v1, v2

    .line 805
    :goto_56
    const v4, 0x80180

    if-ne v1, v4, :cond_9c

    .line 806
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    .line 807
    const/16 v4, 0x8

    if-lt v1, v4, :cond_69

    rem-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_8f

    .line 808
    :cond_69
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid resource ids size ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_88
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    goto :goto_56

    .line 810
    :cond_8f
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    div-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v4, v1}, Lcom/mqunar/core/android/content/res/c;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->d:[I

    goto :goto_33

    .line 814
    :cond_9c
    if-lt v1, v7, :cond_a3

    const v4, 0x100104

    if-le v1, v4, :cond_c2

    .line 815
    :cond_a3
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid chunk type ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_c2
    if-ne v1, v2, :cond_cb

    const/4 v4, -0x1

    if-ne v3, v4, :cond_cb

    .line 820
    iput v8, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    goto/16 :goto_2d

    .line 825
    :cond_cb
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v4}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 826
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v4}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v4

    .line 827
    iget-object v5, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v5}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 829
    if-eq v1, v7, :cond_e2

    const v5, 0x100101

    if-ne v1, v5, :cond_108

    .line 832
    :cond_e2
    if-ne v1, v7, :cond_f7

    .line 833
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    .line 834
    iget-object v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v4}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v4

    .line 835
    iget-object v5, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v5, v1, v4}, Lcom/mqunar/core/android/content/res/a;->a(II)V

    goto/16 :goto_33

    .line 837
    :cond_f7
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 838
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 839
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/a;->c()Z

    goto/16 :goto_33

    .line 844
    :cond_108
    iput v4, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->h:I

    .line 846
    if-ne v1, v2, :cond_171

    .line 847
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->j:I

    .line 848
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    .line 849
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 850
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    .line 851
    ushr-int/lit8 v2, v1, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->l:I

    .line 852
    const v2, 0xffff

    and-int/2addr v1, v2

    .line 853
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v2}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v2

    iput v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    .line 854
    iget v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    ushr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->n:I

    .line 855
    iget v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    const v3, 0xffff

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    .line 856
    iget-object v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    mul-int/lit8 v1, v1, 0x5

    invoke-virtual {v2, v1}, Lcom/mqunar/core/android/content/res/c;->b(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    .line 857
    :goto_155
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    array-length v1, v1

    if-ge v0, v1, :cond_167

    .line 858
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    iget-object v2, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x18

    aput v2, v1, v0

    .line 859
    add-int/lit8 v0, v0, 0x5

    goto :goto_155

    .line 861
    :cond_167
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/a;->e()V

    .line 862
    const/4 v0, 0x2

    iput v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    goto/16 :goto_2d

    .line 866
    :cond_171
    const v4, 0x100103

    if-ne v1, v4, :cond_18c

    .line 867
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->j:I

    .line 868
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v1}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v1

    iput v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    .line 869
    iput v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    .line 870
    iput-boolean v6, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->f:Z

    goto/16 :goto_2d

    .line 874
    :cond_18c
    const v4, 0x100104

    if-ne v1, v4, :cond_33

    .line 875
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/c;->b()I

    move-result v0

    iput v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    .line 876
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 877
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/c;->c()V

    .line 878
    const/4 v0, 0x4

    iput v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    goto/16 :goto_2d
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-boolean v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->b:Z

    if-nez v0, :cond_6

    .line 66
    :goto_5
    return-void

    .line 59
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->b:Z

    .line 60
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/c;->a()V

    .line 61
    iput-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    .line 62
    iput-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    .line 63
    iput-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->d:[I

    .line 64
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/a;->a()V

    .line 65
    invoke-direct {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a()V

    goto :goto_5
.end method

.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 429
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeBooleanValue(IZ)Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 300
    if-eqz p2, :cond_c

    move v0, v1

    :goto_5
    invoke-virtual {p0, p1, v0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    if-eqz v0, :cond_e

    :goto_b
    return v1

    :cond_c
    move v0, v2

    goto :goto_5

    :cond_e
    move v1, v2

    goto :goto_b
.end method

.method public getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    .prologue
    .line 346
    invoke-direct {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 347
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 350
    :goto_7
    return p3

    :cond_8
    invoke-virtual {p0, v0, p3}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result p3

    goto :goto_7
.end method

.method public getAttributeCount()I
    .registers 3

    .prologue
    .line 233
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    .line 234
    const/4 v0, -0x1

    .line 236
    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    goto :goto_6
.end method

.method public getAttributeFloatValue(IF)F
    .registers 6

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 306
    const/4 v2, 0x4

    if-ne v1, v2, :cond_17

    .line 307
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    .line 308
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    .line 310
    :cond_17
    return p2
.end method

.method public getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F
    .registers 6

    .prologue
    .line 354
    invoke-direct {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 355
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 358
    :goto_7
    return p3

    :cond_8
    invoke-virtual {p0, v0, p3}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeFloatValue(IF)F

    move-result p3

    goto :goto_7
.end method

.method public getAttributeIntValue(II)I
    .registers 6

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 316
    const/16 v2, 0x10

    if-lt v1, v2, :cond_18

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_18

    .line 319
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget p2, v1, v0

    .line 321
    :cond_18
    return p2
.end method

.method public getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 363
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 366
    :goto_7
    return p3

    :cond_8
    invoke-virtual {p0, v0, p3}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result p3

    goto :goto_7
.end method

.method public getAttributeListValue(I[Ljava/lang/String;I)I
    .registers 5

    .prologue
    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeListValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 261
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 262
    const-string v0, ""

    .line 264
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getAttributeNameResource(I)I
    .registers 4

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 269
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    .line 270
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->d:[I

    if-eqz v1, :cond_15

    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->d:[I

    array-length v1, v1

    if-lt v0, v1, :cond_17

    .line 273
    :cond_15
    const/4 v0, 0x0

    .line 275
    :goto_16
    return v0

    :cond_17
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->d:[I

    aget v0, v1, v0

    goto :goto_16
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 240
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x0

    aget v0, v1, v0

    .line 242
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 243
    const-string v0, ""

    .line 245
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 250
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x0

    aget v0, v1, v0

    .line 251
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/a;->d(I)I

    move-result v0

    .line 252
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 253
    const-string v0, ""

    .line 255
    :goto_15
    return-object v0

    :cond_16
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method public getAttributeResourceValue(II)I
    .registers 6

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 331
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 332
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget p2, v1, v0

    .line 334
    :cond_13
    return p2
.end method

.method public getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 379
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 382
    :goto_7
    return p3

    :cond_8
    invoke-virtual {p0, v0, p3}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeResourceValue(II)I

    move-result p3

    goto :goto_7
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 396
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeUnsignedIntValue(II)I
    .registers 4

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeIntValue(II)I

    move-result v0

    return v0
.end method

.method public getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 371
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 374
    :goto_7
    return p3

    :cond_8
    invoke-virtual {p0, v0, p3}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result p3

    goto :goto_7
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 289
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 291
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1a

    .line 292
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 293
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    :goto_19
    return-object v0

    .line 295
    :cond_1a
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    .line 296
    const-string v0, ""

    goto :goto_19
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 339
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 340
    const/4 v0, 0x0

    .line 342
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public getAttributeValueData(I)I
    .registers 4

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    return v0
.end method

.method public getAttributeValueType(I)I
    .registers 4

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x3

    aget v0, v1, v0

    return v0
.end method

.method public getClassAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 195
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 196
    const/4 v0, 0x0

    .line 200
    :goto_6
    return-object v0

    .line 198
    :cond_7
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->m:I

    invoke-direct {p0, v0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 199
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 200
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getColumnNumber()I
    .registers 2

    .prologue
    .line 417
    const/4 v0, -0x1

    return v0
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v0}, Lcom/mqunar/core/android/content/res/a;->d()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEventType()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public getIdAttribute()Ljava/lang/String;
    .registers 3

    .prologue
    .line 204
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 205
    const/4 v0, 0x0

    .line 209
    :goto_6
    return-object v0

    .line 207
    :cond_7
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->l:I

    invoke-direct {p0, v0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 208
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    .line 209
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getIdAttributeResourceValue(I)I
    .registers 5

    .prologue
    .line 213
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 221
    :cond_5
    :goto_5
    return p1

    .line 216
    :cond_6
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->l:I

    invoke-direct {p0, v0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    .line 218
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 221
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget p1, v1, v0

    goto :goto_5
.end method

.method public getInputEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLineNumber()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->h:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 140
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 141
    :cond_f
    const/4 v0, 0x0

    .line 143
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    iget v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    invoke-virtual {v0, v1}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    iget v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->j:I

    invoke-virtual {v0, v1}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 433
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceCount(I)I
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/android/content/res/a;->a(I)I

    move-result v0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/android/content/res/a;->b(I)I

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    invoke-virtual {v0, p1}, Lcom/mqunar/core/android/content/res/a;->c(I)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML line #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->e:Lcom/mqunar/core/android/content/res/a;

    iget v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->j:I

    invoke-virtual {v0, v1}, Lcom/mqunar/core/android/content/res/a;->d(I)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    invoke-virtual {v1, v0}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 437
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStyleAttribute()I
    .registers 3

    .prologue
    .line 225
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->n:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 226
    const/4 v0, 0x0

    .line 229
    :goto_6
    return v0

    .line 228
    :cond_7
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->n:I

    invoke-direct {p0, v0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a(I)I

    move-result v0

    .line 229
    iget-object v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->k:[I

    add-int/lit8 v0, v0, 0x4

    aget v0, v1, v0

    goto :goto_6
.end method

.method public getText()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    .line 148
    :cond_a
    const/4 v0, 0x0

    .line 150
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->c:Lcom/mqunar/core/android/content/res/d;

    iget v1, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->i:I

    invoke-virtual {v0, v1}, Lcom/mqunar/core/android/content/res/d;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public getTextCharacters([I)[C
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .line 155
    if-nez v1, :cond_9

    .line 156
    const/4 v0, 0x0

    .line 162
    :goto_8
    return-object v0

    .line 158
    :cond_9
    aput v3, p1, v3

    .line 159
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, p1, v0

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 161
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_8
.end method

.method public isAttributeDefault(I)Z
    .registers 3

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyElementTag()Z
    .registers 2

    .prologue
    .line 421
    const/4 v0, 0x0

    return v0
.end method

.method public isWhitespace()Z
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .registers 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    if-nez v0, :cond_d

    .line 72
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser is not opened."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 75
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->b()V

    .line 76
    iget v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->g:I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_13

    return v0

    .line 78
    :catch_13
    move-exception v0

    .line 79
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->close()V

    .line 80
    throw v0
.end method

.method public nextTag()I
    .registers 4

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->next()I

    move-result v0

    .line 90
    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->isWhitespace()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 91
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->next()I

    move-result v0

    .line 93
    :cond_11
    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 94
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Expected start or end tag."

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 96
    :cond_20
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 101
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser must be on START_TAG to read next text."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 103
    :cond_11
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->next()I

    move-result v0

    .line 104
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 105
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->next()I

    move-result v1

    .line 107
    if-eq v1, v3, :cond_2e

    .line 108
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Event TEXT must be immediately followed by END_TAG."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 111
    :cond_2a
    if-ne v0, v3, :cond_2f

    .line 112
    const-string v0, ""

    :cond_2e
    return-object v0

    .line 114
    :cond_2f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Parser must be on START_TAG or TEXT to read text."

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .registers 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->next()I

    move-result v0

    return v0
.end method

.method public open(Ljava/io/InputStream;)V
    .registers 4

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->close()V

    .line 50
    if-eqz p1, :cond_d

    .line 51
    new-instance v0, Lcom/mqunar/core/android/content/res/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mqunar/core/android/content/res/c;-><init>(Ljava/io/InputStream;Z)V

    iput-object v0, p0, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->a:Lcom/mqunar/core/android/content/res/c;

    .line 53
    :cond_d
    return-void
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_1e

    if-eqz p2, :cond_12

    .line 120
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_12
    if-eqz p3, :cond_3c

    .line 121
    invoke-virtual {p0}, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 123
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mqunar/core/android/content/res/AXmlResourceParser;->TYPES:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is expected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 125
    :cond_3c
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 447
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 406
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInput(Ljava/io/Reader;)V
    .registers 4

    .prologue
    .line 409
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 440
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Method is not supported."

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
