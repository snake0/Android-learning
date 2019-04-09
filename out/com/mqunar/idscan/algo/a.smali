.class public final Lcom/mqunar/idscan/algo/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:[I


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/mqunar/idscan/algo/a;->b:[I

    return-void

    :array_a
    .array-data 4
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
        0x7
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mqunar/idscan/algo/a;->a:Ljava/util/Map;

    move v1, v2

    :goto_e
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4d

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    const/16 v3, 0x24

    if-ne v0, v3, :cond_2f

    iget-object v0, p0, Lcom/mqunar/idscan/algo/a;->a:Ljava/util/Map;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2f
    iget-object v3, p0, Lcom/mqunar/idscan/algo/a;->a:Ljava/util/Map;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    aget-char v0, v0, v2

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_4d
    return-void
.end method

.method private a(Ljava/lang/String;C)Z
    .registers 9

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_7
    array-length v0, v4

    if-ge v1, v0, :cond_26

    iget-object v0, p0, Lcom/mqunar/idscan/algo/a;->a:Ljava/util/Map;

    aget-char v5, v4, v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v5, Lcom/mqunar/idscan/algo/a;->b:[I

    aget v5, v5, v1

    mul-int/2addr v0, v5

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_26
    rem-int/lit8 v0, v3, 0xa

    add-int/lit8 v1, p2, -0x30

    if-ne v0, v1, :cond_2d

    const/4 v2, 0x1

    :cond_2d
    return v2
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_15

    aget-char v4, v2, v1

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .registers 11

    const/16 v8, 0x47

    const/16 v7, 0x3f

    const/16 v6, 0x35

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x2c

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x43

    if-ne v2, v4, :cond_4c

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x48

    if-ne v2, v4, :cond_4c

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x4e

    if-ne v2, v4, :cond_4c

    const/16 v2, 0x34

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3c

    if-eq v2, v4, :cond_4c

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_4c

    move v2, v1

    :goto_3e
    if-eqz v2, :cond_4a

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/mqunar/idscan/algo/a;->a(Ljava/lang/String;C)Z

    move-result v2

    if-nez v2, :cond_5f

    :cond_4a
    move v0, v1

    :cond_4b
    :goto_4b
    return v0

    :cond_4c
    const/16 v2, 0x9

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "<"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/idscan/algo/a;->b(Ljava/lang/String;)Z

    move-result v2

    goto :goto_3e

    :cond_5f
    const/16 v2, 0x39

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/idscan/algo/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mqunar/idscan/algo/a;->a(Ljava/lang/String;C)Z

    move-result v2

    if-nez v2, :cond_77

    :cond_75
    move v0, v1

    goto :goto_4b

    :cond_77
    const/16 v2, 0x41

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mqunar/idscan/algo/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mqunar/idscan/algo/a;->a(Ljava/lang/String;C)Z

    move-result v2

    if-nez v2, :cond_4b

    :cond_8d
    move v0, v1

    goto :goto_4b
.end method
