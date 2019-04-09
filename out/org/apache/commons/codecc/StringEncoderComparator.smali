.class public Lorg/apache/commons/codecc/StringEncoderComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final stringEncoder:Lorg/apache/commons/codecc/StringEncoder;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/codecc/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codecc/StringEncoder;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/codecc/StringEncoder;)V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/commons/codecc/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codecc/StringEncoder;

    .line 55
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 72
    .line 75
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/codecc/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codecc/StringEncoder;

    invoke-interface {v0, p1}, Lorg/apache/commons/codecc/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 76
    iget-object v1, p0, Lorg/apache/commons/codecc/StringEncoderComparator;->stringEncoder:Lorg/apache/commons/codecc/StringEncoder;

    invoke-interface {v1, p2}, Lorg/apache/commons/codecc/StringEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 77
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
    :try_end_13
    .catch Lorg/apache/commons/codecc/EncoderException; {:try_start_0 .. :try_end_13} :catch_15

    move-result v0

    .line 81
    :goto_14
    return v0

    .line 78
    :catch_15
    move-exception v0

    .line 79
    const/4 v0, 0x0

    goto :goto_14
.end method
