.class public abstract Lorg/apache/commons/codecc/language/AbstractCaverphone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 52
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 53
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/AbstractCaverphone;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/AbstractCaverphone;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codecc/language/AbstractCaverphone;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
