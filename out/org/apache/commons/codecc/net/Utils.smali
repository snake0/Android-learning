.class Lorg/apache/commons/codecc/net/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static digit16(B)I
    .registers 4

    .prologue
    .line 40
    int-to-char v0, p0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 41
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    .line 42
    new-instance v0, Lorg/apache/commons/codecc/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URL encoding: not a valid digit (radix 16): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1f
    return v0
.end method
