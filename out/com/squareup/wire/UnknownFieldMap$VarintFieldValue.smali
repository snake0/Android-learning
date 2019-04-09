.class final Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.source "SourceFile"


# instance fields
.field private final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .registers 4

    .prologue
    .line 92
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    .line 93
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    .line 94
    return-void
.end method


# virtual methods
.method public getAsLong()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    return v0
.end method

.method public write(ILcom/squareup/wire/WireOutput;)V
    .registers 5

    .prologue
    .line 101
    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 102
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    .line 103
    return-void
.end method
