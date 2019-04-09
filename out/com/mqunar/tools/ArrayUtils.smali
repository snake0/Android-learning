.class public Lcom/mqunar/tools/ArrayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

.field public static final EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_CLASS_ARRAY:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_SHORT_ARRAY:[S

.field public static final EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 26
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 30
    new-array v0, v1, [Ljava/lang/Class;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CLASS_ARRAY:[Ljava/lang/Class;

    .line 34
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 38
    new-array v0, v1, [J

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 42
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 46
    new-array v0, v1, [I

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 50
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 54
    new-array v0, v1, [S

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 58
    new-array v0, v1, [Ljava/lang/Short;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 62
    new-array v0, v1, [B

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 66
    new-array v0, v1, [Ljava/lang/Byte;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 70
    new-array v0, v1, [D

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 74
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 78
    new-array v0, v1, [F

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 82
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 86
    new-array v0, v1, [Z

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 90
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 94
    new-array v0, v1, [C

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 98
    new-array v0, v1, [Ljava/lang/Character;

    sput-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method private static a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 5325
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 5326
    if-ltz p1, :cond_9

    if-lt p1, v0, :cond_2c

    .line 5327
    :cond_9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5330
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 5331
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5332
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_49

    .line 5333
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5336
    :cond_49
    return-object v1
.end method

.method private static a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4683
    if-nez p0, :cond_2d

    .line 4684
    if-eqz p1, :cond_24

    .line 4685
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4687
    :cond_24
    const/4 v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4688
    invoke-static {v0, v2, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4701
    :cond_2c
    :goto_2c
    return-object v0

    .line 4691
    :cond_2d
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4692
    if-gt p1, v1, :cond_35

    if-gez p1, :cond_58

    .line 4693
    :cond_35
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4695
    :cond_58
    add-int/lit8 v0, v1, 0x1

    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4696
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4697
    invoke-static {v0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 4698
    if-ge p1, v1, :cond_2c

    .line 4699
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, p1

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2c
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4359
    if-eqz p0, :cond_19

    .line 4360
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 4361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 4362
    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4365
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_18
.end method

.method private static varargs a(Ljava/lang/Object;[I)Ljava/lang/Object;
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 5658
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 5661
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->isNotEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 5662
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 5664
    array-length v0, p1

    move v2, v3

    move v4, v0

    move v0, v1

    .line 5666
    :goto_12
    add-int/lit8 v5, v4, -0x1

    if-ltz v5, :cond_49

    .line 5667
    aget v4, p1, v5

    .line 5668
    if-ltz v4, :cond_1c

    if-lt v4, v3, :cond_3f

    .line 5669
    :cond_1c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5671
    :cond_3f
    if-lt v4, v2, :cond_43

    move v4, v5

    .line 5672
    goto :goto_12

    .line 5674
    :cond_43
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    move v4, v5

    .line 5676
    goto :goto_12

    :cond_48
    move v0, v1

    .line 5678
    :cond_49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sub-int v4, v3, v0

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    .line 5679
    if-ge v0, v3, :cond_7c

    .line 5681
    sub-int v2, v3, v0

    .line 5682
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v0, v2

    move v2, v8

    :goto_61
    if-ltz v2, :cond_77

    .line 5683
    aget v4, p1, v2

    .line 5684
    sub-int v6, v3, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_73

    .line 5685
    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    .line 5686
    sub-int/2addr v0, v3

    .line 5687
    add-int/lit8 v6, v4, 0x1

    invoke-static {p0, v6, v5, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5682
    :cond_73
    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto :goto_61

    .line 5691
    :cond_77
    if-lez v3, :cond_7c

    .line 5692
    invoke-static {p0, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5695
    :cond_7c
    return-object v5
.end method

.method public static add([BB)[B
    .registers 4

    .prologue
    .line 4164
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 4165
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    .line 4166
    return-object v0
.end method

.method public static add([BIB)[B
    .registers 5

    .prologue
    .line 4508
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static add([CC)[C
    .registers 4

    .prologue
    .line 4194
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    .line 4195
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-char p1, v0, v1

    .line 4196
    return-object v0
.end method

.method public static add([CIC)[C
    .registers 5

    .prologue
    .line 4476
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static add([DD)[D
    .registers 5

    .prologue
    .line 4224
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    .line 4225
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 4226
    return-object v0
.end method

.method public static add([DID)[D
    .registers 6

    .prologue
    .line 4668
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static add([FF)[F
    .registers 4

    .prologue
    .line 4254
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    .line 4255
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 4256
    return-object v0
.end method

.method public static add([FIF)[F
    .registers 5

    .prologue
    .line 4636
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static add([II)[I
    .registers 4

    .prologue
    .line 4284
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 4285
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 4286
    return-object v0
.end method

.method public static add([III)[I
    .registers 5

    .prologue
    .line 4572
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static add([JIJ)[J
    .registers 6

    .prologue
    .line 4604
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static add([JJ)[J
    .registers 5

    .prologue
    .line 4314
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    .line 4315
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-wide p1, v0, v1

    .line 4316
    return-object v0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4400
    .line 4401
    if-eqz p0, :cond_13

    .line 4402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 4410
    :goto_a
    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4411
    return-object v0

    .line 4403
    :cond_13
    if-eqz p2, :cond_1a

    .line 4404
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_a

    .line 4406
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array and element cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 4095
    if-eqz p0, :cond_14

    .line 4096
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4104
    :goto_6
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 4105
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 4106
    return-object v0

    .line 4097
    :cond_14
    if-eqz p1, :cond_1b

    .line 4098
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_6

    .line 4100
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static add([SIS)[S
    .registers 5

    .prologue
    .line 4540
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static add([SS)[S
    .registers 4

    .prologue
    .line 4344
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    .line 4345
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-short p1, v0, v1

    .line 4346
    return-object v0
.end method

.method public static add([ZIZ)[Z
    .registers 5

    .prologue
    .line 4443
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, v0, v1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static add([ZZ)[Z
    .registers 4

    .prologue
    .line 4134
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    .line 4135
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-boolean p1, v0, v1

    .line 4136
    return-object v0
.end method

.method public static varargs addAll([B[B)[B
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3891
    if-nez p0, :cond_8

    .line 3892
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 3899
    :goto_7
    return-object v0

    .line 3893
    :cond_8
    if-nez p1, :cond_f

    .line 3894
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([B)[B

    move-result-object v0

    goto :goto_7

    .line 3896
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 3897
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3898
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([C[C)[C
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3859
    if-nez p0, :cond_8

    .line 3860
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 3867
    :goto_7
    return-object v0

    .line 3861
    :cond_8
    if-nez p1, :cond_f

    .line 3862
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([C)[C

    move-result-object v0

    goto :goto_7

    .line 3864
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    .line 3865
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3866
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([D[D)[D
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 4051
    if-nez p0, :cond_8

    .line 4052
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 4059
    :goto_7
    return-object v0

    .line 4053
    :cond_8
    if-nez p1, :cond_f

    .line 4054
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([D)[D

    move-result-object v0

    goto :goto_7

    .line 4056
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [D

    .line 4057
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4058
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([F[F)[F
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 4019
    if-nez p0, :cond_8

    .line 4020
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 4027
    :goto_7
    return-object v0

    .line 4021
    :cond_8
    if-nez p1, :cond_f

    .line 4022
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([F)[F

    move-result-object v0

    goto :goto_7

    .line 4024
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 4025
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4026
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([I[I)[I
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3955
    if-nez p0, :cond_8

    .line 3956
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 3963
    :goto_7
    return-object v0

    .line 3957
    :cond_8
    if-nez p1, :cond_f

    .line 3958
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    goto :goto_7

    .line 3960
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 3961
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3962
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([J[J)[J
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3987
    if-nez p0, :cond_8

    .line 3988
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 3995
    :goto_7
    return-object v0

    .line 3989
    :cond_8
    if-nez p1, :cond_f

    .line 3990
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([J)[J

    move-result-object v0

    goto :goto_7

    .line 3992
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 3993
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3994
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3777
    if-nez p0, :cond_8

    .line 3778
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 3803
    :goto_7
    return-object v0

    .line 3779
    :cond_8
    if-nez p1, :cond_f

    .line 3780
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 3782
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 3785
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 3786
    array-length v2, p0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3788
    const/4 v2, 0x0

    :try_start_27
    array-length v3, p0

    array-length v4, p1

    invoke-static {p1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2c
    .catch Ljava/lang/ArrayStoreException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_7

    .line 3789
    :catch_2d
    move-exception v0

    .line 3796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 3797
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 3798
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot store "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " in an array of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3799
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 3801
    :cond_67
    throw v0
.end method

.method public static varargs addAll([S[S)[S
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3923
    if-nez p0, :cond_8

    .line 3924
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 3931
    :goto_7
    return-object v0

    .line 3925
    :cond_8
    if-nez p1, :cond_f

    .line 3926
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([S)[S

    move-result-object v0

    goto :goto_7

    .line 3928
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [S

    .line 3929
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3930
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs addAll([Z[Z)[Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 3827
    if-nez p0, :cond_8

    .line 3828
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 3835
    :goto_7
    return-object v0

    .line 3829
    :cond_8
    if-nez p1, :cond_f

    .line 3830
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    goto :goto_7

    .line 3832
    :cond_f
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Z

    .line 3833
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3834
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5722
    if-nez p0, :cond_9

    .line 5723
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5726
    :goto_8
    return-object v0

    .line 5725
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8
.end method

.method public static varargs asReadOnlyList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5730
    new-instance v0, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;

    invoke-direct {v0, p0}, Lcom/mqunar/tools/ArrayUtils$ReadOnlyArrayList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static clone([B)[B
    .registers 2

    .prologue
    .line 336
    if-nez p0, :cond_4

    .line 337
    const/4 v0, 0x0

    .line 339
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_3
.end method

.method public static clone([C)[C
    .registers 2

    .prologue
    .line 318
    if-nez p0, :cond_4

    .line 319
    const/4 v0, 0x0

    .line 321
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    goto :goto_3
.end method

.method public static clone([D)[D
    .registers 2

    .prologue
    .line 354
    if-nez p0, :cond_4

    .line 355
    const/4 v0, 0x0

    .line 357
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    goto :goto_3
.end method

.method public static clone([F)[F
    .registers 2

    .prologue
    .line 372
    if-nez p0, :cond_4

    .line 373
    const/4 v0, 0x0

    .line 375
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_3
.end method

.method public static clone([I)[I
    .registers 2

    .prologue
    .line 282
    if-nez p0, :cond_4

    .line 283
    const/4 v0, 0x0

    .line 285
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_3
.end method

.method public static clone([J)[J
    .registers 2

    .prologue
    .line 264
    if-nez p0, :cond_4

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    goto :goto_3
.end method

.method public static clone([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 246
    if-nez p0, :cond_4

    .line 247
    const/4 v0, 0x0

    .line 249
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_3
.end method

.method public static clone([S)[S
    .registers 2

    .prologue
    .line 300
    if-nez p0, :cond_4

    .line 301
    const/4 v0, 0x0

    .line 303
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_3
.end method

.method public static clone([Z)[Z
    .registers 2

    .prologue
    .line 390
    if-nez p0, :cond_4

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    goto :goto_3
.end method

.method public static contains([BB)Z
    .registers 4

    .prologue
    .line 2384
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([BB)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([CC)Z
    .registers 4

    .prologue
    .line 2263
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([CC)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([DD)Z
    .registers 5

    .prologue
    .line 2620
    invoke-static {p0, p1, p2}, Lcom/mqunar/tools/ArrayUtils;->indexOf([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([DDD)Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 2638
    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mqunar/tools/ArrayUtils;->indexOf([DDID)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v3, 0x1

    :cond_c
    return v3
.end method

.method public static contains([FF)Z
    .registers 4

    .prologue
    .line 2759
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([II)Z
    .registers 4

    .prologue
    .line 2016
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([JJ)Z
    .registers 5

    .prologue
    .line 1895
    invoke-static {p0, p1, p2}, Lcom/mqunar/tools/ArrayUtils;->indexOf([JJ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1774
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([SS)Z
    .registers 4

    .prologue
    .line 2137
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([SS)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static contains([ZZ)Z
    .registers 4

    .prologue
    .line 2880
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static copyOf([BI)[B
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5768
    new-array v0, p1, [B

    .line 5769
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5770
    return-object v0
.end method

.method public static copyOf([CI)[C
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5788
    new-array v0, p1, [C

    .line 5789
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5790
    return-object v0
.end method

.method public static copyOf([DI)[D
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5807
    new-array v0, p1, [D

    .line 5808
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5809
    return-object v0
.end method

.method public static copyOf([FI)[F
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5826
    new-array v0, p1, [F

    .line 5827
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5828
    return-object v0
.end method

.method public static copyOf([II)[I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5845
    new-array v0, p1, [I

    .line 5846
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5847
    return-object v0
.end method

.method public static copyOf([JI)[J
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5864
    new-array v0, p1, [J

    .line 5865
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5866
    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 5903
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">([TU;I",
            "Ljava/lang/Class",
            "<+[TT;>;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 5924
    const-class v0, [Ljava/lang/Object;

    if-ne p2, v0, :cond_12

    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 5926
    :goto_9
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5927
    return-object v0

    .line 5925
    :cond_12
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 5924
    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_9
.end method

.method public static copyOf([SI)[S
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5883
    new-array v0, p1, [S

    .line 5884
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5885
    return-object v0
.end method

.method public static copyOf([ZI)[Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 5749
    new-array v0, p1, [Z

    .line 5750
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5751
    return-object v0
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 2

    .prologue
    .line 1374
    if-nez p0, :cond_4

    .line 1375
    const/4 v0, 0x0

    .line 1377
    :goto_3
    return v0

    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    goto :goto_3
.end method

.method public static indexOf([BB)I
    .registers 3

    .prologue
    .line 2283
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static indexOf([BBI)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 2305
    if-nez p0, :cond_5

    move p2, v0

    .line 2316
    :cond_4
    :goto_4
    return p2

    .line 2308
    :cond_5
    if-gez p2, :cond_8

    .line 2309
    const/4 p2, 0x0

    .line 2311
    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    .line 2312
    aget-byte v1, p0, p2

    if-eq p1, v1, :cond_4

    .line 2311
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    .line 2316
    goto :goto_4
.end method

.method public static indexOf([CC)I
    .registers 3

    .prologue
    .line 2158
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static indexOf([CCI)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 2181
    if-nez p0, :cond_5

    move p2, v0

    .line 2192
    :cond_4
    :goto_4
    return p2

    .line 2184
    :cond_5
    if-gez p2, :cond_8

    .line 2185
    const/4 p2, 0x0

    .line 2187
    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    .line 2188
    aget-char v1, p0, p2

    if-eq p1, v1, :cond_4

    .line 2187
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    .line 2192
    goto :goto_4
.end method

.method public static indexOf([DD)I
    .registers 4

    .prologue
    .line 2404
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDD)I
    .registers 11

    .prologue
    .line 2423
    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mqunar/tools/ArrayUtils;->indexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static indexOf([DDI)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 2445
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_9

    move p3, v0

    .line 2456
    :cond_8
    :goto_8
    return p3

    .line 2448
    :cond_9
    if-gez p3, :cond_c

    .line 2449
    const/4 p3, 0x0

    .line 2451
    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p3, v1, :cond_18

    .line 2452
    aget-wide v1, p0, p3

    cmpl-double v1, p1, v1

    if-eqz v1, :cond_8

    .line 2451
    add-int/lit8 p3, p3, 0x1

    goto :goto_c

    :cond_18
    move p3, v0

    .line 2456
    goto :goto_8
.end method

.method public static indexOf([DDID)I
    .registers 13

    .prologue
    const/4 v0, -0x1

    .line 2480
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_9

    move p3, v0

    .line 2493
    :cond_8
    :goto_8
    return p3

    .line 2483
    :cond_9
    if-gez p3, :cond_c

    .line 2484
    const/4 p3, 0x0

    .line 2486
    :cond_c
    sub-double v1, p1, p4

    .line 2487
    add-double v3, p1, p4

    .line 2488
    :goto_10
    array-length v5, p0

    if-ge p3, v5, :cond_22

    .line 2489
    aget-wide v5, p0, p3

    cmpl-double v5, v5, v1

    if-ltz v5, :cond_1f

    aget-wide v5, p0, p3

    cmpg-double v5, v5, v3

    if-lez v5, :cond_8

    .line 2488
    :cond_1f
    add-int/lit8 p3, p3, 0x1

    goto :goto_10

    :cond_22
    move p3, v0

    .line 2493
    goto :goto_8
.end method

.method public static indexOf([FF)I
    .registers 3

    .prologue
    .line 2658
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static indexOf([FFI)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 2680
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_9

    move p2, v0

    .line 2691
    :cond_8
    :goto_8
    return p2

    .line 2683
    :cond_9
    if-gez p2, :cond_c

    .line 2684
    const/4 p2, 0x0

    .line 2686
    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p2, v1, :cond_18

    .line 2687
    aget v1, p0, p2

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_8

    .line 2686
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_18
    move p2, v0

    .line 2691
    goto :goto_8
.end method

.method public static indexOf([II)I
    .registers 3

    .prologue
    .line 1915
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([III)I

    move-result v0

    return v0
.end method

.method public static indexOf([III)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 1937
    if-nez p0, :cond_5

    move p2, v0

    .line 1948
    :cond_4
    :goto_4
    return p2

    .line 1940
    :cond_5
    if-gez p2, :cond_8

    .line 1941
    const/4 p2, 0x0

    .line 1943
    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    .line 1944
    aget v1, p0, p2

    if-eq p1, v1, :cond_4

    .line 1943
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    .line 1948
    goto :goto_4
.end method

.method public static indexOf([JJ)I
    .registers 4

    .prologue
    .line 1794
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static indexOf([JJI)I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 1816
    if-nez p0, :cond_5

    move p3, v0

    .line 1827
    :cond_4
    :goto_4
    return p3

    .line 1819
    :cond_5
    if-gez p3, :cond_8

    .line 1820
    const/4 p3, 0x0

    .line 1822
    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p3, v1, :cond_14

    .line 1823
    aget-wide v1, p0, p3

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4

    .line 1822
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_14
    move p3, v0

    .line 1827
    goto :goto_4
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1657
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1679
    if-nez p0, :cond_5

    move v0, v1

    .line 1698
    :cond_4
    :goto_4
    return v0

    .line 1682
    :cond_5
    if-gez p2, :cond_32

    .line 1683
    const/4 v0, 0x0

    .line 1685
    :goto_8
    if-nez p1, :cond_14

    .line 1686
    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_30

    .line 1687
    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    .line 1686
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1691
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1692
    :goto_22
    array-length v2, p0

    if-ge v0, v2, :cond_30

    .line 1693
    aget-object v2, p0, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1692
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_30
    move v0, v1

    .line 1698
    goto :goto_4

    :cond_32
    move v0, p2

    goto :goto_8
.end method

.method public static indexOf([SS)I
    .registers 3

    .prologue
    .line 2036
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static indexOf([SSI)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 2058
    if-nez p0, :cond_5

    move p2, v0

    .line 2069
    :cond_4
    :goto_4
    return p2

    .line 2061
    :cond_5
    if-gez p2, :cond_8

    .line 2062
    const/4 p2, 0x0

    .line 2064
    :cond_8
    :goto_8
    array-length v1, p0

    if-ge p2, v1, :cond_12

    .line 2065
    aget-short v1, p0, p2

    if-eq p1, v1, :cond_4

    .line 2064
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_12
    move p2, v0

    .line 2069
    goto :goto_4
.end method

.method public static indexOf([ZZ)I
    .registers 3

    .prologue
    .line 2779
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->indexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static indexOf([ZZI)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 2801
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_9

    move p2, v0

    .line 2812
    :cond_8
    :goto_8
    return p2

    .line 2804
    :cond_9
    if-gez p2, :cond_c

    .line 2805
    const/4 p2, 0x0

    .line 2807
    :cond_c
    :goto_c
    array-length v1, p0

    if-ge p2, v1, :cond_16

    .line 2808
    aget-boolean v1, p0, p2

    if-eq p1, v1, :cond_8

    .line 2807
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_16
    move p2, v0

    .line 2812
    goto :goto_8
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 6066
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 6067
    :cond_8
    const/4 v0, 0x1

    .line 6069
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isEmpty([B)Z
    .registers 2

    .prologue
    .line 3587
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([C)Z
    .registers 2

    .prologue
    .line 3574
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([D)Z
    .registers 2

    .prologue
    .line 3600
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([F)Z
    .registers 2

    .prologue
    .line 3613
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([I)Z
    .registers 2

    .prologue
    .line 3548
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([J)Z
    .registers 2

    .prologue
    .line 3535
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([Ljava/lang/Object;)Z
    .registers 2

    .prologue
    .line 3522
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([S)Z
    .registers 2

    .prologue
    .line 3561
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isEmpty([Z)Z
    .registers 2

    .prologue
    .line 3626
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([B)Z
    .registers 2

    .prologue
    .line 3707
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([C)Z
    .registers 2

    .prologue
    .line 3694
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([D)Z
    .registers 2

    .prologue
    .line 3720
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([F)Z
    .registers 2

    .prologue
    .line 3733
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([I)Z
    .registers 2

    .prologue
    .line 3668
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([J)Z
    .registers 2

    .prologue
    .line 3655
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .prologue
    .line 3642
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([S)Z
    .registers 2

    .prologue
    .line 3681
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isNotEmpty([Z)Z
    .registers 2

    .prologue
    .line 3746
    if-eqz p0, :cond_7

    array-length v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isSameLength([B[B)Z
    .registers 4

    .prologue
    .line 1290
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1292
    :cond_16
    const/4 v0, 0x0

    .line 1294
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([C[C)Z
    .registers 4

    .prologue
    .line 1273
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1275
    :cond_16
    const/4 v0, 0x0

    .line 1277
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([D[D)Z
    .registers 4

    .prologue
    .line 1307
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1309
    :cond_16
    const/4 v0, 0x0

    .line 1311
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([F[F)Z
    .registers 4

    .prologue
    .line 1324
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1326
    :cond_16
    const/4 v0, 0x0

    .line 1328
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([I[I)Z
    .registers 4

    .prologue
    .line 1239
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1241
    :cond_16
    const/4 v0, 0x0

    .line 1243
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([J[J)Z
    .registers 4

    .prologue
    .line 1222
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1224
    :cond_16
    const/4 v0, 0x0

    .line 1226
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1205
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1207
    :cond_16
    const/4 v0, 0x0

    .line 1209
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([S[S)Z
    .registers 4

    .prologue
    .line 1256
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1258
    :cond_16
    const/4 v0, 0x0

    .line 1260
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameLength([Z[Z)Z
    .registers 4

    .prologue
    .line 1341
    if-nez p0, :cond_7

    if-eqz p1, :cond_7

    array-length v0, p1

    if-gtz v0, :cond_16

    :cond_7
    if-nez p1, :cond_e

    if-eqz p0, :cond_e

    array-length v0, p0

    if-gtz v0, :cond_16

    :cond_e
    if-eqz p0, :cond_18

    if-eqz p1, :cond_18

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_18

    .line 1343
    :cond_16
    const/4 v0, 0x0

    .line 1345
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x1

    goto :goto_17
.end method

.method public static isSameType(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1391
    if-eqz p0, :cond_4

    if-nez p1, :cond_c

    .line 1392
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1394
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static join([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 6080
    if-nez p0, :cond_4

    .line 6092
    :goto_3
    return-object p1

    .line 6083
    :cond_4
    if-nez p1, :cond_8

    move-object p1, p0

    .line 6084
    goto :goto_3

    .line 6086
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 6087
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 6089
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6090
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    .line 6092
    goto :goto_3
.end method

.method public static lastIndexOf([BB)I
    .registers 3

    .prologue
    .line 2333
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([BBI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([BBI)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 2355
    if-nez p0, :cond_4

    .line 2368
    :cond_3
    :goto_3
    return v0

    .line 2358
    :cond_4
    if-ltz p2, :cond_3

    .line 2360
    array-length v1, p0

    if-lt p2, v1, :cond_c

    .line 2361
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_c
    move v1, p2

    .line 2363
    :goto_d
    if-ltz v1, :cond_3

    .line 2364
    aget-byte v2, p0, v1

    if-ne p1, v2, :cond_15

    move v0, v1

    .line 2365
    goto :goto_3

    .line 2363
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public static lastIndexOf([CC)I
    .registers 3

    .prologue
    .line 2210
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([CCI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([CCI)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 2233
    if-nez p0, :cond_4

    .line 2246
    :cond_3
    :goto_3
    return v0

    .line 2236
    :cond_4
    if-ltz p2, :cond_3

    .line 2238
    array-length v1, p0

    if-lt p2, v1, :cond_c

    .line 2239
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_c
    move v1, p2

    .line 2241
    :goto_d
    if-ltz v1, :cond_3

    .line 2242
    aget-char v2, p0, v1

    if-ne p1, v2, :cond_15

    move v0, v1

    .line 2243
    goto :goto_3

    .line 2241
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public static lastIndexOf([DD)I
    .registers 4

    .prologue
    .line 2510
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([DDI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDD)I
    .registers 11

    .prologue
    .line 2529
    const v3, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([DDID)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([DDI)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 2551
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2564
    :cond_7
    :goto_7
    return v0

    .line 2554
    :cond_8
    if-ltz p3, :cond_7

    .line 2556
    array-length v1, p0

    if-lt p3, v1, :cond_10

    .line 2557
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_10
    move v1, p3

    .line 2559
    :goto_11
    if-ltz v1, :cond_7

    .line 2560
    aget-wide v2, p0, v1

    cmpl-double v2, p1, v2

    if-nez v2, :cond_1b

    move v0, v1

    .line 2561
    goto :goto_7

    .line 2559
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_11
.end method

.method public static lastIndexOf([DDID)I
    .registers 14

    .prologue
    const/4 v0, -0x1

    .line 2589
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([D)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2604
    :cond_7
    :goto_7
    return v0

    .line 2592
    :cond_8
    if-ltz p3, :cond_7

    .line 2594
    array-length v1, p0

    if-lt p3, v1, :cond_10

    .line 2595
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    .line 2597
    :cond_10
    sub-double v2, p1, p4

    .line 2598
    add-double v4, p1, p4

    move v1, p3

    .line 2599
    :goto_15
    if-ltz v1, :cond_7

    .line 2600
    aget-wide v6, p0, v1

    cmpl-double v6, v6, v2

    if-ltz v6, :cond_25

    aget-wide v6, p0, v1

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_25

    move v0, v1

    .line 2601
    goto :goto_7

    .line 2599
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_15
.end method

.method public static lastIndexOf([FF)I
    .registers 3

    .prologue
    .line 2708
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([FFI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([FFI)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 2730
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([F)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2743
    :cond_7
    :goto_7
    return v0

    .line 2733
    :cond_8
    if-ltz p2, :cond_7

    .line 2735
    array-length v1, p0

    if-lt p2, v1, :cond_10

    .line 2736
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_10
    move v1, p2

    .line 2738
    :goto_11
    if-ltz v1, :cond_7

    .line 2739
    aget v2, p0, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1b

    move v0, v1

    .line 2740
    goto :goto_7

    .line 2738
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_11
.end method

.method public static lastIndexOf([II)I
    .registers 3

    .prologue
    .line 1965
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([III)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([III)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 1987
    if-nez p0, :cond_4

    .line 2000
    :cond_3
    :goto_3
    return v0

    .line 1990
    :cond_4
    if-ltz p2, :cond_3

    .line 1992
    array-length v1, p0

    if-lt p2, v1, :cond_c

    .line 1993
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_c
    move v1, p2

    .line 1995
    :goto_d
    if-ltz v1, :cond_3

    .line 1996
    aget v2, p0, v1

    if-ne p1, v2, :cond_15

    move v0, v1

    .line 1997
    goto :goto_3

    .line 1995
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public static lastIndexOf([JJ)I
    .registers 4

    .prologue
    .line 1844
    const v0, 0x7fffffff

    invoke-static {p0, p1, p2, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([JJI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([JJI)I
    .registers 8

    .prologue
    const/4 v0, -0x1

    .line 1866
    if-nez p0, :cond_4

    .line 1879
    :cond_3
    :goto_3
    return v0

    .line 1869
    :cond_4
    if-ltz p3, :cond_3

    .line 1871
    array-length v1, p0

    if-lt p3, v1, :cond_c

    .line 1872
    array-length v1, p0

    add-int/lit8 p3, v1, -0x1

    :cond_c
    move v1, p3

    .line 1874
    :goto_d
    if-ltz v1, :cond_3

    .line 1875
    aget-wide v2, p0, v1

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    move v0, v1

    .line 1876
    goto :goto_3

    .line 1874
    :cond_17
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 1715
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 1737
    if-nez p0, :cond_4

    .line 1758
    :cond_3
    :goto_3
    return v0

    .line 1740
    :cond_4
    if-ltz p2, :cond_3

    .line 1742
    array-length v1, p0

    if-lt p2, v1, :cond_36

    .line 1743
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1745
    :goto_c
    if-nez p1, :cond_19

    .line 1746
    :goto_e
    if-ltz v1, :cond_3

    .line 1747
    aget-object v2, p0, v1

    if-nez v2, :cond_16

    move v0, v1

    .line 1748
    goto :goto_3

    .line 1746
    :cond_16
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1751
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1752
    :goto_27
    if-ltz v1, :cond_3

    .line 1753
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    move v0, v1

    .line 1754
    goto :goto_3

    .line 1752
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_27

    :cond_36
    move v1, p2

    goto :goto_c
.end method

.method public static lastIndexOf([SS)I
    .registers 3

    .prologue
    .line 2086
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([SSI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([SSI)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 2108
    if-nez p0, :cond_4

    .line 2121
    :cond_3
    :goto_3
    return v0

    .line 2111
    :cond_4
    if-ltz p2, :cond_3

    .line 2113
    array-length v1, p0

    if-lt p2, v1, :cond_c

    .line 2114
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_c
    move v1, p2

    .line 2116
    :goto_d
    if-ltz v1, :cond_3

    .line 2117
    aget-short v2, p0, v1

    if-ne p1, v2, :cond_15

    move v0, v1

    .line 2118
    goto :goto_3

    .line 2116
    :cond_15
    add-int/lit8 v1, v1, -0x1

    goto :goto_d
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3

    .prologue
    .line 2829
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/mqunar/tools/ArrayUtils;->lastIndexOf([ZZI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 2851
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2864
    :cond_7
    :goto_7
    return v0

    .line 2854
    :cond_8
    if-ltz p2, :cond_7

    .line 2856
    array-length v1, p0

    if-lt p2, v1, :cond_10

    .line 2857
    array-length v1, p0

    add-int/lit8 p2, v1, -0x1

    :cond_10
    move v1, p2

    .line 2859
    :goto_11
    if-ltz v1, :cond_7

    .line 2860
    aget-boolean v2, p0, v1

    if-ne p1, v2, :cond_19

    move v0, v1

    .line 2861
    goto :goto_7

    .line 2859
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_11
.end method

.method public static nullToEmpty([B)[B
    .registers 2

    .prologue
    .line 554
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 555
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    .line 557
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([C)[C
    .registers 2

    .prologue
    .line 531
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 532
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    .line 534
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([D)[D
    .registers 2

    .prologue
    .line 577
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 578
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    .line 580
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([F)[F
    .registers 2

    .prologue
    .line 600
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 601
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    .line 603
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([I)[I
    .registers 2

    .prologue
    .line 485
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 486
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INT_ARRAY:[I

    .line 488
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([J)[J
    .registers 2

    .prologue
    .line 462
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 463
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    .line 465
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Boolean;)[Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 807
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 808
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    .line 810
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Byte;)[Ljava/lang/Byte;
    .registers 2

    .prologue
    .line 738
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 739
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    .line 741
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Character;)[Ljava/lang/Character;
    .registers 2

    .prologue
    .line 715
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 716
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    .line 718
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Double;)[Ljava/lang/Double;
    .registers 2

    .prologue
    .line 761
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 762
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    .line 764
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Float;)[Ljava/lang/Float;
    .registers 2

    .prologue
    .line 784
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 785
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    .line 787
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Integer;)[Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 669
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 670
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    .line 672
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Long;)[Ljava/lang/Long;
    .registers 2

    .prologue
    .line 646
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 647
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    .line 649
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 416
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 417
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 419
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/Short;)[Ljava/lang/Short;
    .registers 2

    .prologue
    .line 692
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 693
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    .line 695
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 439
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 440
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 442
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([S)[S
    .registers 2

    .prologue
    .line 508
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 509
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    .line 511
    :cond_7
    return-object p0
.end method

.method public static nullToEmpty([Z)[Z
    .registers 2

    .prologue
    .line 623
    if-eqz p0, :cond_5

    array-length v0, p0

    if-nez v0, :cond_7

    .line 624
    :cond_5
    sget-object p0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 626
    :cond_7
    return-object p0
.end method

.method public static remove([BI)[B
    .registers 3

    .prologue
    .line 4870
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static remove([CI)[C
    .registers 3

    .prologue
    .line 4936
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static remove([DI)[D
    .registers 3

    .prologue
    .line 5002
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static remove([FI)[F
    .registers 3

    .prologue
    .line 5068
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static remove([II)[I
    .registers 3

    .prologue
    .line 5134
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static remove([JI)[J
    .registers 3

    .prologue
    .line 5200
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    .line 4737
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static remove([SI)[S
    .registers 3

    .prologue
    .line 5266
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static remove([ZI)[Z
    .registers 3

    .prologue
    .line 4804
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static varargs removeAll([B[I)[B
    .registers 3

    .prologue
    .line 5405
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static varargs removeAll([C[I)[C
    .registers 3

    .prologue
    .line 5510
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static varargs removeAll([D[I)[D
    .registers 3

    .prologue
    .line 5615
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    return-object v0
.end method

.method public static varargs removeAll([F[I)[F
    .registers 3

    .prologue
    .line 5580
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    return-object v0
.end method

.method public static varargs removeAll([I[I)[I
    .registers 3

    .prologue
    .line 5475
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static varargs removeAll([J[I)[J
    .registers 3

    .prologue
    .line 5545
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    check-cast v0, [J

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    .line 5370
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static varargs removeAll([S[I)[S
    .registers 3

    .prologue
    .line 5440
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    return-object v0
.end method

.method public static varargs removeAll([Z[I)[Z
    .registers 3

    .prologue
    .line 5646
    invoke-static {p1}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->a(Ljava/lang/Object;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    check-cast v0, [Z

    return-object v0
.end method

.method public static removeElement([BB)[B
    .registers 4

    .prologue
    .line 4899
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([BB)I

    move-result v0

    .line 4900
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4901
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([B)[B

    move-result-object v0

    .line 4903
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([BI)[B

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([CC)[C
    .registers 4

    .prologue
    .line 4965
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([CC)I

    move-result v0

    .line 4966
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4967
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([C)[C

    move-result-object v0

    .line 4969
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([CI)[C

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([DD)[D
    .registers 5

    .prologue
    .line 5031
    invoke-static {p0, p1, p2}, Lcom/mqunar/tools/ArrayUtils;->indexOf([DD)I

    move-result v0

    .line 5032
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 5033
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([D)[D

    move-result-object v0

    .line 5035
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([DI)[D

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([FF)[F
    .registers 4

    .prologue
    .line 5097
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([FF)I

    move-result v0

    .line 5098
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 5099
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([F)[F

    move-result-object v0

    .line 5101
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([FI)[F

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([II)[I
    .registers 4

    .prologue
    .line 5163
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([II)I

    move-result v0

    .line 5164
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 5165
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([I)[I

    move-result-object v0

    .line 5167
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([II)[I

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([JJ)[J
    .registers 5

    .prologue
    .line 5229
    invoke-static {p0, p1, p2}, Lcom/mqunar/tools/ArrayUtils;->indexOf([JJ)I

    move-result v0

    .line 5230
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 5231
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([J)[J

    move-result-object v0

    .line 5233
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([JI)[J

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .prologue
    .line 4767
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 4768
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4769
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 4771
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([SS)[S
    .registers 4

    .prologue
    .line 5295
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([SS)I

    move-result v0

    .line 5296
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 5297
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([S)[S

    move-result-object v0

    .line 5299
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([SI)[S

    move-result-object v0

    goto :goto_b
.end method

.method public static removeElement([ZZ)[Z
    .registers 4

    .prologue
    .line 4833
    invoke-static {p0, p1}, Lcom/mqunar/tools/ArrayUtils;->indexOf([ZZ)I

    move-result v0

    .line 4834
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 4835
    invoke-static {p0}, Lcom/mqunar/tools/ArrayUtils;->clone([Z)[Z

    move-result-object v0

    .line 4837
    :goto_b
    return-object v0

    :cond_c
    invoke-static {p0, v0}, Lcom/mqunar/tools/ArrayUtils;->remove([ZI)[Z

    move-result-object v0

    goto :goto_b
.end method

.method public static reverse([B)V
    .registers 5

    .prologue
    .line 1544
    if-nez p0, :cond_3

    .line 1557
    :cond_2
    return-void

    .line 1547
    :cond_3
    const/4 v1, 0x0

    .line 1548
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1550
    :goto_7
    if-le v0, v1, :cond_2

    .line 1551
    aget-byte v2, p0, v0

    .line 1552
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 1553
    aput-byte v2, p0, v1

    .line 1554
    add-int/lit8 v0, v0, -0x1

    .line 1555
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([C)V
    .registers 5

    .prologue
    .line 1518
    if-nez p0, :cond_3

    .line 1531
    :cond_2
    return-void

    .line 1521
    :cond_3
    const/4 v1, 0x0

    .line 1522
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1524
    :goto_7
    if-le v0, v1, :cond_2

    .line 1525
    aget-char v2, p0, v0

    .line 1526
    aget-char v3, p0, v1

    aput-char v3, p0, v0

    .line 1527
    aput-char v2, p0, v1

    .line 1528
    add-int/lit8 v0, v0, -0x1

    .line 1529
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([D)V
    .registers 7

    .prologue
    .line 1570
    if-nez p0, :cond_3

    .line 1583
    :cond_2
    return-void

    .line 1573
    :cond_3
    const/4 v1, 0x0

    .line 1574
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1576
    :goto_7
    if-le v0, v1, :cond_2

    .line 1577
    aget-wide v2, p0, v0

    .line 1578
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 1579
    aput-wide v2, p0, v1

    .line 1580
    add-int/lit8 v0, v0, -0x1

    .line 1581
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([F)V
    .registers 5

    .prologue
    .line 1596
    if-nez p0, :cond_3

    .line 1609
    :cond_2
    return-void

    .line 1599
    :cond_3
    const/4 v1, 0x0

    .line 1600
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1602
    :goto_7
    if-le v0, v1, :cond_2

    .line 1603
    aget v2, p0, v0

    .line 1604
    aget v3, p0, v1

    aput v3, p0, v0

    .line 1605
    aput v2, p0, v1

    .line 1606
    add-int/lit8 v0, v0, -0x1

    .line 1607
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([I)V
    .registers 5

    .prologue
    .line 1466
    if-nez p0, :cond_3

    .line 1479
    :cond_2
    return-void

    .line 1469
    :cond_3
    const/4 v1, 0x0

    .line 1470
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1472
    :goto_7
    if-le v0, v1, :cond_2

    .line 1473
    aget v2, p0, v0

    .line 1474
    aget v3, p0, v1

    aput v3, p0, v0

    .line 1475
    aput v2, p0, v1

    .line 1476
    add-int/lit8 v0, v0, -0x1

    .line 1477
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([J)V
    .registers 7

    .prologue
    .line 1440
    if-nez p0, :cond_3

    .line 1453
    :cond_2
    return-void

    .line 1443
    :cond_3
    const/4 v1, 0x0

    .line 1444
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1446
    :goto_7
    if-le v0, v1, :cond_2

    .line 1447
    aget-wide v2, p0, v0

    .line 1448
    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    .line 1449
    aput-wide v2, p0, v1

    .line 1450
    add-int/lit8 v0, v0, -0x1

    .line 1451
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 1414
    if-nez p0, :cond_3

    .line 1427
    :cond_2
    return-void

    .line 1417
    :cond_3
    const/4 v1, 0x0

    .line 1418
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1420
    :goto_7
    if-le v0, v1, :cond_2

    .line 1421
    aget-object v2, p0, v0

    .line 1422
    aget-object v3, p0, v1

    aput-object v3, p0, v0

    .line 1423
    aput-object v2, p0, v1

    .line 1424
    add-int/lit8 v0, v0, -0x1

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([S)V
    .registers 5

    .prologue
    .line 1492
    if-nez p0, :cond_3

    .line 1505
    :cond_2
    return-void

    .line 1495
    :cond_3
    const/4 v1, 0x0

    .line 1496
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1498
    :goto_7
    if-le v0, v1, :cond_2

    .line 1499
    aget-short v2, p0, v0

    .line 1500
    aget-short v3, p0, v1

    aput-short v3, p0, v0

    .line 1501
    aput-short v2, p0, v1

    .line 1502
    add-int/lit8 v0, v0, -0x1

    .line 1503
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static reverse([Z)V
    .registers 5

    .prologue
    .line 1622
    if-nez p0, :cond_3

    .line 1635
    :cond_2
    return-void

    .line 1625
    :cond_3
    const/4 v1, 0x0

    .line 1626
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 1628
    :goto_7
    if-le v0, v1, :cond_2

    .line 1629
    aget-boolean v2, p0, v0

    .line 1630
    aget-boolean v3, p0, v1

    aput-boolean v3, p0, v0

    .line 1631
    aput-boolean v2, p0, v1

    .line 1632
    add-int/lit8 v0, v0, -0x1

    .line 1633
    add-int/lit8 v1, v1, 0x1

    goto :goto_7
.end method

.method public static subarray([BII)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1051
    if-nez p0, :cond_5

    .line 1052
    const/4 v0, 0x0

    .line 1067
    :goto_4
    return-object v0

    .line 1054
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 1057
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 1058
    array-length p2, p0

    .line 1060
    :cond_c
    sub-int v2, p2, p1

    .line 1061
    if-gtz v2, :cond_13

    .line 1062
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_4

    .line 1065
    :cond_13
    new-array v1, v2, [B

    .line 1066
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1067
    goto :goto_4
.end method

.method public static subarray([CII)[C
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1011
    if-nez p0, :cond_5

    .line 1012
    const/4 v0, 0x0

    .line 1027
    :goto_4
    return-object v0

    .line 1014
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 1017
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 1018
    array-length p2, p0

    .line 1020
    :cond_c
    sub-int v2, p2, p1

    .line 1021
    if-gtz v2, :cond_13

    .line 1022
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_4

    .line 1025
    :cond_13
    new-array v1, v2, [C

    .line 1026
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1027
    goto :goto_4
.end method

.method public static subarray([DII)[D
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1091
    if-nez p0, :cond_5

    .line 1092
    const/4 v0, 0x0

    .line 1107
    :goto_4
    return-object v0

    .line 1094
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 1097
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 1098
    array-length p2, p0

    .line 1100
    :cond_c
    sub-int v2, p2, p1

    .line 1101
    if-gtz v2, :cond_13

    .line 1102
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_4

    .line 1105
    :cond_13
    new-array v1, v2, [D

    .line 1106
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1107
    goto :goto_4
.end method

.method public static subarray([FII)[F
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1131
    if-nez p0, :cond_5

    .line 1132
    const/4 v0, 0x0

    .line 1147
    :goto_4
    return-object v0

    .line 1134
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 1137
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 1138
    array-length p2, p0

    .line 1140
    :cond_c
    sub-int v2, p2, p1

    .line 1141
    if-gtz v2, :cond_13

    .line 1142
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_4

    .line 1145
    :cond_13
    new-array v1, v2, [F

    .line 1146
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1147
    goto :goto_4
.end method

.method public static subarray([III)[I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 931
    if-nez p0, :cond_5

    .line 932
    const/4 v0, 0x0

    .line 947
    :goto_4
    return-object v0

    .line 934
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 937
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 938
    array-length p2, p0

    .line 940
    :cond_c
    sub-int v2, p2, p1

    .line 941
    if-gtz v2, :cond_13

    .line 942
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_4

    .line 945
    :cond_13
    new-array v1, v2, [I

    .line 946
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 947
    goto :goto_4
.end method

.method public static subarray([JII)[J
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 891
    if-nez p0, :cond_5

    .line 892
    const/4 v0, 0x0

    .line 907
    :goto_4
    return-object v0

    .line 894
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 897
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 898
    array-length p2, p0

    .line 900
    :cond_c
    sub-int v2, p2, p1

    .line 901
    if-gtz v2, :cond_13

    .line 902
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_4

    .line 905
    :cond_13
    new-array v1, v2, [J

    .line 906
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 907
    goto :goto_4
.end method

.method public static subarray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 846
    if-nez p0, :cond_5

    .line 847
    const/4 v0, 0x0

    .line 867
    :goto_4
    return-object v0

    .line 849
    :cond_5
    if-gez p1, :cond_8

    move p1, v1

    .line 852
    :cond_8
    array-length v0, p0

    if-le p2, v0, :cond_c

    .line 853
    array-length p2, p0

    .line 855
    :cond_c
    sub-int v2, p2, p1

    .line 856
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 857
    if-gtz v2, :cond_21

    .line 860
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    goto :goto_4

    .line 865
    :cond_21
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 866
    invoke-static {p0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method

.method public static subarray([SII)[S
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 971
    if-nez p0, :cond_5

    .line 972
    const/4 v0, 0x0

    .line 987
    :goto_4
    return-object v0

    .line 974
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 977
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 978
    array-length p2, p0

    .line 980
    :cond_c
    sub-int v2, p2, p1

    .line 981
    if-gtz v2, :cond_13

    .line 982
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_4

    .line 985
    :cond_13
    new-array v1, v2, [S

    .line 986
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 987
    goto :goto_4
.end method

.method public static subarray([ZII)[Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 1171
    if-nez p0, :cond_5

    .line 1172
    const/4 v0, 0x0

    .line 1187
    :goto_4
    return-object v0

    .line 1174
    :cond_5
    if-gez p1, :cond_8

    move p1, v0

    .line 1177
    :cond_8
    array-length v1, p0

    if-le p2, v1, :cond_c

    .line 1178
    array-length p2, p0

    .line 1180
    :cond_c
    sub-int v2, p2, p1

    .line 1181
    if-gtz v2, :cond_13

    .line 1182
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_4

    .line 1185
    :cond_13
    new-array v1, v2, [Z

    .line 1186
    invoke-static {p0, p1, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1187
    goto :goto_4
.end method

.method public static varargs toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 224
    return-object p0
.end method

.method public static toMap([Ljava/lang/Object;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 153
    if-nez p0, :cond_5

    .line 154
    const/4 v0, 0x0

    .line 174
    :goto_4
    return-object v0

    .line 156
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    array-length v0, p0

    int-to-double v0, v0

    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v0, v5

    double-to-int v0, v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v2, v3

    .line 157
    :goto_11
    array-length v0, p0

    if-ge v2, v0, :cond_93

    .line 158
    aget-object v0, p0, v2

    .line 159
    instance-of v1, v0, Ljava/util/Map$Entry;

    if-eqz v1, :cond_2b

    .line 160
    check-cast v0, Ljava/util/Map$Entry;

    .line 161
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :goto_27
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    .line 162
    :cond_2b
    instance-of v1, v0, [Ljava/lang/Object;

    if-eqz v1, :cond_6a

    move-object v1, v0

    .line 163
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 164
    array-length v5, v1

    const/4 v6, 0x2

    if-ge v5, v6, :cond_61

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', has a length less than 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_61
    aget-object v0, v1, v3

    const/4 v5, 0x1

    aget-object v1, v1, v5

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 170
    :cond_6a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\', is neither of type Map.Entry nor an Array"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_93
    move-object v0, v4

    .line 174
    goto/16 :goto_4
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4

    .prologue
    .line 3498
    if-nez p0, :cond_4

    .line 3499
    const/4 v0, 0x0

    .line 3507
    :goto_3
    return-object v0

    .line 3500
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3501
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_OBJECT_ARRAY:[Ljava/lang/Boolean;

    goto :goto_3

    .line 3503
    :cond_a
    array-length v0, p0

    new-array v2, v0, [Ljava/lang/Boolean;

    .line 3504
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_1f

    .line 3505
    aget-boolean v1, p0, v0

    if-eqz v1, :cond_1c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_17
    aput-object v1, v2, v0

    .line 3504
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3505
    :cond_1c
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_17

    :cond_1f
    move-object v0, v2

    .line 3507
    goto :goto_3
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 4

    .prologue
    .line 3264
    if-nez p0, :cond_4

    .line 3265
    const/4 v0, 0x0

    .line 3273
    :goto_3
    return-object v0

    .line 3266
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3267
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_OBJECT_ARRAY:[Ljava/lang/Byte;

    goto :goto_3

    .line 3269
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Byte;

    .line 3270
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3271
    aget-byte v2, p0, v0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3270
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3273
    goto :goto_3
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 4

    .prologue
    .line 2952
    if-nez p0, :cond_4

    .line 2953
    const/4 v0, 0x0

    .line 2961
    :goto_3
    return-object v0

    .line 2954
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2955
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHARACTER_OBJECT_ARRAY:[Ljava/lang/Character;

    goto :goto_3

    .line 2957
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Character;

    .line 2958
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 2959
    aget-char v2, p0, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2958
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 2961
    goto :goto_3
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 5

    .prologue
    .line 3342
    if-nez p0, :cond_4

    .line 3343
    const/4 v0, 0x0

    .line 3351
    :goto_3
    return-object v0

    .line 3344
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3345
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_OBJECT_ARRAY:[Ljava/lang/Double;

    goto :goto_3

    .line 3347
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Double;

    .line 3348
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3349
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3348
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3351
    goto :goto_3
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 4

    .prologue
    .line 3420
    if-nez p0, :cond_4

    .line 3421
    const/4 v0, 0x0

    .line 3429
    :goto_3
    return-object v0

    .line 3422
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3423
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_OBJECT_ARRAY:[Ljava/lang/Float;

    goto :goto_3

    .line 3425
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Float;

    .line 3426
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3427
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3426
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3429
    goto :goto_3
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 4

    .prologue
    .line 3108
    if-nez p0, :cond_4

    .line 3109
    const/4 v0, 0x0

    .line 3117
    :goto_3
    return-object v0

    .line 3110
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3111
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INTEGER_OBJECT_ARRAY:[Ljava/lang/Integer;

    goto :goto_3

    .line 3113
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 3114
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3115
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3114
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3117
    goto :goto_3
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 5

    .prologue
    .line 3030
    if-nez p0, :cond_4

    .line 3031
    const/4 v0, 0x0

    .line 3039
    :goto_3
    return-object v0

    .line 3032
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3033
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_OBJECT_ARRAY:[Ljava/lang/Long;

    goto :goto_3

    .line 3035
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Long;

    .line 3036
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3037
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3036
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3039
    goto :goto_3
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 4

    .prologue
    .line 3186
    if-nez p0, :cond_4

    .line 3187
    const/4 v0, 0x0

    .line 3195
    :goto_3
    return-object v0

    .line 3188
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3189
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_OBJECT_ARRAY:[Ljava/lang/Short;

    goto :goto_3

    .line 3191
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Short;

    .line 3192
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3193
    aget-short v2, p0, v0

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    aput-object v2, v1, v0

    .line 3192
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3195
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4

    .prologue
    .line 3214
    if-nez p0, :cond_4

    .line 3215
    const/4 v0, 0x0

    .line 3223
    :goto_3
    return-object v0

    .line 3216
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3217
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_3

    .line 3219
    :cond_a
    array-length v0, p0

    new-array v1, v0, [B

    .line 3220
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3221
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v0

    .line 3220
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3223
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 5

    .prologue
    .line 3239
    if-nez p0, :cond_4

    .line 3240
    const/4 v0, 0x0

    .line 3249
    :goto_3
    return-object v0

    .line 3241
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3242
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_3

    .line 3244
    :cond_a
    array-length v0, p0

    new-array v2, v0, [B

    .line 3245
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3246
    aget-object v1, p0, v0

    .line 3247
    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-byte v1, v2, v0

    .line 3245
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3247
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    .line 3249
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4

    .prologue
    .line 2902
    if-nez p0, :cond_4

    .line 2903
    const/4 v0, 0x0

    .line 2911
    :goto_3
    return-object v0

    .line 2904
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2905
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_3

    .line 2907
    :cond_a
    array-length v0, p0

    new-array v1, v0, [C

    .line 2908
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 2909
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v1, v0

    .line 2908
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 2911
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 5

    .prologue
    .line 2927
    if-nez p0, :cond_4

    .line 2928
    const/4 v0, 0x0

    .line 2937
    :goto_3
    return-object v0

    .line 2929
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2930
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    goto :goto_3

    .line 2932
    :cond_a
    array-length v0, p0

    new-array v2, v0, [C

    .line 2933
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 2934
    aget-object v1, p0, v0

    .line 2935
    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-char v1, v2, v0

    .line 2933
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2935
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    .line 2937
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5

    .prologue
    .line 3292
    if-nez p0, :cond_4

    .line 3293
    const/4 v0, 0x0

    .line 3301
    :goto_3
    return-object v0

    .line 3294
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3295
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_3

    .line 3297
    :cond_a
    array-length v0, p0

    new-array v1, v0, [D

    .line 3298
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3299
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 3298
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3301
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 7

    .prologue
    .line 3317
    if-nez p0, :cond_4

    .line 3318
    const/4 v0, 0x0

    .line 3327
    :goto_3
    return-object v0

    .line 3319
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3320
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_3

    .line 3322
    :cond_a
    array-length v0, p0

    new-array v3, v0, [D

    .line 3323
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3324
    aget-object v1, p0, v0

    .line 3325
    if-nez v1, :cond_1b

    move-wide v1, p1

    :goto_16
    aput-wide v1, v3, v0

    .line 3323
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3325
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_16

    :cond_20
    move-object v0, v3

    .line 3327
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4

    .prologue
    .line 3370
    if-nez p0, :cond_4

    .line 3371
    const/4 v0, 0x0

    .line 3379
    :goto_3
    return-object v0

    .line 3372
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3373
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_3

    .line 3375
    :cond_a
    array-length v0, p0

    new-array v1, v0, [F

    .line 3376
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3377
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v1, v0

    .line 3376
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3379
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 5

    .prologue
    .line 3395
    if-nez p0, :cond_4

    .line 3396
    const/4 v0, 0x0

    .line 3405
    :goto_3
    return-object v0

    .line 3397
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3398
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_FLOAT_ARRAY:[F

    goto :goto_3

    .line 3400
    :cond_a
    array-length v0, p0

    new-array v2, v0, [F

    .line 3401
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3402
    aget-object v1, p0, v0

    .line 3403
    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput v1, v2, v0

    .line 3401
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3403
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    .line 3405
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4

    .prologue
    .line 3058
    if-nez p0, :cond_4

    .line 3059
    const/4 v0, 0x0

    .line 3067
    :goto_3
    return-object v0

    .line 3060
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3061
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    .line 3063
    :cond_a
    array-length v0, p0

    new-array v1, v0, [I

    .line 3064
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3065
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3064
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3067
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 5

    .prologue
    .line 3083
    if-nez p0, :cond_4

    .line 3084
    const/4 v0, 0x0

    .line 3093
    :goto_3
    return-object v0

    .line 3085
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3086
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_INT_ARRAY:[I

    goto :goto_3

    .line 3088
    :cond_a
    array-length v0, p0

    new-array v2, v0, [I

    .line 3089
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3090
    aget-object v1, p0, v0

    .line 3091
    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput v1, v2, v0

    .line 3089
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3091
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    .line 3093
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5

    .prologue
    .line 2980
    if-nez p0, :cond_4

    .line 2981
    const/4 v0, 0x0

    .line 2989
    :goto_3
    return-object v0

    .line 2982
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 2983
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_3

    .line 2985
    :cond_a
    array-length v0, p0

    new-array v1, v0, [J

    .line 2986
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 2987
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 2986
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 2989
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 7

    .prologue
    .line 3005
    if-nez p0, :cond_4

    .line 3006
    const/4 v0, 0x0

    .line 3015
    :goto_3
    return-object v0

    .line 3007
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3008
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_LONG_ARRAY:[J

    goto :goto_3

    .line 3010
    :cond_a
    array-length v0, p0

    new-array v3, v0, [J

    .line 3011
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3012
    aget-object v1, p0, v0

    .line 3013
    if-nez v1, :cond_1b

    move-wide v1, p1

    :goto_16
    aput-wide v1, v3, v0

    .line 3011
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3013
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_16

    :cond_20
    move-object v0, v3

    .line 3015
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4

    .prologue
    .line 3136
    if-nez p0, :cond_4

    .line 3137
    const/4 v0, 0x0

    .line 3145
    :goto_3
    return-object v0

    .line 3138
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3139
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_3

    .line 3141
    :cond_a
    array-length v0, p0

    new-array v1, v0, [S

    .line 3142
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3143
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    aput-short v2, v1, v0

    .line 3142
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3145
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 5

    .prologue
    .line 3161
    if-nez p0, :cond_4

    .line 3162
    const/4 v0, 0x0

    .line 3171
    :goto_3
    return-object v0

    .line 3163
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3164
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_SHORT_ARRAY:[S

    goto :goto_3

    .line 3166
    :cond_a
    array-length v0, p0

    new-array v2, v0, [S

    .line 3167
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3168
    aget-object v1, p0, v0

    .line 3169
    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-short v1, v2, v0

    .line 3167
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3169
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    .line 3171
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4

    .prologue
    .line 3448
    if-nez p0, :cond_4

    .line 3449
    const/4 v0, 0x0

    .line 3457
    :goto_3
    return-object v0

    .line 3450
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3451
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_3

    .line 3453
    :cond_a
    array-length v0, p0

    new-array v1, v0, [Z

    .line 3454
    const/4 v0, 0x0

    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 3455
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 3454
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    move-object v0, v1

    .line 3457
    goto :goto_3
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 5

    .prologue
    .line 3473
    if-nez p0, :cond_4

    .line 3474
    const/4 v0, 0x0

    .line 3483
    :goto_3
    return-object v0

    .line 3475
    :cond_4
    array-length v0, p0

    if-nez v0, :cond_a

    .line 3476
    sget-object v0, Lcom/mqunar/tools/ArrayUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    goto :goto_3

    .line 3478
    :cond_a
    array-length v0, p0

    new-array v2, v0, [Z

    .line 3479
    const/4 v0, 0x0

    :goto_e
    array-length v1, p0

    if-ge v0, v1, :cond_20

    .line 3480
    aget-object v1, p0, v0

    .line 3481
    if-nez v1, :cond_1b

    move v1, p1

    :goto_16
    aput-boolean v1, v2, v0

    .line 3479
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 3481
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_16

    :cond_20
    move-object v0, v2

    .line 3483
    goto :goto_3
.end method
