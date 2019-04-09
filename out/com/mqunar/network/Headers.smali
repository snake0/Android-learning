.class public Lcom/mqunar/network/Headers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/mqunar/network/Headers$Builder;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/mqunar/network/Headers$Builder;->a(Lcom/mqunar/network/Headers$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/mqunar/network/Headers$Builder;->a(Lcom/mqunar/network/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/mqunar/network/Headers$Builder;Lcom/mqunar/network/c;)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/mqunar/network/Headers;-><init>(Lcom/mqunar/network/Headers$Builder;)V

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_9
    if-ltz v0, :cond_1d

    .line 128
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 129
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1a
    add-int/lit8 v0, v0, -0x2

    goto :goto_9

    .line 132
    :cond_1d
    return-object v1
.end method

.method public static of(Ljava/util/Map;)Lcom/mqunar/network/Headers;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/mqunar/network/Headers;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 169
    if-nez p0, :cond_c

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected map with header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_c
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 176
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 178
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_3d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_63

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_63

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v7, :cond_86

    .line 183
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 185
    :cond_86
    aput-object v1, v4, v2

    .line 186
    add-int/lit8 v1, v2, 0x1

    aput-object v0, v4, v1

    .line 187
    add-int/lit8 v0, v2, 0x2

    move v2, v0

    .line 188
    goto :goto_1d

    .line 190
    :cond_90
    new-instance v0, Lcom/mqunar/network/Headers;

    invoke-direct {v0, v4}, Lcom/mqunar/network/Headers;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/String;)Lcom/mqunar/network/Headers;
    .registers 8

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 141
    if-eqz p0, :cond_9

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 142
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected alternating header names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_11
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    .line 147
    :goto_18
    array-length v3, v0

    if-ge v1, v3, :cond_32

    .line 148
    aget-object v3, v0, v1

    if-nez v3, :cond_27

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Headers cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_27
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_32
    move v1, v2

    .line 154
    :goto_33
    array-length v3, v0

    if-ge v1, v3, :cond_74

    .line 155
    aget-object v3, v0, v1

    .line 156
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v0, v4

    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ne v5, v6, :cond_4e

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v6, :cond_71

    .line 158
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_71
    add-int/lit8 v1, v1, 0x2

    goto :goto_33

    .line 162
    :cond_74
    new-instance v1, Lcom/mqunar/network/Headers;

    invoke-direct {v1, v0}, Lcom/mqunar/network/Headers;-><init>([Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mqunar/network/Headers;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_d
.end method

.method public getAll(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mqunar/network/Headers;->a([Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public name(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 65
    mul-int/lit8 v0, p1, 0x2

    .line 66
    if-ltz v0, :cond_9

    iget-object v1, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_b

    .line 67
    :cond_9
    const/4 v0, 0x0

    .line 69
    :goto_a
    return-object v0

    :cond_b
    iget-object v1, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_a
.end method

.method public names()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mqunar/network/Headers;->size()I

    move-result v2

    :goto_c
    if-ge v0, v2, :cond_18

    .line 89
    invoke-virtual {p0, v0}, Lcom/mqunar/network/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 91
    :cond_18
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/mqunar/network/Headers$Builder;
    .registers 4

    .prologue
    .line 111
    new-instance v0, Lcom/mqunar/network/Headers$Builder;

    invoke-direct {v0}, Lcom/mqunar/network/Headers$Builder;-><init>()V

    .line 112
    invoke-static {v0}, Lcom/mqunar/network/Headers$Builder;->a(Lcom/mqunar/network/Headers$Builder;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 113
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mqunar/network/Headers;->size()I

    move-result v2

    :goto_a
    if-ge v0, v2, :cond_2a

    .line 120
    invoke-virtual {p0, v0}, Lcom/mqunar/network/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/mqunar/network/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 122
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 76
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 77
    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 78
    :cond_b
    const/4 v0, 0x0

    .line 80
    :goto_c
    return-object v0

    :cond_d
    iget-object v1, p0, Lcom/mqunar/network/Headers;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_c
.end method

.method public values(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mqunar/network/Headers;->size()I

    move-result v2

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_9
    if-ge v1, v2, :cond_27

    .line 100
    invoke-virtual {p0, v1}, Lcom/mqunar/network/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 101
    if-nez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/mqunar/network/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 105
    :cond_27
    if-eqz v0, :cond_2e

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2d
.end method
