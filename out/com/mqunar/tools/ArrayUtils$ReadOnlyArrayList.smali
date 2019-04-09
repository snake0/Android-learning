.class Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    .line 5936
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 5937
    iput-object p1, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    .line 5938
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5942
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v2, :cond_7

    .line 5958
    :cond_6
    :goto_6
    return v0

    .line 5945
    :cond_7
    if-eqz p1, :cond_1c

    .line 5946
    iget-object v3, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 5947
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    move v0, v1

    .line 5948
    goto :goto_6

    .line 5946
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 5952
    :cond_1c
    iget-object v3, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v4, v3

    move v2, v0

    :goto_20
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    .line 5953
    if-nez v5, :cond_28

    move v0, v1

    .line 5954
    goto :goto_6

    .line 5952
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_20
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 5964
    :try_start_0
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_c

    return-object v0

    .line 5965
    :catch_5
    move-exception v0

    .line 5966
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 5967
    :catch_c
    move-exception v0

    .line 5968
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 5974
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v2, :cond_8

    move v0, v1

    .line 5990
    :cond_7
    :goto_7
    return v0

    .line 5977
    :cond_8
    if-eqz p1, :cond_1e

    .line 5978
    :goto_a
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 5979
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5978
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5984
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    :cond_1e
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2a

    .line 5985
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-nez v2, :cond_1c

    goto :goto_7

    :cond_2a
    move v0, v1

    .line 5990
    goto :goto_7
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 5995
    iget-object v1, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v1, :cond_6

    .line 6011
    :cond_5
    :goto_5
    return v0

    .line 5998
    :cond_6
    if-eqz p1, :cond_1e

    .line 5999
    iget-object v1, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_5

    .line 6000
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v0, v1

    .line 6001
    goto :goto_5

    .line 5999
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 6005
    :cond_1e
    iget-object v1, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_23
    if-ltz v1, :cond_5

    .line 6006
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-nez v2, :cond_2d

    move v0, v1

    .line 6007
    goto :goto_5

    .line 6005
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_23
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 6016
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 6017
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 6020
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 6021
    iget-object v1, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    aput-object p2, v1, p1
    :try_end_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_12} :catch_13
    .catch Ljava/lang/ArrayStoreException; {:try_start_a .. :try_end_12} :catch_1a

    .line 6022
    return-object v0

    .line 6023
    :catch_13
    move-exception v0

    .line 6024
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 6025
    :catch_1a
    move-exception v0

    .line 6026
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 6032
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_5
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 6037
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v0, :cond_8

    .line 6038
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 6040
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_7
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6045
    iget-object v0, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 6057
    :goto_5
    return-object p1

    .line 6048
    :cond_6
    invoke-virtual {p0}, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->size()I

    move-result v1

    .line 6049
    array-length v0, p1

    if-le v1, v0, :cond_2a

    .line 6050
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 6051
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 6053
    :goto_1d
    iget-object v2, p0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;->a:[Ljava/lang/Object;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6054
    array-length v2, v0

    if-ge v1, v2, :cond_28

    .line 6055
    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_28
    move-object p1, v0

    .line 6057
    goto :goto_5

    :cond_2a
    move-object v0, p1

    goto :goto_1d
.end method
