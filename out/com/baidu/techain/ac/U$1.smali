.class Lcom/baidu/techain/ac/U$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/techain/core/ApkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/techain/ac/U;

.field final synthetic val$localSetIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/techain/ac/U;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 643
    iput-object p1, p0, Lcom/baidu/techain/ac/U$1;->this$0:Lcom/baidu/techain/ac/U;

    iput-object p2, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/baidu/techain/core/ApkInfo;Lcom/baidu/techain/core/ApkInfo;)I
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 647
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-ne v0, v1, :cond_c

    iget v0, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v0, v1, :cond_c

    move v1, v2

    .line 676
    :cond_b
    :goto_b
    return v1

    .line 649
    :cond_c
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v0, v1, :cond_14

    iget v0, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-eq v0, v1, :cond_b

    .line 651
    :cond_14
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iget v3, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-lt v0, v3, :cond_b

    .line 653
    iget v0, p1, Lcom/baidu/techain/core/ApkInfo;->priority:I

    iget v3, p2, Lcom/baidu/techain/core/ApkInfo;->priority:I

    if-le v0, v3, :cond_22

    move v1, v2

    .line 654
    goto :goto_b

    .line 657
    :cond_22
    iget-object v0, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 658
    iget-object v0, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    iget v3, p1, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 661
    :goto_40
    iget-object v3, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    if-eqz v3, :cond_70

    iget-object v3, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    iget v4, p2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 662
    iget-object v3, p0, Lcom/baidu/techain/ac/U$1;->val$localSetIds:Ljava/util/List;

    iget v4, p2, Lcom/baidu/techain/core/ApkInfo;->key:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 664
    :goto_5e
    if-eq v0, v1, :cond_62

    if-eq v3, v1, :cond_b

    .line 666
    :cond_62
    if-ne v0, v1, :cond_68

    if-eq v3, v1, :cond_68

    move v1, v2

    .line 667
    goto :goto_b

    .line 669
    :cond_68
    if-le v0, v3, :cond_6c

    move v1, v2

    .line 670
    goto :goto_b

    .line 671
    :cond_6c
    if-lt v0, v3, :cond_b

    .line 676
    const/4 v1, 0x0

    goto :goto_b

    :cond_70
    move v3, v1

    goto :goto_5e

    :cond_72
    move v0, v1

    goto :goto_40
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 643
    check-cast p1, Lcom/baidu/techain/core/ApkInfo;

    check-cast p2, Lcom/baidu/techain/core/ApkInfo;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/techain/ac/U$1;->compare(Lcom/baidu/techain/core/ApkInfo;Lcom/baidu/techain/core/ApkInfo;)I

    move-result v0

    return v0
.end method
