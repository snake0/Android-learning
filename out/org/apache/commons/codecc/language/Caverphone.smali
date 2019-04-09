.class public Lorg/apache/commons/codecc/language/Caverphone;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/codecc/StringEncoder;


# instance fields
.field private final encoder:Lorg/apache/commons/codecc/language/Caverphone2;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lorg/apache/commons/codecc/language/Caverphone2;

    invoke-direct {v0}, Lorg/apache/commons/codecc/language/Caverphone2;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codecc/language/Caverphone;->encoder:Lorg/apache/commons/codecc/language/Caverphone2;

    .line 45
    return-void
.end method


# virtual methods
.method public caverphone(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/commons/codecc/language/Caverphone;->encoder:Lorg/apache/commons/codecc/language/Caverphone2;

    invoke-virtual {v0, p1}, Lorg/apache/commons/codecc/language/Caverphone2;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 70
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_c

    .line 71
    new-instance v0, Lorg/apache/commons/codecc/EncoderException;

    const-string v1, "Parameter supplied to Caverphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codecc/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_c
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCaverphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/codecc/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codecc/language/Caverphone;->caverphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
