.class final Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.source "SourceFile"


# instance fields
.field private final value:Lcom/squareup/wire/ByteString;


# direct methods
.method public constructor <init>(ILcom/squareup/wire/ByteString;)V
    .registers 4

    .prologue
    .line 158
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    .line 159
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lcom/squareup/wire/ByteString;

    .line 160
    return-void
.end method


# virtual methods
.method public getAsBytes()Lcom/squareup/wire/ByteString;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lcom/squareup/wire/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/WireOutput;->varint32Size(I)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lcom/squareup/wire/ByteString;

    invoke-virtual {v1}, Lcom/squareup/wire/ByteString;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public write(ILcom/squareup/wire/WireOutput;)V
    .registers 4

    .prologue
    .line 167
    sget-object v0, Lcom/squareup/wire/WireType;->LENGTH_DELIMITED:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 168
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeVarint32(I)V

    .line 169
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$LengthDelimitedFieldValue;->value:Lcom/squareup/wire/ByteString;

    invoke-virtual {v0}, Lcom/squareup/wire/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeRawBytes([B)V

    .line 170
    return-void
.end method
