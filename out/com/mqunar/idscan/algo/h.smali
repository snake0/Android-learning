.class public final Lcom/mqunar/idscan/algo/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x35

    const/16 v6, 0x34

    const/16 v5, 0x31

    const/16 v4, 0x38

    const/16 v3, 0x30

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x4f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x53

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x49

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x1

    const/16 v7, 0x43

    const/16 v2, 0x2c

    const/4 v6, 0x0

    const/16 v5, 0x3c

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    aget-char v1, v3, v0

    if-ne v1, v7, :cond_12

    aput-char v5, v3, v0

    :cond_12
    aget-char v1, v3, v0

    const/16 v4, 0x4f

    if-ne v1, v4, :cond_22

    aget-char v1, v3, v6

    const/16 v4, 0x50

    if-eq v1, v4, :cond_22

    const/16 v1, 0x50

    aput-char v1, v3, v6

    :cond_22
    aget-char v1, v3, v6

    const/16 v4, 0x30

    if-eq v1, v4, :cond_30

    const/16 v1, 0x29

    aget-char v1, v3, v1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_34

    :cond_30
    const/16 v1, 0x44

    aput-char v1, v3, v6

    :cond_34
    aget-char v1, v3, v6

    const/16 v4, 0x41

    if-ne v1, v4, :cond_3e

    const/16 v1, 0x50

    aput-char v1, v3, v6

    :cond_3e
    const/4 v1, 0x5

    aget-char v1, v3, v1

    const/16 v4, 0x4b

    if-ne v1, v4, :cond_58

    const/4 v1, 0x6

    aget-char v1, v3, v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_58

    const/4 v1, 0x7

    aget-char v1, v3, v1

    const/16 v4, 0x45

    if-ne v1, v4, :cond_58

    const/4 v1, 0x5

    const/16 v4, 0x58

    aput-char v4, v3, v1

    :cond_58
    const/4 v1, 0x2

    aget-char v1, v3, v1

    if-ne v1, v7, :cond_8b

    const/4 v1, 0x3

    aget-char v1, v3, v1

    const/16 v4, 0x48

    if-ne v1, v4, :cond_8b

    const/4 v1, 0x4

    aget-char v1, v3, v1

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_8b

    const/16 v1, 0x8

    aget-char v1, v3, v1

    if-ne v1, v5, :cond_8b

    const/4 v1, 0x5

    aget-char v1, v3, v1

    const/16 v4, 0x45

    if-ne v1, v4, :cond_8b

    const/4 v1, 0x6

    aget-char v1, v3, v1

    const/16 v4, 0x48

    if-ne v1, v4, :cond_8b

    const/4 v1, 0x7

    aget-char v1, v3, v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_8b

    const/4 v1, 0x5

    const/16 v4, 0x53

    aput-char v4, v3, v1

    :cond_8b
    move v1, v0

    :goto_8c
    if-ge v1, v2, :cond_b8

    const/16 v0, 0x29

    if-eq v1, v0, :cond_b8

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    aget-char v4, v3, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    sget-object v0, Lcom/mqunar/idscan/algo/h;->a:Ljava/util/HashMap;

    aget-char v4, v3, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v3, v1

    :cond_b4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8c

    :cond_b8
    const/4 v0, 0x6

    :goto_b9
    const/16 v1, 0x2b

    if-ge v0, v1, :cond_f4

    aget-char v1, v3, v0

    if-eq v1, v7, :cond_c7

    aget-char v1, v3, v0

    const/16 v4, 0x41

    if-ne v1, v4, :cond_d5

    :cond_c7
    add-int/lit8 v1, v0, -0x1

    aget-char v1, v3, v1

    if-ne v1, v5, :cond_d5

    add-int/lit8 v1, v0, 0x1

    aget-char v1, v3, v1

    if-ne v1, v5, :cond_d5

    aput-char v5, v3, v0

    :cond_d5
    aget-char v1, v3, v0

    if-ne v1, v7, :cond_f1

    add-int/lit8 v1, v0, 0x1

    aget-char v1, v3, v1

    if-ne v1, v7, :cond_f1

    add-int/lit8 v1, v0, 0x2

    aget-char v1, v3, v1

    if-ne v1, v5, :cond_f1

    add-int/lit8 v1, v0, 0x3

    aget-char v1, v3, v1

    if-ne v1, v5, :cond_f1

    aput-char v5, v3, v0

    add-int/lit8 v1, v0, 0x1

    aput-char v5, v3, v1

    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_f4
    const/16 v0, 0x40

    aget-char v0, v3, v0

    const/16 v1, 0x38

    if-eq v0, v1, :cond_104

    const/16 v0, 0x40

    aget-char v0, v3, v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_10a

    :cond_104
    const/16 v0, 0x40

    const/16 v1, 0x4d

    aput-char v1, v3, v0

    :cond_10a
    const/4 v0, 0x2

    aget-char v0, v3, v0

    if-ne v0, v7, :cond_12d

    const/4 v0, 0x3

    aget-char v0, v3, v0

    const/16 v1, 0x48

    if-ne v0, v1, :cond_12d

    const/4 v0, 0x4

    aget-char v0, v3, v0

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_12d

    aget-char v0, v3, v2

    const/16 v1, 0x41

    if-eq v0, v1, :cond_129

    aget-char v0, v3, v2

    const/16 v1, 0x46

    if-ne v0, v1, :cond_12d

    :cond_129
    const/16 v0, 0x45

    aput-char v0, v3, v2

    :cond_12d
    move v1, v2

    :goto_12e
    const/16 v0, 0x58

    if-ge v1, v0, :cond_1f9

    aget-char v0, v3, v1

    const/16 v4, 0x4f

    if-eq v0, v4, :cond_148

    aget-char v0, v3, v1

    const/16 v4, 0x44

    if-eq v0, v4, :cond_148

    aget-char v0, v3, v1

    if-eq v0, v7, :cond_148

    aget-char v0, v3, v1

    const/16 v4, 0x42

    if-ne v0, v4, :cond_174

    :cond_148
    const/16 v0, 0x57

    if-ne v1, v0, :cond_156

    add-int/lit8 v0, v1, -0x1

    aget-char v0, v3, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_170

    :cond_156
    if-eq v1, v2, :cond_174

    const/16 v0, 0x57

    if-eq v1, v0, :cond_174

    add-int/lit8 v0, v1, -0x1

    aget-char v0, v3, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_174

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v3, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_174

    :cond_170
    const/16 v0, 0x30

    aput-char v0, v3, v1

    :cond_174
    aget-char v0, v3, v1

    const/16 v4, 0x30

    if-ne v0, v4, :cond_1a0

    if-eq v1, v2, :cond_1a0

    const/16 v0, 0x57

    if-eq v1, v0, :cond_1a0

    add-int/lit8 v0, v1, -0x1

    aget-char v0, v3, v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1a0

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v3, v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_1a0

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v3, v0

    const/16 v4, 0x51

    if-eq v0, v4, :cond_1a0

    const/16 v0, 0x4f

    aput-char v0, v3, v1

    :cond_1a0
    const/16 v0, 0x57

    if-ne v1, v0, :cond_1ae

    aget-char v0, v3, v1

    const/16 v4, 0x5a

    if-ne v0, v4, :cond_1ae

    const/16 v0, 0x32

    aput-char v0, v3, v1

    :cond_1ae
    const/16 v0, 0x56

    if-ge v1, v0, :cond_1cc

    aget-char v0, v3, v1

    const/16 v4, 0x44

    if-ne v0, v4, :cond_1cc

    add-int/lit8 v0, v1, 0x1

    aget-char v0, v3, v0

    const/16 v4, 0x4f

    if-ne v0, v4, :cond_1cc

    add-int/lit8 v0, v1, 0x2

    aget-char v0, v3, v0

    if-ne v0, v5, :cond_1cc

    aput-char v6, v3, v1

    add-int/lit8 v0, v1, 0x1

    aput-char v6, v3, v0

    :cond_1cc
    if-le v1, v2, :cond_1f4

    const/16 v0, 0x36

    if-ge v1, v0, :cond_1f4

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    aget-char v4, v3, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    sget-object v0, Lcom/mqunar/idscan/algo/h;->b:Ljava/util/HashMap;

    aget-char v4, v3, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v3, v1

    :cond_1f4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_12e

    :cond_1f9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
