.class public Lorg/apache/commons/io/output/NullWriter;
.super Ljava/io/Writer;
.source "SourceFile"


# static fields
.field public static final NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lorg/apache/commons/io/output/NullWriter;

    invoke-direct {v0}, Lorg/apache/commons/io/output/NullWriter;-><init>()V

    sput-object v0, Lorg/apache/commons/io/output/NullWriter;->NULL_WRITER:Lorg/apache/commons/io/output/NullWriter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 51
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 77
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 4

    .prologue
    .line 65
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/NullWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/NullWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5

    .prologue
    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/NullWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 1

    .prologue
    .line 139
    return-void
.end method

.method public flush()V
    .registers 1

    .prologue
    .line 133
    return-void
.end method

.method public write(I)V
    .registers 2

    .prologue
    .line 87
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 116
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 127
    return-void
.end method

.method public write([C)V
    .registers 2

    .prologue
    .line 96
    return-void
.end method

.method public write([CII)V
    .registers 4

    .prologue
    .line 107
    return-void
.end method
