.class public final Lcom/squareup/wire/Extension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/squareup/wire/ExtendableMessage",
        "<*>;E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/squareup/wire/Extension",
        "<**>;>;"
    }
.end annotation


# instance fields
.field private final datatype:Lcom/squareup/wire/Message$Datatype;

.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final label:Lcom/squareup/wire/Message$Label;

.field private final messageType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final tag:I


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcom/squareup/wire/Message$Label;",
            "Lcom/squareup/wire/Message$Datatype;",
            ")V"
        }
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    .line 246
    iput-object p4, p0, Lcom/squareup/wire/Extension;->name:Ljava/lang/String;

    .line 247
    iput p5, p0, Lcom/squareup/wire/Extension;->tag:I

    .line 248
    iput-object p7, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    .line 249
    iput-object p6, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    .line 250
    iput-object p2, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    .line 251
    iput-object p3, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V
    .registers 9

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/squareup/wire/Extension;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ILcom/squareup/wire/Message$Label;Lcom/squareup/wire/Message$Datatype;)V

    return-void
.end method

.method public static boolExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static bytesExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Lcom/squareup/wire/ByteString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static doubleExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static enumExtending(Ljava/lang/Class;Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;E:",
            "Ljava/lang/Enum;",
            ":",
            "Lcom/squareup/wire/ProtoEnum;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 227
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v4, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;

    move-object v1, p1

    move-object v3, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static fixed32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static fixed64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static floatExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static int32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static int64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static messageExtending(Ljava/lang/Class;Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;M:",
            "Lcom/squareup/wire/Message;",
            ">(",
            "Ljava/lang/Class",
            "<TM;>;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;TM;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 232
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v4, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sfixed32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sfixed64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sint32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static sint64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static stringExtending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static uint32Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method

.method public static uint64Extending(Ljava/lang/Class;)Lcom/squareup/wire/Extension$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/squareup/wire/ExtendableMessage",
            "<*>;>(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/squareup/wire/Extension$Builder",
            "<TT;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/squareup/wire/Extension$Builder;

    sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/squareup/wire/Extension$Builder;-><init>(Ljava/lang/Class;Lcom/squareup/wire/Message$Datatype;Lcom/squareup/wire/Extension$1;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/squareup/wire/Extension;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Extension",
            "<**>;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 258
    if-ne p1, p0, :cond_4

    .line 279
    :cond_3
    :goto_3
    return v0

    .line 261
    :cond_4
    iget v1, p0, Lcom/squareup/wire/Extension;->tag:I

    iget v2, p1, Lcom/squareup/wire/Extension;->tag:I

    if-eq v1, v2, :cond_10

    .line 262
    iget v0, p0, Lcom/squareup/wire/Extension;->tag:I

    iget v1, p1, Lcom/squareup/wire/Extension;->tag:I

    sub-int/2addr v0, v1

    goto :goto_3

    .line 264
    :cond_10
    iget-object v1, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    if-eq v1, v2, :cond_24

    .line 265
    iget-object v0, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Datatype;->value()I

    move-result v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->value()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    .line 267
    :cond_24
    iget-object v1, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    if-eq v1, v2, :cond_38

    .line 268
    iget-object v0, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v0}, Lcom/squareup/wire/Message$Label;->value()I

    move-result v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v1}, Lcom/squareup/wire/Message$Label;->value()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    .line 270
    :cond_38
    iget-object v1, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 271
    iget-object v0, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 273
    :cond_57
    iget-object v1, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 274
    iget-object v0, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 276
    :cond_76
    iget-object v1, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 277
    iget-object v0, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 55
    check-cast p1, Lcom/squareup/wire/Extension;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/Extension;->compareTo(Lcom/squareup/wire/Extension;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 283
    instance-of v0, p1, Lcom/squareup/wire/Extension;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/squareup/wire/Extension;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/Extension;->compareTo(Lcom/squareup/wire/Extension;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getDatatype()Lcom/squareup/wire/Message$Datatype;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    return-object v0
.end method

.method public getEnumType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/ProtoEnum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    return-object v0
.end method

.method public getExtendedType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    return-object v0
.end method

.method public getLabel()Lcom/squareup/wire/Message$Label;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    return-object v0
.end method

.method public getMessageType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/squareup/wire/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/squareup/wire/Extension;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 317
    iget v0, p0, Lcom/squareup/wire/Extension;->tag:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 287
    iget v0, p0, Lcom/squareup/wire/Extension;->tag:I

    .line 288
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    invoke-virtual {v2}, Lcom/squareup/wire/Message$Datatype;->value()I

    move-result v2

    add-int/2addr v0, v2

    .line 289
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    invoke-virtual {v2}, Lcom/squareup/wire/Message$Label;->value()I

    move-result v2

    add-int/2addr v0, v2

    .line 290
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->extendedType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/squareup/wire/Extension;->messageType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2a
    add-int/2addr v0, v2

    .line 292
    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    if-eqz v2, :cond_37

    iget-object v1, p0, Lcom/squareup/wire/Extension;->enumType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_37
    add-int/2addr v0, v1

    .line 293
    return v0

    :cond_39
    move v0, v1

    .line 291
    goto :goto_2a
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 297
    const-string v0, "[%s %s %s = %d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/squareup/wire/Extension;->label:Lcom/squareup/wire/Message$Label;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/squareup/wire/Extension;->datatype:Lcom/squareup/wire/Message$Datatype;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/squareup/wire/Extension;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/squareup/wire/Extension;->tag:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
