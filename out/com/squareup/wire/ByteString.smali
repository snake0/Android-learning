.class public final Lcom/squareup/wire/ByteString;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/squareup/wire/ByteString;


# instance fields
.field private final data:[B

.field private transient hashCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/squareup/wire/ByteString;->of([B)Lcom/squareup/wire/ByteString;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/ByteString;->EMPTY:Lcom/squareup/wire/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/squareup/wire/ByteString;->data:[B

    .line 85
    return-void
.end method

.method public static of(Ljava/lang/String;)Lcom/squareup/wire/ByteString;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Lcom/squareup/wire/ByteString;

    invoke-static {p0}, Lcom/squareup/wire/Stringer;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v0
.end method

.method public static varargs of([B)Lcom/squareup/wire/ByteString;
    .registers 3

    .prologue
    .line 46
    new-instance v1, Lcom/squareup/wire/ByteString;

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static of([BII)Lcom/squareup/wire/ByteString;
    .registers 5

    .prologue
    .line 54
    new-array v0, p2, [B

    .line 55
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    new-instance v1, Lcom/squareup/wire/ByteString;

    invoke-direct {v1, v0}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static read(Ljava/io/InputStream;I)Lcom/squareup/wire/ByteString;
    .registers 6

    .prologue
    .line 74
    new-array v1, p1, [B

    .line 75
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_33

    .line 76
    sub-int v2, p1, v0

    invoke-virtual {p0, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 77
    const/4 v3, -0x1

    if-ne v2, v3, :cond_31

    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_31
    add-int/2addr v0, v2

    .line 79
    goto :goto_3

    .line 80
    :cond_33
    new-instance v0, Lcom/squareup/wire/ByteString;

    invoke-direct {v0, v1}, Lcom/squareup/wire/ByteString;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public byteAt(I)B
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 116
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/squareup/wire/ByteString;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/squareup/wire/ByteString;

    iget-object v0, p1, Lcom/squareup/wire/ByteString;->data:[B

    iget-object v1, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/squareup/wire/ByteString;->hashCode:I

    .line 122
    if-eqz v0, :cond_5

    :goto_4
    return v0

    :cond_5
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/ByteString;->hashCode:I

    goto :goto_4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    array-length v0, v0

    return v0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-static {v0}, Lcom/squareup/wire/Stringer;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 108
    return-void
.end method

.method public write(Ljava/io/OutputStream;II)V
    .registers 5

    .prologue
    .line 112
    iget-object v0, p0, Lcom/squareup/wire/ByteString;->data:[B

    invoke-virtual {p1, v0, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 113
    return-void
.end method
