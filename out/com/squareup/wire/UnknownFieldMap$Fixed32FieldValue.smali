.class final Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.source "SourceFile"


# instance fields
.field private final value:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(ILjava/lang/Integer;)V
    .registers 4

    .prologue
    .line 114
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    .line 115
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;->value:Ljava/lang/Integer;

    .line 116
    return-void
.end method


# virtual methods
.method public getAsInteger()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;->value:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x4

    return v0
.end method

.method public write(ILcom/squareup/wire/WireOutput;)V
    .registers 4

    .prologue
    .line 123
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED32:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 124
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed32FieldValue;->value:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/WireOutput;->writeFixed32(I)V

    .line 125
    return-void
.end method
