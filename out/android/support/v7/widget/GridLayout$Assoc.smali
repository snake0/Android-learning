.class final Landroid/support/v7/widget/GridLayout$Assoc;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final keyType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final valueType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2123
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    iput-object p1, p0, Landroid/support/v7/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    .line 2125
    iput-object p2, p0, Landroid/support/v7/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    .line 2126
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/Class;)Landroid/support/v7/widget/GridLayout$Assoc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Landroid/support/v7/widget/GridLayout$Assoc",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2129
    new-instance v0, Landroid/support/v7/widget/GridLayout$Assoc;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$Assoc;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public pack()Landroid/support/v7/widget/GridLayout$PackedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/GridLayout$PackedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2138
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Assoc;->size()I

    move-result v4

    .line 2139
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout$Assoc;->keyType:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 2140
    iget-object v1, p0, Landroid/support/v7/widget/GridLayout$Assoc;->valueType:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 2141
    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v4, :cond_34

    .line 2142
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    aput-object v2, v0, v3

    .line 2143
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayout$Assoc;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    aput-object v2, v1, v3

    .line 2141
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1a

    .line 2145
    :cond_34
    new-instance v2, Landroid/support/v7/widget/GridLayout$PackedMap;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/support/v7/widget/GridLayout$PackedMap;-><init>([Ljava/lang/Object;[Ljava/lang/Object;Landroid/support/v7/widget/GridLayout$1;)V

    return-object v2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 2133
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$Assoc;->add(Ljava/lang/Object;)Z

    .line 2134
    return-void
.end method
