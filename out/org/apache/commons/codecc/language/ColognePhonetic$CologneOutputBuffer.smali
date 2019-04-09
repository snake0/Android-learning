.class Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;
.super Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lorg/apache/commons/codecc/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lorg/apache/commons/codecc/language/ColognePhonetic;I)V
    .registers 3

    .prologue
    .line 211
    iput-object p1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->this$0:Lorg/apache/commons/codecc/language/ColognePhonetic;

    .line 212
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;-><init>(Lorg/apache/commons/codecc/language/ColognePhonetic;I)V

    .line 213
    return-void
.end method


# virtual methods
.method public addRight(C)V
    .registers 4

    .prologue
    .line 216
    iget-object v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->data:[C

    iget v1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->length:I

    aput-char p1, v0, v1

    .line 217
    iget v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->length:I

    .line 218
    return-void
.end method

.method protected copyData(II)[C
    .registers 6

    .prologue
    .line 221
    new-array v0, p2, [C

    .line 222
    iget-object v1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneOutputBuffer;->data:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    return-object v0
.end method
