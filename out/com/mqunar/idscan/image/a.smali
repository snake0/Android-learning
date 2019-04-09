.class public final Lcom/mqunar/idscan/image/a;
.super Ljava/lang/Object;


# direct methods
.method private static a([I[II)Ljava/util/List;
    .registers 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p2}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    :goto_8
    if-ge v5, p2, :cond_2e

    aget v0, p1, v2

    move v1, v2

    :goto_d
    aget v3, p1, v4

    if-gt v0, v3, :cond_23

    mul-int v3, v0, p2

    add-int/2addr v3, v5

    aget v3, p0, v3

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    if-nez v3, :cond_21

    move v3, v4

    :goto_1d
    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_21
    move v3, v2

    goto :goto_1d

    :cond_23
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_8

    :cond_2e
    return-object v6
.end method

.method private static a(Ljava/util/List;)[I
    .registers 8

    const/16 v6, 0x14

    const/4 v5, 0x6

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    move v4, v1

    move v2, v3

    :goto_c
    if-lez v2, :cond_24

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v4, v6, :cond_24

    if-ge v0, v5, :cond_22

    add-int/lit8 v0, v4, 0x1

    :goto_1e
    add-int/lit8 v2, v2, -0x1

    move v4, v0

    goto :goto_c

    :cond_22
    move v0, v1

    goto :goto_1e

    :cond_24
    if-nez v2, :cond_43

    :goto_26
    move v4, v3

    move v3, v1

    :goto_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_49

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v3, v6, :cond_49

    if-ge v0, v5, :cond_47

    add-int/lit8 v0, v3, 0x1

    :goto_3e
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_28

    :cond_43
    add-int/lit8 v0, v2, 0x14

    move v2, v0

    goto :goto_26

    :cond_47
    move v0, v1

    goto :goto_3e

    :cond_49
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v4, v0, :cond_58

    :goto_4f
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v4, v0, v1

    return-object v0

    :cond_58
    add-int/lit8 v4, v4, -0x14

    goto :goto_4f
.end method

.method private static a(Ljava/util/List;II)[I
    .registers 8

    const/4 v4, 0x0

    move v2, v4

    move v3, v4

    move v1, p1

    :goto_4
    if-ge v1, p2, :cond_19

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v3, v0, :cond_22

    move v2, v0

    move v0, v1

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v0

    goto :goto_4

    :cond_19
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v2, v0, v4

    const/4 v1, 0x1

    aput v3, v0, v1

    return-object v0

    :cond_22
    move v0, v2

    move v2, v3

    goto :goto_14
.end method

.method private static a(Ljava/util/List;[II)[I
    .registers 11

    const/4 v7, 0x0

    const/4 v2, 0x1

    aget v1, p1, v7

    move v3, v2

    move v5, v1

    :goto_6
    if-ge v3, p2, :cond_27

    aget v0, p1, v7

    sub-int v4, v0, v3

    const/4 v0, -0x1

    if-ne v4, v0, :cond_16

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_27

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v4

    goto :goto_6

    :cond_27
    move v3, v1

    move v1, v2

    :goto_29
    if-ge v1, p2, :cond_4d

    aget v0, p1, v7

    add-int v4, v0, v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_3c

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3c
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v2, :cond_4d

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v3, v4

    goto :goto_29

    :cond_4d
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v5, v0, v7

    aput v3, v0, v2

    return-object v0
.end method

.method public static a([III)[I
    .registers 14

    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, p2}, Ljava/util/ArrayList;-><init>(I)V

    move v7, v1

    :goto_a
    if-ge v7, p2, :cond_37

    mul-int v0, v7, p1

    aget v0, p0, v0

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    move v3, v2

    move v5, v1

    :goto_16
    if-ge v3, p1, :cond_2c

    mul-int v6, v7, p1

    add-int/2addr v6, v3

    aget v6, p0, v6

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    if-ne v6, v0, :cond_2a

    move v0, v1

    :goto_24
    add-int/2addr v5, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v6

    goto :goto_16

    :cond_2a
    move v0, v2

    goto :goto_24

    :cond_2c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_a

    :cond_37
    invoke-static {v8, v1, p2}, Lcom/mqunar/idscan/image/a;->a(Ljava/util/List;II)[I

    move-result-object v3

    aget v0, v3, v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_66

    move v0, v2

    :goto_46
    div-int/lit8 v5, p2, 0x6

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aget v6, v3, v1

    if-lt v6, v5, :cond_61

    aget v6, v3, v1

    add-int/2addr v6, v5

    if-ge v6, p2, :cond_61

    aget v6, v3, v1

    if-eqz v6, :cond_61

    aget v6, v3, v1

    add-int/lit8 v7, p2, -0x1

    if-ne v6, v7, :cond_68

    :cond_61
    move-object v3, v4

    :goto_62
    if-nez v3, :cond_b2

    move-object v0, v4

    :goto_65
    return-object v0

    :cond_66
    move v0, v1

    goto :goto_46

    :cond_68
    invoke-static {v8, v3, v5}, Lcom/mqunar/idscan/image/a;->a(Ljava/util/List;[II)[I

    move-result-object v6

    if-eqz v0, :cond_8b

    aget v3, v6, v2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v8, v3, p2}, Lcom/mqunar/idscan/image/a;->a(Ljava/util/List;II)[I

    move-result-object v3

    :goto_76
    aget v7, v3, v1

    if-lt v7, v5, :cond_89

    aget v7, v3, v1

    add-int/2addr v7, v5

    if-ge v7, p2, :cond_89

    aget v7, v3, v1

    if-eqz v7, :cond_89

    aget v7, v3, v1

    add-int/lit8 v9, p2, -0x1

    if-ne v7, v9, :cond_94

    :cond_89
    move-object v3, v4

    goto :goto_62

    :cond_8b
    aget v3, v6, v1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v8, v1, v3}, Lcom/mqunar/idscan/image/a;->a(Ljava/util/List;II)[I

    move-result-object v3

    goto :goto_76

    :cond_94
    invoke-static {v8, v3, v5}, Lcom/mqunar/idscan/image/a;->a(Ljava/util/List;[II)[I

    move-result-object v3

    if-eqz v0, :cond_a6

    new-array v0, v10, [I

    aget v5, v6, v1

    aput v5, v0, v1

    aget v3, v3, v2

    aput v3, v0, v2

    move-object v3, v0

    goto :goto_62

    :cond_a6
    new-array v0, v10, [I

    aget v3, v3, v1

    aput v3, v0, v1

    aget v3, v6, v2

    aput v3, v0, v2

    move-object v3, v0

    goto :goto_62

    :cond_b2
    invoke-static {p0, v3, p1}, Lcom/mqunar/idscan/image/a;->a([I[II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mqunar/idscan/image/a;->a(Ljava/util/List;)[I

    move-result-object v4

    const/4 v0, 0x4

    new-array v0, v0, [I

    aget v5, v3, v1

    add-int/lit8 v5, v5, -0xa

    aput v5, v0, v1

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0xf

    aput v3, v0, v2

    aget v1, v4, v1

    add-int/lit8 v1, v1, -0x5

    aput v1, v0, v10

    const/4 v1, 0x3

    aget v2, v4, v2

    add-int/lit8 v2, v2, 0x5

    aput v2, v0, v1

    goto :goto_65
.end method
