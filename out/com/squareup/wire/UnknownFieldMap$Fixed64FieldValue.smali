.class final Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;
.source "SourceFile"


# instance fields
.field private final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .registers 4

    .prologue
    .line 136
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    .line 137
    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    .line 138
    return-void
.end method


# virtual methods
.method public getAsLong()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 2

    .prologue
    .line 141
    const/16 v0, 0x8

    return v0
.end method

.method public write(ILcom/squareup/wire/WireOutput;)V
    .registers 5

    .prologue
    .line 145
    sget-object v0, Lcom/squareup/wire/WireType;->FIXED64:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    .line 146
    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$Fixed64FieldValue;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/WireOutput;->writeFixed64(J)V

    .line 147
    return-void
.end method
