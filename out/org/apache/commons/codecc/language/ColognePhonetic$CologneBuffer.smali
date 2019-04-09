.class abstract Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final data:[C

.field protected length:I

.field final synthetic this$0:Lorg/apache/commons/codecc/language/ColognePhonetic;


# direct methods
.method public constructor <init>(Lorg/apache/commons/codecc/language/ColognePhonetic;I)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 193
    iput-object p1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->this$0:Lorg/apache/commons/codecc/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->length:I

    .line 194
    new-array v0, p2, [C

    iput-object v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 195
    iput v1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->length:I

    .line 196
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codecc/language/ColognePhonetic;[C)V
    .registers 4

    .prologue
    .line 188
    iput-object p1, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->this$0:Lorg/apache/commons/codecc/language/ColognePhonetic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->length:I

    .line 189
    iput-object p2, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->data:[C

    .line 190
    array-length v0, p2

    iput v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->length:I

    .line 191
    return-void
.end method


# virtual methods
.method protected abstract copyData(II)[C
.end method

.method public length()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->length:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 205
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->length:I

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/codecc/language/ColognePhonetic$CologneBuffer;->copyData(II)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
