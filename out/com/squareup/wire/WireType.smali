.class public final enum Lcom/squareup/wire/WireType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/squareup/wire/WireType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/wire/WireType;

.field public static final enum END_GROUP:Lcom/squareup/wire/WireType;

.field public static final enum FIXED32:Lcom/squareup/wire/WireType;

.field public static final enum FIXED64:Lcom/squareup/wire/WireType;

.field public static final FIXED_32_SIZE:I = 0x4

.field public static final FIXED_64_SIZE:I = 0x8

.field public static final enum LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

.field public static final enum START_GROUP:Lcom/squareup/wire/WireType;

.field public static final TAG_TYPE_BITS:I = 0x3

.field private static final TAG_TYPE_MASK:I = 0x7

.field public static final enum VARINT:Lcom/squareup/wire/WireType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "VARINT"

    invoke-direct {v0, v1, v4, v4}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "FIXED64"

    invoke-direct {v0, v1, v5, v5}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "LENGTH_DELIMITED"

    invoke-direct {v0, v1, v6, v6}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "START_GROUP"

    invoke-direct {v0, v1, v7, v7}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "END_GROUP"

    invoke-direct {v0, v1, v8, v8}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    new-instance v0, Lcom/squareup/wire/WireType;

    const-string v1, "FIXED32"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/wire/WireType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/squareup/wire/WireType;

    sget-object v1, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/squareup/wire/WireType;->$VALUES:[Lcom/squareup/wire/WireType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/squareup/wire/WireType;->value:I

    .line 44
    return-void
.end method

.method public static valueOf(I)Lcom/squareup/wire/WireType;
    .registers 4

    .prologue
    .line 28
    and-int/lit8 v0, p0, 0x7

    packed-switch v0, :pswitch_data_30

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No WireType for value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :pswitch_1e
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    .line 34
    :goto_20
    return-object v0

    .line 30
    :pswitch_21
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    goto :goto_20

    .line 31
    :pswitch_24
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    goto :goto_20

    .line 32
    :pswitch_27
    sget-object v0, Lcom/squareup/wire/WireType;->START_GROUP:Lcom/squareup/wire/WireType;

    goto :goto_20

    .line 33
    :pswitch_2a
    sget-object v0, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    goto :goto_20

    .line 34
    :pswitch_2d
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    goto :goto_20

    .line 28
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/wire/WireType;
    .registers 2

    .prologue
    .line 18
    const-class v0, Lcom/squareup/wire/WireType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/WireType;

    return-object v0
.end method

.method public static values()[Lcom/squareup/wire/WireType;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/squareup/wire/WireType;->$VALUES:[Lcom/squareup/wire/WireType;

    invoke-virtual {v0}, [Lcom/squareup/wire/WireType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/wire/WireType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/squareup/wire/WireType;->value:I

    return v0
.end method
