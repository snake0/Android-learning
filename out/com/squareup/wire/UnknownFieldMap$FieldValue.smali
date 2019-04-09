.class abstract Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final tag:I

.field private final wireType:Lcom/squareup/wire/WireType;


# direct methods
.method public constructor <init>(ILcom/squareup/wire/WireType;)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->tag:I

    .line 44
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->wireType:Lcom/squareup/wire/WireType;

    .line 45
    return-void
.end method

.method public static fixed32(ILjava/lang/Integer;)Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;
    .registers 3

    .prologue
    .line 52
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;-><init>(ILjava/lang/Integer;)V

    return-object v0
.end method

.method public static fixed64(ILjava/lang/Long;)Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;
    .registers 3

    .prologue
    .line 56
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;-><init>(ILjava/lang/Long;)V

    return-object v0
.end method

.method public static lengthDelimited(ILcom/squareup/wire/ByteString;)Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;-><init>(ILcom/squareup/wire/ByteString;)V

    return-object v0
.end method

.method public static varint(ILjava/lang/Long;)Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;

    invoke-direct {v0, p0, p1}, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;-><init>(ILjava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getAsBytes()Lcom/squareup/wire/ByteString;
    .registers 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsInteger()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAsLong()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public abstract getSerializedSize()I
.end method

.method public getTag()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->tag:I

    return v0
.end method

.method public getWireType()Lcom/squareup/wire/WireType;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$FieldValue;->wireType:Lcom/squareup/wire/WireType;

    return-object v0
.end method

.method public abstract write(ILcom/squareup/wire/WireOutput;)V
.end method
