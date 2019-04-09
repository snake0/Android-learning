.class final Lcom/squareup/wire/EnumAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lcom/squareup/wire/ProtoEnum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final constants:[Lcom/squareup/wire/ProtoEnum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private final isDense:Z

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final values:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/squareup/wire/EnumAdapter$1;

    invoke-direct {v0}, Lcom/squareup/wire/EnumAdapter$1;-><init>()V

    sput-object v0, Lcom/squareup/wire/EnumAdapter;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/squareup/wire/EnumAdapter;->type:Ljava/lang/Class;

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/ProtoEnum;

    iput-object v0, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    .line 41
    iget-object v0, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    sget-object v2, Lcom/squareup/wire/EnumAdapter;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 43
    iget-object v0, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    array-length v2, v0

    .line 44
    iget-object v0, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    if-ne v0, v4, :cond_35

    iget-object v0, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    add-int/lit8 v3, v2, -0x1

    aget-object v0, v0, v3

    invoke-interface {v0}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    if-ne v0, v2, :cond_35

    .line 46
    iput-boolean v4, p0, Lcom/squareup/wire/EnumAdapter;->isDense:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    .line 55
    :cond_34
    return-void

    .line 49
    :cond_35
    iput-boolean v1, p0, Lcom/squareup/wire/EnumAdapter;->isDense:Z

    .line 50
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    move v0, v1

    .line 51
    :goto_3c
    if-ge v0, v2, :cond_34

    .line 52
    iget-object v1, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    iget-object v3, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v3

    aput v3, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c
.end method


# virtual methods
.method public fromInt(I)Lcom/squareup/wire/ProtoEnum;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/squareup/wire/EnumAdapter;->isDense:Z

    if-eqz v0, :cond_b

    add-int/lit8 v0, p1, -0x1

    .line 64
    :goto_6
    :try_start_6
    iget-object v1, p0, Lcom/squareup/wire/EnumAdapter;->constants:[Lcom/squareup/wire/ProtoEnum;

    aget-object v0, v1, v0
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_a} :catch_12

    return-object v0

    .line 62
    :cond_b
    iget-object v0, p0, Lcom/squareup/wire/EnumAdapter;->values:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    goto :goto_6

    .line 65
    :catch_12
    move-exception v0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enum tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/wire/EnumAdapter;->type:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toInt(Lcom/squareup/wire/ProtoEnum;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 58
    invoke-interface {p1}, Lcom/squareup/wire/ProtoEnum;->getValue()I

    move-result v0

    return v0
.end method
