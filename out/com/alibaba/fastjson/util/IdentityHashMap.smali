.class public Lcom/alibaba/fastjson/util/IdentityHashMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final DEFAULT_TABLE_SIZE:I = 0x400


# instance fields
.field private final buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/IdentityHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final indexMask:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>(I)V

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    .line 37
    new-array v0, p1, [Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    .line 38
    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 42
    iget v1, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    and-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v0, v1, v0

    :goto_b
    if-eqz v0, :cond_17

    .line 45
    iget-object v1, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v1, :cond_14

    .line 46
    iget-object v0, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 50
    :goto_13
    return-object v0

    .line 44
    :cond_14
    iget-object v0, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_b

    .line 50
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 55
    iget v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->indexMask:I

    and-int v2, v1, v0

    .line 57
    iget-object v0, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v0, v0, v2

    :goto_c
    if-eqz v0, :cond_19

    .line 58
    iget-object v3, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->key:Ljava/lang/Object;

    if-ne p1, v3, :cond_16

    .line 59
    iput-object p2, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->value:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x1

    .line 67
    :goto_15
    return v0

    .line 57
    :cond_16
    iget-object v0, v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    goto :goto_c

    .line 64
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    iget-object v3, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v3, v3, v2

    invoke-direct {v0, p1, p2, v1, v3}, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/alibaba/fastjson/util/IdentityHashMap$Entry;)V

    .line 65
    iget-object v1, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aput-object v0, v1, v2

    .line 67
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public size()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 71
    move v1, v0

    .line 72
    :goto_2
    iget-object v2, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 73
    iget-object v2, p0, Lcom/alibaba/fastjson/util/IdentityHashMap;->buckets:[Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    aget-object v2, v2, v0

    :goto_b
    if-eqz v2, :cond_14

    .line 74
    add-int/lit8 v3, v1, 0x1

    .line 73
    iget-object v1, v2, Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;->next:Lcom/alibaba/fastjson/util/IdentityHashMap$Entry;

    move-object v2, v1

    move v1, v3

    goto :goto_b

    .line 72
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 77
    :cond_17
    return v1
.end method
